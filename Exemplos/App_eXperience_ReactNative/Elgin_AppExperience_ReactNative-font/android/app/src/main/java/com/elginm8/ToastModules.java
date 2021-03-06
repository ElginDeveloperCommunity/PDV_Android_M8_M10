package com.elginm8;

import static android.app.Activity.RESULT_CANCELED;
import static android.app.Activity.RESULT_OK;
import static com.elginm8.MainActivity.it4rObj;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;

import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;

import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;

import br.com.daruma.framework.mobile.exception.DarumaException;
import br.com.setis.interfaceautomacao.Operacoes;

public class ToastModules extends ReactContextBaseJavaModule implements ActivityEventListener {
    public static ReactApplicationContext reactContext;
    public static int REQUEST_CODE_WRITE_EXTERNAL_STORAGE = 1234;

    Bundle instanceBundle = new Bundle();

    ToastModules(ReactApplicationContext context) {
        super(context);
        reactContext = context;
        reactContext.addActivityEventListener(this);
    }

    public static void configurateXmlNfce() {
        try {
            it4rObj.configurarXmlNfce();
            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventConfigurateXmlNfce", "NFC-e configurada com sucesso!");
        } catch (DarumaException e) {
            e.printStackTrace();
            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventConfigurateXmlNfce", "Erro na configura????o de NFC-e!");
        }
    }

    @Override
    public String getName() {
        return "ToastModules";
    }

    public void onNewIntent(Intent intent) {
    }

