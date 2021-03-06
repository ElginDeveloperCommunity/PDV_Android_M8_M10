package com.elgin.elginexperience;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.content.res.AppCompatResources;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.elgin.elginexperience.Services.PrinterService;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PrinterMenu extends AppCompatActivity {
    public Context mContext;

    Button buttonPrinterTextSelected;
    Button buttonPrinterBarCodeSelected;
    Button buttonPrinterImageSelected;
    Button buttonStatusPrinter;
    Button buttonStatusGaveta;
    Button buttonAbrirGaveta;

    RadioGroup radioGroupConnectPrinterIE;
    RadioButton radioButtonConnectPrinterIntern;

    EditText editTextInputIP;

    static PrinterService printer;
    public String selectedPrinterModel;

    private final String EXTERNAL_PRINTER_MODEL_I9 = "i9";
    private final String EXTERNAL_PRINTER_MODEL_I8 = "i8";

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = this;
        setContentView(R.layout.activity_printer_menu);

        //Inicializa a impressora interna selecionada inicialmente e ajusta a variavel de controle booleana que verifica se a impressora interna esta em uso
        printer = new PrinterService(this);
        printer.printerInternalImpStart();


        showPrinterTextScreen();


        editTextInputIP = findViewById(R.id.editTextInputIP);
        editTextInputIP.setText("192.168.0.103:9100");

        buttonPrinterTextSelected = findViewById(R.id.buttonPrinterTextSelect);
        buttonPrinterImageSelected = findViewById(R.id.buttonPrinterImageSelect);
        buttonPrinterBarCodeSelected = findViewById(R.id.buttonPrinterBarCodeSelect);
        buttonStatusPrinter = findViewById(R.id.buttonStatus);
        buttonStatusGaveta = findViewById(R.id.buttonStatusGaveta);
        buttonAbrirGaveta = findViewById(R.id.buttonAbrirGaveta);

        radioButtonConnectPrinterIntern = findViewById(R.id.radioButtonConnectPrinterIntern);

        radioButtonConnectPrinterIntern.setChecked(true);
        radioGroupConnectPrinterIE = findViewById(R.id.radioGroupConnectPrinterIE);
        radioGroupConnectPrinterIE.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @SuppressLint("NonConstantResourceId")
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                final String EXTERNAL_CONNECTION_METHOD_USB = "USB";
                final String EXTERNAL_CONNECTION_METHOD_IP = "IP";
                switch (checkedId) {

                    case R.id.radioButtonConnectPrinterIntern:
                        printer.printerInternalImpStart();
                        break;

                    case R.id.radioButtonConnectPrinterExternByIP:
                        if(isIpValid(editTextInputIP.getText().toString())){
                            //Invoca o alertDialog que permite a escolha do modelo de impressora antes da tentativa de iniciar a conex??o por IP
                            alertDialogSetSelectedPrinterModelThenConnect(EXTERNAL_CONNECTION_METHOD_IP);
                        }else{
                            //Se n??o foi poss??vel validar o ip antes da chama da fun????o, retorne para a conex??o com impressora interna
                            alertMessageStatus("Digite um IP v??lido.");
                            radioButtonConnectPrinterIntern.setChecked(true);
                        }
                        break;

                    case R.id.radioButtonConnectPrinterExternByUSB:
                        //Invoca o alertDialog que permite a escolha do modelo de impressora antes da tentativa de iniciar a conex??o por IP
                        alertDialogSetSelectedPrinterModelThenConnect(EXTERNAL_CONNECTION_METHOD_USB);
                        break;
                }
            }
        });

        buttonPrinterTextSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.azul));

        buttonPrinterTextSelected.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                buttonPrinterTextSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.azul));
                buttonPrinterBarCodeSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                buttonPrinterImageSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                showPrinterTextScreen();
            }
        });

        buttonPrinterBarCodeSelected.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                buttonPrinterTextSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                buttonPrinterBarCodeSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.azul));
                buttonPrinterImageSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                showPrinterBarCodeScreen();
            }
        });

        buttonPrinterImageSelected.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                buttonPrinterTextSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                buttonPrinterBarCodeSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.black));
                buttonPrinterImageSelected.setBackgroundTintList(AppCompatResources.getColorStateList(mContext, R.color.azul));
                showPrinterImageScreen();
            }
        });

        buttonStatusPrinter.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                statusPrinter();
            }
        });

        buttonStatusGaveta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) { statusGaveta(); }
        });

        buttonAbrirGaveta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) { abrirGaveta(); }
        });
    }

    public void connectExternPrinterByIP(String ip){
        String[] ipAndPort = ip.split(":");
        int result = printer.printerExternalImpStartByIP(selectedPrinterModel, ipAndPort[0], Integer.parseInt(ipAndPort[1]));
        System.out.println("RESULT EXTERN - IP: " + result);

        if(result != 0){
            alertMessageStatus("A tentativa de conex??o por IP n??o foi bem sucedida!");
            printer.printerInternalImpStart();
            radioButtonConnectPrinterIntern.setChecked(true);
        }

    }

    public void connectExternPrinterByUSB(String model){
        int result = printer.printerExternalImpStartByUSB(model);
        System.out.println("RESULT EXTERN - USB: " + result);

        if(result != 0){
            alertMessageStatus("A tentativa de conex??o por USB n??o foi bem sucedida!");
            printer.printerInternalImpStart();
            radioButtonConnectPrinterIntern.setChecked(true);
        }

    }

    //Dialogo usado para escolher definir o modelo de impressora externa que sera estabelecida a conexao
    public void alertDialogSetSelectedPrinterModelThenConnect(String externalConnectionMethod){
        String[] operations = {EXTERNAL_PRINTER_MODEL_I9, EXTERNAL_PRINTER_MODEL_I8};

        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
        builder.setTitle("Selecione o modelo de impressora a ser conectado");

        //Tornando o dial??go n??o-cancel??vel
        builder.setCancelable(false);

        builder.setNegativeButton("CANCELAR", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                //Se a op????o de cancelamento tiver sido escolhida, retorne sempre ?? op????o de impress??o por impressora interna
                printer.printerInternalImpStart();
                radioButtonConnectPrinterIntern.setChecked(true);
                dialog.dismiss();
            }
        });

        builder.setItems(operations, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                //Envia o par??metro escolhido para a fun????o que atualiza o modelo de impressora selecionado
                setSelectedPrinterModel(which);

                //inicializa depois da sele????o do modelo a conex??o de impressora, levando em contra o par??metro que define se a conex??o deve ser via IP ou USB
                if(externalConnectionMethod.equals("USB")){
                    connectExternPrinterByUSB(selectedPrinterModel);
                }
                else connectExternPrinterByIP(editTextInputIP.getText().toString());
            }
        });
        builder.show();
    }

    public void setSelectedPrinterModel(int whichSelected){
        if(whichSelected == 0) this.selectedPrinterModel = EXTERNAL_PRINTER_MODEL_I9;
        else this.selectedPrinterModel = EXTERNAL_PRINTER_MODEL_I8;
    }


    public void showPrinterTextScreen(){
        FragmentPrinterText firstFragment = new FragmentPrinterText();
        FragmentTransaction transaction = getFragmentManager().beginTransaction();
        transaction.replace(R.id.containerFragments, firstFragment);
        transaction.commit();
    }

    public void showPrinterBarCodeScreen(){
        FragmentPrinterBarCode barCodeFragment = new FragmentPrinterBarCode();
        FragmentTransaction transaction = getFragmentManager().beginTransaction();
        transaction.replace(R.id.containerFragments, barCodeFragment);
        transaction.commit();
    }

    public void showPrinterImageScreen(){
        FragmentPrinterImage barCodeFragment = new FragmentPrinterImage();
        FragmentTransaction transaction = getFragmentManager().beginTransaction();
        transaction.replace(R.id.containerFragments, barCodeFragment);
        transaction.commit();
    }

    public void statusPrinter(){
        String statusPrinter = "";
        int resultStatus = printer.statusSensorPapel();
        System.out.println("STATUS GAVETA: " + printer.statusGaveta());

        if(resultStatus == 5){
            statusPrinter = "Papel est?? presente e n??o est?? pr??ximo do fim!";
        }else if(resultStatus == 6){
            statusPrinter = "Papel pr??ximo do fim!";
        }else if(resultStatus == 7){
            statusPrinter = "Papel ausente!";
        }else {
            statusPrinter = "Status Desconhecido!";
        }

        alertMessageStatus(statusPrinter);
    }

    private void statusGaveta(){
        String statusGaveta = "";

        int resultStatusGaveta = printer.statusGaveta();

        if(resultStatusGaveta == 1){
            statusGaveta = "Gaveta aberta!";
        }else if(resultStatusGaveta == 2){
            statusGaveta = "Gaveta fechada!";
        }else {
            statusGaveta = "Status Desconhecido!";
        }

        alertMessageStatus(statusGaveta);
    }

    private int abrirGaveta(){
        return printer.abrirGaveta();
    }

    public void alertMessageStatus(String messageAlert){
        AlertDialog alertDialog = new AlertDialog.Builder(PrinterMenu.printer.mActivity).create();
        alertDialog.setTitle("Alert");
        alertDialog.setMessage(messageAlert);
        alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                });
        alertDialog.show();
    }

    public static boolean isIpValid(String ip) {
        Pattern pattern = Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]):[0-9]+$");

        Matcher matcher = pattern.matcher(ip);

        return matcher.matches();
    }

    /**
     * Fun????es da impressora, que ser??o chamadas pelos fragments que invocaram as impress??es
     */

    //Esta fun????o aplica um AvancaPapel na impress??o de acordo com o tipo de impressora em uso
    public static void jumpLine(){
        Map<String, Object> mapValues = new HashMap<>();

        //Se a impress??o for por impressora externa, 5 ?? o suficiente; 10 caso contr??rio

        if(!printer.isPrinterInternSelected) { mapValues.put("quant", 5); }
        else mapValues.put("quant", 10);

        printer.AvancaLinhas(mapValues);
    }

    //O valor enviado ao corte de pap??l corresponde tamb??m a um avancaLinhas, como utilizamos jumpLine(), enviaremos o valor m??nimo
    public static void cutPaper(){
        Map<String, Object> mapValues = new HashMap<>();

        mapValues.put("quant", 1);

        PrinterMenu.printer.cutPaper(mapValues);
    }
}