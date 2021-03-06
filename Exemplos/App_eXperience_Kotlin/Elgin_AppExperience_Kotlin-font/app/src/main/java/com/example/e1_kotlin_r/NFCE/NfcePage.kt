package com.example.e1_kotlin_r.NFCE


import android.Manifest
import android.app.AlertDialog
import android.content.DialogInterface
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.util.Log
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import br.com.daruma.framework.mobile.DarumaMobile
import br.com.daruma.framework.mobile.exception.DarumaException
import com.example.e1_kotlin_r.InputMasks.InputMaskMoney
import com.example.e1_kotlin_r.R
import com.example.e1_kotlin_r.Services.PrinterService
import java.io.File
import java.io.FileInputStream
import java.math.BigDecimal
import java.util.*


class NfcePage : AppCompatActivity() {

    private val it4rObj = It4r(
        DarumaMobile.inicializar(
            this,
            "@FRAMEWORK(LOGMEMORIA=200;TRATAEXCECAO=TRUE;TIMEOUTWS=8000;SATNATIVO=FALSE);@SOCKET(HOST=192.168.210.94;PORT=9100;)"
        )
    )

    lateinit var buttonConfigurateNfce: Button
    lateinit var buttonSendNfceSale: Button
    lateinit var editTextProductName: EditText
    lateinit var editTextProductPrice: EditText
    lateinit var textViewLasfNfceNumber: TextView
    lateinit var textViewLastNfceSerie: TextView
    lateinit var textViewCronometerValue: TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_nfce_page)
        printerInstance = PrinterService(this)
        printerInstance!!.printerInternalImpStart()
        editTextProductName = findViewById(R.id.editTextProductName)
        editTextProductPrice = findViewById(R.id.editTextProductPrice)
        buttonConfigurateNfce = findViewById(R.id.buttonConfigurateNfce)
        buttonSendNfceSale = findViewById(R.id.buttonSendNfceSale)
        textViewLasfNfceNumber = findViewById(R.id.textViewLasfNfceNumber)
        textViewLastNfceSerie = findViewById(R.id.textViewLastNfceSerie)
        textViewCronometerValue = findViewById(R.id.textViewCronometerValue)
        editTextProductName.setText("CAFE")
        editTextProductPrice.addTextChangedListener(InputMaskMoney(editTextProductPrice))
        editTextProductPrice.setText("8.00")
        buttonConfigurateNfce.setOnClickListener(View.OnClickListener { v: View? -> configurateNfce() })
        buttonSendNfceSale.setOnClickListener(View.OnClickListener { v: View? ->
            sendSaleNfce(
                editTextProductName.getText().toString(),
                editTextProductPrice.getText().toString()
            )
        })
    }

    //Fun????o que configura NFC-e para a emiss??o, ap??s a sua execu????o ocorrer corretamente o bot??o para o envio da NFc-e deve ser habilitado
    open fun configurateNfce() {
        if (isStoragePermissionGranted()) {
            try {
                it4rObj.configurarXmlNfce()
                Toast.makeText(this, "NFC-e configurada com sucesso!", Toast.LENGTH_LONG).show()
                buttonSendNfceSale.isEnabled = true
            } catch (e: DarumaException) {
                Toast.makeText(this, "Erro na configura????o de NFC-e", Toast.LENGTH_LONG).show()
                buttonSendNfceSale.isEnabled = false
                e.printStackTrace()
            }
        }
    }

    //Fun????o do envio de venda NFC-e, essa fun????o configura a venda com os dados da tela e em seguida tenta emitir a nota e por ultimo faz impress??o da nota (Caso tenha ocorrido algum erro durante a emiss??o da nota ?? feita a impress??o da nota em conting??ncia).
    open fun sendSaleNfce(productName: String?, productPrice: String?) {
        //?? feita uma venda antes da venda antes para que a nossa venda n??o seja omitida, isso ?? necess??rio em servidor de homologa????o
        preSale()

        //Configuramos a venda com os dados da tela
        try {
            it4rObj.venderItem(productName, formatPrice(productPrice!!), "123456789012")
        } catch (e: DarumaException) {
            Toast.makeText(this, "Erro na configura????o de venda", Toast.LENGTH_LONG).show()
            e.printStackTrace()
            return
        }

        //Encerramos a venda emitiando a nota para o servidor
        try {
            it4rObj.encerrarVenda(formatPrice(productPrice!!), "Dinheiro")
            alertMessageStatus("NFC-e emitida com sucesso!")
        } catch (e: DarumaException) {
            alertMessageStatus("Erro ao emitir NFC-e online, a impress??o ser?? da nota em contig??ncia!")
            e.printStackTrace()
        }

        //Se a o tempo de emiss??o calculado for diferente de 0 ent??o a nota n??o foi emitida em contig??ncia offline, e o tempo de emiss??o calculado ser?? exposto na tela
        if (it4rObj.timeElapsedInLastEmission.get().toInt() !== 0) textViewCronometerValue.text =
            java.lang.String.format(
                "%s SEGUNDOS",
                it4rObj.timeElapsedInLastEmission.get() / 1000
            ) else textViewCronometerValue.text =
            ""

        //Exp??e o n??mero da nota emitida
        textViewLasfNfceNumber.setText(it4rObj.numeroNota())
        //Exp??es a s??rie emitida
        textViewLastNfceSerie.setText(it4rObj.numeroSerie())

        //Impress??o da NFC-e
        val mapValues: MutableMap<String?, Any?> = HashMap()
        mapValues["xmlNFCe"] = getTextOfFile()
        mapValues["indexcsc"] = 1
        mapValues["csc"] = "1A451E99-0FE0-4C13-B97E-67D698FFBC37"
        mapValues["param"] = 0

        //Prepara o corte
        mapValues["quant"] = 5
        printerInstance!!.imprimeXMLNFCe(mapValues)
        printerInstance!!.cutPaper(mapValues)
    }

    //Como no App_Experience ?? feita uma venda em ambiente de homologa????o, e uma nota emitida nesse ambiente sempre aparece com a primeira compra emitida, ser?? feita uma venda com valor nulo para que a venda feita na aplica????o n??o seja omitida
    fun preSale() {
        try {
            it4rObj.venderItem("I", "0.00", "123456789011")
        } catch (e: DarumaException) {
            Toast.makeText(this, "Erro na configura????o de venda" + e.message, Toast.LENGTH_LONG)
                .show()
            e.printStackTrace()
            return
        }
    }

    //Desliga a impressora ap??s sair da p??gina
    override fun onDestroy() {
        super.onDestroy()
        printerInstance!!.printerStop()
    }

    //Checa se a permiss??o para escrever arquivos em diret??rios externos foi garantida, se n??o tiver ; pe??a novamente
    fun isStoragePermissionGranted(): Boolean {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED) {
                Log.v("DEBUG", "A permiss??o est?? garantida!")
                true
            } else {
                Log.v("DEBUG", "A permiss??o est?? negada!")
                //Pedindo permiss??o
                ActivityCompat.requestPermissions(
                    this,
                    arrayOf(Manifest.permission.WRITE_EXTERNAL_STORAGE),
                    NfcePage.REQUEST_CODE_WRITE_EXTERNAL_STORAGE
                )
                false
            }
        } else { //A permiss??o ?? automaticamente concecida em sdk > 23 na instala????o
            Log.v("DEBUG", "A permiss??o est?? garantida!")
            true
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        Log.d("DEBUG", requestCode.toString())
        if (requestCode == NfcePage.REQUEST_CODE_WRITE_EXTERNAL_STORAGE && grantResults.size > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            Log.v("DEBUG", "Permission: " + permissions[0] + "was " + grantResults[0])
            //A permiss??o necess??ria acabou de ser garantida, continue com a opera????o
            configurateNfce()
        } else if (requestCode == NfcePage.REQUEST_CODE_WRITE_EXTERNAL_STORAGE) {
            Toast.makeText(
                this,
                "?? necess??rio garantir a permiss??o de armazenamento para a montagem da NFCe a ser enviada!",
                Toast.LENGTH_LONG
            ).show()
        }
    }

    //Fun????o que l?? o xml que representa a nota NFC-e emitida e retorna uma String com o conte??do
    private fun getTextOfFile(): String? {
        var strFile = ""
        strFile = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            application.getExternalFilesDir(null)!!.path + "//IT4R//EnvioWS.xml"
        } else {
            Environment.getExternalStorageDirectory().absolutePath + "/EnvioWS.xml"
        }
        var strFileContent = ""
        val file = File(strFile)
        if (file.exists()) {
            var fis2: FileInputStream? = null
            try {
                fis2 = FileInputStream(file)
                var current: Char
                while (fis2.available() > 0) {
                    current = fis2.read().toChar()
                    strFileContent = strFileContent + current.toString()
                }
            } catch (e: Exception) {
                Log.d("TourGuide", e.toString())
            } finally {
                if (fis2 != null) try {
                    fis2.close()
                } catch (e: Exception) {
                }
            }
        }
        return strFileContent
    }

    fun alertMessageStatus(messageAlert: String?) {
        val alertDialog = AlertDialog.Builder(this).create()
        alertDialog.setTitle("NFC-e")
        alertDialog.setMessage(messageAlert)
        alertDialog.setButton(
            AlertDialog.BUTTON_NEUTRAL, "OK"
        ) { dialog: DialogInterface, which: Int -> dialog.dismiss() }
        alertDialog.show()
    }

    //Fun????o que formata o pre??o do produto para o formato esperado na venda de itens uma vez que o formato esperado ?? de [0-9]+.00
    fun formatPrice(productPrice: String): String {
        //Valor do campo formatado para a cria????o do BigDecimal formatado
        val valueFormatted = productPrice.replace(",".toRegex(), "\\.").trim { it <= ' ' }
        val actualValueInBigDecimal: BigDecimal
        actualValueInBigDecimal = try {
            BigDecimal(valueFormatted)
        } catch (e: NumberFormatException) {
            //Se o n??mero for maior que 999, a mask ir?? colocar um "." a mais, estas ocorr??ncias devem ser removidas antes da compara????o
            val valueSplitted = valueFormatted.split("\\.").toTypedArray()
            val thousandsUnit: List<String> = ArrayList(Arrays.asList(*valueSplitted))
            val valueWithoutThousandsComma = StringBuilder()
            var i = 0
            while (i < thousandsUnit.size - 1) {
                valueWithoutThousandsComma.append(thousandsUnit[i])
                i++
            }
            valueWithoutThousandsComma.append(".").append(thousandsUnit[thousandsUnit.size - 1])
            BigDecimal(valueWithoutThousandsComma.toString())
        }
        return actualValueInBigDecimal.toString()
    }

    companion object {
        val REQUEST_CODE_WRITE_EXTERNAL_STORAGE: Int = 1234

        //Printer Object
        var printerInstance: PrinterService? = null
    }
}