    @Override
    public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {

        if (requestCode == 4321) {
            if (resultCode == RESULT_OK || resultCode == RESULT_CANCELED && data != null) {
                try {
                    WritableMap result = Arguments.createMap();

                    result.putString("restultMsitef", convertResultFromJSON(data));
                    reactContext
                            .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                            .emit("eventResultSitef", result);

                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                Toast.makeText(reactContext.getApplicationContext(), "Transa????o cancelada!", Toast.LENGTH_LONG).show();
            }
        }
    }

    public String convertResultFromJSON(Intent receiveResult) throws JSONException {
        JSONObject convertJSON = new JSONObject();

        convertJSON.put("CODRESP", receiveResult.getStringExtra("CODRESP"));
        convertJSON.put("COMP_DADOS_CONF", receiveResult.getStringExtra("COMP_DADOS_CONF"));
        convertJSON.put("CODTRANS", receiveResult.getStringExtra("CODTRANS"));
        convertJSON.put("VLTROCO", receiveResult.getStringExtra("VLTROCO"));
        convertJSON.put("REDE_AUT", receiveResult.getStringExtra("REDE_AUT"));
        convertJSON.put("BANDEIRA", receiveResult.getStringExtra("BANDEIRA"));
        convertJSON.put("NSU_SITEF", receiveResult.getStringExtra("NSU_SITEF"));
        convertJSON.put("NSU_HOST", receiveResult.getStringExtra("NSU_HOST"));
        convertJSON.put("COD_AUTORIZACAO", receiveResult.getStringExtra("COD_AUTORIZACAO"));
        convertJSON.put("NUM_PARC", receiveResult.getStringExtra("NUM_PARC"));
        convertJSON.put("TIPO_PARC", receiveResult.getStringExtra("TIPO_PARC"));
        convertJSON.put("VIA_ESTABELECIMENTO", receiveResult.getStringExtra("VIA_ESTABELECIMENTO"));
        convertJSON.put("VIA_CLIENTE", receiveResult.getStringExtra("VIA_CLIENTE"));

        return convertJSON.toString();
    }

    @ReactMethod
    public void runMsiTef(ReadableMap configsReceived) {
        Intent intentToMsitef = new Intent("br.com.softwareexpress.sitef.msitef.ACTIVITY_CLISITEF");
        Activity thisActivity = getCurrentActivity();

        instanceBundle = new Bundle();

        ReadableMapKeySetIterator iterator = configsReceived.keySetIterator();
        while (iterator.hasNextKey()) {
            String key = iterator.nextKey();
            instanceBundle.putString(key, configsReceived.getString(key));
        }

        intentToMsitef.putExtras(instanceBundle);

        thisActivity.startActivityForResult(intentToMsitef, 4321);
    }

    @ReactMethod
    public void runPayGo(ReadableMap configsReceived) {
        if (configsReceived.getString("typeOption").equals("VENDA")) {
            PayGo.efetuaTransacao(Operacoes.VENDA, configsReceived);

        } else if (configsReceived.getString("typeOption").equals("CANCELAMENTO")) {
            PayGo.efetuaTransacao(Operacoes.CANCELAMENTO, configsReceived);

        } else {
            PayGo.efetuaTransacao(Operacoes.ADMINISTRATIVA, configsReceived);
        }
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    @ReactMethod
    public void sendOptionsClassPrinter(ReadableMap configsReceived) {
        WritableMap result = Arguments.createMap();

        if (configsReceived.getString("typePrinter").equals("printerConnectInternal")) {
            Printer.printerInternalImpStart();

        } else if (configsReceived.getString("typePrinter").equals("connectionPrinterExternIp")) {
            Printer.printerExternalImpIpStart(configsReceived);
        } else if (configsReceived.getString("typePrinter").equals("connectionPrinterExternUsb")) {
            Printer.printerExternalImpUsbStart(configsReceived);
        } else if (configsReceived.getString("typePrinter").equals("printerCupomTEF")) {
            Printer.imprimeCupomTEF(configsReceived);
        } else if (configsReceived.getString("typePrinter").equals("printerText")) {
            Printer.imprimeTexto(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("printerBarCode")) {
            Printer.imprimeBarCode(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("printerBarCodeTypeQrCode")) {
            Printer.imprimeQR_CODE(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("printerImage")) {
            Printer.imprimeImagem(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("printerNFCe")) {
            Printer.imprimeXMLNFCe(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("printerSAT")) {
            Printer.imprimeXMLSAT(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("gavetaStatus")) {
            result.putString("statusGaveta", String.valueOf(Printer.statusGaveta()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventStatusGaveta", result);

        } else if (configsReceived.getString("typePrinter").equals("abrirGaveta")) {
            Printer.abrirGaveta();

        } else if (configsReceived.getString("typePrinter").equals("jumpLine")) {
            Printer.AvancaLinhas(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("cutPaper")) {
            Printer.cutPaper(configsReceived);

        } else if (configsReceived.getString("typePrinter").equals("statusPrinter")) {
            result.putString("statusPrinter", String.valueOf(Printer.statusSensorPapel()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventStatusPrinter", result);
        } else if (configsReceived.getString("typePrinter").equals("printerStop")) {
            Printer.printerStop();
        }
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    @ReactMethod
    public void runSat(ReadableMap configsReceived) {
        WritableMap result = Arguments.createMap();

        if (configsReceived.getString("typeSat").equals("activateSat")) {
            result.putString("resultAtivarSat", String.valueOf(ServiceSat.ativarSAT(configsReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventAtivarSat", result);

        } else if (configsReceived.getString("typeSat").equals("associateSignature")) {
            result.putString("resultAssociateSignature", String.valueOf(ServiceSat.associarAssinatura(configsReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventAssociateSignature", result);

        } else if (configsReceived.getString("typeSat").equals("consultSat")) {
            result.putString("resultConsultSat", ServiceSat.consultarSAT(configsReceived));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventConsultSat", result);

        } else if (configsReceived.getString("typeSat").equals("statusSat")) {
            result.putString("resultStatusOperacional", ServiceSat.statusOperacional(configsReceived));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventStatusOperacional", result);

        } else if (configsReceived.getString("typeSat").equals("sendSell")) {
            result.putString("resultSendSell", String.valueOf(ServiceSat.enviarVenda(configsReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventSendSell", result);


        } else if (configsReceived.getString("typeSat").equals("cancelSell")) {
            result.putString("resultCancelSell", String.valueOf(ServiceSat.cancelarVenda(configsReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventCancelSell", result);


        } else if (configsReceived.getString("typeSat").equals("getLogs")) {
            result.putString("resultGetLog", String.valueOf(ServiceSat.extrairLog(configsReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventGetLog", result);
        }
    }

    @ReactMethod
    public void runBalanca(ReadableMap configsReceived) {
        WritableMap result = Arguments.createMap();

        if (configsReceived.getString("typeBalanca").equals("configBalanca")) {
            Balanca.configBalanca(configsReceived);

        } else if (configsReceived.getString("typeBalanca").equals("lerPeso")) {
            String returnValue = Balanca.lerPesoBalanca();
            System.out.println(returnValue);

            result.putString("resultLerPeso", returnValue);

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventLerPeso", result);
        }
    }

    @ReactMethod
    public void runBridge(ReadableMap configReceived) {
        WritableMap result = Arguments.createMap();

        if (configReceived.getString("typeBridge").equals("vendaCredito")) {
            result.putString("resultVendaCredito", String.valueOf(BridgeService.IniciaVendaCredito(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventVendaCredito", result);

        } else if (configReceived.getString("typeBridge").equals("vendaDebito")) {
            result.putString("resultVendaDebito", String.valueOf(BridgeService.IniciaVendaDebito(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventVendaDebito", result);

        } else if (configReceived.getString("typeBridge").equals("cancelamentoVenda")) {
            result.putString("resultCancelamentoVenda", String.valueOf(BridgeService.IniciaCancelamentoVenda(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventCancelamentoVenda", result);

        } else if (configReceived.getString("typeBridge").equals("operacaoAdministrativa")) {
            result.putString("resultOperacaoAdministrativa", String.valueOf(BridgeService.IniciaOperacaoAdministrativa(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventOperacaoAdministrativa", result);

        } else if (configReceived.getString("typeBridge").equals("bridgeNFCe")) {
            result.putString("resultBridgeNFCe", String.valueOf(BridgeService.bridgeXmlNFCe()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventBridgeNFCe", result);
        } else if (configReceived.getString("typeBridge").equals("bridgeSAT")) {
            result.putString("resultBridgeSAT", String.valueOf(BridgeService.bridgeXmlSAT()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventBridgeSAT", result);

        } else if (configReceived.getString("typeBridge").equals("bridgeCancelation")) {
            result.putString("resultBridgeCancelation", String.valueOf(BridgeService.bridgeCancelation()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventBridgeCancelation", result);

        } else if (configReceived.getString("typeBridge").equals("setSenha")) {
            BridgeService.SetSenha(configReceived);

        } else if (configReceived.getString("typeBridge").equals("consultarStatus")) {
            result.putString("resultConsultarStatus", String.valueOf(BridgeService.ConsultarStatus()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventConsultarStatus", result);

        } else if (configReceived.getString("typeBridge").equals("getTimeOut")) {
            result.putString("resultGetTimeOut", String.valueOf(BridgeService.GetTimeout()));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventGetTimeOut", result);

        } else if (configReceived.getString("typeBridge").equals("consultarUltimaTransacao")) {
            result.putString("resultUltimaTransacao", String.valueOf(BridgeService.ConsultarUltimaTransacao(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventUltimaTransacao", result);

        } else if (configReceived.getString("typeBridge").equals("setSenhaServer")) {
            result.putString("resultSetSenhaServer", String.valueOf(BridgeService.SetSenhaServer(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventSetSenhaServer", result);

        } else if (configReceived.getString("typeBridge").equals("setTimeOut")) {
            result.putString("resultSetTimeOut", String.valueOf(BridgeService.SetTimeout(configReceived)));

            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventSetTimeOut", result);


        } else if (configReceived.getString("typeBridge").equals("getServer")) {
            BridgeService.GetServer();
        } else if (configReceived.getString("typeBridge").equals("setServer")) {
            BridgeService.SetServer(configReceived);
        }
    }

    @ReactMethod
    public void sendNfceOption(ReadableMap map) {
        Log.d("DEBUG", "oxe " + map.toString());

        //?? necess??rio que a permiss??o esteja garantida para as opera????es NFCe
        if (isStoragePermissionGranted()) {
            if (map.getString("typeNfce").equals("CONFIGURATE_XML_NFCE"))
                configurateXmlNfce();
            else
                sendSaleNfce(map);
        }
    }

    private void sendSaleNfce(ReadableMap map) {
        final String productName = map.getString("productName");
        final String productPrice = map.getString("productPrice");

        //?? feita uma venda antes da venda antes para que a nossa venda n??o seja omitida, isso ?? necess??rio em servidor de homologa????o
        preSale();

        //Configuramos a venda com os dados da tela
        try {
            it4rObj.venderItem(productName, productPrice, "123456789012");
        } catch (DarumaException e) {
            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventSendSaleNfce", "Erro na configura????o da venda " + e.getMessage());
            e.printStackTrace();
            return;
        }

        //Vari??vel para guardar o status da emiss??o, caso seja offline o tempo de emiss??o n??o deve ser passado
        boolean wasNfceEmittedOnline = true;

        //Encerramos a venda emitindo a nota para o servidor
        try {
            it4rObj.encerrarVenda(productPrice, "Dinheiro");
        } catch (DarumaException e) {
            wasNfceEmittedOnline = false;
        }

        StringBuilder returnSendSaleNfce = new StringBuilder();

        if (wasNfceEmittedOnline)
            returnSendSaleNfce.append("NFC-e emitida com sucesso!" + "|" + (it4rObj.getTimeElapsedInLastEmission().get() / 1000) + "|" + it4rObj.getNumeroNota() + "|" + it4rObj.getNumeroSerie());
        else
            returnSendSaleNfce.append("Erro ao emitir NFC-e online, a impress??o ser?? da nota em conting??ncia!" + "|" + it4rObj.getNumeroNota() + "|" + it4rObj.getNumeroSerie());

        reactContext
                .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                .emit("eventSendSaleNfce", returnSendSaleNfce.toString());

        //Impress??o da NFC-e
        final WritableMap mapValues = Arguments.createMap();

        mapValues.putString("xmlNFCe", getTextOfFile());
        mapValues.putInt("indexcsc", 1);
        mapValues.putString("csc", "1A451E99-0FE0-4C13-B97E-67D698FFBC37");
        mapValues.putInt("param", 0);
        mapValues.putInt("quant", 10);

        final int printerReturn = Printer.imprimeXMLNFCe(mapValues);
        Printer.cutPaper(mapValues);
        Log.d("DEBUG", String.valueOf(printerReturn));
    }

    //Fun????o que l?? o xml que representa a nota NFC-e emitida e retorna uma String com o conte??do
    private String getTextOfFile() {
        String strFile = "";

        strFile = Environment.getExternalStorageDirectory().getAbsolutePath() + "/EnvioWS.xml";

        String strFileContent = "";
        File file = new File(strFile);

        if (file.exists()) {
            FileInputStream fis2 = null;
            try {
                fis2 = new FileInputStream(file);
                char current;
                while (fis2.available() > 0) {
                    current = ((char) fis2.read());
                    strFileContent = strFileContent + String.valueOf(current);
                }

            } catch (Exception e) {
                Log.d("TourGuide", e.toString());
            } finally {
                if (fis2 != null) try {
                    fis2.close();
                } catch (Exception e) {

                }
            }
        }
        return strFileContent;
    }

    private void preSale() {
        try {
            it4rObj.venderItem("I", "0.00", "123456789011");
        } catch (DarumaException e) {
            e.printStackTrace();
            reactContext
                    .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                    .emit("eventSendSaleNfce", "Erro na configura????o da venda " + e.getMessage());
            return;
        }
    }

    //Checa se a permiss??o para escrever arquivos em diret??rios externos foi garantida, se n??o tiver ; pe??a novamente
    public boolean isStoragePermissionGranted() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (reactContext.checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED) {
                Log.v("DEBUG", "A permiss??o est?? garantida!");
                return true;
            } else {
                Log.v("DEBUG", "A permiss??o est?? negada!");
                //Pedindo permiss??o
                ActivityCompat.requestPermissions(reactContext.getCurrentActivity(), new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_CODE_WRITE_EXTERNAL_STORAGE);
                return false;
            }
        } else { //A permiss??o ?? automaticamente concecida em sdk > 23 na instala????o
            Log.v("DEBUG", "A permiss??o est?? garantida!");
            return true;
        }
    }
}