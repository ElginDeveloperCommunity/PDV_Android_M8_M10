package com.example.e1_kotlin_r

import android.app.AlertDialog
import android.content.Context
import android.os.Build
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.content.res.AppCompatResources
import com.example.e1_kotlin_r.Services.PrinterService
import java.util.regex.Pattern


class PrinterMenu : AppCompatActivity() {
    lateinit var mContext: Context
    lateinit var buttonPrinterTextSelected: Button
    lateinit var buttonPrinterBarCodeSelected: Button
    lateinit var buttonPrinterImageSelected: Button
    lateinit var buttonStatusPrinter: Button
    lateinit var buttonStatusGaveta: Button
    lateinit var buttonAbrirGaveta: Button
    lateinit var radioGroupConnectPrinterIE: RadioGroup
    lateinit var radioButtonConnectPrinterIntern: RadioButton
    lateinit var editTextInputIP: EditText
    lateinit var selectedPrinterModel: String
    private val EXTERNAL_PRINTER_MODEL_I9 = "i9"
    private val EXTERNAL_PRINTER_MODEL_I8 = "i8"

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mContext = this
        setContentView(R.layout.activity_printer_menu)

        //Inicializa a impressora interna selecionada inicialmente e ajusta a variavel de controle booleana que verifica se a impressora interna esta em uso
        printer = PrinterService(this)
        printer!!.printerInternalImpStart()
        showPrinterTextScreen()
        editTextInputIP = findViewById(R.id.editTextInputIP)
        editTextInputIP.setText("192.168.0.103:9100")
        buttonPrinterTextSelected = findViewById(R.id.buttonPrinterTextSelect)
        buttonPrinterImageSelected = findViewById(R.id.buttonPrinterImageSelect)
        buttonPrinterBarCodeSelected = findViewById(R.id.buttonPrinterBarCodeSelect)
        buttonStatusPrinter = findViewById(R.id.buttonStatus)
        buttonStatusGaveta = findViewById(R.id.buttonStatusGaveta)
        buttonAbrirGaveta = findViewById(R.id.buttonAbrirGaveta)
        radioButtonConnectPrinterIntern = findViewById(R.id.radioButtonConnectPrinterIntern)
        radioButtonConnectPrinterIntern.setChecked(true)
        radioGroupConnectPrinterIE = findViewById(R.id.radioGroupConnectPrinterIE)
        radioGroupConnectPrinterIE.setOnCheckedChangeListener(RadioGroup.OnCheckedChangeListener { group, checkedId ->
            val EXTERNAL_CONNECTION_METHOD_USB = "USB"
            val EXTERNAL_CONNECTION_METHOD_IP = "IP"
            when (checkedId) {
                R.id.radioButtonConnectPrinterIntern -> printer!!.printerInternalImpStart()
                R.id.radioButtonConnectPrinterExternByIP -> if (isIpValid(
                        editTextInputIP.getText().toString()
                    )
                ) {
                    //Invoca o alertDialog que permite a escolha do modelo de impressora antes da tentativa de iniciar a conex??o por IP
                    alertDialogSetSelectedPrinterModelThenConnect(EXTERNAL_CONNECTION_METHOD_IP)
                } else {
                    //Se n??o foi poss??vel validar o ip antes da chama da fun????o, retorne para a conex??o com impressora interna
                    alertMessageStatus("Digite um IP v??lido.")
                    radioButtonConnectPrinterIntern.setChecked(true)
                }
                R.id.radioButtonConnectPrinterExternByUSB ->                         //Invoca o alertDialog que permite a escolha do modelo de impressora antes da tentativa de iniciar a conex??o por IP
                    alertDialogSetSelectedPrinterModelThenConnect(EXTERNAL_CONNECTION_METHOD_USB)
            }
        })
        buttonPrinterTextSelected.setBackgroundTintList(
            AppCompatResources.getColorStateList(
                mContext,
                R.color.azul
            )
        )
        buttonPrinterTextSelected.setOnClickListener(View.OnClickListener {
            buttonPrinterTextSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.azul
                )
            )
            buttonPrinterBarCodeSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            buttonPrinterImageSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            showPrinterTextScreen()
        })
        buttonPrinterBarCodeSelected.setOnClickListener(View.OnClickListener {
            buttonPrinterTextSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            buttonPrinterBarCodeSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.azul
                )
            )
            buttonPrinterImageSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            showPrinterBarCodeScreen()
        })
        buttonPrinterImageSelected.setOnClickListener(View.OnClickListener {
            buttonPrinterTextSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            buttonPrinterBarCodeSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.black
                )
            )
            buttonPrinterImageSelected.setBackgroundTintList(
                AppCompatResources.getColorStateList(
                    mContext,
                    R.color.azul
                )
            )
            showPrinterImageScreen()
        })
        buttonStatusPrinter.setOnClickListener(View.OnClickListener { statusPrinter() })
        buttonStatusGaveta.setOnClickListener(View.OnClickListener { statusGaveta() })
        buttonAbrirGaveta.setOnClickListener(View.OnClickListener { abrirGaveta() })
    }

    fun connectExternPrinterByIP(ip: String) {
        val ipAndPort = ip.split(":").toTypedArray()
        val result: Int = printer.printerExternalImpStartByIP(
            selectedPrinterModel,
            ipAndPort[0], ipAndPort[1].toInt()
        )
        println("RESULT EXTERN - IP: $result")
        if (result != 0) {
            alertMessageStatus("A tentativa de conex??o por IP n??o foi bem sucedida!")
            printer.printerInternalImpStart()
            radioButtonConnectPrinterIntern!!.isChecked = true
        }
    }

    fun connectExternPrinterByUSB(model: String?) {
        val result: Int = printer.printerExternalImpStartByUSB(model)
        println("RESULT EXTERN - USB: $result")
        if (result != 0) {
            alertMessageStatus("A tentativa de conex??o por USB n??o foi bem sucedida!")
            printer.printerInternalImpStart()
            radioButtonConnectPrinterIntern!!.isChecked = true
        }
    }

    //Dialogo usado para escolher definir o modelo de impressora externa que sera estabelecida a conexao
    fun alertDialogSetSelectedPrinterModelThenConnect(externalConnectionMethod: String) {
        val operations = arrayOf(EXTERNAL_PRINTER_MODEL_I9, EXTERNAL_PRINTER_MODEL_I8)
        val builder = AlertDialog.Builder(mContext)
        builder.setTitle("Selecione o modelo de impressora a ser conectado")

        //Tornando o dial??go n??o-cancel??vel
        builder.setCancelable(false)
        builder.setNegativeButton(
            "CANCELAR"
        ) { dialog, which -> //Se a op????o de cancelamento tiver sido escolhida, retorne sempre ?? op????o de impress??o por impressora interna
            printer.printerInternalImpStart()
            radioButtonConnectPrinterIntern!!.isChecked = true
            dialog.dismiss()
        }
        builder.setItems(
            operations
        ) { dialog, which -> //Envia o par??metro escolhido para a fun????o que atualiza o modelo de impressora selecionado
            setSelectedPrinterModel(which)

            //inicializa depois da sele????o do modelo a conex??o de impressora, levando em contra o par??metro que define se a conex??o deve ser via IP ou USB
            if (externalConnectionMethod == "USB") {
                connectExternPrinterByUSB(selectedPrinterModel)
            } else connectExternPrinterByIP(editTextInputIP!!.text.toString())
        }
        builder.show()
    }

    fun setSelectedPrinterModel(whichSelected: Int) {
        if (whichSelected == 0) selectedPrinterModel =
            EXTERNAL_PRINTER_MODEL_I9 else selectedPrinterModel = EXTERNAL_PRINTER_MODEL_I8
    }

    fun showPrinterTextScreen() {
        val firstFragment = FragmentPrinterText()
        val transaction = fragmentManager.beginTransaction()
        transaction.replace(R.id.containerFragments, firstFragment)
        transaction.commit()
    }

    fun showPrinterBarCodeScreen() {
        val barCodeFragment = FragmentPrinterBarCode()
        val transaction = fragmentManager.beginTransaction()
        transaction.replace(R.id.containerFragments, barCodeFragment)
        transaction.commit()
    }

    fun showPrinterImageScreen() {
        val barCodeFragment = FragmentPrinterImage()
        val transaction = fragmentManager.beginTransaction()
        transaction.replace(R.id.containerFragments, barCodeFragment)
        transaction.commit()
    }

    fun statusPrinter() {
        var statusPrinter = ""
        val resultStatus: Int = printer.statusSensorPapel()
        System.out.println("STATUS GAVETA: " + printer.statusGaveta())
        statusPrinter = if (resultStatus == 5) {
            "Papel est?? presente e n??o est?? pr??ximo do fim!"
        } else if (resultStatus == 6) {
            "Papel pr??ximo do fim!"
        } else if (resultStatus == 7) {
            "Papel ausente!"
        } else {
            "Status Desconhecido!"
        }
        alertMessageStatus(statusPrinter)
    }

    private fun statusGaveta() {
        var statusGaveta = ""
        val resultStatusGaveta: Int = printer.statusGaveta()
        statusGaveta = if (resultStatusGaveta == 1) {
            "Gaveta aberta!"
        } else if (resultStatusGaveta == 2) {
            "Gaveta fechada!"
        } else {
            "Status Desconhecido!"
        }
        alertMessageStatus(statusGaveta)
    }

    private fun abrirGaveta(): Int {
        return printer.abrirGaveta()
    }

    fun alertMessageStatus(messageAlert: String?) {
        val alertDialog = AlertDialog.Builder(printer.mActivity).create()
        alertDialog.setTitle("Alert")
        alertDialog.setMessage(messageAlert)
        alertDialog.setButton(
            AlertDialog.BUTTON_NEUTRAL, "OK"
        ) { dialog, which -> dialog.dismiss() }
        alertDialog.show()
    }

    companion object {
        lateinit var printer: PrinterService
        fun isIpValid(ip: String?): Boolean {
            val pattern =
                Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]):[0-9]+$")
            val matcher = pattern.matcher(ip)
            return matcher.matches()
        }

        /**
         * Fun????es da impressora, que ser??o chamadas pelos fragments que invocaram as impress??es
         */
        //Esta fun????o aplica um AvancaPapel na impress??o de acordo com o tipo de impressora em uso
        fun jumpLine() {
            val mapValues: MutableMap<String, Any> = HashMap()

            //Se a impress??o for por impressora externa, 5 ?? o suficiente; 10 caso contr??rio
            if (!printer.isPrinterInternSelected) {
                mapValues["quant"] = 5
            } else mapValues["quant"] = 10
            printer.AvancaLinhas(mapValues)
        }

        //O valor enviado ao corte de pap??l corresponde tamb??m a um avancaLinhas, como utilizamos jumpLine(), enviaremos o valor m??nimo
        fun cutPaper() {
            val mapValues: MutableMap<String, Any> = HashMap()
            mapValues["quant"] = 1
            printer.cutPaper(mapValues)
        }
    }
}