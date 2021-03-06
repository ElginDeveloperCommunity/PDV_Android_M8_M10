
unit Elgin.JNI.E1;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.Bluetooth,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Java.Net,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util,
  Androidapi.JNI.Webkit,
  Androidapi.JNI.Widget;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JUsbAccessory = interface;//android.hardware.usb.UsbAccessory
  JUsbConfiguration = interface;//android.hardware.usb.UsbConfiguration
  JUsbDevice = interface;//android.hardware.usb.UsbDevice
  JUsbDeviceConnection = interface;//android.hardware.usb.UsbDeviceConnection
  JUsbEndpoint = interface;//android.hardware.usb.UsbEndpoint
  JUsbInterface = interface;//android.hardware.usb.UsbInterface
  JUsbManager = interface;//android.hardware.usb.UsbManager
  JUsbRequest = interface;//android.hardware.usb.UsbRequest
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  JAppInitializer = interface;//androidx.startup.AppInitializer
  JInitializationProvider = interface;//androidx.startup.InitializationProvider
  JInitializer = interface;//androidx.startup.Initializer
  JStartupException = interface;//androidx.startup.StartupException
  JStartupLogger = interface;//androidx.startup.StartupLogger
  JAplicacaoNaoInstaladaExcecao = interface;//br.com.setis.interfaceautomacao.AplicacaoNaoInstaladaExcecao
  Jinterfaceautomacao_BuildConfig = interface;//br.com.setis.interfaceautomacao.BuildConfig
  JCartoes = interface;//br.com.setis.interfaceautomacao.Cartoes
  JComunicacaoServico = interface;//br.com.setis.interfaceautomacao.ComunicacaoServico
  JComunicacaoServico_IncomingHandler = interface;//br.com.setis.interfaceautomacao.ComunicacaoServico$IncomingHandler
  JConfirmacao = interface;//br.com.setis.interfaceautomacao.Confirmacao
  JConfirmacoes = interface;//br.com.setis.interfaceautomacao.Confirmacoes
  JDadosAutomacao = interface;//br.com.setis.interfaceautomacao.DadosAutomacao
  JEntradaTransacao = interface;//br.com.setis.interfaceautomacao.EntradaTransacao
  JFinanciamentos = interface;//br.com.setis.interfaceautomacao.Financiamentos
  JGlobalDefs = interface;//br.com.setis.interfaceautomacao.GlobalDefs
  JIdentificacaoPortadorCarteira = interface;//br.com.setis.interfaceautomacao.IdentificacaoPortadorCarteira
  JModalidadesPagamento = interface;//br.com.setis.interfaceautomacao.ModalidadesPagamento
  JModalidadesTransacao = interface;//br.com.setis.interfaceautomacao.ModalidadesTransacao
  JOperacoes = interface;//br.com.setis.interfaceautomacao.Operacoes
  JPersonalizacao = interface;//br.com.setis.interfaceautomacao.Personalizacao
  JPersonalizacao_1 = interface;//br.com.setis.interfaceautomacao.Personalizacao$1
  JPersonalizacao_Builder = interface;//br.com.setis.interfaceautomacao.Personalizacao$Builder
  JProvedores = interface;//br.com.setis.interfaceautomacao.Provedores
  JQuedaConexaoTerminalExcecao = interface;//br.com.setis.interfaceautomacao.QuedaConexaoTerminalExcecao
  JSaidaTransacao = interface;//br.com.setis.interfaceautomacao.SaidaTransacao
  JSenderActivity = interface;//br.com.setis.interfaceautomacao.SenderActivity
  JStatusTransacao = interface;//br.com.setis.interfaceautomacao.StatusTransacao
  JTerminal = interface;//br.com.setis.interfaceautomacao.Terminal
  JTerminalDesconectadoExcecao = interface;//br.com.setis.interfaceautomacao.TerminalDesconectadoExcecao
  JTerminalNaoConfiguradoExcecao = interface;//br.com.setis.interfaceautomacao.TerminalNaoConfiguradoExcecao
  JTransacao = interface;//br.com.setis.interfaceautomacao.Transacao
  JTransacaoPendenteDados = interface;//br.com.setis.interfaceautomacao.TransacaoPendenteDados
  JTransacoes = interface;//br.com.setis.interfaceautomacao.Transacoes
  JTransacoes_1 = interface;//br.com.setis.interfaceautomacao.Transacoes$1
  JTransacoes_TransacaoResultReceiver = interface;//br.com.setis.interfaceautomacao.Transacoes$TransacaoResultReceiver
  JVersoes = interface;//br.com.setis.interfaceautomacao.Versoes
  JViasImpressao = interface;//br.com.setis.interfaceautomacao.ViasImpressao
  JCustomization = interface;//br.com.setis.interfaceautomacao.espec.Customization
  JTransactionInput = interface;//br.com.setis.interfaceautomacao.espec.TransactionInput
  JTransactionOutput = interface;//br.com.setis.interfaceautomacao.espec.TransactionOutput
  JDateParser = interface;//br.com.setis.interfaceautomacao.parser.DateParser
  JEnumType = interface;//br.com.setis.interfaceautomacao.parser.EnumType
  JInputParser = interface;//br.com.setis.interfaceautomacao.parser.InputParser
  JOutputParser = interface;//br.com.setis.interfaceautomacao.parser.OutputParser
  Jparser_ParseException = interface;//br.com.setis.interfaceautomacao.parser.ParseException
  JUriArrayFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriArrayFieldName
  Jparser_UriClass = interface;//br.com.setis.interfaceautomacao.parser.UriClass
  JUriCustomizeFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriCustomizeFieldName
  JUriDateFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriDateFieldName
  JUriEnumFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriEnumFieldName
  JUriFileFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriFileFieldName
  JUriMethodName = interface;//br.com.setis.interfaceautomacao.parser.UriMethodName
  JUriObjectFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriObjectFieldName
  JUriPrimitiveFieldName = interface;//br.com.setis.interfaceautomacao.parser.UriPrimitiveFieldName
  JAlgorithmConstants = interface;//com.cloudpos.AlgorithmConstants
  JDevice = interface;//com.cloudpos.Device
  JDeviceException = interface;//com.cloudpos.DeviceException
  JDeviceSpec = interface;//com.cloudpos.DeviceSpec
  JOperationListener = interface;//com.cloudpos.OperationListener
  JOperationResult = interface;//com.cloudpos.OperationResult
  JPOSTerminal = interface;//com.cloudpos.POSTerminal
  JTerminalSpec = interface;//com.cloudpos.TerminalSpec
  JTimeConstants = interface;//com.cloudpos.TimeConstants
  JFingerprint = interface;//com.cloudpos.fingerprint.Fingerprint
  JFingerprintDevice = interface;//com.cloudpos.fingerprint.FingerprintDevice
  JFingerprintDeviceSpec = interface;//com.cloudpos.fingerprint.FingerprintDeviceSpec
  JFingerprintOperationResult = interface;//com.cloudpos.fingerprint.FingerprintOperationResult
  JIFPHelper = interface;//com.cloudpos.fingerprint.aidl.IFPHelper
  JIFPHelper_Stub = interface;//com.cloudpos.fingerprint.aidl.IFPHelper$Stub
  JIFPHelper_Stub_Proxy = interface;//com.cloudpos.fingerprint.aidl.IFPHelper$Stub$Proxy
  Jfingerprint_package_info = interface;//com.cloudpos.fingerprint.package-info
  JExternalPrinterInterface = interface;//com.cloudpos.jniinterface.ExternalPrinterInterface
  JFingerPrintInterface = interface;//com.cloudpos.jniinterface.FingerPrintInterface
  JIsoFingerPrintInterface = interface;//com.cloudpos.jniinterface.IsoFingerPrintInterface
  JJNILoad = interface;//com.cloudpos.jniinterface.JNILoad
  JLEDInterface = interface;//com.cloudpos.jniinterface.LEDInterface
  JPrinterHtmlInterface = interface;//com.cloudpos.jniinterface.PrinterHtmlInterface
  JPrinterInterface = interface;//com.cloudpos.jniinterface.PrinterInterface
  JSerialPortInterface = interface;//com.cloudpos.jniinterface.SerialPortInterface
  JLEDDevice = interface;//com.cloudpos.led.LEDDevice
  JLEDDeviceSpec = interface;//com.cloudpos.led.LEDDeviceSpec
  Jled_package_info = interface;//com.cloudpos.led.package-info
  Jpackage_info = interface;//com.cloudpos.package-info
  Jprinter_Format = interface;//com.cloudpos.printer.Format
  JPrinterDevice = interface;//com.cloudpos.printer.PrinterDevice
  JPrinterDeviceSpec = interface;//com.cloudpos.printer.PrinterDeviceSpec
  JPrinterOperationResult = interface;//com.cloudpos.printer.PrinterOperationResult
  Jprinter_package_info = interface;//com.cloudpos.printer.package-info
  JIScanCallBack = interface;//com.cloudpos.scanserver.aidl.IScanCallBack
  JIScanCallBack_Stub = interface;//com.cloudpos.scanserver.aidl.IScanCallBack$Stub
  JIScanCallBack_Stub_Proxy = interface;//com.cloudpos.scanserver.aidl.IScanCallBack$Stub$Proxy
  JIScanService = interface;//com.cloudpos.scanserver.aidl.IScanService
  JIScanService_Stub = interface;//com.cloudpos.scanserver.aidl.IScanService$Stub
  JIScanService_Stub_Proxy = interface;//com.cloudpos.scanserver.aidl.IScanService$Stub$Proxy
  JScanParameter = interface;//com.cloudpos.scanserver.aidl.ScanParameter
  JScanParameter_1 = interface;//com.cloudpos.scanserver.aidl.ScanParameter$1
  Jaidl_ScanResult = interface;//com.cloudpos.scanserver.aidl.ScanResult
  JScanResult_1 = interface;//com.cloudpos.scanserver.aidl.ScanResult$1
  Jcommon_Common = interface;//com.cloudpos.sdk.common.Common
  JReflect = interface;//com.cloudpos.sdk.common.Reflect
  JSystemProperties = interface;//com.cloudpos.sdk.common.SystemProperties
  JAbstractDevice = interface;//com.cloudpos.sdk.impl.AbstractDevice
  JFingerprintDeviceImpl = interface;//com.cloudpos.sdk.fingerprint.impl.FingerprintDeviceImpl
  JFingerprintDeviceImpl_FpConnection = interface;//com.cloudpos.sdk.fingerprint.impl.FingerprintDeviceImpl$FpConnection
  JFingerprintDeviceImpl_ListenForFingerprintThread = interface;//com.cloudpos.sdk.fingerprint.impl.FingerprintDeviceImpl$ListenForFingerprintThread
  JFingerprintOperationResultImpl = interface;//com.cloudpos.sdk.fingerprint.impl.FingerprintOperationResultImpl
  JSystemPropertyHelper = interface;//com.cloudpos.sdk.helper.SystemPropertyHelper
  JTerminalHelper = interface;//com.cloudpos.sdk.helper.TerminalHelper
  JAbstractDevice_1 = interface;//com.cloudpos.sdk.impl.AbstractDevice$1
  JAbstractDevice_HandleResultThread = interface;//com.cloudpos.sdk.impl.AbstractDevice$HandleResultThread
  JDeviceName = interface;//com.cloudpos.sdk.impl.DeviceName
  JPOSTerminalImpl = interface;//com.cloudpos.sdk.impl.POSTerminalImpl
  JTerminalSpecImpl = interface;//com.cloudpos.sdk.impl.TerminalSpecImpl
  JLEDDeviceImpl = interface;//com.cloudpos.sdk.led.impl.LEDDeviceImpl
  JLEDDeviceImpl_BlinkThread = interface;//com.cloudpos.sdk.led.impl.LEDDeviceImpl$BlinkThread
  JLEDDeviceSpecImpl = interface;//com.cloudpos.sdk.led.impl.LEDDeviceSpecImpl
  JPrinterCommand = interface;//com.cloudpos.sdk.printer.impl.PrinterCommand
  JPrinterDeviceImpl = interface;//com.cloudpos.sdk.printer.impl.PrinterDeviceImpl
  JPrinterDeviceSpecImpl = interface;//com.cloudpos.sdk.printer.impl.PrinterDeviceSpecImpl
  JPrinterUtil = interface;//com.cloudpos.sdk.printer.impl.PrinterUtil
  JSerialPortDeviceImpl = interface;//com.cloudpos.sdk.serialport.impl.SerialPortDeviceImpl
  JSerialPortDeviceImpl_ListenForReadThread = interface;//com.cloudpos.sdk.serialport.impl.SerialPortDeviceImpl$ListenForReadThread
  JSerialPortDeviceSpec = interface;//com.cloudpos.serialport.SerialPortDeviceSpec
  JSerialPortDeviceSpecImpl = interface;//com.cloudpos.sdk.serialport.impl.SerialPortDeviceSpecImpl
  JSerialPortOperationResult = interface;//com.cloudpos.serialport.SerialPortOperationResult
  JSerialPortOperationResultImpl = interface;//com.cloudpos.sdk.serialport.impl.SerialPortOperationResultImpl
  JByteConvert = interface;//com.cloudpos.sdk.util.ByteConvert
  JByteConvert2 = interface;//com.cloudpos.sdk.util.ByteConvert2
  JByteConvertStringUtil = interface;//com.cloudpos.sdk.util.ByteConvertStringUtil
  JByteUtil = interface;//com.cloudpos.sdk.util.ByteUtil
  Jutil_Debug = interface;//com.cloudpos.sdk.util.Debug
  JErrorCode = interface;//com.cloudpos.sdk.util.ErrorCode
  JFileUtil = interface;//com.cloudpos.sdk.util.FileUtil
  JJavaSDKVersion = interface;//com.cloudpos.sdk.util.JavaSDKVersion
  JLogHelper = interface;//com.cloudpos.sdk.util.LogHelper
  JStringUtil = interface;//com.cloudpos.sdk.util.StringUtil
  JStringUtility = interface;//com.cloudpos.sdk.util.StringUtility
  JSystemUtil = interface;//com.cloudpos.sdk.util.SystemUtil
  JSerialPortDevice = interface;//com.cloudpos.serialport.SerialPortDevice
  Jserialport_package_info = interface;//com.cloudpos.serialport.package-info
  JBalanca = interface;//com.elgin.e1.Balanca.Balanca
  JBalanca_Config = interface;//com.elgin.e1.Balanca.Balanca$Config
  JBalanca_ConfigAltValues = interface;//com.elgin.e1.Balanca.Balanca$ConfigAltValues
  JBalanca_ModeloBalanca = interface;//com.elgin.e1.Balanca.Balanca$ModeloBalanca
  JBalanca_ProtocoloComunicacao = interface;//com.elgin.e1.Balanca.Balanca$ProtocoloComunicacao
  JBalancaE1 = interface;//com.elgin.e1.Balanca.BalancaE1
  JBalancas = interface;//com.elgin.e1.Balanca.Balancas
  JComm = interface;//com.elgin.e1.Balanca.Comm
  JComm_1 = interface;//com.elgin.e1.Balanca.Comm$1
  JComm_TipoConexao = interface;//com.elgin.e1.Balanca.Comm$TipoConexao
  JCommSerial = interface;//com.elgin.e1.Balanca.CommSerial
  JCommTCP = interface;//com.elgin.e1.Balanca.CommTCP
  JCommTCP_Timeouts = interface;//com.elgin.e1.Balanca.CommTCP$Timeouts
  JInterfaceBalanca = interface;//com.elgin.e1.Balanca.InterfaceBalanca
  JImplementacaoBalanca = interface;//com.elgin.e1.Balanca.ImplementacaoBalanca
  JImplementacaoBalanca_1 = interface;//com.elgin.e1.Balanca.ImplementacaoBalanca$1
  Je1_BuildConfig = interface;//com.elgin.e1.BuildConfig
  JConexao = interface;//com.elgin.e1.Comunicacao.Conexao
  JConBluetooth = interface;//com.elgin.e1.Comunicacao.ConBluetooth
  JConBluetooth_1GetBluetoothData = interface;//com.elgin.e1.Comunicacao.ConBluetooth$1GetBluetoothData
  JConBluetooth_1GetPrinterBluetooth = interface;//com.elgin.e1.Comunicacao.ConBluetooth$1GetPrinterBluetooth
  JConBluetooth_1SendData = interface;//com.elgin.e1.Comunicacao.ConBluetooth$1SendData
  JConM8 = interface;//com.elgin.e1.Comunicacao.ConM8
  JPrinterManager_PrinterManagerListener = interface;//com.elgin.minipdvm8.PrinterManager$PrinterManagerListener
  JConM8_1 = interface;//com.elgin.e1.Comunicacao.ConM8$1
  JConSerial = interface;//com.elgin.e1.Comunicacao.ConSerial
  JConService = interface;//com.elgin.e1.Comunicacao.ConService
  JConService_1GetData = interface;//com.elgin.e1.Comunicacao.ConService$1GetData
  JConService_1GetPrinter = interface;//com.elgin.e1.Comunicacao.ConService$1GetPrinter
  JConService_1SendData = interface;//com.elgin.e1.Comunicacao.ConService$1SendData
  JConService_2GetData = interface;//com.elgin.e1.Comunicacao.ConService$2GetData
  JConSmartPOS = interface;//com.elgin.e1.Comunicacao.ConSmartPOS
  JConTCP_IP = interface;//com.elgin.e1.Comunicacao.ConTCP_IP
  JConTCP_IP_1GetData = interface;//com.elgin.e1.Comunicacao.ConTCP_IP$1GetData
  JConTCP_IP_1GetPrinter = interface;//com.elgin.e1.Comunicacao.ConTCP_IP$1GetPrinter
  JConTCP_IP_1SendData = interface;//com.elgin.e1.Comunicacao.ConTCP_IP$1SendData
  JConUSB = interface;//com.elgin.e1.Comunicacao.ConUSB
  JConUSB_1 = interface;//com.elgin.e1.Comunicacao.ConUSB$1
  JInterfaceFactoryXMLSAT = interface;//com.elgin.e1.Fiscal.InterfaceFactoryXMLSAT
  JImplementacaoFactoryXMLSAT = interface;//com.elgin.e1.Fiscal.ImplementacaoFactoryXMLSAT
  JInterfaceSAT = interface;//com.elgin.e1.Fiscal.InterfaceSAT
  JImplementacaoSAT = interface;//com.elgin.e1.Fiscal.ImplementacaoSAT
  JMFe = interface;//com.elgin.e1.Fiscal.MFe
  JNFCe = interface;//com.elgin.e1.Fiscal.NFCe
  JSAT = interface;//com.elgin.e1.Fiscal.SAT
  JAndroid = interface;//com.elgin.e1.Impressora.Android
  JdsImpressora = interface;//com.elgin.e1.Impressora.Config.dsImpressora
  JdsImpressora_1 = interface;//com.elgin.e1.Impressora.Config.dsImpressora$1
  JdsImpressora_infoHW = interface;//com.elgin.e1.Impressora.Config.dsImpressora$infoHW
  JdsSAT = interface;//com.elgin.e1.Impressora.Config.dsSAT
  JdsSAT_1 = interface;//com.elgin.e1.Impressora.Config.dsSAT$1
  JdsSAT_ChaveDePesquisa = interface;//com.elgin.e1.Impressora.Config.dsSAT$ChaveDePesquisa
  JEtiqueta = interface;//com.elgin.e1.Impressora.Etiqueta
  JAndroidDevices = interface;//com.elgin.e1.Impressora.Impressoras.AndroidDevices
  JInterfaceAndroid = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceAndroid
  JImplementacaoAndroid = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoAndroid
  JImplementacaoAndroid_IIImpressaoTexto = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoAndroid$IIImpressaoTexto
  JInterfaceBematech = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceBematech
  JImplementacaoBematech = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoBematech
  JInterfaceEtiqueta = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceEtiqueta
  JImplementacaoEtiqueta = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoEtiqueta
  JImplementacaoM8 = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoM8
  JImplementacaoM8_1 = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoM8$1
  JImplementacaoSmartPOS = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoSmartPOS
  JImplementacaoSmartPOS_1 = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoSmartPOS$1
  JInterfaceTermica = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceTermica
  JImplementacaoTermica = interface;//com.elgin.e1.Impressora.Impressoras.ImplementacaoTermica
  JInterfaceM8 = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceM8
  JInterfaceSmartPOS = interface;//com.elgin.e1.Impressora.Impressoras.InterfaceSmartPOS
  JMiniPDVM8 = interface;//com.elgin.e1.Impressora.MiniPDVM8
  JSmart = interface;//com.elgin.e1.Impressora.Smart
  JTermica = interface;//com.elgin.e1.Impressora.Termica
  JCodigoErro = interface;//com.elgin.e1.Impressora.Utilidades.CodigoErro
  JESCPOS = interface;//com.elgin.e1.Impressora.Utilidades.ESCPOS
  JInteiro = interface;//com.elgin.e1.Impressora.Utilidades.Inteiro
  JPPLA = interface;//com.elgin.e1.Impressora.Utilidades.PPLA
  JStringRef = interface;//com.elgin.e1.Impressora.Utilidades.StringRef
  JUtilidades = interface;//com.elgin.e1.Impressora.Utilidades.Utilidades
  JNodeList = interface;//org.w3c.dom.NodeList
  JUtilidades_1 = interface;//com.elgin.e1.Impressora.Utilidades.Utilidades$1
  JInterfaceOBJXMLPRODUTO = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJXMLPRODUTO
  JImplementacaoOBJXMLPRODUTO = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXMLPRODUTO
  JImplementacaoOBJPRODUTOXMLNFCE = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJPRODUTOXMLNFCE
  JImplementacaoOBJPRODUTOXMLSAT = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJPRODUTOXMLSAT
  JInterfaceOBJXML = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJXML
  JImplementacaoOBJXML = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXML
  JImplementacaoOBJXML_1 = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXML$1
  JImplementacaoOBJXML_infoPag = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXML$infoPag
  JImplementacaoOBJXMLCANCELAMENTO = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXMLCANCELAMENTO
  JImplementacaoOBJXMLNFCE = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXMLNFCE
  JImplementacaoOBJXMLSAT = interface;//com.elgin.e1.Impressora.XML.ImplementacaoOBJXMLSAT
  JInterfaceOBJPRODUTOXMLNFCE = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJPRODUTOXMLNFCE
  JInterfaceOBJPRODUTOXMLSAT = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJPRODUTOXMLSAT
  JInterfaceOBJXMLCANCELAMENTO = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJXMLCANCELAMENTO
  JInterfaceOBJXMLNFCE = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJXMLNFCE
  JInterfaceOBJXMLSAT = interface;//com.elgin.e1.Impressora.XML.InterfaceOBJXMLSAT
  JBridge = interface;//com.elgin.e1.Pagamento.Brigde.Bridge
  JConfigFile = interface;//com.elgin.e1.Pagamento.Brigde.ConfigFile
  JConfigFileInitializer = interface;//com.elgin.e1.Pagamento.Brigde.ConfigFileInitializer
  JConstantes = interface;//com.elgin.e1.Pagamento.Brigde.Constantes
  JInterfaceBridge = interface;//com.elgin.e1.Pagamento.Brigde.InterfaceBridge
  JImplementacaoBridge = interface;//com.elgin.e1.Pagamento.Brigde.ImplementacaoBridge
  JTcpSocket = interface;//com.elgin.e1.Pagamento.Brigde.TcpSocket
  JTcpSocket_1TcpConnect = interface;//com.elgin.e1.Pagamento.Brigde.TcpSocket$1TcpConnect
  JTcpSocket_1TcpReadAll = interface;//com.elgin.e1.Pagamento.Brigde.TcpSocket$1TcpReadAll
  JTcpSocket_1TcpWrite = interface;//com.elgin.e1.Pagamento.Brigde.TcpSocket$1TcpWrite
  JElginPayController = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController
  JElginPayController_1 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$1
  JElginPayController_10 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$10
  JElginPayController_11 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$11
  JElginPayController_2 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$2
  JElginPayController_3 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$3
  JElginPayController_4 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$4
  JElginPayController_5 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$5
  JElginPayController_6 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$6
  JElginPayController_7 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$7
  JElginPayController_8 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$8
  JElginPayController_9 = interface;//com.elgin.e1.Pagamento.Controller.ElginPayController$9
  JTipoImpressao = interface;//com.elgin.e1.Pagamento.Controller.TipoImpressao
  JElginPay = interface;//com.elgin.e1.Pagamento.ElginPay
  JPagamento_Utils = interface;//com.elgin.e1.Pagamento.Utils
  JScanner_Scanner = interface;//com.elgin.e1.Scanner.Scanner
  JAssinaturas = interface;//com.elgin.e1.Servico.Assinaturas
  JParametros = interface;//com.elgin.e1.Servico.Parametros
  JServicoE1 = interface;//com.elgin.e1.Servico.ServicoE1
  JServicoE1_Etiqueta = interface;//com.elgin.e1.Servico.ServicoE1$Etiqueta
  JServicoE1_SAT = interface;//com.elgin.e1.Servico.ServicoE1$SAT
  JServicoE1_Termica = interface;//com.elgin.e1.Servico.ServicoE1$Termica
  Jminipdvm8_BuildConfig = interface;//com.elgin.minipdvm8.BuildConfig
  JPrinterManager = interface;//com.elgin.minipdvm8.PrinterManager
  JPrinterManager_1 = interface;//com.elgin.minipdvm8.PrinterManager$1
  JIPrinterCallback_Stub = interface;//com.xcheng.printerservice.IPrinterCallback$Stub
  JPrinterManager_2 = interface;//com.elgin.minipdvm8.PrinterManager$2
  Jcloudpossdk_aar_slim_BuildConfig = interface;//com.example.cloudpossdk_aar_slim.BuildConfig
  JScanner_BuildConfig = interface;//com.exemplo.Scanner.BuildConfig
  JScanner_MainActivity = interface;//com.exemplo.Scanner.MainActivity
  JMainActivity_1 = interface;//com.exemplo.Scanner.MainActivity$1
  JAidlController = interface;//com.exemplo.Scanner.aidlcontrol.AidlController
  JAidlController_ServiceConnectionImpl = interface;//com.exemplo.Scanner.aidlcontrol.AidlController$ServiceConnectionImpl
  JIAIDLListener = interface;//com.exemplo.Scanner.aidlcontrol.IAIDLListener
  JDeviceUtils = interface;//com.exemplo.Scanner.utils.DeviceUtils
  JCH34xIds = interface;//com.felhr.deviceids.CH34xIds
  JCH34xIds_ConcreteDevice = interface;//com.felhr.deviceids.CH34xIds$ConcreteDevice
  JCP210xIds = interface;//com.felhr.deviceids.CP210xIds
  JCP210xIds_ConcreteDevice = interface;//com.felhr.deviceids.CP210xIds$ConcreteDevice
  JCP2130Ids = interface;//com.felhr.deviceids.CP2130Ids
  JCP2130Ids_ConcreteDevice = interface;//com.felhr.deviceids.CP2130Ids$ConcreteDevice
  JFTDISioIds = interface;//com.felhr.deviceids.FTDISioIds
  JFTDISioIds_ConcreteDevice = interface;//com.felhr.deviceids.FTDISioIds$ConcreteDevice
  JPL2303Ids = interface;//com.felhr.deviceids.PL2303Ids
  JPL2303Ids_ConcreteDevice = interface;//com.felhr.deviceids.PL2303Ids$ConcreteDevice
  JXdcVcpIds = interface;//com.felhr.deviceids.XdcVcpIds
  JXdcVcpIds_ConcreteDevice = interface;//com.felhr.deviceids.XdcVcpIds$ConcreteDevice
  JUsbSerialInterface = interface;//com.felhr.usbserial.UsbSerialInterface
  JUsbSerialDevice = interface;//com.felhr.usbserial.UsbSerialDevice
  JBLED112SerialDevice = interface;//com.felhr.usbserial.BLED112SerialDevice
  Jusbserial_BuildConfig = interface;//com.felhr.usbserial.BuildConfig
  JCDCSerialDevice = interface;//com.felhr.usbserial.CDCSerialDevice
  JCH34xSerialDevice = interface;//com.felhr.usbserial.CH34xSerialDevice
  JCH34xSerialDevice_FlowControlThread = interface;//com.felhr.usbserial.CH34xSerialDevice$FlowControlThread
  JCP2102SerialDevice = interface;//com.felhr.usbserial.CP2102SerialDevice
  JCP2102SerialDevice_FlowControlThread = interface;//com.felhr.usbserial.CP2102SerialDevice$FlowControlThread
  JUsbSpiInterface = interface;//com.felhr.usbserial.UsbSpiInterface
  JUsbSpiDevice = interface;//com.felhr.usbserial.UsbSpiDevice
  JCP2130SpiDevice = interface;//com.felhr.usbserial.CP2130SpiDevice
  JFTDISerialDevice = interface;//com.felhr.usbserial.FTDISerialDevice
  JFTDISerialDevice_FTDIUtilities = interface;//com.felhr.usbserial.FTDISerialDevice$FTDIUtilities
  JPL2303SerialDevice = interface;//com.felhr.usbserial.PL2303SerialDevice
  JSerialBuffer = interface;//com.felhr.usbserial.SerialBuffer
  JSerialBuffer_SynchronizedBuffer = interface;//com.felhr.usbserial.SerialBuffer$SynchronizedBuffer
  JSerialInputStream = interface;//com.felhr.usbserial.SerialInputStream
  JSerialOutputStream = interface;//com.felhr.usbserial.SerialOutputStream
  JUsbSerialDebugger = interface;//com.felhr.usbserial.UsbSerialDebugger
  JUsbSerialDevice_ReadThread = interface;//com.felhr.usbserial.UsbSerialDevice$ReadThread
  JUsbSerialDevice_WorkerThread = interface;//com.felhr.usbserial.UsbSerialDevice$WorkerThread
  JUsbSerialDevice_WriteThread = interface;//com.felhr.usbserial.UsbSerialDevice$WriteThread
  JUsbSerialInterface_UsbBreakCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbBreakCallback
  JUsbSerialInterface_UsbCTSCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbCTSCallback
  JUsbSerialInterface_UsbDSRCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbDSRCallback
  JUsbSerialInterface_UsbFrameCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbFrameCallback
  JUsbSerialInterface_UsbOverrunCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbOverrunCallback
  JUsbSerialInterface_UsbParityCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbParityCallback
  JUsbSerialInterface_UsbReadCallback = interface;//com.felhr.usbserial.UsbSerialInterface$UsbReadCallback
  JUsbSpiDevice_ReadThread = interface;//com.felhr.usbserial.UsbSpiDevice$ReadThread
  JUsbSpiDevice_WriteThread = interface;//com.felhr.usbserial.UsbSpiDevice$WriteThread
  JUsbSpiInterface_UsbMISOCallback = interface;//com.felhr.usbserial.UsbSpiInterface$UsbMISOCallback
  JXdcVcpSerialDevice = interface;//com.felhr.usbserial.XdcVcpSerialDevice
  JHexData = interface;//com.felhr.utils.HexData
  JBarcodeFormat = interface;//com.google.zxing.BarcodeFormat
  JBinarizer = interface;//com.google.zxing.Binarizer
  JBinaryBitmap = interface;//com.google.zxing.BinaryBitmap
  JReaderException = interface;//com.google.zxing.ReaderException
  JChecksumException = interface;//com.google.zxing.ChecksumException
  JDecodeHintType = interface;//com.google.zxing.DecodeHintType
  Jzxing_Dimension = interface;//com.google.zxing.Dimension
  JEncodeHintType = interface;//com.google.zxing.EncodeHintType
  Jzxing_FormatException = interface;//com.google.zxing.FormatException
  JLuminanceSource = interface;//com.google.zxing.LuminanceSource
  JInvertedLuminanceSource = interface;//com.google.zxing.InvertedLuminanceSource
  Jzxing_Reader = interface;//com.google.zxing.Reader
  JMultiFormatReader = interface;//com.google.zxing.MultiFormatReader
  Jzxing_Writer = interface;//com.google.zxing.Writer
  JMultiFormatWriter = interface;//com.google.zxing.MultiFormatWriter
  JMultiFormatWriter_1 = interface;//com.google.zxing.MultiFormatWriter$1
  JNotFoundException = interface;//com.google.zxing.NotFoundException
  JPlanarYUVLuminanceSource = interface;//com.google.zxing.PlanarYUVLuminanceSource
  JRGBLuminanceSource = interface;//com.google.zxing.RGBLuminanceSource
  Jzxing_Result = interface;//com.google.zxing.Result
  JResultMetadataType = interface;//com.google.zxing.ResultMetadataType
  JResultPoint = interface;//com.google.zxing.ResultPoint
  JResultPointCallback = interface;//com.google.zxing.ResultPointCallback
  JWriterException = interface;//com.google.zxing.WriterException
  JDetectorResult = interface;//com.google.zxing.common.DetectorResult
  JAztecDetectorResult = interface;//com.google.zxing.aztec.AztecDetectorResult
  JAztecReader = interface;//com.google.zxing.aztec.AztecReader
  JAztecWriter = interface;//com.google.zxing.aztec.AztecWriter
  Jaztec_decoder_Decoder = interface;//com.google.zxing.aztec.decoder.Decoder
  JDecoder_1 = interface;//com.google.zxing.aztec.decoder.Decoder$1
  JDecoder_Table = interface;//com.google.zxing.aztec.decoder.Decoder$Table
  Jaztec_detector_Detector = interface;//com.google.zxing.aztec.detector.Detector
  JDetector_Point = interface;//com.google.zxing.aztec.detector.Detector$Point
  JAztecCode = interface;//com.google.zxing.aztec.encoder.AztecCode
  JToken = interface;//com.google.zxing.aztec.encoder.Token
  JBinaryShiftToken = interface;//com.google.zxing.aztec.encoder.BinaryShiftToken
  Jaztec_encoder_Encoder = interface;//com.google.zxing.aztec.encoder.Encoder
  Jencoder_HighLevelEncoder = interface;//com.google.zxing.aztec.encoder.HighLevelEncoder
  JHighLevelEncoder_1 = interface;//com.google.zxing.aztec.encoder.HighLevelEncoder$1
  JSimpleToken = interface;//com.google.zxing.aztec.encoder.SimpleToken
  JState = interface;//com.google.zxing.aztec.encoder.State
  JResultParser = interface;//com.google.zxing.client.result.ResultParser
  JAbstractDoCoMoResultParser = interface;//com.google.zxing.client.result.AbstractDoCoMoResultParser
  JAddressBookAUResultParser = interface;//com.google.zxing.client.result.AddressBookAUResultParser
  JAddressBookDoCoMoResultParser = interface;//com.google.zxing.client.result.AddressBookDoCoMoResultParser
  JParsedResult = interface;//com.google.zxing.client.result.ParsedResult
  JAddressBookParsedResult = interface;//com.google.zxing.client.result.AddressBookParsedResult
  JBizcardResultParser = interface;//com.google.zxing.client.result.BizcardResultParser
  JBookmarkDoCoMoResultParser = interface;//com.google.zxing.client.result.BookmarkDoCoMoResultParser
  JCalendarParsedResult = interface;//com.google.zxing.client.result.CalendarParsedResult
  JEmailAddressParsedResult = interface;//com.google.zxing.client.result.EmailAddressParsedResult
  JEmailAddressResultParser = interface;//com.google.zxing.client.result.EmailAddressResultParser
  JEmailDoCoMoResultParser = interface;//com.google.zxing.client.result.EmailDoCoMoResultParser
  JExpandedProductParsedResult = interface;//com.google.zxing.client.result.ExpandedProductParsedResult
  JExpandedProductResultParser = interface;//com.google.zxing.client.result.ExpandedProductResultParser
  JGeoParsedResult = interface;//com.google.zxing.client.result.GeoParsedResult
  JGeoResultParser = interface;//com.google.zxing.client.result.GeoResultParser
  JISBNParsedResult = interface;//com.google.zxing.client.result.ISBNParsedResult
  JISBNResultParser = interface;//com.google.zxing.client.result.ISBNResultParser
  JParsedResultType = interface;//com.google.zxing.client.result.ParsedResultType
  JProductParsedResult = interface;//com.google.zxing.client.result.ProductParsedResult
  JProductResultParser = interface;//com.google.zxing.client.result.ProductResultParser
  JSMSMMSResultParser = interface;//com.google.zxing.client.result.SMSMMSResultParser
  JSMSParsedResult = interface;//com.google.zxing.client.result.SMSParsedResult
  JSMSTOMMSTOResultParser = interface;//com.google.zxing.client.result.SMSTOMMSTOResultParser
  JSMTPResultParser = interface;//com.google.zxing.client.result.SMTPResultParser
  JTelParsedResult = interface;//com.google.zxing.client.result.TelParsedResult
  JTelResultParser = interface;//com.google.zxing.client.result.TelResultParser
  JTextParsedResult = interface;//com.google.zxing.client.result.TextParsedResult
  JURIParsedResult = interface;//com.google.zxing.client.result.URIParsedResult
  JURIResultParser = interface;//com.google.zxing.client.result.URIResultParser
  JURLTOResultParser = interface;//com.google.zxing.client.result.URLTOResultParser
  JVCardResultParser = interface;//com.google.zxing.client.result.VCardResultParser
  JVEventResultParser = interface;//com.google.zxing.client.result.VEventResultParser
  JVINParsedResult = interface;//com.google.zxing.client.result.VINParsedResult
  JVINResultParser = interface;//com.google.zxing.client.result.VINResultParser
  JWifiParsedResult = interface;//com.google.zxing.client.result.WifiParsedResult
  JWifiResultParser = interface;//com.google.zxing.client.result.WifiResultParser
  JBitArray = interface;//com.google.zxing.common.BitArray
  JBitMatrix = interface;//com.google.zxing.common.BitMatrix
  JBitSource = interface;//com.google.zxing.common.BitSource
  JCharacterSetECI = interface;//com.google.zxing.common.CharacterSetECI
  JDecoderResult = interface;//com.google.zxing.common.DecoderResult
  JGridSampler = interface;//com.google.zxing.common.GridSampler
  JDefaultGridSampler = interface;//com.google.zxing.common.DefaultGridSampler
  JGlobalHistogramBinarizer = interface;//com.google.zxing.common.GlobalHistogramBinarizer
  JHybridBinarizer = interface;//com.google.zxing.common.HybridBinarizer
  JPerspectiveTransform = interface;//com.google.zxing.common.PerspectiveTransform
  JStringUtils = interface;//com.google.zxing.common.StringUtils
  Jdetector_MathUtils = interface;//com.google.zxing.common.detector.MathUtils
  JMonochromeRectangleDetector = interface;//com.google.zxing.common.detector.MonochromeRectangleDetector
  JWhiteRectangleDetector = interface;//com.google.zxing.common.detector.WhiteRectangleDetector
  JGenericGF = interface;//com.google.zxing.common.reedsolomon.GenericGF
  JGenericGFPoly = interface;//com.google.zxing.common.reedsolomon.GenericGFPoly
  JReedSolomonDecoder = interface;//com.google.zxing.common.reedsolomon.ReedSolomonDecoder
  JReedSolomonEncoder = interface;//com.google.zxing.common.reedsolomon.ReedSolomonEncoder
  JReedSolomonException = interface;//com.google.zxing.common.reedsolomon.ReedSolomonException
  JDataMatrixReader = interface;//com.google.zxing.datamatrix.DataMatrixReader
  JDataMatrixWriter = interface;//com.google.zxing.datamatrix.DataMatrixWriter
  JBitMatrixParser = interface;//com.google.zxing.datamatrix.decoder.BitMatrixParser
  JDataBlock = interface;//com.google.zxing.datamatrix.decoder.DataBlock
  Jdecoder_DecodedBitStreamParser = interface;//com.google.zxing.datamatrix.decoder.DecodedBitStreamParser
  Jdecoder_DecodedBitStreamParser_1 = interface;//com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1
  Jdecoder_DecodedBitStreamParser_Mode = interface;//com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode
  Jdecoder_Decoder = interface;//com.google.zxing.datamatrix.decoder.Decoder
  Jdecoder_Version = interface;//com.google.zxing.datamatrix.decoder.Version
  JVersion_1 = interface;//com.google.zxing.datamatrix.decoder.Version$1
  JVersion_ECB = interface;//com.google.zxing.datamatrix.decoder.Version$ECB
  JVersion_ECBlocks = interface;//com.google.zxing.datamatrix.decoder.Version$ECBlocks
  Jdetector_Detector = interface;//com.google.zxing.datamatrix.detector.Detector
  Jencoder_Encoder = interface;//com.google.zxing.datamatrix.encoder.Encoder
  JASCIIEncoder = interface;//com.google.zxing.datamatrix.encoder.ASCIIEncoder
  JBase256Encoder = interface;//com.google.zxing.datamatrix.encoder.Base256Encoder
  JC40Encoder = interface;//com.google.zxing.datamatrix.encoder.C40Encoder
  JSymbolInfo = interface;//com.google.zxing.datamatrix.encoder.SymbolInfo
  JDataMatrixSymbolInfo144 = interface;//com.google.zxing.datamatrix.encoder.DataMatrixSymbolInfo144
  JDefaultPlacement = interface;//com.google.zxing.datamatrix.encoder.DefaultPlacement
  JEdifactEncoder = interface;//com.google.zxing.datamatrix.encoder.EdifactEncoder
  JEncoderContext = interface;//com.google.zxing.datamatrix.encoder.EncoderContext
  Jencoder_ErrorCorrection = interface;//com.google.zxing.datamatrix.encoder.ErrorCorrection
  JHighLevelEncoder = interface;//com.google.zxing.datamatrix.encoder.HighLevelEncoder
  JSymbolShapeHint = interface;//com.google.zxing.datamatrix.encoder.SymbolShapeHint
  JTextEncoder = interface;//com.google.zxing.datamatrix.encoder.TextEncoder
  JX12Encoder = interface;//com.google.zxing.datamatrix.encoder.X12Encoder
  JMaxiCodeReader = interface;//com.google.zxing.maxicode.MaxiCodeReader
  Jmaxicode_decoder_BitMatrixParser = interface;//com.google.zxing.maxicode.decoder.BitMatrixParser
  Jmaxicode_decoder_DecodedBitStreamParser = interface;//com.google.zxing.maxicode.decoder.DecodedBitStreamParser
  Jmaxicode_decoder_Decoder = interface;//com.google.zxing.maxicode.decoder.Decoder
  JByQuadrantReader = interface;//com.google.zxing.multi.ByQuadrantReader
  JMultipleBarcodeReader = interface;//com.google.zxing.multi.MultipleBarcodeReader
  JGenericMultipleBarcodeReader = interface;//com.google.zxing.multi.GenericMultipleBarcodeReader
  JQRCodeReader = interface;//com.google.zxing.qrcode.QRCodeReader
  JQRCodeMultiReader = interface;//com.google.zxing.multi.qrcode.QRCodeMultiReader
  JQRCodeMultiReader_1 = interface;//com.google.zxing.multi.qrcode.QRCodeMultiReader$1
  JQRCodeMultiReader_SAComparator = interface;//com.google.zxing.multi.qrcode.QRCodeMultiReader$SAComparator
  Jqrcode_detector_Detector = interface;//com.google.zxing.qrcode.detector.Detector
  JMultiDetector = interface;//com.google.zxing.multi.qrcode.detector.MultiDetector
  JFinderPatternFinder = interface;//com.google.zxing.qrcode.detector.FinderPatternFinder
  JMultiFinderPatternFinder = interface;//com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder
  JMultiFinderPatternFinder_1 = interface;//com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder$1
  JMultiFinderPatternFinder_ModuleSizeComparator = interface;//com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder$ModuleSizeComparator
  JOneDReader = interface;//com.google.zxing.oned.OneDReader
  JCodaBarReader = interface;//com.google.zxing.oned.CodaBarReader
  JOneDimensionalCodeWriter = interface;//com.google.zxing.oned.OneDimensionalCodeWriter
  JCodaBarWriter = interface;//com.google.zxing.oned.CodaBarWriter
  JCode128Reader = interface;//com.google.zxing.oned.Code128Reader
  JCode128Writer = interface;//com.google.zxing.oned.Code128Writer
  JCode128Writer_CType = interface;//com.google.zxing.oned.Code128Writer$CType
  JCode39Reader = interface;//com.google.zxing.oned.Code39Reader
  JCode39Writer = interface;//com.google.zxing.oned.Code39Writer
  JCode93Reader = interface;//com.google.zxing.oned.Code93Reader
  JCode93Writer = interface;//com.google.zxing.oned.Code93Writer
  JUPCEANReader = interface;//com.google.zxing.oned.UPCEANReader
  JEAN13Reader = interface;//com.google.zxing.oned.EAN13Reader
  JUPCEANWriter = interface;//com.google.zxing.oned.UPCEANWriter
  JEAN13Writer = interface;//com.google.zxing.oned.EAN13Writer
  JEAN8Reader = interface;//com.google.zxing.oned.EAN8Reader
  JEAN8Writer = interface;//com.google.zxing.oned.EAN8Writer
  JEANManufacturerOrgSupport = interface;//com.google.zxing.oned.EANManufacturerOrgSupport
  JITFReader = interface;//com.google.zxing.oned.ITFReader
  JITFWriter = interface;//com.google.zxing.oned.ITFWriter
  JMultiFormatOneDReader = interface;//com.google.zxing.oned.MultiFormatOneDReader
  JMultiFormatUPCEANReader = interface;//com.google.zxing.oned.MultiFormatUPCEANReader
  JUPCAReader = interface;//com.google.zxing.oned.UPCAReader
  JUPCAWriter = interface;//com.google.zxing.oned.UPCAWriter
  JUPCEANExtension2Support = interface;//com.google.zxing.oned.UPCEANExtension2Support
  JUPCEANExtension5Support = interface;//com.google.zxing.oned.UPCEANExtension5Support
  JUPCEANExtensionSupport = interface;//com.google.zxing.oned.UPCEANExtensionSupport
  JUPCEReader = interface;//com.google.zxing.oned.UPCEReader
  JUPCEWriter = interface;//com.google.zxing.oned.UPCEWriter
  JAbstractRSSReader = interface;//com.google.zxing.oned.rss.AbstractRSSReader
  JDataCharacter = interface;//com.google.zxing.oned.rss.DataCharacter
  Jrss_FinderPattern = interface;//com.google.zxing.oned.rss.FinderPattern
  Jrss_Pair = interface;//com.google.zxing.oned.rss.Pair
  JRSS14Reader = interface;//com.google.zxing.oned.rss.RSS14Reader
  JRSSUtils = interface;//com.google.zxing.oned.rss.RSSUtils
  JBitArrayBuilder = interface;//com.google.zxing.oned.rss.expanded.BitArrayBuilder
  JExpandedPair = interface;//com.google.zxing.oned.rss.expanded.ExpandedPair
  JExpandedRow = interface;//com.google.zxing.oned.rss.expanded.ExpandedRow
  JRSSExpandedReader = interface;//com.google.zxing.oned.rss.expanded.RSSExpandedReader
  JAbstractExpandedDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
  JAI01decoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01decoder
  JAI01weightDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
  JAI013x0xDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI013x0xDecoder
  JAI013103decoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI013103decoder
  JAI01320xDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01320xDecoder
  JAI01392xDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01392xDecoder
  JAI01393xDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01393xDecoder
  JAI013x0x1xDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AI013x0x1xDecoder
  JAI01AndOtherAIs = interface;//com.google.zxing.oned.rss.expanded.decoders.AI01AndOtherAIs
  JAnyAIDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.AnyAIDecoder
  JBlockParsedResult = interface;//com.google.zxing.oned.rss.expanded.decoders.BlockParsedResult
  JCurrentParsingState = interface;//com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState
  JCurrentParsingState_State = interface;//com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState$State
  JDecodedObject = interface;//com.google.zxing.oned.rss.expanded.decoders.DecodedObject
  JDecodedChar = interface;//com.google.zxing.oned.rss.expanded.decoders.DecodedChar
  JDecodedInformation = interface;//com.google.zxing.oned.rss.expanded.decoders.DecodedInformation
  JDecodedNumeric = interface;//com.google.zxing.oned.rss.expanded.decoders.DecodedNumeric
  JFieldParser = interface;//com.google.zxing.oned.rss.expanded.decoders.FieldParser
  JGeneralAppIdDecoder = interface;//com.google.zxing.oned.rss.expanded.decoders.GeneralAppIdDecoder
  JPDF417Common = interface;//com.google.zxing.pdf417.PDF417Common
  JPDF417Reader = interface;//com.google.zxing.pdf417.PDF417Reader
  JPDF417ResultMetadata = interface;//com.google.zxing.pdf417.PDF417ResultMetadata
  JPDF417Writer = interface;//com.google.zxing.pdf417.PDF417Writer
  JBarcodeMetadata = interface;//com.google.zxing.pdf417.decoder.BarcodeMetadata
  JBarcodeValue = interface;//com.google.zxing.pdf417.decoder.BarcodeValue
  JBoundingBox = interface;//com.google.zxing.pdf417.decoder.BoundingBox
  JCodeword = interface;//com.google.zxing.pdf417.decoder.Codeword
  JDecodedBitStreamParser = interface;//com.google.zxing.pdf417.decoder.DecodedBitStreamParser
  JDecodedBitStreamParser_1 = interface;//com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1
  JDecodedBitStreamParser_Mode = interface;//com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode
  JDetectionResult = interface;//com.google.zxing.pdf417.decoder.DetectionResult
  JDetectionResultColumn = interface;//com.google.zxing.pdf417.decoder.DetectionResultColumn
  JDetectionResultRowIndicatorColumn = interface;//com.google.zxing.pdf417.decoder.DetectionResultRowIndicatorColumn
  JPDF417CodewordDecoder = interface;//com.google.zxing.pdf417.decoder.PDF417CodewordDecoder
  JPDF417ScanningDecoder = interface;//com.google.zxing.pdf417.decoder.PDF417ScanningDecoder
  JErrorCorrection = interface;//com.google.zxing.pdf417.decoder.ec.ErrorCorrection
  JModulusGF = interface;//com.google.zxing.pdf417.decoder.ec.ModulusGF
  JModulusPoly = interface;//com.google.zxing.pdf417.decoder.ec.ModulusPoly
  JDetector = interface;//com.google.zxing.pdf417.detector.Detector
  JPDF417DetectorResult = interface;//com.google.zxing.pdf417.detector.PDF417DetectorResult
  JBarcodeMatrix = interface;//com.google.zxing.pdf417.encoder.BarcodeMatrix
  JBarcodeRow = interface;//com.google.zxing.pdf417.encoder.BarcodeRow
  JCompaction = interface;//com.google.zxing.pdf417.encoder.Compaction
  JDimensions = interface;//com.google.zxing.pdf417.encoder.Dimensions
  JPDF417 = interface;//com.google.zxing.pdf417.encoder.PDF417
  JPDF417ErrorCorrection = interface;//com.google.zxing.pdf417.encoder.PDF417ErrorCorrection
  JPDF417HighLevelEncoder = interface;//com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder
  JPDF417HighLevelEncoder_1 = interface;//com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder$1
  JQRCodeWriter = interface;//com.google.zxing.qrcode.QRCodeWriter
  Jdecoder_BitMatrixParser = interface;//com.google.zxing.qrcode.decoder.BitMatrixParser
  Jdecoder_DataBlock = interface;//com.google.zxing.qrcode.decoder.DataBlock
  JDataMask = interface;//com.google.zxing.qrcode.decoder.DataMask
  JDataMask_1 = interface;//com.google.zxing.qrcode.decoder.DataMask$1
  JDataMask_2 = interface;//com.google.zxing.qrcode.decoder.DataMask$2
  JDataMask_3 = interface;//com.google.zxing.qrcode.decoder.DataMask$3
  JDataMask_4 = interface;//com.google.zxing.qrcode.decoder.DataMask$4
  JDataMask_5 = interface;//com.google.zxing.qrcode.decoder.DataMask$5
  JDataMask_6 = interface;//com.google.zxing.qrcode.decoder.DataMask$6
  JDataMask_7 = interface;//com.google.zxing.qrcode.decoder.DataMask$7
  JDataMask_8 = interface;//com.google.zxing.qrcode.decoder.DataMask$8
  Jqrcode_decoder_DecodedBitStreamParser = interface;//com.google.zxing.qrcode.decoder.DecodedBitStreamParser
  Jqrcode_decoder_DecodedBitStreamParser_1 = interface;//com.google.zxing.qrcode.decoder.DecodedBitStreamParser$1
  Jqrcode_decoder_Decoder = interface;//com.google.zxing.qrcode.decoder.Decoder
  JErrorCorrectionLevel = interface;//com.google.zxing.qrcode.decoder.ErrorCorrectionLevel
  JFormatInformation = interface;//com.google.zxing.qrcode.decoder.FormatInformation
  JMode = interface;//com.google.zxing.qrcode.decoder.Mode
  JQRCodeDecoderMetaData = interface;//com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData
  Jqrcode_decoder_Version = interface;//com.google.zxing.qrcode.decoder.Version
  Jdecoder_Version_ECB = interface;//com.google.zxing.qrcode.decoder.Version$ECB
  Jdecoder_Version_ECBlocks = interface;//com.google.zxing.qrcode.decoder.Version$ECBlocks
  JAlignmentPattern = interface;//com.google.zxing.qrcode.detector.AlignmentPattern
  JAlignmentPatternFinder = interface;//com.google.zxing.qrcode.detector.AlignmentPatternFinder
  JFinderPattern = interface;//com.google.zxing.qrcode.detector.FinderPattern
  JFinderPatternFinder_1 = interface;//com.google.zxing.qrcode.detector.FinderPatternFinder$1
  JFinderPatternFinder_EstimatedModuleComparator = interface;//com.google.zxing.qrcode.detector.FinderPatternFinder$EstimatedModuleComparator
  JFinderPatternInfo = interface;//com.google.zxing.qrcode.detector.FinderPatternInfo
  JBlockPair = interface;//com.google.zxing.qrcode.encoder.BlockPair
  JByteMatrix = interface;//com.google.zxing.qrcode.encoder.ByteMatrix
  Jqrcode_encoder_Encoder = interface;//com.google.zxing.qrcode.encoder.Encoder
  JEncoder_1 = interface;//com.google.zxing.qrcode.encoder.Encoder$1
  JMaskUtil = interface;//com.google.zxing.qrcode.encoder.MaskUtil
  JMatrixUtil = interface;//com.google.zxing.qrcode.encoder.MatrixUtil
  JQRCode = interface;//com.google.zxing.qrcode.encoder.QRCode
  JPrintHtmlInterface = interface;//com.wizarpos.htmllibrary.PrintHtmlInterface
  JPrinterBitmapUtil = interface;//com.wizarpos.htmllibrary.PrinterBitmapUtil
  JPrinterHtmlListener = interface;//com.wizarpos.htmllibrary.PrinterHtmlListener
  JPrinterHtmlUtil = interface;//com.wizarpos.htmllibrary.PrinterHtmlUtil
  Jhtmllibrary_a = interface;//com.wizarpos.htmllibrary.a
  JCommSerialAPI = interface;//com.xc.comportdemo.CommSerialAPI
  JComportNative = interface;//com.xc.comportdemo.ComportNative
  JIPrinterCallback = interface;//com.xcheng.printerservice.IPrinterCallback
  JIPrinterCallback_Stub_Proxy = interface;//com.xcheng.printerservice.IPrinterCallback$Stub$Proxy
  JIPrinterService = interface;//com.xcheng.printerservice.IPrinterService
  JIPrinterService_Stub = interface;//com.xcheng.printerservice.IPrinterService$Stub
  JIPrinterService_Stub_Proxy = interface;//com.xcheng.printerservice.IPrinterService$Stub$Proxy
  JAbstractQueue = interface;//java.util.AbstractQueue
  JArrayBlockingQueue = interface;//java.util.concurrent.ArrayBlockingQueue
  JNode = interface;//org.w3c.dom.Node
  JAttr = interface;//org.w3c.dom.Attr
  JCharacterData = interface;//org.w3c.dom.CharacterData
  JText = interface;//org.w3c.dom.Text
  JCDATASection = interface;//org.w3c.dom.CDATASection
  JComment = interface;//org.w3c.dom.Comment
  JDOMConfiguration = interface;//org.w3c.dom.DOMConfiguration
  JDOMImplementation = interface;//org.w3c.dom.DOMImplementation
  JDOMStringList = interface;//org.w3c.dom.DOMStringList
  JDocument = interface;//org.w3c.dom.Document
  JDocumentFragment = interface;//org.w3c.dom.DocumentFragment
  JDocumentType = interface;//org.w3c.dom.DocumentType
  JElement = interface;//org.w3c.dom.Element
  JEntityReference = interface;//org.w3c.dom.EntityReference
  JNamedNodeMap = interface;//org.w3c.dom.NamedNodeMap
  JProcessingInstruction = interface;//org.w3c.dom.ProcessingInstruction
  JTypeInfo = interface;//org.w3c.dom.TypeInfo
  JUserDataHandler = interface;//org.w3c.dom.UserDataHandler

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;
    {class} procedure addListener(listener: JAnimator_AnimatorListener); cdecl;//Deprecated
    {class} procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;//Deprecated
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    {class} function getListeners: JArrayList; cdecl;//Deprecated
    {class} function isStarted: Boolean; cdecl;
    {class} procedure pause; cdecl;
    {class} procedure removeAllListeners; cdecl;
    {class} procedure resume; cdecl;
    {class} function setDuration(duration: Int64): JAnimator; cdecl;
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;
    {class} procedure setupStartValues; cdecl;
    {class} procedure start; cdecl;
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure cancel; cdecl;//Deprecated
    function clone: JAnimator; cdecl;//Deprecated
    procedure &end; cdecl;//Deprecated
    function getStartDelay: Int64; cdecl;
    function isPaused: Boolean; cdecl;
    function isRunning: Boolean; cdecl;
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure setTarget(target: JObject); cdecl;
    procedure setupEndValues; cdecl;
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationCancel(animation: JAnimator); cdecl;//Deprecated
    {class} procedure onAnimationEnd(animation: JAnimator); cdecl;//Deprecated
    {class} procedure onAnimationRepeat(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationStart(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
    {class} procedure onAnimationPause(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationResume(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;
    {class} function getType: Jlang_Class; cdecl;
    {class} function getValue: JObject; cdecl;
    {class} function hasValue: Boolean; cdecl;
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function clone: JKeyframe; cdecl;
    function getFraction: Single; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    procedure setFraction(fraction: Single); cdecl;
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;
    procedure setValue(value: JObject); cdecl;
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;
    {class} procedure addChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    {class} function getAnimator(transitionType: Integer): JAnimator; cdecl;//Deprecated
    {class} function getDuration(transitionType: Integer): Int64; cdecl;//Deprecated
    {class} function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;//Deprecated
    {class} function isChangingLayout: Boolean; cdecl;//Deprecated
    {class} procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    {class} procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;
    {class} procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    {class} procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    {class} procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    {class} procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;//Deprecated
    procedure disableTransitionType(transitionType: Integer); cdecl;//Deprecated
    procedure enableTransitionType(transitionType: Integer); cdecl;//Deprecated
    function getStagger(transitionType: Integer): Int64; cdecl;//Deprecated
    function getStartDelay(transitionType: Integer): Int64; cdecl;//Deprecated
    function getTransitionListeners: JList; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;
    function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;
    procedure removeChild(parent: JViewGroup; child: JView); cdecl;
    procedure setDuration(duration: Int64); cdecl; overload;
    procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
    {class} procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} procedure setConverter(converter: JTypeConverter); cdecl;
    {class} procedure setProperty(property_: JProperty); cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    function clone: JPropertyValuesHolder; cdecl;//Deprecated
    function getPropertyName: JString; cdecl;//Deprecated
    procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    procedure setPropertyName(propertyName: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;
    {class} function clone: JStateListAnimator; cdecl;//Deprecated
    {class} procedure jumpToCurrentState; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;//Deprecated
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
    function getInterpolation(input: Single): Single; cdecl;
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;
    {class} function convert(value: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
    function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;
    {class} function clone: JValueAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getAnimatedFraction: Single; cdecl;
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function getFrameDelay: Int64; cdecl;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    {class} function getStartDelay: Int64; cdecl;//Deprecated
    {class} function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;//Deprecated
    {class} function isRunning: Boolean; cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} procedure reverse; cdecl;//Deprecated
    {class} procedure setCurrentFraction(fraction: Single); cdecl;//Deprecated
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} procedure setRepeatMode(value: Integer); cdecl;
    {class} procedure setStartDelay(startDelay: Int64); cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure cancel; cdecl;
    function getAnimatedValue: JObject; cdecl; overload;//Deprecated
    function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;//Deprecated
    function getCurrentPlayTime: Int64; cdecl;//Deprecated
    function getRepeatCount: Integer; cdecl;//Deprecated
    function getRepeatMode: Integer; cdecl;//Deprecated
    function isStarted: Boolean; cdecl;//Deprecated
    procedure pause; cdecl;//Deprecated
    procedure removeAllUpdateListeners; cdecl;//Deprecated
    procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    procedure setCurrentPlayTime(playTime: Int64); cdecl;
    function setDuration(duration: Int64): JValueAnimator; cdecl;
    procedure setEvaluator(value: JTypeEvaluator); cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setRepeatCount(value: Integer); cdecl;
    procedure start; cdecl;
    function toString: JString; cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
    procedure onAnimationUpdate(animation: JValueAnimator); cdecl;//Deprecated
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JUsbAccessoryClass = interface(JObjectClass)
    ['{1D9B9887-3355-48AD-9E48-30EA6B124537}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getDescription: JString; cdecl;
    {class} function getManufacturer: JString; cdecl;
    {class} function getModel: JString; cdecl;
    {class} function hashCode: Integer; cdecl;
    {class} function toString: JString; cdecl;
    {class} procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbAccessory')]
  JUsbAccessory = interface(JObject)
    ['{083B13FB-2A1A-4659-BECD-9C245475B724}']
    function describeContents: Integer; cdecl;
    function equals(obj: JObject): Boolean; cdecl;
    function getSerial: JString; cdecl;
    function getUri: JString; cdecl;
    function getVersion: JString; cdecl;
  end;
  TJUsbAccessory = class(TJavaGenericImport<JUsbAccessoryClass, JUsbAccessory>) end;

  JUsbConfigurationClass = interface(JObjectClass)
    ['{98469519-6EAB-4A27-9B06-2C4A07DC51C8}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function describeContents: Integer; cdecl;
    {class} function getMaxPower: Integer; cdecl;
    {class} function getName: JString; cdecl;
    {class} procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbConfiguration')]
  JUsbConfiguration = interface(JObject)
    ['{3CAF57A3-D977-4A31-BD15-1CFDE08316F5}']
    function getId: Integer; cdecl;
    function getInterface(index: Integer): JUsbInterface; cdecl;
    function getInterfaceCount: Integer; cdecl;
    function isRemoteWakeup: Boolean; cdecl;//Deprecated
    function isSelfPowered: Boolean; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJUsbConfiguration = class(TJavaGenericImport<JUsbConfigurationClass, JUsbConfiguration>) end;

  JUsbDeviceClass = interface(JObjectClass)
    ['{23359F82-699F-48E1-B1DD-43DD18455D2D}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function describeContents: Integer; cdecl;
    {class} function equals(o: JObject): Boolean; cdecl;
    {class} function getConfiguration(index: Integer): JUsbConfiguration; cdecl;
    {class} function getDeviceId(name: JString): Integer; cdecl; overload;//Deprecated
    {class} function getDeviceName: JString; cdecl; overload;//Deprecated
    {class} function getDeviceName(id: Integer): JString; cdecl; overload;//Deprecated
    {class} function getInterfaceCount: Integer; cdecl;//Deprecated
    {class} function getManufacturerName: JString; cdecl;//Deprecated
    {class} function getProductId: Integer; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbDevice')]
  JUsbDevice = interface(JObject)
    ['{EAD5113C-AC54-4131-BED2-46F449FFD4B7}']
    function getConfigurationCount: Integer; cdecl;//Deprecated
    function getDeviceClass: Integer; cdecl;//Deprecated
    function getDeviceId: Integer; cdecl; overload;//Deprecated
    function getDeviceProtocol: Integer; cdecl;//Deprecated
    function getDeviceSubclass: Integer; cdecl;//Deprecated
    function getInterface(index: Integer): JUsbInterface; cdecl;//Deprecated
    function getProductName: JString; cdecl;//Deprecated
    function getSerialNumber: JString; cdecl;//Deprecated
    function getVendorId: Integer; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
    procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;//Deprecated
  end;
  TJUsbDevice = class(TJavaGenericImport<JUsbDeviceClass, JUsbDevice>) end;

  JUsbDeviceConnectionClass = interface(JObjectClass)
    ['{83888555-657F-42A1-9BC1-8B23E2F69899}']
    {class} function bulkTransfer(endpoint: JUsbEndpoint; buffer: TJavaArray<Byte>; length: Integer; timeout: Integer): Integer; cdecl; overload;
    {class} function controlTransfer(requestType: Integer; request: Integer; value: Integer; index: Integer; buffer: TJavaArray<Byte>; length: Integer; timeout: Integer): Integer; cdecl; overload;
    {class} function controlTransfer(requestType: Integer; request: Integer; value: Integer; index: Integer; buffer: TJavaArray<Byte>; offset: Integer; length: Integer; timeout: Integer): Integer; cdecl; overload;
    {class} function getFileDescriptor: Integer; cdecl;
    {class} function requestWait: JUsbRequest; cdecl;
    {class} function setConfiguration(configuration: JUsbConfiguration): Boolean; cdecl;
    {class} function setInterface(intf: JUsbInterface): Boolean; cdecl;
  end;

  [JavaSignature('android/hardware/usb/UsbDeviceConnection')]
  JUsbDeviceConnection = interface(JObject)
    ['{6CC94621-8592-4C7F-B28A-2E644692B85A}']
    function bulkTransfer(endpoint: JUsbEndpoint; buffer: TJavaArray<Byte>; offset: Integer; length: Integer; timeout: Integer): Integer; cdecl; overload;
    function claimInterface(intf: JUsbInterface; force: Boolean): Boolean; cdecl;
    procedure close; cdecl;
    function getRawDescriptors: TJavaArray<Byte>; cdecl;
    function getSerial: JString; cdecl;
    function releaseInterface(intf: JUsbInterface): Boolean; cdecl;
  end;
  TJUsbDeviceConnection = class(TJavaGenericImport<JUsbDeviceConnectionClass, JUsbDeviceConnection>) end;

  JUsbEndpointClass = interface(JObjectClass)
    ['{53DC559E-4126-4589-9CDF-681B6A461496}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function describeContents: Integer; cdecl;//Deprecated
    {class} function getAddress: Integer; cdecl;//Deprecated
    {class} function getInterval: Integer; cdecl;
    {class} function getMaxPacketSize: Integer; cdecl;
    {class} function getType: Integer; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbEndpoint')]
  JUsbEndpoint = interface(JObject)
    ['{A9A1F612-B537-4C37-8523-1B7AEADB1D43}']
    function getAttributes: Integer; cdecl;
    function getDirection: Integer; cdecl;
    function getEndpointNumber: Integer; cdecl;
    function toString: JString; cdecl;
    procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
  end;
  TJUsbEndpoint = class(TJavaGenericImport<JUsbEndpointClass, JUsbEndpoint>) end;

  JUsbInterfaceClass = interface(JObjectClass)
    ['{59313EE2-7603-4BBC-ACBC-4BC863D31B6C}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getEndpoint(index: Integer): JUsbEndpoint; cdecl;
    {class} function getEndpointCount: Integer; cdecl;
    {class} function getId: Integer; cdecl;
    {class} function getName: JString; cdecl;
    {class} function toString: JString; cdecl;
    {class} procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbInterface')]
  JUsbInterface = interface(JObject)
    ['{026556E6-07DF-422D-AF28-BC06795B91E7}']
    function describeContents: Integer; cdecl;
    function getAlternateSetting: Integer; cdecl;
    function getInterfaceClass: Integer; cdecl;
    function getInterfaceProtocol: Integer; cdecl;
    function getInterfaceSubclass: Integer; cdecl;
  end;
  TJUsbInterface = class(TJavaGenericImport<JUsbInterfaceClass, JUsbInterface>) end;

  JUsbManagerClass = interface(JObjectClass)
    ['{1048A6E9-E1B5-4DA5-A168-ED91E8DE5284}']
    {class} function _GetACTION_USB_ACCESSORY_ATTACHED: JString; cdecl;
    {class} function _GetACTION_USB_ACCESSORY_DETACHED: JString; cdecl;
    {class} function _GetACTION_USB_DEVICE_ATTACHED: JString; cdecl;
    {class} function _GetACTION_USB_DEVICE_DETACHED: JString; cdecl;
    {class} function _GetEXTRA_ACCESSORY: JString; cdecl;
    {class} function _GetEXTRA_DEVICE: JString; cdecl;
    {class} function _GetEXTRA_PERMISSION_GRANTED: JString; cdecl;
    {class} function getAccessoryList: TJavaObjectArray<JUsbAccessory>; cdecl;//Deprecated
    {class} function openAccessory(accessory: JUsbAccessory): JParcelFileDescriptor; cdecl;//Deprecated
    {class} function openDevice(device: JUsbDevice): JUsbDeviceConnection; cdecl;//Deprecated
    {class} procedure requestPermission(device: JUsbDevice; pi: JPendingIntent); cdecl; overload;//Deprecated
    {class} property ACTION_USB_ACCESSORY_ATTACHED: JString read _GetACTION_USB_ACCESSORY_ATTACHED;
    {class} property ACTION_USB_ACCESSORY_DETACHED: JString read _GetACTION_USB_ACCESSORY_DETACHED;
    {class} property ACTION_USB_DEVICE_ATTACHED: JString read _GetACTION_USB_DEVICE_ATTACHED;
    {class} property ACTION_USB_DEVICE_DETACHED: JString read _GetACTION_USB_DEVICE_DETACHED;
    {class} property EXTRA_ACCESSORY: JString read _GetEXTRA_ACCESSORY;
    {class} property EXTRA_DEVICE: JString read _GetEXTRA_DEVICE;
    {class} property EXTRA_PERMISSION_GRANTED: JString read _GetEXTRA_PERMISSION_GRANTED;
  end;

  [JavaSignature('android/hardware/usb/UsbManager')]
  JUsbManager = interface(JObject)
    ['{6F603A25-E816-4012-9B23-054B428A4A75}']
    function getDeviceList: JHashMap; cdecl;//Deprecated
    function hasPermission(device: JUsbDevice): Boolean; cdecl; overload;//Deprecated
    function hasPermission(accessory: JUsbAccessory): Boolean; cdecl; overload;//Deprecated
    procedure requestPermission(accessory: JUsbAccessory; pi: JPendingIntent); cdecl; overload;//Deprecated
  end;
  TJUsbManager = class(TJavaGenericImport<JUsbManagerClass, JUsbManager>) end;

  JUsbRequestClass = interface(JObjectClass)
    ['{8A8E6489-7B33-4CCC-B25E-2847FD29DA80}']
    {class} function init: JUsbRequest; cdecl;
    {class} function cancel: Boolean; cdecl;
    {class} procedure close; cdecl;
    {class} function queue(buffer: JByteBuffer; length: Integer): Boolean; cdecl;
    {class} procedure setClientData(data: JObject); cdecl;
  end;

  [JavaSignature('android/hardware/usb/UsbRequest')]
  JUsbRequest = interface(JObject)
    ['{C192EBAE-64F9-46FD-9E81-CB44E9D42FB1}']
    function getClientData: JObject; cdecl;
    function getEndpoint: JUsbEndpoint; cdecl;
    function initialize(connection: JUsbDeviceConnection; endpoint: JUsbEndpoint): Boolean; cdecl;
  end;
  TJUsbRequest = class(TJavaGenericImport<JUsbRequestClass, JUsbRequest>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
    function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;//Deprecated
    {class} function getSceneRoot: JViewGroup; cdecl;//Deprecated
    {class} procedure setEnterAction(action: JRunnable); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    procedure enter; cdecl;//Deprecated
    procedure exit; cdecl;//Deprecated
    procedure setExitAction(action: JRunnable); cdecl;//Deprecated
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;
    {class} function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    {class} function addTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    {class} function addTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    {class} procedure captureEndValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    {class} procedure captureStartValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    {class} function clone: JTransition; cdecl;//Deprecated
    {class} function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeChildren(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    {class} function getDuration: Int64; cdecl;
    {class} function getEpicenter: JRect; cdecl;
    {class} function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    {class} function getPropagation: JTransitionPropagation; cdecl;
    {class} function getStartDelay: Int64; cdecl;
    {class} function getTargetIds: JList; cdecl;
    {class} function getTargets: JList; cdecl;//Deprecated
    {class} function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    {class} function removeTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    {class} function removeTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    {class} procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;
    {class} function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;
    {class} function toString: JString; cdecl;
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;//Deprecated
    function addTarget(target: JView): JTransition; cdecl; overload;//Deprecated
    function canRemoveViews: Boolean; cdecl;//Deprecated
    function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;
    function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getName: JString; cdecl;
    function getPathMotion: JPathMotion; cdecl;
    function getTargetNames: JList; cdecl;
    function getTargetTypes: JList; cdecl;
    function getTransitionProperties: TJavaObjectArray<JString>; cdecl;//Deprecated
    function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;//Deprecated
    function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;//Deprecated
    function removeTarget(target: JView): JTransition; cdecl; overload;
    function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;
    function setDuration(duration: Int64): JTransition; cdecl;
    procedure setPathMotion(pathMotion: JPathMotion); cdecl;
    procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;
    function setStartDelay(startDelay: Int64): JTransition; cdecl;
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
    function onGetEpicenter(transition: JTransition): JRect; cdecl;
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
    {class} procedure onTransitionCancel(transition: JTransition); cdecl;
    {class} procedure onTransitionEnd(transition: JTransition); cdecl;
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionPause(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionResume(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionStart(transition: JTransition); cdecl;//Deprecated
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;//Deprecated
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;//Deprecated
    {class} procedure go(scene: JScene); cdecl; overload;//Deprecated
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;//Deprecated
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure transitionTo(scene: JScene); cdecl;
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;
    {class} procedure captureValues(transitionValues: JTransitionValues); cdecl;
    {class} function getPropagationProperties: TJavaObjectArray<JString>; cdecl;
    {class} function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function _Getvalues: JMap; cdecl;
    {class} function _Getview: JView; cdecl;
    {class} function init: JTransitionValues; cdecl;
    {class} function toString: JString; cdecl;
    {class} property values: JMap read _Getvalues;
    {class} property view: JView read _Getview;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function equals(other: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  JAppInitializerClass = interface(JObjectClass)
    ['{4824FD7A-A616-4242-80FE-C14C03F5D915}']
    {class} function _GetmContext: JContext; cdecl;
    {class} function getInstance(context: JContext): JAppInitializer; cdecl;
    {class} function init(context: JContext): JAppInitializer; cdecl;//Deprecated
    {class} property mContext: JContext read _GetmContext;
  end;

  [JavaSignature('androidx/startup/AppInitializer')]
  JAppInitializer = interface(JObject)
    ['{137ADC18-F181-42B0-8503-96B4152D2305}']
    function initializeComponent(class_: Jlang_Class): JObject; cdecl;
    function isEagerlyInitialized(class_: Jlang_Class): Boolean; cdecl;
  end;
  TJAppInitializer = class(TJavaGenericImport<JAppInitializerClass, JAppInitializer>) end;

  JInitializationProviderClass = interface(JContentProviderClass)
    ['{439DF9BA-8066-402E-A733-381FC97AB485}']
    {class} function init: JInitializationProvider; cdecl;
  end;

  [JavaSignature('androidx/startup/InitializationProvider')]
  JInitializationProvider = interface(JContentProvider)
    ['{52BC4261-2776-46E3-A450-1D5C52D5B547}']
    function delete(uri: Jnet_Uri; string_: JString; string_1: TJavaObjectArray<JString>): Integer; cdecl;
    function getType(uri: Jnet_Uri): JString; cdecl;
    function insert(uri: Jnet_Uri; contentValues: JContentValues): Jnet_Uri; cdecl;
    function onCreate: Boolean; cdecl;
    function query(uri: Jnet_Uri; string_: TJavaObjectArray<JString>; string_1: JString; string_2: TJavaObjectArray<JString>; string_3: JString): JCursor; cdecl;
    function update(uri: Jnet_Uri; contentValues: JContentValues; string_: JString; string_1: TJavaObjectArray<JString>): Integer; cdecl;
  end;
  TJInitializationProvider = class(TJavaGenericImport<JInitializationProviderClass, JInitializationProvider>) end;

  JInitializerClass = interface(IJavaClass)
    ['{9B750A1C-9DF3-4F80-8098-D6ECCF59EBE0}']
  end;

  [JavaSignature('androidx/startup/Initializer')]
  JInitializer = interface(IJavaInstance)
    ['{F6B91A3E-3415-4140-A2C3-ABB57D399D32}']
    function create(context: JContext): JObject; cdecl;
    function dependencies: JList; cdecl;
  end;
  TJInitializer = class(TJavaGenericImport<JInitializerClass, JInitializer>) end;

  JStartupExceptionClass = interface(JRuntimeExceptionClass)
    ['{50E45213-4DC7-4A1B-BCFE-3786B74EA877}']
    {class} function init(throwable: JThrowable): JStartupException; cdecl; overload;
    {class} function init(string_: JString): JStartupException; cdecl; overload;
    {class} function init(string_: JString; throwable: JThrowable): JStartupException; cdecl; overload;
  end;

  [JavaSignature('androidx/startup/StartupException')]
  JStartupException = interface(JRuntimeException)
    ['{0B851457-EAD0-4892-9CF2-48C45B0399DB}']
  end;
  TJStartupException = class(TJavaGenericImport<JStartupExceptionClass, JStartupException>) end;

  JStartupLoggerClass = interface(JObjectClass)
    ['{B260EF2A-082B-48DC-8BC9-3D6474C7072E}']
    {class} procedure e(string_: JString; throwable: JThrowable); cdecl;
    {class} procedure i(string_: JString); cdecl;
  end;

  [JavaSignature('androidx/startup/StartupLogger')]
  JStartupLogger = interface(JObject)
    ['{2A7E7D25-5FFC-4773-9B00-43D735C0FD44}']
  end;
  TJStartupLogger = class(TJavaGenericImport<JStartupLoggerClass, JStartupLogger>) end;

  JAplicacaoNaoInstaladaExcecaoClass = interface(JExceptionClass)
    ['{B8C423E3-9F55-4943-94BD-D5CDCFE9FBB8}']
    {class} function init: JAplicacaoNaoInstaladaExcecao; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/AplicacaoNaoInstaladaExcecao')]
  JAplicacaoNaoInstaladaExcecao = interface(JException)
    ['{636BABA6-0AF5-4C50-A3DB-AC7CDE91D419}']
  end;
  TJAplicacaoNaoInstaladaExcecao = class(TJavaGenericImport<JAplicacaoNaoInstaladaExcecaoClass, JAplicacaoNaoInstaladaExcecao>) end;

  Jinterfaceautomacao_BuildConfigClass = interface(JObjectClass)
    ['{FACA1B36-263B-492E-A329-B67C82404B31}']
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetLIBRARY_PACKAGE_NAME: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jinterfaceautomacao_BuildConfig; cdecl;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property LIBRARY_PACKAGE_NAME: JString read _GetLIBRARY_PACKAGE_NAME;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/BuildConfig')]
  Jinterfaceautomacao_BuildConfig = interface(JObject)
    ['{A95E19D8-3214-4687-8031-17D08E9F5889}']
  end;
  TJinterfaceautomacao_BuildConfig = class(TJavaGenericImport<Jinterfaceautomacao_BuildConfigClass, Jinterfaceautomacao_BuildConfig>) end;

  JCartoesClass = interface(JEnumClass)
    ['{337561B0-56CA-4697-AD4B-D07EEB4BF164}']
    {class} function _GetCARTAO_CREDITO: JCartoes; cdecl;
    {class} function _GetCARTAO_DEBITO: JCartoes; cdecl;
    {class} function _GetCARTAO_DESCONHECIDO: JCartoes; cdecl;
    {class} function _GetCARTAO_FROTA: JCartoes; cdecl;
    {class} function _GetCARTAO_PRIVATELABEL: JCartoes; cdecl;
    {class} function _GetCARTAO_VOUCHER: JCartoes; cdecl;
    {class} function obtemCartao(i: Integer): JCartoes; cdecl;
    {class} function valueOf(string_: JString): JCartoes; cdecl;
    {class} function values: TJavaObjectArray<JCartoes>; cdecl;//Deprecated
    {class} property CARTAO_CREDITO: JCartoes read _GetCARTAO_CREDITO;
    {class} property CARTAO_DEBITO: JCartoes read _GetCARTAO_DEBITO;
    {class} property CARTAO_DESCONHECIDO: JCartoes read _GetCARTAO_DESCONHECIDO;
    {class} property CARTAO_FROTA: JCartoes read _GetCARTAO_FROTA;
    {class} property CARTAO_PRIVATELABEL: JCartoes read _GetCARTAO_PRIVATELABEL;
    {class} property CARTAO_VOUCHER: JCartoes read _GetCARTAO_VOUCHER;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Cartoes')]
  JCartoes = interface(JEnum)
    ['{5B2B3951-28D6-44FC-93A2-17C89930F7F3}']
    function obtemTipoCartao: Integer; cdecl;
  end;
  TJCartoes = class(TJavaGenericImport<JCartoesClass, JCartoes>) end;

  JComunicacaoServicoClass = interface(JIntentServiceClass)
    ['{0FDA46C9-38CA-45AD-B8DF-59E64BAA212A}']
    {class} function init: JComunicacaoServico; cdecl;
    {class} procedure setfTransInic(b: Boolean); cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/ComunicacaoServico')]
  JComunicacaoServico = interface(JIntentService)
    ['{FC975412-73BE-4833-9070-E5B0E79287FB}']
    function onBind(intent: JIntent): JIBinder; cdecl;
    function onStartCommand(intent: JIntent; i: Integer; i1: Integer): Integer; cdecl;
    function onUnbind(intent: JIntent): Boolean; cdecl;
    procedure retornoCliente(i: Integer; string_: JString; string_1: JString); cdecl;
  end;
  TJComunicacaoServico = class(TJavaGenericImport<JComunicacaoServicoClass, JComunicacaoServico>) end;

  JComunicacaoServico_IncomingHandlerClass = interface(JHandlerClass)
    ['{0D33A6F0-F4F6-4CD7-B34C-1AFCC1A8B1B8}']
    {class} function init(comunicacaoServico: JComunicacaoServico; comunicacaoServico1: JComunicacaoServico): JComunicacaoServico_IncomingHandler; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/ComunicacaoServico$IncomingHandler')]
  JComunicacaoServico_IncomingHandler = interface(JHandler)
    ['{F2BC21A2-1A54-44F4-85CE-95165620E9E4}']
    procedure handleMessage(message: JMessage); cdecl;
  end;
  TJComunicacaoServico_IncomingHandler = class(TJavaGenericImport<JComunicacaoServico_IncomingHandlerClass, JComunicacaoServico_IncomingHandler>) end;

  JConfirmacaoClass = interface(JSerializableClass)
    ['{1E4C3673-D428-4F52-83E3-824568D821AB}']
    {class} function init: JConfirmacao; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Confirmacao')]
  JConfirmacao = interface(JSerializable)
    ['{8182768C-30D1-46E3-ACFB-3CE0A57C74DA}']
    function informaStatusTransacao(statusTransacao: JStatusTransacao): JConfirmacao; cdecl;
    function obtemStatusTransacao: JStatusTransacao; cdecl;
  end;
  TJConfirmacao = class(TJavaGenericImport<JConfirmacaoClass, JConfirmacao>) end;

  JConfirmacoesClass = interface(JConfirmacaoClass)
    ['{A803A993-3EDC-401E-8448-CEB0848F23E0}']
    {class} function init: JConfirmacoes; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Confirmacoes')]
  JConfirmacoes = interface(JConfirmacao)
    ['{7BACCF80-CA01-4796-A460-50A461601594}']
    function informaIdentificadorConfirmacaoTransacao(string_: JString): JConfirmacoes; cdecl;
    function obtemIdentificadorTransacao: JString; cdecl;
  end;
  TJConfirmacoes = class(TJavaGenericImport<JConfirmacoesClass, JConfirmacoes>) end;

  JDadosAutomacaoClass = interface(JSerializableClass)
    ['{23576650-5ADC-4849-A27C-C38B63AAA38F}']
    {class} function init(string_: JString; string_1: JString; string_2: JString; b: Boolean; b1: Boolean; b2: Boolean; b3: Boolean): JDadosAutomacao; cdecl; overload;//Deprecated
    {class} function init(string_: JString; string_1: JString; string_2: JString; b: Boolean; b1: Boolean; b2: Boolean; b3: Boolean; personalizacao: JPersonalizacao): JDadosAutomacao; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; b: Boolean; b1: Boolean; b2: Boolean; b3: Boolean; b4: Boolean; personalizacao: JPersonalizacao): JDadosAutomacao; cdecl; overload;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/DadosAutomacao')]
  JDadosAutomacao = interface(JSerializable)
    ['{7DBEF6F9-609C-4F45-A15E-30C9533D859A}']
    function obtemEmpresaAutomacao: JString; cdecl;
    function obtemNomeAutomacao: JString; cdecl;
    function obtemPersonalizacaoCliente: JPersonalizacao; cdecl;
    function obtemVersaoAutomacao: JString; cdecl;
    function suportaAbatimentoSaldoVoucher: Boolean; cdecl;
    function suportaDesconto: Boolean; cdecl;
    function suportaTroco: Boolean; cdecl;
    function suportaViaReduzida: Boolean; cdecl;
    function suportaViasDiferneciadas: Boolean; cdecl;
  end;
  TJDadosAutomacao = class(TJavaGenericImport<JDadosAutomacaoClass, JDadosAutomacao>) end;

  JEntradaTransacaoClass = interface(JSerializableClass)
    ['{9A5E2982-054C-49B4-955F-CBEA1AF007AA}']
    {class} function init(operacoes: JOperacoes; string_: JString): JEntradaTransacao; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/EntradaTransacao')]
  JEntradaTransacao = interface(JSerializable)
    ['{20634D28-2E79-4489-BBF8-037CFCE954B0}']
    function informaCodigoAutorizacaoOriginal(string_: JString): JEntradaTransacao; cdecl;
    function informaCodigoMoeda(string_: JString): JEntradaTransacao; cdecl;
    function informaDadosAdicionaisAutomacao1(string_: JString): JEntradaTransacao; cdecl;
    function informaDadosAdicionaisAutomacao2(string_: JString): JEntradaTransacao; cdecl;
    function informaDadosAdicionaisAutomacao3(string_: JString): JEntradaTransacao; cdecl;
    function informaDadosAdicionaisAutomacao4(string_: JString): JEntradaTransacao; cdecl;
    function informaDataHoraTransacaoOriginal(date: JDate): JEntradaTransacao; cdecl;
    function informaDataPredatado(date: JDate): JEntradaTransacao; cdecl;
    function informaDocumentoFiscal(string_: JString): JEntradaTransacao; cdecl;
    function informaEstabelecimentoCNPJouCPF(string_: JString): JEntradaTransacao; cdecl;
    function informaModalidadePagamento(modalidadesPagamento: JModalidadesPagamento): JEntradaTransacao; cdecl;
    function informaNomeProvedor(string_: JString): JEntradaTransacao; cdecl;
    function informaNsuTransacaoOriginal(string_: JString): JEntradaTransacao; cdecl;
    function informaNumeroFatura(string_: JString): JEntradaTransacao; cdecl;
    function informaNumeroParcelas(i: Integer): JEntradaTransacao; cdecl;
    function informaNumeroTelefone(string_: JString): JEntradaTransacao; cdecl;
    function informaProvedor(provedores: JProvedores): JEntradaTransacao; cdecl;
    function informaRefLocal(string_: JString): JEntradaTransacao; cdecl;
    function informaTaxaEmbarque(string_: JString): JEntradaTransacao; cdecl;
    function informaTaxaServico(string_: JString): JEntradaTransacao; cdecl;
    function informaTipoCartao(cartoes: JCartoes): JEntradaTransacao; cdecl;
    function informaTipoFinanciamento(financiamentos: JFinanciamentos): JEntradaTransacao; cdecl;
    function informaValorTotal(string_: JString): JEntradaTransacao; cdecl;
    function obtemCodigoAutorizacaoOriginal: JString; cdecl;
    function obtemCodigoMoeda: JString; cdecl;
    function obtemDadosAdicionaisAutomacao1: JString; cdecl;
    function obtemDadosAdicionaisAutomacao2: JString; cdecl;
    function obtemDadosAdicionaisAutomacao3: JString; cdecl;
    function obtemDadosAdicionaisAutomacao4: JString; cdecl;
    function obtemDataHoraTransacaoOriginal: JDate; cdecl;
    function obtemDataPredatado: JDate; cdecl;
    function obtemDocumentoFiscal: JString; cdecl;
    function obtemEstabelecimentoCNPJouCPF: JString; cdecl;
    function obtemIdTransacaoAutomacao: JString; cdecl;
    function obtemModalidadePagamento: JModalidadesPagamento; cdecl;
    function obtemNomeProvedor: JString; cdecl;
    function obtemNsuTransacaoOriginal: JString; cdecl;
    function obtemNumeroFatura: JString; cdecl;
    function obtemNumeroParcelas: Integer; cdecl;
    function obtemNumeroTelefone: JString; cdecl;
    function obtemOperacao: JOperacoes; cdecl;
    function obtemProvedor: JProvedores; cdecl;
    function obtemRefLocal: JString; cdecl;
    function obtemTaxaEmbarque: JString; cdecl;
    function obtemTaxaServico: JString; cdecl;
    function obtemTipoCartao: JCartoes; cdecl;
    function obtemTipoFinanciamento: JFinanciamentos; cdecl;
    function obtemValorTotal: JString; cdecl;
  end;
  TJEntradaTransacao = class(TJavaGenericImport<JEntradaTransacaoClass, JEntradaTransacao>) end;

  JFinanciamentosClass = interface(JEnumClass)
    ['{D34F0377-9285-441D-BB3B-D5113D13ADE7}']
    {class} function _GetA_VISTA: JFinanciamentos; cdecl;
    {class} function _GetCREDITO_EMISSOR: JFinanciamentos; cdecl;
    {class} function _GetFINANCIAMENTO_NAO_DEFINIDO: JFinanciamentos; cdecl;
    {class} function _GetPARCELADO_EMISSOR: JFinanciamentos; cdecl;
    {class} function _GetPARCELADO_ESTABELECIMENTO: JFinanciamentos; cdecl;
    {class} function _GetPRE_DATADO: JFinanciamentos; cdecl;
    {class} function obtemFinanciamento(i: Integer): JFinanciamentos; cdecl;
    {class} function valueOf(string_: JString): JFinanciamentos; cdecl;
    {class} function values: TJavaObjectArray<JFinanciamentos>; cdecl;//Deprecated
    {class} property A_VISTA: JFinanciamentos read _GetA_VISTA;
    {class} property CREDITO_EMISSOR: JFinanciamentos read _GetCREDITO_EMISSOR;
    {class} property FINANCIAMENTO_NAO_DEFINIDO: JFinanciamentos read _GetFINANCIAMENTO_NAO_DEFINIDO;
    {class} property PARCELADO_EMISSOR: JFinanciamentos read _GetPARCELADO_EMISSOR;
    {class} property PARCELADO_ESTABELECIMENTO: JFinanciamentos read _GetPARCELADO_ESTABELECIMENTO;
    {class} property PRE_DATADO: JFinanciamentos read _GetPRE_DATADO;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Financiamentos')]
  JFinanciamentos = interface(JEnum)
    ['{CA88A851-7277-48EC-8BCE-DE1A076F4E74}']
    function obtemCodigoFinanciamento: Integer; cdecl;
  end;
  TJFinanciamentos = class(TJavaGenericImport<JFinanciamentosClass, JFinanciamentos>) end;

  JGlobalDefsClass = interface(IJavaClass)
    ['{929BD9AF-8E34-47FD-A09A-720C9E6E1109}']
    {class} function _GetAPP_URI: JString; cdecl;
    {class} function _GetCLIENTE_NAO_CONFIGURADO: Integer; cdecl;
    {class} function _GetCLIENTE_NAO_INSTALADO: Integer; cdecl;
    {class} function _GetCONFIRMACAO_EXTRA: JString; cdecl;
    {class} function _GetCONFIRM_URI: JString; cdecl;
    {class} function _GetDADOS_EXTRA: JString; cdecl;
    {class} function _GetENTRADA_EXTRA: JString; cdecl;
    {class} function _GetPAYMENT_URI: JString; cdecl;
    {class} function _GetPENDENCIA_EXTRA: JString; cdecl;
    {class} function _GetPERSONALIZACAO: JString; cdecl;
    {class} function _GetRESOLVE_URI: JString; cdecl;
    {class} property APP_URI: JString read _GetAPP_URI;
    {class} property CLIENTE_NAO_CONFIGURADO: Integer read _GetCLIENTE_NAO_CONFIGURADO;
    {class} property CLIENTE_NAO_INSTALADO: Integer read _GetCLIENTE_NAO_INSTALADO;
    {class} property CONFIRMACAO_EXTRA: JString read _GetCONFIRMACAO_EXTRA;
    {class} property CONFIRM_URI: JString read _GetCONFIRM_URI;
    {class} property DADOS_EXTRA: JString read _GetDADOS_EXTRA;
    {class} property ENTRADA_EXTRA: JString read _GetENTRADA_EXTRA;
    {class} property PAYMENT_URI: JString read _GetPAYMENT_URI;
    {class} property PENDENCIA_EXTRA: JString read _GetPENDENCIA_EXTRA;
    {class} property PERSONALIZACAO: JString read _GetPERSONALIZACAO;
    {class} property RESOLVE_URI: JString read _GetRESOLVE_URI;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/GlobalDefs')]
  JGlobalDefs = interface(IJavaInstance)
    ['{A2A12CB5-E7E1-44CB-884C-829CC19E9C72}']
  end;
  TJGlobalDefs = class(TJavaGenericImport<JGlobalDefsClass, JGlobalDefs>) end;

  JIdentificacaoPortadorCarteiraClass = interface(JEnumClass)
    ['{D3B5811B-20E9-49D9-A732-B2CC3668EFF8}']
    {class} function _GetCPF: JIdentificacaoPortadorCarteira; cdecl;
    {class} function _GetOUTROS: JIdentificacaoPortadorCarteira; cdecl;
    {class} function _GetQRCODE: JIdentificacaoPortadorCarteira; cdecl;
    {class} function obtemIdentificador(i: Integer): JIdentificacaoPortadorCarteira; cdecl; overload;
    {class} function valueOf(string_: JString): JIdentificacaoPortadorCarteira; cdecl;
    {class} function values: TJavaObjectArray<JIdentificacaoPortadorCarteira>; cdecl;//Deprecated
    {class} property CPF: JIdentificacaoPortadorCarteira read _GetCPF;
    {class} property OUTROS: JIdentificacaoPortadorCarteira read _GetOUTROS;
    {class} property QRCODE: JIdentificacaoPortadorCarteira read _GetQRCODE;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/IdentificacaoPortadorCarteira')]
  JIdentificacaoPortadorCarteira = interface(JEnum)
    ['{DF9DEB7C-203B-44ED-B7C9-3CD475520B93}']
    function obtemIdentificador: Integer; cdecl; overload;
  end;
  TJIdentificacaoPortadorCarteira = class(TJavaGenericImport<JIdentificacaoPortadorCarteiraClass, JIdentificacaoPortadorCarteira>) end;

  JModalidadesPagamentoClass = interface(JEnumClass)
    ['{07BEF29A-5607-4A7A-87BE-FED878FC0DAF}']
    {class} function _GetPAGAMENTO_CARTAO: JModalidadesPagamento; cdecl;
    {class} function _GetPAGAMENTO_CARTEIRA_VIRTUAL: JModalidadesPagamento; cdecl;
    {class} function _GetPAGAMENTO_CHEQUE: JModalidadesPagamento; cdecl;
    {class} function _GetPAGAMENTO_DINHEIRO: JModalidadesPagamento; cdecl;
    {class} function valueOf(string_: JString): JModalidadesPagamento; cdecl;
    {class} function values: TJavaObjectArray<JModalidadesPagamento>; cdecl;//Deprecated
    {class} property PAGAMENTO_CARTAO: JModalidadesPagamento read _GetPAGAMENTO_CARTAO;
    {class} property PAGAMENTO_CARTEIRA_VIRTUAL: JModalidadesPagamento read _GetPAGAMENTO_CARTEIRA_VIRTUAL;
    {class} property PAGAMENTO_CHEQUE: JModalidadesPagamento read _GetPAGAMENTO_CHEQUE;
    {class} property PAGAMENTO_DINHEIRO: JModalidadesPagamento read _GetPAGAMENTO_DINHEIRO;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/ModalidadesPagamento')]
  JModalidadesPagamento = interface(JEnum)
    ['{062EE2F7-8DBF-4B1B-B4D9-6AF47804AD73}']
  end;
  TJModalidadesPagamento = class(TJavaGenericImport<JModalidadesPagamentoClass, JModalidadesPagamento>) end;

  JModalidadesTransacaoClass = interface(JEnumClass)
    ['{5F41052B-722F-4C61-9475-E065A598BE58}']
    {class} function _GetOFF: JModalidadesTransacao; cdecl;
    {class} function _GetON: JModalidadesTransacao; cdecl;
    {class} function valueOf(string_: JString): JModalidadesTransacao; cdecl;
    {class} function values: TJavaObjectArray<JModalidadesTransacao>; cdecl;//Deprecated
    {class} property OFF: JModalidadesTransacao read _GetOFF;
    {class} property ON: JModalidadesTransacao read _GetON;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/ModalidadesTransacao')]
  JModalidadesTransacao = interface(JEnum)
    ['{4DAD8231-1FFF-428C-8D74-33FF089EEE63}']
  end;
  TJModalidadesTransacao = class(TJavaGenericImport<JModalidadesTransacaoClass, JModalidadesTransacao>) end;

  JOperacoesClass = interface(JEnumClass)
    ['{8D07D893-8820-4637-B9E6-E4A4AFA0C7F9}']
    {class} function _GetADMINISTRATIVA: JOperacoes; cdecl;
    {class} function _GetCANCELAMENTO: JOperacoes; cdecl;
    {class} function _GetCANCELAMENTO_PAGAMENTOCONTA: JOperacoes; cdecl;
    {class} function _GetCANCELAMENTO_PREAUTORIZACAO: JOperacoes; cdecl;
    {class} function _GetCONFIGURACAO: JOperacoes; cdecl;
    {class} function _GetCONSULTA_CHEQUE: JOperacoes; cdecl;
    {class} function _GetCONSULTA_SALDO: JOperacoes; cdecl;
    {class} function _GetDOACAO: JOperacoes; cdecl;
    {class} function _GetEXIBE_PDC: JOperacoes; cdecl;
    {class} function _GetFECHAMENTO: JOperacoes; cdecl;
    {class} function _GetGARANTIA_CHEQUE: JOperacoes; cdecl;
    {class} function _GetINSTALACAO: JOperacoes; cdecl;
    {class} function _GetMANUTENCAO: JOperacoes; cdecl;
    {class} function _GetOPERACAO_DESCONHECIDA: JOperacoes; cdecl;
    {class} function _GetPAGAMENTO_CONTA: JOperacoes; cdecl;
    {class} function _GetPREAUTORIZACAO: JOperacoes; cdecl;
    {class} function _GetRECARGA_CELULAR: JOperacoes; cdecl;
    {class} function _GetREIMPRESSAO: JOperacoes; cdecl;
    {class} function _GetRELATORIO_DETALHADO: JOperacoes; cdecl;
    {class} function _GetRELATORIO_RESUMIDO: JOperacoes; cdecl;
    {class} function _GetRELATORIO_SINTETICO: JOperacoes; cdecl;
    {class} function _GetSAQUE: JOperacoes; cdecl;
    {class} function _GetTESTE_COMUNICACAO: JOperacoes; cdecl;
    {class} function _GetVENDA: JOperacoes; cdecl;
    {class} function _GetVERSAO: JOperacoes; cdecl;
    {class} function obtemOperacao(i: Integer): JOperacoes; cdecl;
    {class} function valueOf(string_: JString): JOperacoes; cdecl;
    {class} function values: TJavaObjectArray<JOperacoes>; cdecl;//Deprecated
    {class} property ADMINISTRATIVA: JOperacoes read _GetADMINISTRATIVA;
    {class} property CANCELAMENTO: JOperacoes read _GetCANCELAMENTO;
    {class} property CANCELAMENTO_PAGAMENTOCONTA: JOperacoes read _GetCANCELAMENTO_PAGAMENTOCONTA;
    {class} property CANCELAMENTO_PREAUTORIZACAO: JOperacoes read _GetCANCELAMENTO_PREAUTORIZACAO;
    {class} property CONFIGURACAO: JOperacoes read _GetCONFIGURACAO;
    {class} property CONSULTA_CHEQUE: JOperacoes read _GetCONSULTA_CHEQUE;
    {class} property CONSULTA_SALDO: JOperacoes read _GetCONSULTA_SALDO;
    {class} property DOACAO: JOperacoes read _GetDOACAO;
    {class} property EXIBE_PDC: JOperacoes read _GetEXIBE_PDC;
    {class} property FECHAMENTO: JOperacoes read _GetFECHAMENTO;
    {class} property GARANTIA_CHEQUE: JOperacoes read _GetGARANTIA_CHEQUE;
    {class} property INSTALACAO: JOperacoes read _GetINSTALACAO;
    {class} property MANUTENCAO: JOperacoes read _GetMANUTENCAO;
    {class} property OPERACAO_DESCONHECIDA: JOperacoes read _GetOPERACAO_DESCONHECIDA;
    {class} property PAGAMENTO_CONTA: JOperacoes read _GetPAGAMENTO_CONTA;
    {class} property PREAUTORIZACAO: JOperacoes read _GetPREAUTORIZACAO;
    {class} property RECARGA_CELULAR: JOperacoes read _GetRECARGA_CELULAR;
    {class} property REIMPRESSAO: JOperacoes read _GetREIMPRESSAO;
    {class} property RELATORIO_DETALHADO: JOperacoes read _GetRELATORIO_DETALHADO;
    {class} property RELATORIO_RESUMIDO: JOperacoes read _GetRELATORIO_RESUMIDO;
    {class} property RELATORIO_SINTETICO: JOperacoes read _GetRELATORIO_SINTETICO;
    {class} property SAQUE: JOperacoes read _GetSAQUE;
    {class} property TESTE_COMUNICACAO: JOperacoes read _GetTESTE_COMUNICACAO;
    {class} property VENDA: JOperacoes read _GetVENDA;
    {class} property VERSAO: JOperacoes read _GetVERSAO;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Operacoes')]
  JOperacoes = interface(JEnum)
    ['{55284D30-9A76-4D08-ABDD-1C6B0B3C5089}']
    function obtemTagOperacao: Integer; cdecl;
  end;
  TJOperacoes = class(TJavaGenericImport<JOperacoesClass, JOperacoes>) end;

  JPersonalizacaoClass = interface(JSerializableClass)
    ['{B65ECDB1-4BAD-4028-9FA9-00B4CB85125C}']
    {class} function obtemCorFundoTela: JString; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Personalizacao')]
  JPersonalizacao = interface(JSerializable)
    ['{23D68DE6-7EB8-48C9-8A65-CC29745DEA46}']
    function obtemCorFonte: JString; cdecl;
    function obtemCorFonteTeclado: JString; cdecl;
    function obtemCorFundoCaixaEdicao: JString; cdecl;
    function obtemCorFundoTeclado: JString; cdecl;
    function obtemCorFundoToolbar: JString; cdecl;
    function obtemCorSeparadorMenu: JString; cdecl;
    function obtemCorTeclaLiberadaTeclado: JString; cdecl;
    function obtemCorTeclaPressionadaTeclado: JString; cdecl;
    function obtemCorTextoCaixaEdicao: JString; cdecl;
    function obtemFonte: JFile; cdecl;
    function obtemIconeToolbar: JFile; cdecl;
  end;
  TJPersonalizacao = class(TJavaGenericImport<JPersonalizacaoClass, JPersonalizacao>) end;

  JPersonalizacao_1Class = interface(JObjectClass)
    ['{6ABD0061-E431-42B9-9EC7-A5C83C3EBF74}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Personalizacao$1')]
  JPersonalizacao_1 = interface(JObject)
    ['{E181B980-3E31-46E1-B897-CF51981A4E0C}']
  end;
  TJPersonalizacao_1 = class(TJavaGenericImport<JPersonalizacao_1Class, JPersonalizacao_1>) end;

  JPersonalizacao_BuilderClass = interface(JObjectClass)
    ['{087379D0-67E3-4025-86E7-DEC5ABD44C9E}']
    {class} function init: JPersonalizacao_Builder; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Personalizacao$Builder')]
  JPersonalizacao_Builder = interface(JObject)
    ['{AAA836DB-FBE5-40F8-97F0-53E3D3F02AAA}']
    function build: JPersonalizacao; cdecl;
    function informaCorFonte(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorFonteTeclado(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorFundoCaixaEdicao(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorFundoTeclado(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorFundoTela(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorFundoToolbar(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorSeparadorMenu(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorTeclaLiberadaTeclado(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorTeclaPressionadaTeclado(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaCorTextoCaixaEdicao(string_: JString): JPersonalizacao_Builder; cdecl;
    function informaFonte(file_: JFile): JPersonalizacao_Builder; cdecl;
    function informaIconeToolbar(file_: JFile): JPersonalizacao_Builder; cdecl;
  end;
  TJPersonalizacao_Builder = class(TJavaGenericImport<JPersonalizacao_BuilderClass, JPersonalizacao_Builder>) end;

  JProvedoresClass = interface(JEnumClass)
    ['{F464EA8B-4B90-4BB6-BBF3-A05288B9F712}']
    {class} function _GetACCORD: JProvedores; cdecl;
    {class} function _GetALGORIX: JProvedores; cdecl;
    {class} function _GetAMEX: JProvedores; cdecl;
    {class} function _GetBANCREDCARD: JProvedores; cdecl;
    {class} function _GetBANESE: JProvedores; cdecl;
    {class} function _GetBANRISUL: JProvedores; cdecl;
    {class} function _GetCIELO: JProvedores; cdecl;
    {class} function _GetCONDUCTOR: JProvedores; cdecl;
    {class} function _GetCOOPERCRED: JProvedores; cdecl;
    {class} function _GetCREDISHOP: JProvedores; cdecl;
    {class} function _GetELAVON: JProvedores; cdecl;
    {class} function _GetFANCARD: JProvedores; cdecl;
    {class} function _GetFILLIP: JProvedores; cdecl;
    {class} function _GetFIRSTDATA: JProvedores; cdecl;
    {class} function _GetGETNET: JProvedores; cdecl;
    {class} function _GetHIPERCARD: JProvedores; cdecl;
    {class} function _GetLIBERCARD: JProvedores; cdecl;
    {class} function _GetM4U: JProvedores; cdecl;
    {class} function _GetMUXX: JProvedores; cdecl;
    {class} function _GetNEUS: JProvedores; cdecl;
    {class} function _GetORGCARD: JProvedores; cdecl;
    {class} function _GetPOLICARD: JProvedores; cdecl;
    {class} function _GetPREMMIA: JProvedores; cdecl;
    {class} function _GetPREPAG: JProvedores; cdecl;
    {class} function _GetPROVEDOR_DESCONHECIDO: JProvedores; cdecl;
    {class} function _GetREDECARD: JProvedores; cdecl;
    {class} function _GetREPOM: JProvedores; cdecl;
    {class} function _GetRV: JProvedores; cdecl;
    {class} function _GetSENFF: JProvedores; cdecl;
    {class} function _GetTECPOINT: JProvedores; cdecl;
    {class} function _GetTICKETCAR: JProvedores; cdecl;
    {class} function _GetTRICARD: JProvedores; cdecl;
    {class} function _GetVALECARD: JProvedores; cdecl;
    {class} function _GetVERYCARD: JProvedores; cdecl;
    {class} function obtemProvedor(string_: JString): JProvedores; cdecl;
    {class} function valueOf(string_: JString): JProvedores; cdecl;
    {class} function values: TJavaObjectArray<JProvedores>; cdecl;//Deprecated
    {class} property ACCORD: JProvedores read _GetACCORD;
    {class} property ALGORIX: JProvedores read _GetALGORIX;
    {class} property AMEX: JProvedores read _GetAMEX;
    {class} property BANCREDCARD: JProvedores read _GetBANCREDCARD;
    {class} property BANESE: JProvedores read _GetBANESE;
    {class} property BANRISUL: JProvedores read _GetBANRISUL;
    {class} property CIELO: JProvedores read _GetCIELO;
    {class} property CONDUCTOR: JProvedores read _GetCONDUCTOR;
    {class} property COOPERCRED: JProvedores read _GetCOOPERCRED;
    {class} property CREDISHOP: JProvedores read _GetCREDISHOP;
    {class} property ELAVON: JProvedores read _GetELAVON;
    {class} property FANCARD: JProvedores read _GetFANCARD;
    {class} property FILLIP: JProvedores read _GetFILLIP;
    {class} property FIRSTDATA: JProvedores read _GetFIRSTDATA;
    {class} property GETNET: JProvedores read _GetGETNET;
    {class} property HIPERCARD: JProvedores read _GetHIPERCARD;
    {class} property LIBERCARD: JProvedores read _GetLIBERCARD;
    {class} property M4U: JProvedores read _GetM4U;
    {class} property MUXX: JProvedores read _GetMUXX;
    {class} property NEUS: JProvedores read _GetNEUS;
    {class} property ORGCARD: JProvedores read _GetORGCARD;
    {class} property POLICARD: JProvedores read _GetPOLICARD;
    {class} property PREMMIA: JProvedores read _GetPREMMIA;
    {class} property PREPAG: JProvedores read _GetPREPAG;
    {class} property PROVEDOR_DESCONHECIDO: JProvedores read _GetPROVEDOR_DESCONHECIDO;
    {class} property REDECARD: JProvedores read _GetREDECARD;
    {class} property REPOM: JProvedores read _GetREPOM;
    {class} property RV: JProvedores read _GetRV;
    {class} property SENFF: JProvedores read _GetSENFF;
    {class} property TECPOINT: JProvedores read _GetTECPOINT;
    {class} property TICKETCAR: JProvedores read _GetTICKETCAR;
    {class} property TRICARD: JProvedores read _GetTRICARD;
    {class} property VALECARD: JProvedores read _GetVALECARD;
    {class} property VERYCARD: JProvedores read _GetVERYCARD;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Provedores')]
  JProvedores = interface(JEnum)
    ['{C9857D06-46D8-4899-B420-6646FE6D3AF4}']
  end;
  TJProvedores = class(TJavaGenericImport<JProvedoresClass, JProvedores>) end;

  JQuedaConexaoTerminalExcecaoClass = interface(JRuntimeExceptionClass)
    ['{A0F6AD54-EC1F-43DF-B814-256510892ED4}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/QuedaConexaoTerminalExcecao')]
  JQuedaConexaoTerminalExcecao = interface(JRuntimeException)
    ['{8838B5CE-52BB-46EF-80FD-5C2D39CD613D}']
  end;
  TJQuedaConexaoTerminalExcecao = class(TJavaGenericImport<JQuedaConexaoTerminalExcecaoClass, JQuedaConexaoTerminalExcecao>) end;

  JSaidaTransacaoClass = interface(JSerializableClass)
    ['{D6D0A852-B20D-4999-B285-C511EECDF9A8}']
    {class} function init: JSaidaTransacao; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/SaidaTransacao')]
  JSaidaTransacao = interface(JSerializable)
    ['{E023668D-29C1-4230-9A84-4EF0CDDAFF93}']
    function comprovanteGraficoDisponivel: Boolean; cdecl;
    function existeTransacaoPendente: Boolean; cdecl;
    function informaAidCartao(string_: JString): JSaidaTransacao; cdecl;
    function informaCodigoAutorizacao(string_: JString): JSaidaTransacao; cdecl;
    function informaCodigoAutorizacaoOriginal(string_: JString): JSaidaTransacao; cdecl;
    function informaCodigoMoeda(string_: JString): JSaidaTransacao; cdecl;
    function informaCodigoRespostaProvedor(string_: JString): JSaidaTransacao; cdecl;
    function informaComprovanteCompleto(list: JList): JSaidaTransacao; cdecl;
    function informaComprovanteDiferenciadoLoja(list: JList): JSaidaTransacao; cdecl;
    function informaComprovanteDiferenciadoPortador(list: JList): JSaidaTransacao; cdecl;
    function informaComprovanteGraficoLojista(string_: JString): JSaidaTransacao; cdecl;
    function informaComprovanteGraficoPortador(string_: JString): JSaidaTransacao; cdecl;
    function informaComprovanteReduzidoPortador(list: JList): JSaidaTransacao; cdecl;
    procedure informaDadosTransacaoPendente(transacaoPendenteDados: JTransacaoPendenteDados); cdecl;
    function informaDataHoraTransacao(date: JDate): JSaidaTransacao; cdecl;
    function informaDataHoraTransacaoOriginal(date: JDate): JSaidaTransacao; cdecl;
    function informaDataPredatado(date: JDate): JSaidaTransacao; cdecl;
    function informaDocumentoFiscal(string_: JString): JSaidaTransacao; cdecl;
    function informaExisteComprovanteGrafico(b: Boolean): JSaidaTransacao; cdecl;
    procedure informaExisteTransacaoPendente(b: Boolean); cdecl;
    procedure informaIdentificacaoPortadorCarteira(identificacaoPortadorCarteira: JIdentificacaoPortadorCarteira); cdecl;
    function informaIdentificadorConfirmacaoTransacao(string_: JString): JSaidaTransacao; cdecl;
    function informaIdentificadorEstabelecimento(string_: JString): JSaidaTransacao; cdecl;
    function informaIdentificadorPontoCaptura(string_: JString): JSaidaTransacao; cdecl;
    function informaIdentificadorTransacaoAutomacao(string_: JString): JSaidaTransacao; cdecl;
    function informaMensagemResultado(string_: JString): JSaidaTransacao; cdecl;
    procedure informaModalidadePagamento(modalidadesPagamento: JModalidadesPagamento); cdecl;
    procedure informaModalidadeTransacao(modalidadesTransacao: JModalidadesTransacao); cdecl;
    function informaModoEntradaCartao(string_: JString): JSaidaTransacao; cdecl;
    function informaModoVerificacaoSenha(string_: JString): JSaidaTransacao; cdecl;
    function informaNomeCartao(string_: JString): JSaidaTransacao; cdecl;
    function informaNomeCartaoPadrao(string_: JString): JSaidaTransacao; cdecl;
    function informaNomeEstabelecimento(string_: JString): JSaidaTransacao; cdecl;
    function informaNomePortadorCartao(string_: JString): JSaidaTransacao; cdecl;
    function informaNomeProvedor(string_: JString): JSaidaTransacao; cdecl;
    function informaNsuHost(string_: JString): JSaidaTransacao; cdecl;
    function informaNsuHostOriginal(string_: JString): JSaidaTransacao; cdecl;
    function informaNsuLocal(string_: JString): JSaidaTransacao; cdecl;
    function informaNsuLocalOriginal(string_: JString): JSaidaTransacao; cdecl;
    function informaNumeroParcelas(i: Integer): JSaidaTransacao; cdecl;
    function informaOperacao(operacoes: JOperacoes): JSaidaTransacao; cdecl;
    function informaPanMascarado(string_: JString): JSaidaTransacao; cdecl;
    function informaPanMascaradoPadrao(string_: JString): JSaidaTransacao; cdecl;
    function informaProvedor(provedores: JProvedores): JSaidaTransacao; cdecl;
    function informaRequerConfirmacao(b: Boolean): JSaidaTransacao; cdecl;
    function informaResultadoTransacao(i: Integer): JSaidaTransacao; cdecl;
    function informaSaldoVoucher(string_: JString): JSaidaTransacao; cdecl;
    function informaTipoCartao(cartoes: JCartoes): JSaidaTransacao; cdecl;
    function informaTipoFinanciamento(financiamentos: JFinanciamentos): JSaidaTransacao; cdecl;
    procedure informaUniqueID(string_: JString); cdecl;
    function informaValorDesconto(string_: JString): JSaidaTransacao; cdecl;
    function informaValorDevido(string_: JString): JSaidaTransacao; cdecl;
    function informaValorOriginal(string_: JString): JSaidaTransacao; cdecl;
    function informaValorTotal(string_: JString): JSaidaTransacao; cdecl;
    function informaValorTroco(string_: JString): JSaidaTransacao; cdecl;
    function informaViasImprimir(viasImpressao: JViasImpressao): JSaidaTransacao; cdecl;
    function obtemAidCartao: JString; cdecl;
    function obtemCodigoAutorizacao: JString; cdecl;
    function obtemCodigoAutorizacaoOriginal: JString; cdecl;
    function obtemCodigoMoeda: JString; cdecl;
    function obtemCodigoRespostaProvedor: JString; cdecl;
    function obtemComprovanteCompleto: JList; cdecl;
    function obtemComprovanteDiferenciadoLoja: JList; cdecl;
    function obtemComprovanteDiferenciadoPortador: JList; cdecl;
    function obtemComprovanteGraficoLojista: JString; cdecl;
    function obtemComprovanteGraficoPortador: JString; cdecl;
    function obtemComprovanteReduzidoPortador: JList; cdecl;
    function obtemDadosTransacaoPendente: JTransacaoPendenteDados; cdecl;
    function obtemDataHoraTransacao: JDate; cdecl;
    function obtemDataHoraTransacaoOriginal: JDate; cdecl;
    function obtemDataPredatado: JDate; cdecl;
    function obtemDocumentoFiscal: JString; cdecl;
    function obtemIdentificacaoPortadorCarteira: JIdentificacaoPortadorCarteira; cdecl;
    function obtemIdentificadorConfirmacaoTransacao: JString; cdecl;
    function obtemIdentificadorEstabelecimento: JString; cdecl;
    function obtemIdentificadorPontoCaptura: JString; cdecl;
    function obtemIdentificadorTransacaoAutomacao: JString; cdecl;
    function obtemInformacaoConfirmacao: Boolean; cdecl;
    function obtemMensagemResultado: JString; cdecl;
    function obtemModalidadePagamento: JModalidadesPagamento; cdecl;
    function obtemModalidadeTransacao: JModalidadesTransacao; cdecl;
    function obtemModoEntradaCartao: JString; cdecl;
    function obtemModoVerificacaoSenha: JString; cdecl;
    function obtemNomeCartao: JString; cdecl;
    function obtemNomeCartaoPadrao: JString; cdecl;
    function obtemNomeEstabelecimento: JString; cdecl;
    function obtemNomePortadorCartao: JString; cdecl;
    function obtemNomeProvedor: JString; cdecl;
    function obtemNsuHost: JString; cdecl;
    function obtemNsuHostOriginal: JString; cdecl;
    function obtemNsuLocal: JString; cdecl;
    function obtemNsuLocalOriginal: JString; cdecl;
    function obtemNumeroParcelas: Integer; cdecl;
    function obtemOperacao: JOperacoes; cdecl;
    function obtemPanMascarado: JString; cdecl;
    function obtemPanMascaradoPadrao: JString; cdecl;
    function obtemProvedor: JProvedores; cdecl;
    function obtemResultadoTransacao: Integer; cdecl;
    function obtemSaldoVoucher: JString; cdecl;
    function obtemTipoCartao: JCartoes; cdecl;
    function obtemTipoFinanciamento: JFinanciamentos; cdecl;
    function obtemUniqueID: JString; cdecl;
    function obtemValorDesconto: JString; cdecl;
    function obtemValorDevido: JString; cdecl;
    function obtemValorOriginal: JString; cdecl;
    function obtemValorTotal: JString; cdecl;
    function obtemValorTroco: JString; cdecl;
    function obtemViasImprimir: JViasImpressao; cdecl;
  end;
  TJSaidaTransacao = class(TJavaGenericImport<JSaidaTransacaoClass, JSaidaTransacao>) end;

  JSenderActivityClass = interface(JActivityClass)
    ['{C155BCA9-BA3E-4D48-A59A-0D8786B5300B}']
    {class} function init: JSenderActivity; cdecl;//Deprecated
    {class} function obtemDadosTransacao: JSaidaTransacao; cdecl;
    {class} function obtemVersoes: JVersoes; cdecl;
    {class} function saidaDisponivel: Boolean; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/SenderActivity')]
  JSenderActivity = interface(JActivity)
    ['{75A07BEE-AFCF-4100-A934-740A7748660B}']
  end;
  TJSenderActivity = class(TJavaGenericImport<JSenderActivityClass, JSenderActivity>) end;

  JStatusTransacaoClass = interface(JEnumClass)
    ['{39E03A58-BF8D-4ED6-8AE6-16565C6B7B87}']
    {class} function _GetCONFIRMADO_AUTOMATICO: JStatusTransacao; cdecl;
    {class} function _GetCONFIRMADO_MANUAL: JStatusTransacao; cdecl;
    {class} function _GetDESFEITO_ERRO_IMPRESSAO_AUTOMATICO: JStatusTransacao; cdecl;
    {class} function _GetDESFEITO_LIBERACAO_MERCADORIA: JStatusTransacao; cdecl;
    {class} function _GetDESFEITO_MANUAL: JStatusTransacao; cdecl;
    {class} function _GetSTATUS_TRANSACAO_NAO_DEFINIDO: JStatusTransacao; cdecl;
    {class} function valueOf(string_: JString): JStatusTransacao; cdecl;
    {class} function values: TJavaObjectArray<JStatusTransacao>; cdecl;//Deprecated
    {class} property CONFIRMADO_AUTOMATICO: JStatusTransacao read _GetCONFIRMADO_AUTOMATICO;
    {class} property CONFIRMADO_MANUAL: JStatusTransacao read _GetCONFIRMADO_MANUAL;
    {class} property DESFEITO_ERRO_IMPRESSAO_AUTOMATICO: JStatusTransacao read _GetDESFEITO_ERRO_IMPRESSAO_AUTOMATICO;
    {class} property DESFEITO_LIBERACAO_MERCADORIA: JStatusTransacao read _GetDESFEITO_LIBERACAO_MERCADORIA;
    {class} property DESFEITO_MANUAL: JStatusTransacao read _GetDESFEITO_MANUAL;
    {class} property STATUS_TRANSACAO_NAO_DEFINIDO: JStatusTransacao read _GetSTATUS_TRANSACAO_NAO_DEFINIDO;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/StatusTransacao')]
  JStatusTransacao = interface(JEnum)
    ['{8D173D26-7A7A-4894-9E41-724EF7286385}']
  end;
  TJStatusTransacao = class(TJavaGenericImport<JStatusTransacaoClass, JStatusTransacao>) end;

  JTerminalClass = interface(JObjectClass)
    ['{90475BB5-D827-4942-BC47-12E3FA2A0BC7}']
    {class} function init: JTerminal; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Terminal')]
  JTerminal = interface(JObject)
    ['{72A6F174-915B-48F5-9DF5-F772D61FC030}']
    function obtemEnderecoMAC: JString; cdecl;
    function obtemModeloTerminal: JString; cdecl;
    function obtemNumeroSerie: JString; cdecl;
    function obtemVersaoAplicacaoTerminal: JString; cdecl;
  end;
  TJTerminal = class(TJavaGenericImport<JTerminalClass, JTerminal>) end;

  JTerminalDesconectadoExcecaoClass = interface(JExceptionClass)
    ['{2F83CDDA-6AE8-46DE-8758-7C2603C08258}']
    {class} function init: JTerminalDesconectadoExcecao; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/TerminalDesconectadoExcecao')]
  JTerminalDesconectadoExcecao = interface(JException)
    ['{12624295-1D7E-4050-B933-AC764159DC6D}']
  end;
  TJTerminalDesconectadoExcecao = class(TJavaGenericImport<JTerminalDesconectadoExcecaoClass, JTerminalDesconectadoExcecao>) end;

  JTerminalNaoConfiguradoExcecaoClass = interface(JExceptionClass)
    ['{A5C03A11-D3B3-43C8-9821-B92D5D765407}']
    {class} function init: JTerminalNaoConfiguradoExcecao; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/TerminalNaoConfiguradoExcecao')]
  JTerminalNaoConfiguradoExcecao = interface(JException)
    ['{D4D275A4-44CB-441A-A2CA-FD4E2B6BA2AB}']
  end;
  TJTerminalNaoConfiguradoExcecao = class(TJavaGenericImport<JTerminalNaoConfiguradoExcecaoClass, JTerminalNaoConfiguradoExcecao>) end;

  JTransacaoClass = interface(IJavaClass)
    ['{1E0D7956-9361-4A35-812B-4634879F9ADF}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Transacao')]
  JTransacao = interface(IJavaInstance)
    ['{8983C56A-2833-4FC8-96BF-64744BDD863E}']
    procedure confirmaTransacao(confirmacao: JConfirmacao); cdecl;
    function realizaTransacao(entradaTransacao: JEntradaTransacao): JSaidaTransacao; cdecl;
    procedure resolvePendencia(transacaoPendenteDados: JTransacaoPendenteDados; confirmacao: JConfirmacao); cdecl;
  end;
  TJTransacao = class(TJavaGenericImport<JTransacaoClass, JTransacao>) end;

  JTransacaoPendenteDadosClass = interface(JSerializableClass)
    ['{9A6AA3D9-9F25-4B91-ABC3-BE505945A7E1}']
    {class} function init: JTransacaoPendenteDados; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/TransacaoPendenteDados')]
  JTransacaoPendenteDados = interface(JSerializable)
    ['{D5CD3DDF-CD0D-4A99-9FCB-4CA7D6594D66}']
    procedure informaIdentificadorEstabelecimento(string_: JString); cdecl;
    procedure informaNomeProvedor(string_: JString); cdecl;
    procedure informaNsuHost(string_: JString); cdecl;
    procedure informaNsuLocal(string_: JString); cdecl;
    procedure informaNsuTransacao(string_: JString); cdecl;
    procedure informaProvedor(provedores: JProvedores); cdecl;
    function obtemIdentificadorEstabelecimento: JString; cdecl;
    function obtemNomeProvedor: JString; cdecl;
    function obtemNsuHost: JString; cdecl;
    function obtemNsuLocal: JString; cdecl;
    function obtemNsuTransacao: JString; cdecl;
    function obtemProvedor: JProvedores; cdecl;
    function toString: JString; cdecl;
  end;
  TJTransacaoPendenteDados = class(TJavaGenericImport<JTransacaoPendenteDadosClass, JTransacaoPendenteDados>) end;

  JTransacoesClass = interface(JTransacaoClass)
    ['{73DD917F-6FC3-4625-ACAF-FAFB0901B408}']
    {class} function obtemInstancia(dadosAutomacao: JDadosAutomacao; context: JContext): JTransacoes; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Transacoes')]
  JTransacoes = interface(JTransacao)
    ['{A64703E4-8926-4730-98FD-E9567B5476B4}']
    procedure confirmaTransacao(confirmacao: JConfirmacao); cdecl;
    function obtemVersoes: JVersoes; cdecl;
    function realizaTransacao(entradaTransacao: JEntradaTransacao): JSaidaTransacao; cdecl;
    procedure resolvePendencia(transacaoPendenteDados: JTransacaoPendenteDados; confirmacao: JConfirmacao); cdecl;
  end;
  TJTransacoes = class(TJavaGenericImport<JTransacoesClass, JTransacoes>) end;

  JTransacoes_1Class = interface(JObjectClass)
    ['{4DEBF4B0-E113-4147-83BB-E76FF694ECB6}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Transacoes$1')]
  JTransacoes_1 = interface(JObject)
    ['{D4F6D166-8245-45C7-AF9D-1D4927B3049E}']
  end;
  TJTransacoes_1 = class(TJavaGenericImport<JTransacoes_1Class, JTransacoes_1>) end;

  JTransacoes_TransacaoResultReceiverClass = interface(JResultReceiverClass)
    ['{0CBF9733-035E-4F79-99ED-9DB75F031E83}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Transacoes$TransacaoResultReceiver')]
  JTransacoes_TransacaoResultReceiver = interface(JResultReceiver)
    ['{A3D1DD5D-EB76-4176-8FFE-725F892B81C7}']
  end;
  TJTransacoes_TransacaoResultReceiver = class(TJavaGenericImport<JTransacoes_TransacaoResultReceiverClass, JTransacoes_TransacaoResultReceiver>) end;

  JVersoesClass = interface(JObjectClass)
    ['{35401098-3633-435E-AEBB-C7AD962ACEA1}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/Versoes')]
  JVersoes = interface(JObject)
    ['{0AC88871-BD34-44BB-ADDC-F42585F0B0F6}']
    function obtemVersaoApk: JMap; cdecl;
    function obtemVersaoBiblioteca: JString; cdecl;
  end;
  TJVersoes = class(TJavaGenericImport<JVersoesClass, JVersoes>) end;

  JViasImpressaoClass = interface(JEnumClass)
    ['{74482C91-66B2-4D43-B2D7-84AF12267F18}']
    {class} function _GetVIA_CLIENTE: JViasImpressao; cdecl;
    {class} function _GetVIA_CLIENTE_E_ESTABELECIMENTO: JViasImpressao; cdecl;
    {class} function _GetVIA_ESTABELECIMENTO: JViasImpressao; cdecl;
    {class} function _GetVIA_NENHUMA: JViasImpressao; cdecl;
    {class} function obtemViaImpressao(i: Integer): JViasImpressao; cdecl;
    {class} function valueOf(string_: JString): JViasImpressao; cdecl;
    {class} function values: TJavaObjectArray<JViasImpressao>; cdecl;//Deprecated
    {class} property VIA_CLIENTE: JViasImpressao read _GetVIA_CLIENTE;
    {class} property VIA_CLIENTE_E_ESTABELECIMENTO: JViasImpressao read _GetVIA_CLIENTE_E_ESTABELECIMENTO;
    {class} property VIA_ESTABELECIMENTO: JViasImpressao read _GetVIA_ESTABELECIMENTO;
    {class} property VIA_NENHUMA: JViasImpressao read _GetVIA_NENHUMA;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/ViasImpressao')]
  JViasImpressao = interface(JEnum)
    ['{C719B550-D917-43FE-A88F-7AE5CDD1F98D}']
    function obtemTipoViaImpressao: Integer; cdecl;
  end;
  TJViasImpressao = class(TJavaGenericImport<JViasImpressaoClass, JViasImpressao>) end;

  JCustomizationClass = interface(IJavaClass)
    ['{5F2A4351-2EED-408F-AB4F-70FF59B70209}']
    {class} function _GetEDITBOX_BACKGROUND_COLOR: JString; cdecl;
    {class} function _GetEDITBOX_COLOR_TEXT: JString; cdecl;
    {class} function _GetFONT: JString; cdecl;
    {class} function _GetFONT_COLOR: JString; cdecl;
    {class} function _GetKEYBOARD_BACKGROUND_COLOR: JString; cdecl;
    {class} function _GetKEYBOARD_FONT_COLOR: JString; cdecl;
    {class} function _GetMENU_SEPARATOR_COLOR: JString; cdecl;
    {class} function _GetPRESSED_KEY_COLOR: JString; cdecl;
    {class} function _GetRELEASED_KEY_COLOR: JString; cdecl;
    {class} function _GetSCREEN_BACKGROUND_COLOR: JString; cdecl;
    {class} function _GetTOOLBAR_BACKGROUND: JString; cdecl;
    {class} function _GetTOOLBAR_ICON: JString; cdecl;
    {class} property EDITBOX_BACKGROUND_COLOR: JString read _GetEDITBOX_BACKGROUND_COLOR;
    {class} property EDITBOX_COLOR_TEXT: JString read _GetEDITBOX_COLOR_TEXT;
    {class} property FONT: JString read _GetFONT;
    {class} property FONT_COLOR: JString read _GetFONT_COLOR;
    {class} property KEYBOARD_BACKGROUND_COLOR: JString read _GetKEYBOARD_BACKGROUND_COLOR;
    {class} property KEYBOARD_FONT_COLOR: JString read _GetKEYBOARD_FONT_COLOR;
    {class} property MENU_SEPARATOR_COLOR: JString read _GetMENU_SEPARATOR_COLOR;
    {class} property PRESSED_KEY_COLOR: JString read _GetPRESSED_KEY_COLOR;
    {class} property RELEASED_KEY_COLOR: JString read _GetRELEASED_KEY_COLOR;
    {class} property SCREEN_BACKGROUND_COLOR: JString read _GetSCREEN_BACKGROUND_COLOR;
    {class} property TOOLBAR_BACKGROUND: JString read _GetTOOLBAR_BACKGROUND;
    {class} property TOOLBAR_ICON: JString read _GetTOOLBAR_ICON;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/espec/Customization')]
  JCustomization = interface(IJavaInstance)
    ['{76BD78C0-DAEE-4CA7-A52B-CCC9330E9918}']
  end;
  TJCustomization = class(TJavaGenericImport<JCustomizationClass, JCustomization>) end;

  JTransactionInputClass = interface(IJavaClass)
    ['{A69939D5-54B8-45C8-A453-FFB3B2ACA07B}']
    {class} function _GetACQUIRER: JString; cdecl;
    {class} function _GetADD_POSDATA1: JString; cdecl;
    {class} function _GetADD_POSDATA2: JString; cdecl;
    {class} function _GetADD_POSDATA3: JString; cdecl;
    {class} function _GetADD_POSDATA4: JString; cdecl;
    {class} function _GetAMOUNT: JString; cdecl;
    {class} function _GetBOARDING_TAX: JString; cdecl;
    {class} function _GetCARD_TYPE: JString; cdecl;
    {class} function _GetCURRENCY_CODE: JString; cdecl;
    {class} function _GetFIN_TYPE: JString; cdecl;
    {class} function _GetFISCAL_DOC: JString; cdecl;
    {class} function _GetINPUT: JString; cdecl;
    {class} function _GetINSTALLMENTS: JString; cdecl;
    {class} function _GetINVOICE_NUMBER: JString; cdecl;
    {class} function _GetOPERATION: JString; cdecl;
    {class} function _GetORIG_AUTHCODE: JString; cdecl;
    {class} function _GetORIG_DATETIME: JString; cdecl;
    {class} function _GetORIG_NSU: JString; cdecl;
    {class} function _GetPAY_MODE: JString; cdecl;
    {class} function _GetPOSTDATED_DATE: JString; cdecl;
    {class} function _GetPOS_ID: JString; cdecl;
    {class} function _GetREF_LOCAL: JString; cdecl;
    {class} function _GetSERVICE_TAX: JString; cdecl;
    {class} function _GetTAX_ID: JString; cdecl;
    {class} function _GetTEL_NUMBER: JString; cdecl;
    {class} property ACQUIRER: JString read _GetACQUIRER;
    {class} property ADD_POSDATA1: JString read _GetADD_POSDATA1;
    {class} property ADD_POSDATA2: JString read _GetADD_POSDATA2;
    {class} property ADD_POSDATA3: JString read _GetADD_POSDATA3;
    {class} property ADD_POSDATA4: JString read _GetADD_POSDATA4;
    {class} property AMOUNT: JString read _GetAMOUNT;
    {class} property BOARDING_TAX: JString read _GetBOARDING_TAX;
    {class} property CARD_TYPE: JString read _GetCARD_TYPE;
    {class} property CURRENCY_CODE: JString read _GetCURRENCY_CODE;
    {class} property FIN_TYPE: JString read _GetFIN_TYPE;
    {class} property FISCAL_DOC: JString read _GetFISCAL_DOC;
    {class} property INPUT: JString read _GetINPUT;
    {class} property INSTALLMENTS: JString read _GetINSTALLMENTS;
    {class} property INVOICE_NUMBER: JString read _GetINVOICE_NUMBER;
    {class} property OPERATION: JString read _GetOPERATION;
    {class} property ORIG_AUTHCODE: JString read _GetORIG_AUTHCODE;
    {class} property ORIG_DATETIME: JString read _GetORIG_DATETIME;
    {class} property ORIG_NSU: JString read _GetORIG_NSU;
    {class} property PAY_MODE: JString read _GetPAY_MODE;
    {class} property POSTDATED_DATE: JString read _GetPOSTDATED_DATE;
    {class} property POS_ID: JString read _GetPOS_ID;
    {class} property REF_LOCAL: JString read _GetREF_LOCAL;
    {class} property SERVICE_TAX: JString read _GetSERVICE_TAX;
    {class} property TAX_ID: JString read _GetTAX_ID;
    {class} property TEL_NUMBER: JString read _GetTEL_NUMBER;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/espec/TransactionInput')]
  JTransactionInput = interface(IJavaInstance)
    ['{3C26D9E5-7D6F-47D6-B34C-FFA7A055314C}']
  end;
  TJTransactionInput = class(TJavaGenericImport<JTransactionInputClass, JTransactionInput>) end;

  JTransactionOutputClass = interface(IJavaClass)
    ['{B6D1C162-0189-4920-B6A5-3A8BE9D1E2F7}']
    {class} function _GetAMOUNT: JString; cdecl;
    {class} function _GetAUTHORIZATION_CODE: JString; cdecl;
    {class} function _GetBALANCE_VOUCHER: JString; cdecl;
    {class} function _GetCARD_AID: JString; cdecl;
    {class} function _GetCARD_ENTRANCE_MODE: JString; cdecl;
    {class} function _GetCARD_HOLDER_NAME: JString; cdecl;
    {class} function _GetCARD_NAME: JString; cdecl;
    {class} function _GetCARD_TYPE: JString; cdecl;
    {class} function _GetCHANGE: JString; cdecl;
    {class} function _GetCONFIRM_TRANSACTION_IDENTIFIER: JString; cdecl;
    {class} function _GetCURRENCY_CODE: JString; cdecl;
    {class} function _GetDATE_TIME_ORIGINAL_TRANSACTION: JString; cdecl;
    {class} function _GetDATE_TIME_TRANSACTION: JString; cdecl;
    {class} function _GetDIFFERENTIATED_HOLDER_VOUCHER: JString; cdecl;
    {class} function _GetDIFFERENTIATED_SHOP_VOUCHER: JString; cdecl;
    {class} function _GetDISCOUNT: JString; cdecl;
    {class} function _GetDUE_AMOUNT: JString; cdecl;
    {class} function _GetESTABLISHMENT_IDENTIFIER: JString; cdecl;
    {class} function _GetESTABLISHMENT_NAME: JString; cdecl;
    {class} function _GetFINANCING_TYPE: JString; cdecl;
    {class} function _GetFISCAL_DOCUMENT: JString; cdecl;
    {class} function _GetFULL_VOUCHER: JString; cdecl;
    {class} function _GetGRAPHIC_RECEIPT_EXISTS: JString; cdecl;
    {class} function _GetHOLDER_GRAPHIC_RECEIPT: JString; cdecl;
    {class} function _GetMASKED_PAN: JString; cdecl;
    {class} function _GetNETWORK_RESPONSE: JString; cdecl;
    {class} function _GetNSU_ORIGINAL_TRANSACTION: JString; cdecl;
    {class} function _GetNUMBER_OF_INSTALLMENTS: JString; cdecl;
    {class} function _GetONOFF: JString; cdecl;
    {class} function _GetOPERATION: JString; cdecl;
    {class} function _GetORIGINAL_AUTHORIZATION_CODE: JString; cdecl;
    {class} function _GetORIGINAL_TERMINAL_NSU: JString; cdecl;
    {class} function _GetORIGINAL_VALUE: JString; cdecl;
    {class} function _GetOUTPUT: JString; cdecl;
    {class} function _GetPASSWORD_VERIFICATION_MODE: JString; cdecl;
    {class} function _GetPAY_MODE: JString; cdecl;
    {class} function _GetPENDING_TRANSACTION_DATA: JString; cdecl;
    {class} function _GetPENDING_TRANSACTION_EXISTS: JString; cdecl;
    {class} function _GetPOINT_OF_SALE_IDENTIFIER: JString; cdecl;
    {class} function _GetPREDATED_DATE: JString; cdecl;
    {class} function _GetPRINT_RECEIPTS: JString; cdecl;
    {class} function _GetPROVIDER: JString; cdecl;
    {class} function _GetPROVIDER_NAME: JString; cdecl;
    {class} function _GetREDUCED_HOLDER_VOUCHER: JString; cdecl;
    {class} function _GetREQUIRES_CONFIRMATION: JString; cdecl;
    {class} function _GetRESULT_MESSAGE: JString; cdecl;
    {class} function _GetSTANDARD_CARD_NAME: JString; cdecl;
    {class} function _GetSTANDARD_MASKED_PAN: JString; cdecl;
    {class} function _GetSTORE_KEEPER_GRAPHIC_RECEIPT: JString; cdecl;
    {class} function _GetTERMINAL_NSU: JString; cdecl;
    {class} function _GetTRANSACTION_IDENTIFIER: JString; cdecl;
    {class} function _GetTRANSACTION_NSU: JString; cdecl;
    {class} function _GetTRANSACTION_RESULT: JString; cdecl;
    {class} function _GetUNIQUE_ID: JString; cdecl;
    {class} function _GetWALLET_USER_ID: JString; cdecl;
    {class} property AMOUNT: JString read _GetAMOUNT;
    {class} property AUTHORIZATION_CODE: JString read _GetAUTHORIZATION_CODE;
    {class} property BALANCE_VOUCHER: JString read _GetBALANCE_VOUCHER;
    {class} property CARD_AID: JString read _GetCARD_AID;
    {class} property CARD_ENTRANCE_MODE: JString read _GetCARD_ENTRANCE_MODE;
    {class} property CARD_HOLDER_NAME: JString read _GetCARD_HOLDER_NAME;
    {class} property CARD_NAME: JString read _GetCARD_NAME;
    {class} property CARD_TYPE: JString read _GetCARD_TYPE;
    {class} property CHANGE: JString read _GetCHANGE;
    {class} property CONFIRM_TRANSACTION_IDENTIFIER: JString read _GetCONFIRM_TRANSACTION_IDENTIFIER;
    {class} property CURRENCY_CODE: JString read _GetCURRENCY_CODE;
    {class} property DATE_TIME_ORIGINAL_TRANSACTION: JString read _GetDATE_TIME_ORIGINAL_TRANSACTION;
    {class} property DATE_TIME_TRANSACTION: JString read _GetDATE_TIME_TRANSACTION;
    {class} property DIFFERENTIATED_HOLDER_VOUCHER: JString read _GetDIFFERENTIATED_HOLDER_VOUCHER;
    {class} property DIFFERENTIATED_SHOP_VOUCHER: JString read _GetDIFFERENTIATED_SHOP_VOUCHER;
    {class} property DISCOUNT: JString read _GetDISCOUNT;
    {class} property DUE_AMOUNT: JString read _GetDUE_AMOUNT;
    {class} property ESTABLISHMENT_IDENTIFIER: JString read _GetESTABLISHMENT_IDENTIFIER;
    {class} property ESTABLISHMENT_NAME: JString read _GetESTABLISHMENT_NAME;
    {class} property FINANCING_TYPE: JString read _GetFINANCING_TYPE;
    {class} property FISCAL_DOCUMENT: JString read _GetFISCAL_DOCUMENT;
    {class} property FULL_VOUCHER: JString read _GetFULL_VOUCHER;
    {class} property GRAPHIC_RECEIPT_EXISTS: JString read _GetGRAPHIC_RECEIPT_EXISTS;
    {class} property HOLDER_GRAPHIC_RECEIPT: JString read _GetHOLDER_GRAPHIC_RECEIPT;
    {class} property MASKED_PAN: JString read _GetMASKED_PAN;
    {class} property NETWORK_RESPONSE: JString read _GetNETWORK_RESPONSE;
    {class} property NSU_ORIGINAL_TRANSACTION: JString read _GetNSU_ORIGINAL_TRANSACTION;
    {class} property NUMBER_OF_INSTALLMENTS: JString read _GetNUMBER_OF_INSTALLMENTS;
    {class} property ONOFF: JString read _GetONOFF;
    {class} property OPERATION: JString read _GetOPERATION;
    {class} property ORIGINAL_AUTHORIZATION_CODE: JString read _GetORIGINAL_AUTHORIZATION_CODE;
    {class} property ORIGINAL_TERMINAL_NSU: JString read _GetORIGINAL_TERMINAL_NSU;
    {class} property ORIGINAL_VALUE: JString read _GetORIGINAL_VALUE;
    {class} property OUTPUT: JString read _GetOUTPUT;
    {class} property PASSWORD_VERIFICATION_MODE: JString read _GetPASSWORD_VERIFICATION_MODE;
    {class} property PAY_MODE: JString read _GetPAY_MODE;
    {class} property PENDING_TRANSACTION_DATA: JString read _GetPENDING_TRANSACTION_DATA;
    {class} property PENDING_TRANSACTION_EXISTS: JString read _GetPENDING_TRANSACTION_EXISTS;
    {class} property POINT_OF_SALE_IDENTIFIER: JString read _GetPOINT_OF_SALE_IDENTIFIER;
    {class} property PREDATED_DATE: JString read _GetPREDATED_DATE;
    {class} property PRINT_RECEIPTS: JString read _GetPRINT_RECEIPTS;
    {class} property PROVIDER: JString read _GetPROVIDER;
    {class} property PROVIDER_NAME: JString read _GetPROVIDER_NAME;
    {class} property REDUCED_HOLDER_VOUCHER: JString read _GetREDUCED_HOLDER_VOUCHER;
    {class} property REQUIRES_CONFIRMATION: JString read _GetREQUIRES_CONFIRMATION;
    {class} property RESULT_MESSAGE: JString read _GetRESULT_MESSAGE;
    {class} property STANDARD_CARD_NAME: JString read _GetSTANDARD_CARD_NAME;
    {class} property STANDARD_MASKED_PAN: JString read _GetSTANDARD_MASKED_PAN;
    {class} property STORE_KEEPER_GRAPHIC_RECEIPT: JString read _GetSTORE_KEEPER_GRAPHIC_RECEIPT;
    {class} property TERMINAL_NSU: JString read _GetTERMINAL_NSU;
    {class} property TRANSACTION_IDENTIFIER: JString read _GetTRANSACTION_IDENTIFIER;
    {class} property TRANSACTION_NSU: JString read _GetTRANSACTION_NSU;
    {class} property TRANSACTION_RESULT: JString read _GetTRANSACTION_RESULT;
    {class} property UNIQUE_ID: JString read _GetUNIQUE_ID;
    {class} property WALLET_USER_ID: JString read _GetWALLET_USER_ID;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/espec/TransactionOutput')]
  JTransactionOutput = interface(IJavaInstance)
    ['{9183C57D-2CF7-42C1-8105-1259F3166524}']
  end;
  TJTransactionOutput = class(TJavaGenericImport<JTransactionOutputClass, JTransactionOutput>) end;

  JDateParserClass = interface(JObjectClass)
    ['{2937D0C8-BCDC-4B2A-A0C8-6F03B3B29655}']
    {class} function date2String(date: JDate): JString; cdecl;
    {class} function init: JDateParser; cdecl;
    {class} function string2Date(string_: JString): JDate; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/DateParser')]
  JDateParser = interface(JObject)
    ['{44232C11-3163-4678-A099-75D8305809CE}']
  end;
  TJDateParser = class(TJavaGenericImport<JDateParserClass, JDateParser>) end;

  JEnumTypeClass = interface(JObjectClass)
    ['{5FF26862-690A-4BAB-8F98-20FC235EF017}']
    {class} function _GetTYPE_NAME: Integer; cdecl;
    {class} function _GetTYPE_ORDINAL: Integer; cdecl;
    {class} function _GetTYPE_VALUE: Integer; cdecl;
    {class} function init: JEnumType; cdecl;//Deprecated
    {class} property TYPE_NAME: Integer read _GetTYPE_NAME;
    {class} property TYPE_ORDINAL: Integer read _GetTYPE_ORDINAL;
    {class} property TYPE_VALUE: Integer read _GetTYPE_VALUE;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/EnumType')]
  JEnumType = interface(JObject)
    ['{D6621194-0F21-4C4E-95B9-0BB9677CF594}']
  end;
  TJEnumType = class(TJavaGenericImport<JEnumTypeClass, JEnumType>) end;

  JInputParserClass = interface(JObjectClass)
    ['{60CC0CE0-A489-4CCA-974B-2DB8221768F0}']
    {class} function init(string_: JString; string_1: JString): JInputParser; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/InputParser')]
  JInputParser = interface(JObject)
    ['{0415F202-0910-4C44-B8A5-F95873F6740B}']
    procedure addObject(object_: JObject); cdecl;
    procedure addParameter(string_: JString; string_1: JString); cdecl;
    procedure addPath(string_: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJInputParser = class(TJavaGenericImport<JInputParserClass, JInputParser>) end;

  JOutputParserClass = interface(JObjectClass)
    ['{56F9B86E-E041-4826-BF4C-A754174653C8}']
    {class} function init(string_: JString): JOutputParser; cdecl;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/OutputParser')]
  JOutputParser = interface(JObject)
    ['{863722F1-923F-4739-B868-96EC68256237}']
    function getObject(class_: Jlang_Class): JObject; cdecl; overload;
    function getObject(class_: Jlang_Class; object_: JObject): JObject; cdecl; overload;
  end;
  TJOutputParser = class(TJavaGenericImport<JOutputParserClass, JOutputParser>) end;

  Jparser_ParseExceptionClass = interface(JExceptionClass)
    ['{A9DACFEE-6300-4976-9178-B2FDB11DF9ED}']
    {class} function init: Jparser_ParseException; cdecl; overload;
    {class} function init(throwable: JThrowable): Jparser_ParseException; cdecl; overload;
    {class} function init(string_: JString): Jparser_ParseException; cdecl; overload;
    {class} function init(string_: JString; throwable: JThrowable): Jparser_ParseException; cdecl; overload;
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/ParseException')]
  Jparser_ParseException = interface(JException)
    ['{3EAC83CE-21D3-47F1-833C-9C973A17D71D}']
  end;
  TJparser_ParseException = class(TJavaGenericImport<Jparser_ParseExceptionClass, Jparser_ParseException>) end;

  JUriArrayFieldNameClass = interface(JAnnotationClass)
    ['{2A36A6CA-43CC-424C-A5F0-2D3DEA645933}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriArrayFieldName')]
  JUriArrayFieldName = interface(JAnnotation)
    ['{37A08828-DE0D-4A02-9138-E0E8A7F37E75}']
    function value: JString; cdecl;
  end;
  TJUriArrayFieldName = class(TJavaGenericImport<JUriArrayFieldNameClass, JUriArrayFieldName>) end;

  Jparser_UriClassClass = interface(JAnnotationClass)
    ['{78EED6B2-55E3-4669-A97F-DABD8935BD14}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriClass')]
  Jparser_UriClass = interface(JAnnotation)
    ['{4DECA791-ADFE-4ADB-BA4A-E51A6B6DFEC9}']
    function value: JString; cdecl;
  end;
  TJparser_UriClass = class(TJavaGenericImport<Jparser_UriClassClass, Jparser_UriClass>) end;

  JUriCustomizeFieldNameClass = interface(JAnnotationClass)
    ['{2FBA9B97-08CF-40FB-9439-F2B910513CE6}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriCustomizeFieldName')]
  JUriCustomizeFieldName = interface(JAnnotation)
    ['{812016D5-BD2F-4B7B-A786-3DDADE56C454}']
    function value: JString; cdecl;
  end;
  TJUriCustomizeFieldName = class(TJavaGenericImport<JUriCustomizeFieldNameClass, JUriCustomizeFieldName>) end;

  JUriDateFieldNameClass = interface(JAnnotationClass)
    ['{AFA18817-F004-482C-9ADD-02AA93BE3385}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriDateFieldName')]
  JUriDateFieldName = interface(JAnnotation)
    ['{B771D979-14CE-40EA-9A0E-A115DA452127}']
    function value: JString; cdecl;
  end;
  TJUriDateFieldName = class(TJavaGenericImport<JUriDateFieldNameClass, JUriDateFieldName>) end;

  JUriEnumFieldNameClass = interface(JAnnotationClass)
    ['{5A0CA8F9-A14F-4F2E-A222-2864E5B30063}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriEnumFieldName')]
  JUriEnumFieldName = interface(JAnnotation)
    ['{C7D4C6B0-FE30-4DA3-8202-B65D0D7824BB}']
    function value: JString; cdecl;
  end;
  TJUriEnumFieldName = class(TJavaGenericImport<JUriEnumFieldNameClass, JUriEnumFieldName>) end;

  JUriFileFieldNameClass = interface(JAnnotationClass)
    ['{36BD8D36-A794-4299-8E36-430BB4BC9F80}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriFileFieldName')]
  JUriFileFieldName = interface(JAnnotation)
    ['{B860A8F9-E2E1-458D-A99C-C7373AE93605}']
    function value: JString; cdecl;
  end;
  TJUriFileFieldName = class(TJavaGenericImport<JUriFileFieldNameClass, JUriFileFieldName>) end;

  JUriMethodNameClass = interface(JAnnotationClass)
    ['{F42CF6CB-B1CB-46BE-B45A-CD9B9B2D25E2}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriMethodName')]
  JUriMethodName = interface(JAnnotation)
    ['{B427F095-BA22-44C0-944C-20900149BB01}']
    function json: TJavaObjectArray<Jparser_UriClass>; cdecl;
  end;
  TJUriMethodName = class(TJavaGenericImport<JUriMethodNameClass, JUriMethodName>) end;

  JUriObjectFieldNameClass = interface(JAnnotationClass)
    ['{5025523C-75D9-40CA-977A-64F9321A74F6}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriObjectFieldName')]
  JUriObjectFieldName = interface(JAnnotation)
    ['{E9DEE29A-C652-457E-958A-5278FF808A72}']
    function value: JString; cdecl;
  end;
  TJUriObjectFieldName = class(TJavaGenericImport<JUriObjectFieldNameClass, JUriObjectFieldName>) end;

  JUriPrimitiveFieldNameClass = interface(JAnnotationClass)
    ['{9FBA0794-92E7-4B96-B692-B89FE9600C5E}']
  end;

  [JavaSignature('br/com/setis/interfaceautomacao/parser/UriPrimitiveFieldName')]
  JUriPrimitiveFieldName = interface(JAnnotation)
    ['{9ACB6940-0E75-4BA3-896C-ECAF08AC4A6B}']
    function value: JString; cdecl;
  end;
  TJUriPrimitiveFieldName = class(TJavaGenericImport<JUriPrimitiveFieldNameClass, JUriPrimitiveFieldName>) end;

  JAlgorithmConstantsClass = interface(IJavaClass)
    ['{7DCC7A17-4ABA-44DC-8BD0-06E393957514}']
    {class} function _GetALGO_CHECK_VALUE_DEFAULT: Integer; cdecl;
    {class} function _GetALGO_CHECK_VALUE_SE919: Integer; cdecl;
    {class} function _GetALG_3DES: Integer; cdecl;
    {class} function _GetALG_DES: Integer; cdecl;
    {class} function _GetALG_MAC_METHOD_ECB: Integer; cdecl;
    {class} function _GetALG_MAC_METHOD_ECB_FIRST: Integer; cdecl;
    {class} function _GetALG_MAC_METHOD_SE919: Integer; cdecl;
    {class} function _GetALG_MAC_METHOD_X99: Integer; cdecl;
    {class} function _GetALG_RSA: Integer; cdecl;
    {class} function _GetALG_SM2: Integer; cdecl;
    {class} function _GetALG_SM3: Integer; cdecl;
    {class} function _GetALG_SM4: Integer; cdecl;
    {class} function _GetPINPAD_ENCRYPT_STRING_MODE_CBC: Integer; cdecl;
    {class} function _GetPINPAD_ENCRYPT_STRING_MODE_CFB: Integer; cdecl;
    {class} function _GetPINPAD_ENCRYPT_STRING_MODE_EBC: Integer; cdecl;
    {class} function _GetPINPAD_ENCRYPT_STRING_MODE_OFB: Integer; cdecl;
    {class} property ALGO_CHECK_VALUE_DEFAULT: Integer read _GetALGO_CHECK_VALUE_DEFAULT;
    {class} property ALGO_CHECK_VALUE_SE919: Integer read _GetALGO_CHECK_VALUE_SE919;
    {class} property ALG_3DES: Integer read _GetALG_3DES;
    {class} property ALG_DES: Integer read _GetALG_DES;
    {class} property ALG_MAC_METHOD_ECB: Integer read _GetALG_MAC_METHOD_ECB;
    {class} property ALG_MAC_METHOD_ECB_FIRST: Integer read _GetALG_MAC_METHOD_ECB_FIRST;
    {class} property ALG_MAC_METHOD_SE919: Integer read _GetALG_MAC_METHOD_SE919;
    {class} property ALG_MAC_METHOD_X99: Integer read _GetALG_MAC_METHOD_X99;
    {class} property ALG_RSA: Integer read _GetALG_RSA;
    {class} property ALG_SM2: Integer read _GetALG_SM2;
    {class} property ALG_SM3: Integer read _GetALG_SM3;
    {class} property ALG_SM4: Integer read _GetALG_SM4;
    {class} property PINPAD_ENCRYPT_STRING_MODE_CBC: Integer read _GetPINPAD_ENCRYPT_STRING_MODE_CBC;
    {class} property PINPAD_ENCRYPT_STRING_MODE_CFB: Integer read _GetPINPAD_ENCRYPT_STRING_MODE_CFB;
    {class} property PINPAD_ENCRYPT_STRING_MODE_EBC: Integer read _GetPINPAD_ENCRYPT_STRING_MODE_EBC;
    {class} property PINPAD_ENCRYPT_STRING_MODE_OFB: Integer read _GetPINPAD_ENCRYPT_STRING_MODE_OFB;
  end;

  [JavaSignature('com/cloudpos/AlgorithmConstants')]
  JAlgorithmConstants = interface(IJavaInstance)
    ['{88B3AC5C-3849-4235-AC97-6A4D10E7D9DE}']
  end;
  TJAlgorithmConstants = class(TJavaGenericImport<JAlgorithmConstantsClass, JAlgorithmConstants>) end;

  JDeviceClass = interface(IJavaClass)
    ['{07DCD3CA-CE42-4970-935C-775938667FA7}']
  end;

  [JavaSignature('com/cloudpos/Device')]
  JDevice = interface(IJavaInstance)
    ['{208BA796-0941-4063-A18B-F7F394D0C649}']
    procedure cancelRequest; cdecl;
    procedure close; cdecl;
    function getFailCount: Int64; cdecl;
    function getUsageCount: Int64; cdecl;
    procedure open; cdecl;
  end;
  TJDevice = class(TJavaGenericImport<JDeviceClass, JDevice>) end;

  JDeviceExceptionClass = interface(JExceptionClass)
    ['{4D425DAC-C4DF-45EB-AEBE-B284BC6F19D4}']
    {class} function _GetARGUMENT_EXCEPTION: Integer; cdecl;
    {class} function _GetBAD_CONTROL_MODE: Integer; cdecl;
    {class} function _GetGENERAL_EXCEPTION: Integer; cdecl;
    {class} function _GetNO_IMPLEMENT: Integer; cdecl;
    {class} function _GetNO_PERMISSION: Integer; cdecl;
    {class} function _GetNO_REQUEST_PENDING: Integer; cdecl;
    {class} function _GetREQUEST_PENDING: Integer; cdecl;
    {class} function init(throwable: JThrowable): JDeviceException; cdecl; overload;
    {class} function init(i: Integer): JDeviceException; cdecl; overload;//Deprecated
    {class} function init(string_: JString): JDeviceException; cdecl; overload;
    {class} function init(i: Integer; string_: JString): JDeviceException; cdecl; overload;
    {class} function init(i: Integer; string_: JString; throwable: JThrowable): JDeviceException; cdecl; overload;
    {class} property ARGUMENT_EXCEPTION: Integer read _GetARGUMENT_EXCEPTION;
    {class} property BAD_CONTROL_MODE: Integer read _GetBAD_CONTROL_MODE;
    {class} property GENERAL_EXCEPTION: Integer read _GetGENERAL_EXCEPTION;
    {class} property NO_IMPLEMENT: Integer read _GetNO_IMPLEMENT;
    {class} property NO_PERMISSION: Integer read _GetNO_PERMISSION;
    {class} property NO_REQUEST_PENDING: Integer read _GetNO_REQUEST_PENDING;
    {class} property REQUEST_PENDING: Integer read _GetREQUEST_PENDING;
  end;

  [JavaSignature('com/cloudpos/DeviceException')]
  JDeviceException = interface(JException)
    ['{8019B0CB-C6CB-4C1F-BCAB-56A92A533A6D}']
    function getCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJDeviceException = class(TJavaGenericImport<JDeviceExceptionClass, JDeviceException>) end;

  JDeviceSpecClass = interface(IJavaClass)
    ['{9424314B-173F-4DA5-9F5C-91C4DEBA214B}']
  end;

  [JavaSignature('com/cloudpos/DeviceSpec')]
  JDeviceSpec = interface(IJavaInstance)
    ['{09F062F4-196C-4DFA-86D4-07A1DFEE343A}']
  end;
  TJDeviceSpec = class(TJavaGenericImport<JDeviceSpecClass, JDeviceSpec>) end;

  JOperationListenerClass = interface(IJavaClass)
    ['{E4386B8D-34DC-48E4-B375-970E19E142E6}']
  end;

  [JavaSignature('com/cloudpos/OperationListener')]
  JOperationListener = interface(IJavaInstance)
    ['{E9087EA2-0077-4592-AED9-7A5A0A8AE904}']
    procedure handleResult(operationResult: JOperationResult); cdecl;
  end;
  TJOperationListener = class(TJavaGenericImport<JOperationListenerClass, JOperationListener>) end;

  JOperationResultClass = interface(IJavaClass)
    ['{FC254AA9-0912-477C-B89C-EE164DE31FBD}']
    {class} function _GetCANCEL: Integer; cdecl;
    {class} function _GetERR_DEVICE_BASE: Integer; cdecl;
    {class} function _GetERR_GENERAL_ERROR: Integer; cdecl;
    {class} function _GetERR_NO_INFO: Integer; cdecl;
    {class} function _GetERR_NO_PERMISSION: Integer; cdecl;
    {class} function _GetERR_TIMEOUT: Integer; cdecl;
    {class} function _GetNONE: Integer; cdecl;
    {class} function _GetSUCCESS: Integer; cdecl;
    {class} function getResultCode: Integer; cdecl;//Deprecated
    {class} property CANCEL: Integer read _GetCANCEL;
    {class} property ERR_DEVICE_BASE: Integer read _GetERR_DEVICE_BASE;
    {class} property ERR_GENERAL_ERROR: Integer read _GetERR_GENERAL_ERROR;
    {class} property ERR_NO_INFO: Integer read _GetERR_NO_INFO;
    {class} property ERR_NO_PERMISSION: Integer read _GetERR_NO_PERMISSION;
    {class} property ERR_TIMEOUT: Integer read _GetERR_TIMEOUT;
    {class} property NONE: Integer read _GetNONE;
    {class} property SUCCESS: Integer read _GetSUCCESS;
  end;

  [JavaSignature('com/cloudpos/OperationResult')]
  JOperationResult = interface(IJavaInstance)
    ['{CA78A581-F0DF-44F2-AC02-B6C884224577}']
  end;
  TJOperationResult = class(TJavaGenericImport<JOperationResultClass, JOperationResult>) end;

  JPOSTerminalClass = interface(JObjectClass)
    ['{9B0BA537-E146-469B-AC7D-0280F7941AA8}']
    {class} function _GetDEVICE_NAME_LED: JString; cdecl;
    {class} function _GetDEVICE_NAME_PRINTER: JString; cdecl;
    {class} function _GetDEVICE_NAME_SERIALPORT: JString; cdecl;
    {class} function _GetPOS_TERMINAL_CLASS: JString; cdecl;
    {class} function _GetPOS_TERMINAL_INTERNAL_CLASS: JString; cdecl;
    {class} function getInstance(context: JContext): JPOSTerminal; cdecl;
    {class} function init: JPOSTerminal; cdecl;
    {class} property DEVICE_NAME_LED: JString read _GetDEVICE_NAME_LED;
    {class} property DEVICE_NAME_PRINTER: JString read _GetDEVICE_NAME_PRINTER;
    {class} property DEVICE_NAME_SERIALPORT: JString read _GetDEVICE_NAME_SERIALPORT;
    {class} property POS_TERMINAL_CLASS: JString read _GetPOS_TERMINAL_CLASS;
    {class} property POS_TERMINAL_INTERNAL_CLASS: JString read _GetPOS_TERMINAL_INTERNAL_CLASS;
  end;

  [JavaSignature('com/cloudpos/POSTerminal')]
  JPOSTerminal = interface(JObject)
    ['{EB28071A-A244-42C8-8D3D-AFCB0DFAD232}']
    function getDevice(string_: JString): JDevice; cdecl; overload;
    function getDevice(string_: JString; i: Integer): JDevice; cdecl; overload;
    function getDeviceSpec(string_: JString): JDeviceSpec; cdecl;
    function getTerminalSpec: JTerminalSpec; cdecl;
    function isDeviceExist(string_: JString): Boolean; cdecl;
    function listDevices: TJavaObjectArray<JString>; cdecl;
  end;
  TJPOSTerminal = class(TJavaGenericImport<JPOSTerminalClass, JPOSTerminal>) end;

  JTerminalSpecClass = interface(IJavaClass)
    ['{66F44BE1-C82F-4078-B617-6CE43ABC4C72}']
  end;

  [JavaSignature('com/cloudpos/TerminalSpec')]
  JTerminalSpec = interface(IJavaInstance)
    ['{3A240443-18DE-4C2C-84CB-D8A860D491BF}']
    function getAPILevel: JString; cdecl;
    function getFLashID: JString; cdecl;
    function getHardwareVersion: JString; cdecl;
    function getManufacturer: JString; cdecl;
    function getModel: JString; cdecl;
    function getModuleVersion: JString; cdecl;
    function getOSVersion: JString; cdecl;
    function getSerialNumber: JString; cdecl;
    function getUniqueCode: JString; cdecl;
  end;
  TJTerminalSpec = class(TJavaGenericImport<JTerminalSpecClass, JTerminalSpec>) end;

  JTimeConstantsClass = interface(IJavaClass)
    ['{AC079583-35AB-454B-BA14-442CEEBFFCFC}']
    {class} function _GetFOREVER: Integer; cdecl;
    {class} function _GetIMMEDIATE: Integer; cdecl;
    {class} function _GetMilliSECOND: Integer; cdecl;
    {class} function _GetSECOND: Integer; cdecl;
    {class} property FOREVER: Integer read _GetFOREVER;
    {class} property IMMEDIATE: Integer read _GetIMMEDIATE;
    {class} property MilliSECOND: Integer read _GetMilliSECOND;
    {class} property SECOND: Integer read _GetSECOND;
  end;

  [JavaSignature('com/cloudpos/TimeConstants')]
  JTimeConstants = interface(IJavaInstance)
    ['{80F0B1BB-13D8-4582-ACF6-889D55AEDA9D}']
  end;
  TJTimeConstants = class(TJavaGenericImport<JTimeConstantsClass, JTimeConstants>) end;

  JFingerprintClass = interface(JObjectClass)
    ['{D5342CA3-A358-46D7-85F3-D36CDB53EC1D}']
    {class} function init: JFingerprint; cdecl;
  end;

  [JavaSignature('com/cloudpos/fingerprint/Fingerprint')]
  JFingerprint = interface(JObject)
    ['{EDFC2C84-E5BB-4CF2-A72A-A8055B96EFC2}']
    function getFeature: TJavaArray<Byte>; cdecl;
    function getImage: JBitmap; cdecl;
    function getWsqImage: TJavaArray<Byte>; cdecl;
    procedure setFeature(b: TJavaArray<Byte>); cdecl;
    procedure setImage(bitmap: JBitmap); cdecl;
    procedure setWsqImage(b: TJavaArray<Byte>); cdecl;
  end;
  TJFingerprint = class(TJavaGenericImport<JFingerprintClass, JFingerprint>) end;

  JFingerprintDeviceClass = interface(JDeviceClass)
    ['{EC46973F-2059-4FA2-9F19-92A4906BB95D}']
    {class} function _GetFINGERPRINT: Integer; cdecl;
    {class} function _GetISO_FINGERPRINT: Integer; cdecl;
    {class} procedure open(i: Integer); cdecl;//Deprecated
    {class} property FINGERPRINT: Integer read _GetFINGERPRINT;
    {class} property ISO_FINGERPRINT: Integer read _GetISO_FINGERPRINT;
  end;

  [JavaSignature('com/cloudpos/fingerprint/FingerprintDevice')]
  JFingerprintDevice = interface(JDevice)
    ['{C4B06299-84B9-4205-8F80-FAE40EC98941}']
    function compare(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function convertFormat(fingerprint: JFingerprint; i: Integer; fingerprint1: JFingerprint; i1: Integer): Integer; cdecl;
    function delAllFingers: Integer; cdecl;
    function delFinger(i: Integer): Integer; cdecl;
    function enroll(i: Integer; i1: Integer): Integer; cdecl;
    function getFingerprint(i: Integer): JFingerprint; cdecl; overload;
    function getFingerprint(i: Integer; i1: Integer): JFingerprint; cdecl; overload;
    function getId: Integer; cdecl;
    function identify(b: TJavaArray<Byte>; list: JList; i: Integer): TJavaArray<Integer>; cdecl;
    function listAllFingersStatus: TJavaArray<Integer>; cdecl;
    procedure listenForFingerprint(operationListener: JOperationListener; i: Integer); cdecl;
    function match(fingerprint: JFingerprint; fingerprint1: JFingerprint): Integer; cdecl;
    function storeFeature(i: Integer; fingerprint: JFingerprint): Integer; cdecl;
    function verifyAgainstFingerprint(fingerprint: JFingerprint; i: Integer): Integer; cdecl;
    function verifyAgainstUserId(i: Integer; i1: Integer): Integer; cdecl;
    function verifyAll(i: Integer): Integer; cdecl;
    function waitForFingerprint(i: Integer): JFingerprintOperationResult; cdecl;
  end;
  TJFingerprintDevice = class(TJavaGenericImport<JFingerprintDeviceClass, JFingerprintDevice>) end;

  JFingerprintDeviceSpecClass = interface(JDeviceSpecClass)
    ['{8A3E3BE4-FEFC-4F67-86BA-04D950C6FFB8}']
  end;

  [JavaSignature('com/cloudpos/fingerprint/FingerprintDeviceSpec')]
  JFingerprintDeviceSpec = interface(JDeviceSpec)
    ['{AECB20A7-06C7-47B3-BF99-700DFF9D38ED}']
  end;
  TJFingerprintDeviceSpec = class(TJavaGenericImport<JFingerprintDeviceSpecClass, JFingerprintDeviceSpec>) end;

  JFingerprintOperationResultClass = interface(JOperationResultClass)
    ['{6A4D19AB-BFC4-4629-B15F-75A740B6C849}']
  end;

  [JavaSignature('com/cloudpos/fingerprint/FingerprintOperationResult')]
  JFingerprintOperationResult = interface(JOperationResult)
    ['{FDC0FCB0-02E3-4592-A62C-2AFAFD1DED53}']
    function getFingerprint(i: Integer; i1: Integer): JFingerprint; cdecl;
  end;
  TJFingerprintOperationResult = class(TJavaGenericImport<JFingerprintOperationResultClass, JFingerprintOperationResult>) end;

  JIFPHelperClass = interface(JIInterfaceClass)
    ['{125929AB-4E69-4763-B2B6-7E15C239BE5A}']
  end;

  [JavaSignature('com/cloudpos/fingerprint/aidl/IFPHelper')]
  JIFPHelper = interface(JIInterface)
    ['{81513899-DE83-47F9-AE8D-2A4C4C1EA2C9}']
    function compare(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function identifyFmds(b: TJavaArray<Byte>; list: JList; i: Integer; i1: Integer): TJavaArray<Integer>; cdecl;
  end;
  TJIFPHelper = class(TJavaGenericImport<JIFPHelperClass, JIFPHelper>) end;

  JIFPHelper_StubClass = interface(JBinderClass)
    ['{251C8F7B-7BE2-4C28-8915-AC99B1C9FE8C}']
    {class} function _GetTRANSACTION_compare: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIFPHelper; cdecl;
    {class} function init: JIFPHelper_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_compare: Integer read _GetTRANSACTION_compare;
  end;

  [JavaSignature('com/cloudpos/fingerprint/aidl/IFPHelper$Stub')]
  JIFPHelper_Stub = interface(JBinder)
    ['{694CDFA3-295F-432A-94FE-4E48D823FBE3}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIFPHelper_Stub = class(TJavaGenericImport<JIFPHelper_StubClass, JIFPHelper_Stub>) end;

  JIFPHelper_Stub_ProxyClass = interface(JIFPHelperClass)
    ['{815725EA-70D0-4B44-9F59-71B216525BD1}']
    {class} function init(iBinder: JIBinder): JIFPHelper_Stub_Proxy; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/fingerprint/aidl/IFPHelper$Stub$Proxy')]
  JIFPHelper_Stub_Proxy = interface(JIFPHelper)
    ['{5E0C8BE0-D125-409A-ACE9-E5D1AA574139}']
    function asBinder: JIBinder; cdecl;
    function compare(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function identifyFmds(b: TJavaArray<Byte>; list: JList; i: Integer; i1: Integer): TJavaArray<Integer>; cdecl;
  end;
  TJIFPHelper_Stub_Proxy = class(TJavaGenericImport<JIFPHelper_Stub_ProxyClass, JIFPHelper_Stub_Proxy>) end;

  Jfingerprint_package_infoClass = interface(IJavaClass)
    ['{B9200AB4-30F1-4920-9638-4D4B8AFD74D5}']
  end;

  [JavaSignature('com/cloudpos/fingerprint/package-info')]
  Jfingerprint_package_info = interface(IJavaInstance)
    ['{38B5F3FD-87A7-45BF-A97E-289BB05F1D12}']
  end;
  TJfingerprint_package_info = class(TJavaGenericImport<Jfingerprint_package_infoClass, Jfingerprint_package_info>) end;

  JExternalPrinterInterfaceClass = interface(JObjectClass)
    ['{C28B2D2D-4CA1-49AE-83B1-B37EE2067434}']
    {class} function &begin(i: Integer): Integer; cdecl;
    {class} function close(i: Integer): Integer; cdecl;
    {class} function &end(i: Integer): Integer; cdecl;
    {class} function init: JExternalPrinterInterface; cdecl;
    {class} function open(string_: JString): Integer; cdecl;
    {class} function queryStatus(i: Integer): Integer; cdecl;
    {class} function queryVoltage(i: Integer; i1: TJavaArray<Integer>; i2: TJavaArray<Integer>): Integer; cdecl;
    {class} function read(i: Integer; b: TJavaArray<Byte>; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function write(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/ExternalPrinterInterface')]
  JExternalPrinterInterface = interface(JObject)
    ['{8580CA9D-2A29-4847-830C-5A9A21281B59}']
  end;
  TJExternalPrinterInterface = class(TJavaGenericImport<JExternalPrinterInterfaceClass, JExternalPrinterInterface>) end;

  JFingerPrintInterfaceClass = interface(JObjectClass)
    ['{525E8B4F-5995-4B6C-A051-52B03C0D0061}']
    {class} function cancel: Integer; cdecl;
    {class} function close: Integer; cdecl;
    {class} function getFea(b: TJavaArray<Byte>; i: Integer; i1: TJavaArray<Integer>; i2: Integer): Integer; cdecl;
    {class} function getLastImage(b: TJavaArray<Byte>; i: Integer; i1: TJavaArray<Integer>; i2: TJavaArray<Integer>; i3: TJavaArray<Integer>): Integer; cdecl;
    {class} function init: JFingerPrintInterface; cdecl;
    {class} function match(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    {class} function open: Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/FingerPrintInterface')]
  JFingerPrintInterface = interface(JObject)
    ['{7043A421-047A-4154-9890-71737142D059}']
  end;
  TJFingerPrintInterface = class(TJavaGenericImport<JFingerPrintInterfaceClass, JFingerPrintInterface>) end;

  JIsoFingerPrintInterfaceClass = interface(JObjectClass)
    ['{AD051874-6134-43FD-8983-786326D35663}']
    {class} function cancel: Integer; cdecl;
    {class} function close: Integer; cdecl;
    {class} function convertFormat(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    {class} function delAllFingers: Integer; cdecl;
    {class} function delFinger(i: Integer): Integer; cdecl;
    {class} function enroll(i: Integer; i1: Integer): Integer; cdecl;
    {class} function getFeaExt(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    {class} function getId: Integer; cdecl;
    {class} function getImage(b: TJavaArray<Byte>; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function getUserFeature(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    {class} function init: JIsoFingerPrintInterface; cdecl;
    {class} function isOpened: Boolean; cdecl;
    {class} function listAllFingersStatus(i: TJavaArray<Integer>): Integer; cdecl;
    {class} function match(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    {class} function open: Integer; cdecl;
    {class} function storeFeature(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    {class} function verifyAgainstFeature(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    {class} function verifyAgainstUserId(i: Integer; i1: Integer): Integer; cdecl;
    {class} function verifyAll(i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/IsoFingerPrintInterface')]
  JIsoFingerPrintInterface = interface(JObject)
    ['{D0501666-EE41-4760-987C-747FD0BA2388}']
  end;
  TJIsoFingerPrintInterface = class(TJavaGenericImport<JIsoFingerPrintInterfaceClass, JIsoFingerPrintInterface>) end;

  JJNILoadClass = interface(JObjectClass)
    ['{4978B26F-CCC7-426A-B986-775036854191}']
    {class} function init: JJNILoad; cdecl;
    {class} procedure jniLoad(string_: JString); cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/JNILoad')]
  JJNILoad = interface(JObject)
    ['{5AD925CD-26CF-48D0-87C7-22913AB40750}']
  end;
  TJJNILoad = class(TJavaGenericImport<JJNILoadClass, JJNILoad>) end;

  JLEDInterfaceClass = interface(JObjectClass)
    ['{D2F619FC-0776-4DDF-86C6-46266619A0BD}']
    {class} function close: Integer; cdecl;
    {class} function getStatus(i: Integer): Integer; cdecl;
    {class} function init: JLEDInterface; cdecl;
    {class} function open: Integer; cdecl;
    {class} function turnOff(i: Integer): Integer; cdecl;
    {class} function turnOn(i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/LEDInterface')]
  JLEDInterface = interface(JObject)
    ['{389ADB89-B939-4B58-B893-A6C9FEDCD8A1}']
  end;
  TJLEDInterface = class(TJavaGenericImport<JLEDInterfaceClass, JLEDInterface>) end;

  JPrinterHtmlInterfaceClass = interface(JObjectClass)
    ['{85130483-E876-45B6-9AD8-F3B90C6B121A}']
    {class} function bitmapGSVMSBToBufferGray(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    {class} function bitmapGSVMSBToBufferRGB(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    {class} function init: JPrinterHtmlInterface; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/PrinterHtmlInterface')]
  JPrinterHtmlInterface = interface(JObject)
    ['{39EBCCF7-DE97-47DC-A596-84F56A1A6FB2}']
  end;
  TJPrinterHtmlInterface = class(TJavaGenericImport<JPrinterHtmlInterfaceClass, JPrinterHtmlInterface>) end;

  JPrinterInterfaceClass = interface(JObjectClass)
    ['{EF33CAE1-3ECD-43E6-932E-FCF02ACF210A}']
    {class} function &begin: Integer; cdecl;
    {class} function close: Integer; cdecl;
    {class} function &end: Integer; cdecl;
    {class} function init: JPrinterInterface; cdecl;
    {class} function isOpened: Boolean; cdecl;
    {class} function open: Integer; cdecl;
    {class} function queryStatus: Integer; cdecl;
    {class} function queryVoltage(i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Integer; cdecl;
    {class} function read(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    {class} function write(b: TJavaArray<Byte>; i: Integer): Integer; cdecl; overload;
    {class} function write(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl; overload;
  end;

  [JavaSignature('com/cloudpos/jniinterface/PrinterInterface')]
  JPrinterInterface = interface(JObject)
    ['{FF26A209-1B53-48FC-965D-B2DFD6A08C8A}']
  end;
  TJPrinterInterface = class(TJavaGenericImport<JPrinterInterfaceClass, JPrinterInterface>) end;

  JSerialPortInterfaceClass = interface(JObjectClass)
    ['{F02DFA89-A049-46B6-A714-01A655042AC0}']
    {class} function close: Integer; cdecl;
    {class} function flushIO: Integer; cdecl;
    {class} function init: JSerialPortInterface; cdecl;
    {class} function isOpened: Boolean; cdecl;
    {class} function open(string_: JString): Integer; cdecl;
    {class} function read(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    {class} function setBaudrate(i: Integer): Integer; cdecl;
    {class} function write(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/jniinterface/SerialPortInterface')]
  JSerialPortInterface = interface(JObject)
    ['{C1EB9217-DCB2-4ABF-BDF4-B273E102355B}']
  end;
  TJSerialPortInterface = class(TJavaGenericImport<JSerialPortInterfaceClass, JSerialPortInterface>) end;

  JLEDDeviceClass = interface(JDeviceClass)
    ['{CE7BC3FF-4133-447B-84D7-A42FC72D270B}']
    {class} function _GetSTATUS_OFF: Integer; cdecl;
    {class} function _GetSTATUS_ON: Integer; cdecl;
    {class} procedure open(i: Integer); cdecl;//Deprecated
    {class} property STATUS_OFF: Integer read _GetSTATUS_OFF;
    {class} property STATUS_ON: Integer read _GetSTATUS_ON;
  end;

  [JavaSignature('com/cloudpos/led/LEDDevice')]
  JLEDDevice = interface(JDevice)
    ['{8A05689C-EA2B-4643-B13E-C05115E004DB}']
    procedure blink(l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure blink(b: Byte; l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure cancelBlink; cdecl;
    function getLogicalID: Integer; cdecl;
    function getStatus: Integer; cdecl;
    procedure startBlink(l: Int64; l1: Int64); cdecl; overload;
    procedure startBlink(l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure startBlink(b: Byte; l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure turnOff; cdecl;
    procedure turnOn; cdecl;
  end;
  TJLEDDevice = class(TJavaGenericImport<JLEDDeviceClass, JLEDDevice>) end;

  JLEDDeviceSpecClass = interface(JDeviceSpecClass)
    ['{5F6CAB21-530A-4D45-B40B-9A3FD5ABECC9}']
    {class} function _GetBLUE: Byte; cdecl;
    {class} function _GetGREEN: Byte; cdecl;
    {class} function _GetRED: Byte; cdecl;
    {class} function _GetWHITE: Byte; cdecl;
    {class} function _GetYELLOW: Byte; cdecl;
    {class} property BLUE: Byte read _GetBLUE;
    {class} property GREEN: Byte read _GetGREEN;
    {class} property RED: Byte read _GetRED;
    {class} property WHITE: Byte read _GetWHITE;
    {class} property YELLOW: Byte read _GetYELLOW;
  end;

  [JavaSignature('com/cloudpos/led/LEDDeviceSpec')]
  JLEDDeviceSpec = interface(JDeviceSpec)
    ['{23B1692C-3591-435A-B976-A8AA073B99B6}']
    function canQuickBlink(i: Integer): Boolean; cdecl;
    function canSlowBlink(i: Integer): Boolean; cdecl;
    function getColors(i: Integer): TJavaArray<Byte>; cdecl;
    function getCounts: Integer; cdecl;
  end;
  TJLEDDeviceSpec = class(TJavaGenericImport<JLEDDeviceSpecClass, JLEDDeviceSpec>) end;

  Jled_package_infoClass = interface(IJavaClass)
    ['{1A06CB1F-BDC8-43A7-B630-0D55A7214B70}']
  end;

  [JavaSignature('com/cloudpos/led/package-info')]
  Jled_package_info = interface(IJavaInstance)
    ['{556F3F3A-6C1D-4EA0-B31B-376867B90513}']
  end;
  TJled_package_info = class(TJavaGenericImport<Jled_package_infoClass, Jled_package_info>) end;

  Jpackage_infoClass = interface(IJavaClass)
    ['{979F635E-8BCF-4D86-B1AF-E277543654F6}']
  end;

  [JavaSignature('com/cloudpos/package-info')]
  Jpackage_info = interface(IJavaInstance)
    ['{CAEA9183-7CE4-4A4B-AF31-66580F4678F4}']
  end;
  TJpackage_info = class(TJavaGenericImport<Jpackage_infoClass, Jpackage_info>) end;

  Jprinter_FormatClass = interface(JObjectClass)
    ['{EAC01C78-8390-453B-AA7F-082EFB79830E}']
    {class} function _GetFORMAT_ALIGN: JString; cdecl;
    {class} function _GetFORMAT_ALIGN_CENTER: JString; cdecl;
    {class} function _GetFORMAT_ALIGN_LEFT: JString; cdecl;
    {class} function _GetFORMAT_ALIGN_RIGHT: JString; cdecl;
    {class} function _GetFORMAT_BARCODE_HRILOCATION: JString; cdecl;
    {class} function _GetFORMAT_BARCODE_HRILOCATION_DOWN: JString; cdecl;
    {class} function _GetFORMAT_BARCODE_HRILOCATION_NONE: JString; cdecl;
    {class} function _GetFORMAT_BARCODE_HRILOCATION_UP: JString; cdecl;
    {class} function _GetFORMAT_BARCODE_HRILOCATION_UPDOWN: JString; cdecl;
    {class} function _GetFORMAT_DENSITY: JString; cdecl;
    {class} function _GetFORMAT_DENSITY_DARK: JString; cdecl;
    {class} function _GetFORMAT_DENSITY_LIGHT: JString; cdecl;
    {class} function _GetFORMAT_DENSITY_MEDIUM: JString; cdecl;
    {class} function _GetFORMAT_FONT_BOLD: JString; cdecl;
    {class} function _GetFORMAT_FONT_INVERSION: JString; cdecl;
    {class} function _GetFORMAT_FONT_ITALIC: JString; cdecl;
    {class} function _GetFORMAT_FONT_LINETHROUGH: JString; cdecl;
    {class} function _GetFORMAT_FONT_REVERSE: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE_EXTRALARGE: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE_EXTRASMALL: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE_LARGE: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE_MEDIUM: JString; cdecl;
    {class} function _GetFORMAT_FONT_SIZE_SMALL: JString; cdecl;
    {class} function _GetFORMAT_FONT_VAL_FALSE: JString; cdecl;
    {class} function _GetFORMAT_FONT_VAL_TRUE: JString; cdecl;
    {class} function init: Jprinter_Format; cdecl;//Deprecated
    {class} property FORMAT_ALIGN: JString read _GetFORMAT_ALIGN;
    {class} property FORMAT_ALIGN_CENTER: JString read _GetFORMAT_ALIGN_CENTER;
    {class} property FORMAT_ALIGN_LEFT: JString read _GetFORMAT_ALIGN_LEFT;
    {class} property FORMAT_ALIGN_RIGHT: JString read _GetFORMAT_ALIGN_RIGHT;
    {class} property FORMAT_BARCODE_HRILOCATION: JString read _GetFORMAT_BARCODE_HRILOCATION;
    {class} property FORMAT_BARCODE_HRILOCATION_DOWN: JString read _GetFORMAT_BARCODE_HRILOCATION_DOWN;
    {class} property FORMAT_BARCODE_HRILOCATION_NONE: JString read _GetFORMAT_BARCODE_HRILOCATION_NONE;
    {class} property FORMAT_BARCODE_HRILOCATION_UP: JString read _GetFORMAT_BARCODE_HRILOCATION_UP;
    {class} property FORMAT_BARCODE_HRILOCATION_UPDOWN: JString read _GetFORMAT_BARCODE_HRILOCATION_UPDOWN;
    {class} property FORMAT_DENSITY: JString read _GetFORMAT_DENSITY;
    {class} property FORMAT_DENSITY_DARK: JString read _GetFORMAT_DENSITY_DARK;
    {class} property FORMAT_DENSITY_LIGHT: JString read _GetFORMAT_DENSITY_LIGHT;
    {class} property FORMAT_DENSITY_MEDIUM: JString read _GetFORMAT_DENSITY_MEDIUM;
    {class} property FORMAT_FONT_BOLD: JString read _GetFORMAT_FONT_BOLD;
    {class} property FORMAT_FONT_INVERSION: JString read _GetFORMAT_FONT_INVERSION;
    {class} property FORMAT_FONT_ITALIC: JString read _GetFORMAT_FONT_ITALIC;
    {class} property FORMAT_FONT_LINETHROUGH: JString read _GetFORMAT_FONT_LINETHROUGH;
    {class} property FORMAT_FONT_REVERSE: JString read _GetFORMAT_FONT_REVERSE;
    {class} property FORMAT_FONT_SIZE: JString read _GetFORMAT_FONT_SIZE;
    {class} property FORMAT_FONT_SIZE_EXTRALARGE: JString read _GetFORMAT_FONT_SIZE_EXTRALARGE;
    {class} property FORMAT_FONT_SIZE_EXTRASMALL: JString read _GetFORMAT_FONT_SIZE_EXTRASMALL;
    {class} property FORMAT_FONT_SIZE_LARGE: JString read _GetFORMAT_FONT_SIZE_LARGE;
    {class} property FORMAT_FONT_SIZE_MEDIUM: JString read _GetFORMAT_FONT_SIZE_MEDIUM;
    {class} property FORMAT_FONT_SIZE_SMALL: JString read _GetFORMAT_FONT_SIZE_SMALL;
    {class} property FORMAT_FONT_VAL_FALSE: JString read _GetFORMAT_FONT_VAL_FALSE;
    {class} property FORMAT_FONT_VAL_TRUE: JString read _GetFORMAT_FONT_VAL_TRUE;
  end;

  [JavaSignature('com/cloudpos/printer/Format')]
  Jprinter_Format = interface(JObject)
    ['{EF47CA27-F1D9-48B0-A092-78F796B13A29}']
    procedure clear; cdecl;
    function getParameter(string_: JString): JString; cdecl;
    procedure remove(string_: JString); cdecl;
    procedure setParameter(string_: JString; string_1: JString); cdecl;
  end;
  TJprinter_Format = class(TJavaGenericImport<Jprinter_FormatClass, Jprinter_Format>) end;

  JPrinterDeviceClass = interface(JDeviceClass)
    ['{BCC0F60D-20EA-43C5-811F-708805E4EF51}']
    {class} function _GetBARCODE_CODABAR: Integer; cdecl;
    {class} function _GetBARCODE_CODE128: Integer; cdecl;
    {class} function _GetBARCODE_CODE39: Integer; cdecl;
    {class} function _GetBARCODE_CODE93: Integer; cdecl;
    {class} function _GetBARCODE_HRI_POS_ABOVE: Integer; cdecl;
    {class} function _GetBARCODE_HRI_POS_BELOW: Integer; cdecl;
    {class} function _GetBARCODE_HRI_POS_BOTH: Integer; cdecl;
    {class} function _GetBARCODE_HRI_POS_NONE: Integer; cdecl;
    {class} function _GetBARCODE_ITF: Integer; cdecl;
    {class} function _GetBARCODE_JAN13: Integer; cdecl;
    {class} function _GetBARCODE_JAN8: Integer; cdecl;
    {class} function _GetBARCODE_UPC_A: Integer; cdecl;
    {class} function _GetBARCODE_UPC_E: Integer; cdecl;
    {class} function _GetSTATUS_OUT_OF_PAPER: Integer; cdecl;
    {class} function _GetSTATUS_PAPER_EXIST: Integer; cdecl;
    {class} procedure open(i: Integer); cdecl;//Deprecated
    {class} property BARCODE_CODABAR: Integer read _GetBARCODE_CODABAR;
    {class} property BARCODE_CODE128: Integer read _GetBARCODE_CODE128;
    {class} property BARCODE_CODE39: Integer read _GetBARCODE_CODE39;
    {class} property BARCODE_CODE93: Integer read _GetBARCODE_CODE93;
    {class} property BARCODE_HRI_POS_ABOVE: Integer read _GetBARCODE_HRI_POS_ABOVE;
    {class} property BARCODE_HRI_POS_BELOW: Integer read _GetBARCODE_HRI_POS_BELOW;
    {class} property BARCODE_HRI_POS_BOTH: Integer read _GetBARCODE_HRI_POS_BOTH;
    {class} property BARCODE_HRI_POS_NONE: Integer read _GetBARCODE_HRI_POS_NONE;
    {class} property BARCODE_ITF: Integer read _GetBARCODE_ITF;
    {class} property BARCODE_JAN13: Integer read _GetBARCODE_JAN13;
    {class} property BARCODE_JAN8: Integer read _GetBARCODE_JAN8;
    {class} property BARCODE_UPC_A: Integer read _GetBARCODE_UPC_A;
    {class} property BARCODE_UPC_E: Integer read _GetBARCODE_UPC_E;
    {class} property STATUS_OUT_OF_PAPER: Integer read _GetSTATUS_OUT_OF_PAPER;
    {class} property STATUS_PAPER_EXIST: Integer read _GetSTATUS_PAPER_EXIST;
  end;

  [JavaSignature('com/cloudpos/printer/PrinterDevice')]
  JPrinterDevice = interface(JDevice)
    ['{FB8030AF-45BA-4AE7-81B8-C1AE9484FF0A}']
    procedure cutPaper; cdecl;
    function getDefaultParameters: Jprinter_Format; cdecl;
    procedure printBarcode(format: Jprinter_Format; i: Integer; string_: JString); cdecl;
    procedure printBitmap(bitmap: JBitmap); cdecl; overload;
    procedure printBitmap(format: Jprinter_Format; bitmap: JBitmap); cdecl; overload;
    procedure printHTML(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
    procedure printText(string_: JString); cdecl; overload;
    procedure printText(format: Jprinter_Format; string_: JString); cdecl; overload;
    procedure printlnText(string_: JString); cdecl; overload;
    procedure printlnText(format: Jprinter_Format; string_: JString); cdecl; overload;
    function queryESC(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function queryStatus: Integer; cdecl;
    function sendESCCommand(b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJPrinterDevice = class(TJavaGenericImport<JPrinterDeviceClass, JPrinterDevice>) end;

  JPrinterDeviceSpecClass = interface(JDeviceSpecClass)
    ['{9639CF39-DAA1-4717-A376-81919AA7AE86}']
    {class} function _GetBARCODE_TYPE_CODABAR: JString; cdecl;
    {class} function _GetBARCODE_TYPE_CODE128: JString; cdecl;
    {class} function _GetBARCODE_TYPE_CODE39: JString; cdecl;
    {class} function _GetBARCODE_TYPE_CODE93: JString; cdecl;
    {class} function _GetBARCODE_TYPE_ITF: JString; cdecl;
    {class} function _GetBARCODE_TYPE_JAN13: JString; cdecl;
    {class} function _GetBARCODE_TYPE_JAN8: JString; cdecl;
    {class} function _GetBARCODE_TYPE_UPC_A: JString; cdecl;
    {class} function _GetBARCODE_TYPE_UPC_E: JString; cdecl;
    {class} property BARCODE_TYPE_CODABAR: JString read _GetBARCODE_TYPE_CODABAR;
    {class} property BARCODE_TYPE_CODE128: JString read _GetBARCODE_TYPE_CODE128;
    {class} property BARCODE_TYPE_CODE39: JString read _GetBARCODE_TYPE_CODE39;
    {class} property BARCODE_TYPE_CODE93: JString read _GetBARCODE_TYPE_CODE93;
    {class} property BARCODE_TYPE_ITF: JString read _GetBARCODE_TYPE_ITF;
    {class} property BARCODE_TYPE_JAN13: JString read _GetBARCODE_TYPE_JAN13;
    {class} property BARCODE_TYPE_JAN8: JString read _GetBARCODE_TYPE_JAN8;
    {class} property BARCODE_TYPE_UPC_A: JString read _GetBARCODE_TYPE_UPC_A;
    {class} property BARCODE_TYPE_UPC_E: JString read _GetBARCODE_TYPE_UPC_E;
  end;

  [JavaSignature('com/cloudpos/printer/PrinterDeviceSpec')]
  JPrinterDeviceSpec = interface(JDeviceSpec)
    ['{B162CEB9-CC38-4D08-B2EC-D9518D47EF3B}']
    function canCutPaper(i: Integer): Boolean; cdecl;
    function canSetDensity(i: Integer): Boolean; cdecl;
    function getBarCodeFormat(i: Integer): TJavaObjectArray<JString>; cdecl;
    function getBaseFontHeight(i: Integer): Integer; cdecl;
    function getCounts: Integer; cdecl;
    function getWidth(i: Integer): Integer; cdecl;
  end;
  TJPrinterDeviceSpec = class(TJavaGenericImport<JPrinterDeviceSpecClass, JPrinterDeviceSpec>) end;

  JPrinterOperationResultClass = interface(JOperationResultClass)
    ['{C401F741-C53D-4C69-905D-68C90CA78E53}']
    {class} function _GetERR_PAPER_OUT: Integer; cdecl;
    {class} function _GetERR_PRINTER: Integer; cdecl;
    {class} property ERR_PAPER_OUT: Integer read _GetERR_PAPER_OUT;
    {class} property ERR_PRINTER: Integer read _GetERR_PRINTER;
  end;

  [JavaSignature('com/cloudpos/printer/PrinterOperationResult')]
  JPrinterOperationResult = interface(JOperationResult)
    ['{9AB53C52-A50A-4967-8CD9-A53F4669BE56}']
  end;
  TJPrinterOperationResult = class(TJavaGenericImport<JPrinterOperationResultClass, JPrinterOperationResult>) end;

  Jprinter_package_infoClass = interface(IJavaClass)
    ['{A44C321E-239D-4035-B8F5-14103761A0E6}']
  end;

  [JavaSignature('com/cloudpos/printer/package-info')]
  Jprinter_package_info = interface(IJavaInstance)
    ['{5CFB699C-E888-4FDF-9BC9-B68B567C79AC}']
  end;
  TJprinter_package_info = class(TJavaGenericImport<Jprinter_package_infoClass, Jprinter_package_info>) end;

  JIScanCallBackClass = interface(JIInterfaceClass)
    ['{C1496FFE-2111-4F4A-9724-F752F5967314}']
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanCallBack')]
  JIScanCallBack = interface(JIInterface)
    ['{F4322391-1B11-44A6-AD24-47399A9ADCA6}']
    procedure foundBarcode(scanResult: Jaidl_ScanResult); cdecl;
  end;
  TJIScanCallBack = class(TJavaGenericImport<JIScanCallBackClass, JIScanCallBack>) end;

  JIScanCallBack_StubClass = interface(JBinderClass)
    ['{64778376-894E-40A4-87D5-445F5DF177B7}']
    {class} function _GetTRANSACTION_foundBarcode: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIScanCallBack; cdecl;
    {class} function init: JIScanCallBack_Stub; cdecl;
    {class} property TRANSACTION_foundBarcode: Integer read _GetTRANSACTION_foundBarcode;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanCallBack$Stub')]
  JIScanCallBack_Stub = interface(JBinder)
    ['{C26AF491-9EFF-4FEC-9516-5DD0C6407102}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIScanCallBack_Stub = class(TJavaGenericImport<JIScanCallBack_StubClass, JIScanCallBack_Stub>) end;

  JIScanCallBack_Stub_ProxyClass = interface(JIScanCallBackClass)
    ['{744259C3-FCB9-47D4-BE52-F1B8E68BA2F8}']
    {class} function init(iBinder: JIBinder): JIScanCallBack_Stub_Proxy; cdecl;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanCallBack$Stub$Proxy')]
  JIScanCallBack_Stub_Proxy = interface(JIScanCallBack)
    ['{C64DE6BA-A50A-49D6-8AD9-5C53906E24B9}']
    function asBinder: JIBinder; cdecl;
    procedure foundBarcode(scanResult: Jaidl_ScanResult); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJIScanCallBack_Stub_Proxy = class(TJavaGenericImport<JIScanCallBack_Stub_ProxyClass, JIScanCallBack_Stub_Proxy>) end;

  JIScanServiceClass = interface(JIInterfaceClass)
    ['{C4F57428-D1E0-48D8-B336-83676046A6BA}']
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanService')]
  JIScanService = interface(JIInterface)
    ['{AFE166EF-59BC-4488-8A6B-4023C3B86FD8}']
    function scanBarcode(scanParameter: JScanParameter): Jaidl_ScanResult; cdecl;
    procedure startScan(scanParameter: JScanParameter; iScanCallBack: JIScanCallBack); cdecl;
    function stopScan: Boolean; cdecl;
  end;
  TJIScanService = class(TJavaGenericImport<JIScanServiceClass, JIScanService>) end;

  JIScanService_StubClass = interface(JBinderClass)
    ['{A36784E4-C7E1-42DB-B102-FB82007C312E}']
    {class} function _GetTRANSACTION_scanBarcode: Integer; cdecl;
    {class} function _GetTRANSACTION_stopScan: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIScanService; cdecl;
    {class} function init: JIScanService_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_scanBarcode: Integer read _GetTRANSACTION_scanBarcode;
    {class} property TRANSACTION_stopScan: Integer read _GetTRANSACTION_stopScan;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanService$Stub')]
  JIScanService_Stub = interface(JBinder)
    ['{02FB34CA-E408-48B2-A784-A932E510FE6D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIScanService_Stub = class(TJavaGenericImport<JIScanService_StubClass, JIScanService_Stub>) end;

  JIScanService_Stub_ProxyClass = interface(JIScanServiceClass)
    ['{12968145-FC54-486B-BB72-765F34C59DCA}']
    {class} function init(iBinder: JIBinder): JIScanService_Stub_Proxy; cdecl;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/IScanService$Stub$Proxy')]
  JIScanService_Stub_Proxy = interface(JIScanService)
    ['{CDF87517-3C8B-4474-A97B-C8D7BA855510}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function scanBarcode(scanParameter: JScanParameter): Jaidl_ScanResult; cdecl;
    procedure startScan(scanParameter: JScanParameter; iScanCallBack: JIScanCallBack); cdecl;
    function stopScan: Boolean; cdecl;
  end;
  TJIScanService_Stub_Proxy = class(TJavaGenericImport<JIScanService_Stub_ProxyClass, JIScanService_Stub_Proxy>) end;

  JScanParameterClass = interface(JParcelableClass)
    ['{CA799649-658C-4B04-9A0B-11C9416ECD43}']
    {class} function _GetBROADCAST_SET_CAMERA: JString; cdecl;
    {class} function _GetBROADCAST_SET_FLASHLIGHT: JString; cdecl;
    {class} function _GetBROADCAST_SET_INDICATOR: JString; cdecl;
    {class} function _GetBROADCAST_VALUE: JString; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetKEY_CAMERA_INDEX: JString; cdecl;
    {class} function _GetKEY_DECODEFORMAT: JString; cdecl;
    {class} function _GetKEY_DECODER_MODE: JString; cdecl;
    {class} function _GetKEY_DISPLAY_SCAN_LINE: JString; cdecl;
    {class} function _GetKEY_ENABLE_AUTO_FOCUS: JString; cdecl;
    {class} function _GetKEY_ENABLE_FLASH_ICON: JString; cdecl;
    {class} function _GetKEY_ENABLE_HANDSFRESS: JString; cdecl;
    {class} function _GetKEY_ENABLE_INDICATOR_LIGHT: JString; cdecl;
    {class} function _GetKEY_ENABLE_MIRROR_SCAN: JString; cdecl;
    {class} function _GetKEY_ENABLE_RETURN_IMAGE: JString; cdecl;
    {class} function _GetKEY_ENABLE_SCAN_SECTION: JString; cdecl;
    {class} function _GetKEY_ENABLE_SWITCH_ICON: JString; cdecl;
    {class} function _GetKEY_ENABLE_UI_BY_ZEBRA: JString; cdecl;
    {class} function _GetKEY_FLASH_LIGHT_STATE: JString; cdecl;
    {class} function _GetKEY_INDICATOR_LIGHT_STATE: JString; cdecl;
    {class} function _GetKEY_SCAN_CAMERA_EXPOSURE: JString; cdecl;
    {class} function _GetKEY_SCAN_MODE: JString; cdecl;
    {class} function _GetKEY_SCAN_SECTION_BORDER_COLOR: JString; cdecl;
    {class} function _GetKEY_SCAN_SECTION_CORNER_COLOR: JString; cdecl;
    {class} function _GetKEY_SCAN_SECTION_HEIGHT: JString; cdecl;
    {class} function _GetKEY_SCAN_SECTION_LINE_COLOR: JString; cdecl;
    {class} function _GetKEY_SCAN_SECTION_WIDTH: JString; cdecl;
    {class} function _GetKEY_SCAN_TIME_LIMIT: JString; cdecl;
    {class} function _GetKEY_SCAN_TIME_OUT: JString; cdecl;
    {class} function _GetKEY_SCAN_TIP_TEXT: JString; cdecl;
    {class} function _GetKEY_SCAN_TIP_TEXTCOLOR: JString; cdecl;
    {class} function _GetKEY_SCAN_TIP_TEXTMARGIN: JString; cdecl;
    {class} function _GetKEY_SCAN_TIP_TEXTSIZE: JString; cdecl;
    {class} function _GetKEY_UI_WINDOW_HEIGHT: JString; cdecl;
    {class} function _GetKEY_UI_WINDOW_LEFT: JString; cdecl;
    {class} function _GetKEY_UI_WINDOW_TOP: JString; cdecl;
    {class} function _GetKEY_UI_WINDOW_WIDTH: JString; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function init: JScanParameter; cdecl; overload;//Deprecated
    {class} property BROADCAST_SET_CAMERA: JString read _GetBROADCAST_SET_CAMERA;
    {class} property BROADCAST_SET_FLASHLIGHT: JString read _GetBROADCAST_SET_FLASHLIGHT;
    {class} property BROADCAST_SET_INDICATOR: JString read _GetBROADCAST_SET_INDICATOR;
    {class} property BROADCAST_VALUE: JString read _GetBROADCAST_VALUE;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property KEY_CAMERA_INDEX: JString read _GetKEY_CAMERA_INDEX;
    {class} property KEY_DECODEFORMAT: JString read _GetKEY_DECODEFORMAT;
    {class} property KEY_DECODER_MODE: JString read _GetKEY_DECODER_MODE;
    {class} property KEY_DISPLAY_SCAN_LINE: JString read _GetKEY_DISPLAY_SCAN_LINE;
    {class} property KEY_ENABLE_AUTO_FOCUS: JString read _GetKEY_ENABLE_AUTO_FOCUS;
    {class} property KEY_ENABLE_FLASH_ICON: JString read _GetKEY_ENABLE_FLASH_ICON;
    {class} property KEY_ENABLE_HANDSFRESS: JString read _GetKEY_ENABLE_HANDSFRESS;
    {class} property KEY_ENABLE_INDICATOR_LIGHT: JString read _GetKEY_ENABLE_INDICATOR_LIGHT;
    {class} property KEY_ENABLE_MIRROR_SCAN: JString read _GetKEY_ENABLE_MIRROR_SCAN;
    {class} property KEY_ENABLE_RETURN_IMAGE: JString read _GetKEY_ENABLE_RETURN_IMAGE;
    {class} property KEY_ENABLE_SCAN_SECTION: JString read _GetKEY_ENABLE_SCAN_SECTION;
    {class} property KEY_ENABLE_SWITCH_ICON: JString read _GetKEY_ENABLE_SWITCH_ICON;
    {class} property KEY_ENABLE_UI_BY_ZEBRA: JString read _GetKEY_ENABLE_UI_BY_ZEBRA;
    {class} property KEY_FLASH_LIGHT_STATE: JString read _GetKEY_FLASH_LIGHT_STATE;
    {class} property KEY_INDICATOR_LIGHT_STATE: JString read _GetKEY_INDICATOR_LIGHT_STATE;
    {class} property KEY_SCAN_CAMERA_EXPOSURE: JString read _GetKEY_SCAN_CAMERA_EXPOSURE;
    {class} property KEY_SCAN_MODE: JString read _GetKEY_SCAN_MODE;
    {class} property KEY_SCAN_SECTION_BORDER_COLOR: JString read _GetKEY_SCAN_SECTION_BORDER_COLOR;
    {class} property KEY_SCAN_SECTION_CORNER_COLOR: JString read _GetKEY_SCAN_SECTION_CORNER_COLOR;
    {class} property KEY_SCAN_SECTION_HEIGHT: JString read _GetKEY_SCAN_SECTION_HEIGHT;
    {class} property KEY_SCAN_SECTION_LINE_COLOR: JString read _GetKEY_SCAN_SECTION_LINE_COLOR;
    {class} property KEY_SCAN_SECTION_WIDTH: JString read _GetKEY_SCAN_SECTION_WIDTH;
    {class} property KEY_SCAN_TIME_LIMIT: JString read _GetKEY_SCAN_TIME_LIMIT;
    {class} property KEY_SCAN_TIME_OUT: JString read _GetKEY_SCAN_TIME_OUT;
    {class} property KEY_SCAN_TIP_TEXT: JString read _GetKEY_SCAN_TIP_TEXT;
    {class} property KEY_SCAN_TIP_TEXTCOLOR: JString read _GetKEY_SCAN_TIP_TEXTCOLOR;
    {class} property KEY_SCAN_TIP_TEXTMARGIN: JString read _GetKEY_SCAN_TIP_TEXTMARGIN;
    {class} property KEY_SCAN_TIP_TEXTSIZE: JString read _GetKEY_SCAN_TIP_TEXTSIZE;
    {class} property KEY_UI_WINDOW_HEIGHT: JString read _GetKEY_UI_WINDOW_HEIGHT;
    {class} property KEY_UI_WINDOW_LEFT: JString read _GetKEY_UI_WINDOW_LEFT;
    {class} property KEY_UI_WINDOW_TOP: JString read _GetKEY_UI_WINDOW_TOP;
    {class} property KEY_UI_WINDOW_WIDTH: JString read _GetKEY_UI_WINDOW_WIDTH;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/ScanParameter')]
  JScanParameter = interface(JParcelable)
    ['{D067A3A5-0099-4918-9C48-3069FDBB2C61}']
    function describeContents: Integer; cdecl;
    function &get(string_: JString): JObject; cdecl;
    function getBundle: JBundle; cdecl;
    function getString(string_: JString): JString; cdecl;
    procedure &set(string_: JString; i: Integer); cdecl; overload;
    procedure &set(string_: JString; string_1: JString); cdecl; overload;
    procedure &set(string_: JString; b: Boolean); cdecl; overload;
    function toString: JString; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJScanParameter = class(TJavaGenericImport<JScanParameterClass, JScanParameter>) end;

  JScanParameter_1Class = interface(JParcelable_CreatorClass)
    ['{44D0B473-A839-402F-9FCD-48A5418C66FC}']
    {class} function init: JScanParameter_1; cdecl;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/ScanParameter$1')]
  JScanParameter_1 = interface(JParcelable_Creator)
    ['{64FC80E9-15B9-49F3-975D-5B9438CF2342}']
    function createFromParcel(parcel: JParcel): JScanParameter; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JScanParameter>; cdecl;
  end;
  TJScanParameter_1 = class(TJavaGenericImport<JScanParameter_1Class, JScanParameter_1>) end;

  Jaidl_ScanResultClass = interface(JParcelableClass)
    ['{CAFAA3E3-AB08-41C6-B9EE-7F6F9BB3D1E4}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetCUSTOM_CANCEL: Integer; cdecl;
    {class} function _GetERROR_DEVICE_OPEN_FAILED: Integer; cdecl;
    {class} function _GetERROR_OPEN_AGAIN: Integer; cdecl;
    {class} function _GetERROR_PARAMETER: Integer; cdecl;
    {class} function _GetERROR_SCAN_TIME_OUT: Integer; cdecl;
    {class} function _GetERROR_UNKNOWN: Integer; cdecl;
    {class} function _GetSCAN_SUCCESS: Integer; cdecl;
    {class} function getResultCode: Integer; cdecl;//Deprecated
    {class} function init(parcel: JParcel): Jaidl_ScanResult; cdecl; overload;
    {class} function init(i: Integer): Jaidl_ScanResult; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; string_: JString): Jaidl_ScanResult; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property CUSTOM_CANCEL: Integer read _GetCUSTOM_CANCEL;
    {class} property ERROR_DEVICE_OPEN_FAILED: Integer read _GetERROR_DEVICE_OPEN_FAILED;
    {class} property ERROR_OPEN_AGAIN: Integer read _GetERROR_OPEN_AGAIN;
    {class} property ERROR_PARAMETER: Integer read _GetERROR_PARAMETER;
    {class} property ERROR_SCAN_TIME_OUT: Integer read _GetERROR_SCAN_TIME_OUT;
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
    {class} property SCAN_SUCCESS: Integer read _GetSCAN_SUCCESS;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/ScanResult')]
  Jaidl_ScanResult = interface(JParcelable)
    ['{72F9DB36-8A8F-45D9-8EE5-E365B5057148}']
    function describeContents: Integer; cdecl;
    function getBarcodeFormat: JString; cdecl;
    function getDecodeBitmap: JBitmap; cdecl;
    function getRawBuffer: TJavaArray<Byte>; cdecl;
    function getText: JString; cdecl;
    procedure setDecodeBitmap(bitmap: JBitmap); cdecl;
    function toString: JString; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJaidl_ScanResult = class(TJavaGenericImport<Jaidl_ScanResultClass, Jaidl_ScanResult>) end;

  JScanResult_1Class = interface(JParcelable_CreatorClass)
    ['{8F30D8BB-8DB3-4FBF-B3DF-CFE85CC78626}']
    {class} function init: JScanResult_1; cdecl;
  end;

  [JavaSignature('com/cloudpos/scanserver/aidl/ScanResult$1')]
  JScanResult_1 = interface(JParcelable_Creator)
    ['{10E19CC1-A09A-4AA1-9AD2-71826F5AB376}']
    function createFromParcel(parcel: JParcel): Jaidl_ScanResult; cdecl;
    function newArray(i: Integer): TJavaObjectArray<Jaidl_ScanResult>; cdecl;
  end;
  TJScanResult_1 = class(TJavaGenericImport<JScanResult_1Class, JScanResult_1>) end;

  Jcommon_CommonClass = interface(JObjectClass)
    ['{14508442-3143-4B5B-B959-5411FC8A1251}']
    {class} function getModel: JString; cdecl;
    {class} function getTimes(i: Integer): Integer; cdecl;
    {class} function init: Jcommon_Common; cdecl;
    {class} function isInner(i: Integer; i1: TJavaArray<Integer>): Boolean; cdecl;
    {class} function isOpened(i: TJavaArray<Integer>): Boolean; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/common/Common')]
  Jcommon_Common = interface(JObject)
    ['{9C7E322B-8452-4190-B44A-A45716B9E52B}']
  end;
  TJcommon_Common = class(TJavaGenericImport<Jcommon_CommonClass, Jcommon_Common>) end;

  JReflectClass = interface(JObjectClass)
    ['{F6FDB976-EC88-4D00-81AB-C52ED04DF189}']
    {class} function init: JReflect; cdecl;
    {class} function invokeNativeMethod(b: Boolean; string_: JString; string_1: JString; class_: TJavaObjectArray<Jlang_Class>; object_: TJavaObjectArray<JObject>): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/common/Reflect')]
  JReflect = interface(JObject)
    ['{5C63B0CF-3B32-4247-9494-A618F5B16291}']
  end;
  TJReflect = class(TJavaGenericImport<JReflectClass, JReflect>) end;

  JSystemPropertiesClass = interface(JObjectClass)
    ['{72BE2234-F002-4D22-B891-8BCADE04B78D}']
    {class} function &get(string_: JString): JString; cdecl; overload;
    {class} function &get(string_: JString; string_1: JString): JString; cdecl; overload;
    {class} function getSystemPropertie(string_: JString): JString; cdecl; overload;
    {class} function getSystemPropertie(string_: JString; string_1: JString): JString; cdecl; overload;
    {class} function init: JSystemProperties; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/common/SystemProperties')]
  JSystemProperties = interface(JObject)
    ['{EE792051-B76F-465C-902F-18E5C52F75DA}']
  end;
  TJSystemProperties = class(TJavaGenericImport<JSystemPropertiesClass, JSystemProperties>) end;

  JAbstractDeviceClass = interface(JDeviceClass)
    ['{068E2330-FBD2-4673-AD8A-86C252BC1028}']
    {class} function _GetDEFAULT_ID: Integer; cdecl;
    {class} function _GetERROR_HARD_INFOS: JSparseArray; cdecl;
    {class} procedure _SetERROR_HARD_INFOS(Value: JSparseArray); cdecl;
    {class} function _GetERR_CANCEL: Integer; cdecl;
    {class} function _GetERR_NO_INFO: Integer; cdecl;
    {class} function _GetERR_TIME_OUT: Integer; cdecl;
    {class} function _GetisOpened: Boolean; cdecl;
    {class} function init: JAbstractDevice; cdecl;
    {class} property DEFAULT_ID: Integer read _GetDEFAULT_ID;
    {class} property ERROR_HARD_INFOS: JSparseArray read _GetERROR_HARD_INFOS write _SetERROR_HARD_INFOS;
    {class} property ERR_CANCEL: Integer read _GetERR_CANCEL;
    {class} property ERR_NO_INFO: Integer read _GetERR_NO_INFO;
    {class} property ERR_TIME_OUT: Integer read _GetERR_TIME_OUT;
    {class} property isOpened: Boolean read _GetisOpened;
  end;

  [JavaSignature('com/cloudpos/sdk/impl/AbstractDevice')]
  JAbstractDevice = interface(JDevice)
    ['{8DCA7C75-61B3-42C0-81D0-F4EE507AD994}']
    function checkAndTransferTimeout(i: Integer): Integer; cdecl;
    procedure checkNotOpened; cdecl;
    procedure checkNull(object_: JObject); cdecl;
    procedure checkOpened; cdecl;
    procedure checkTimeout(l: Int64; l1: Int64; i: Integer); cdecl;
    procedure checkTimeoutBefore(i: Integer); cdecl;
    procedure dealWithErrorResultInOpen(i: Integer); cdecl;
    function getDeviceType: Integer; cdecl;
    function getFailCount: Int64; cdecl;
    function getUsageCount: Int64; cdecl;
    procedure throwsExceptionByErrorResult(i: Integer); cdecl;
  end;
  TJAbstractDevice = class(TJavaGenericImport<JAbstractDeviceClass, JAbstractDevice>) end;

  JFingerprintDeviceImplClass = interface(JAbstractDeviceClass)
    ['{E982023E-AA91-420D-BA42-F726064D2E3E}']
    {class} function getInstance: JFingerprintDevice; cdecl;
    {class} function init: JFingerprintDeviceImpl; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/fingerprint/impl/FingerprintDeviceImpl')]
  JFingerprintDeviceImpl = interface(JAbstractDevice)
    ['{19195F7D-8AE8-44E4-A9CB-DEBAE42A4B4B}']
    procedure cancelRequest; cdecl;
    procedure close; cdecl;
    function compare(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function convertFormat(fingerprint: JFingerprint; i: Integer; fingerprint1: JFingerprint; i1: Integer): Integer; cdecl;
    function delAllFingers: Integer; cdecl;
    function delFinger(i: Integer): Integer; cdecl;
    function enroll(i: Integer; i1: Integer): Integer; cdecl;
    function getFingerprint(i: Integer): JFingerprint; cdecl; overload;
    function getFingerprint(i: Integer; i1: Integer): JFingerprint; cdecl; overload;
    function getId: Integer; cdecl;
    function identify(b: TJavaArray<Byte>; list: JList; i: Integer): TJavaArray<Integer>; cdecl;
    function listAllFingersStatus: TJavaArray<Integer>; cdecl;
    procedure listenForFingerprint(operationListener: JOperationListener; i: Integer); cdecl;
    function match(fingerprint: JFingerprint; fingerprint1: JFingerprint): Integer; cdecl;
    procedure open; cdecl; overload;
    procedure open(i: Integer); cdecl; overload;
    function storeFeature(i: Integer; fingerprint: JFingerprint): Integer; cdecl;
    function verifyAgainstFingerprint(fingerprint: JFingerprint; i: Integer): Integer; cdecl;
    function verifyAgainstUserId(i: Integer; i1: Integer): Integer; cdecl;
    function verifyAll(i: Integer): Integer; cdecl;
    function waitForFingerprint(i: Integer): JFingerprintOperationResult; cdecl;
  end;
  TJFingerprintDeviceImpl = class(TJavaGenericImport<JFingerprintDeviceImplClass, JFingerprintDeviceImpl>) end;

  JFingerprintDeviceImpl_FpConnectionClass = interface(JServiceConnectionClass)
    ['{00E0BD0E-B5FF-4590-9E6B-5D5457BE9F10}']
    {class} function _Getthis: JFingerprintDeviceImpl; cdecl;
    {class} property this: JFingerprintDeviceImpl read _Getthis;
  end;

  [JavaSignature('com/cloudpos/sdk/fingerprint/impl/FingerprintDeviceImpl$FpConnection')]
  JFingerprintDeviceImpl_FpConnection = interface(JServiceConnection)
    ['{C9D6479E-1601-4B1A-9B04-0C2534B907B4}']
    procedure onServiceConnected(componentName: JComponentName; iBinder: JIBinder); cdecl;
    procedure onServiceDisconnected(componentName: JComponentName); cdecl;
  end;
  TJFingerprintDeviceImpl_FpConnection = class(TJavaGenericImport<JFingerprintDeviceImpl_FpConnectionClass, JFingerprintDeviceImpl_FpConnection>) end;

  JFingerprintDeviceImpl_ListenForFingerprintThreadClass = interface(JThreadClass)
    ['{4F4BE099-401A-46CB-9FDF-086E25A19906}']
    {class} function init(fingerprintDeviceImpl: JFingerprintDeviceImpl; operationListener: JOperationListener; i: Integer): JFingerprintDeviceImpl_ListenForFingerprintThread; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/fingerprint/impl/FingerprintDeviceImpl$ListenForFingerprintThread')]
  JFingerprintDeviceImpl_ListenForFingerprintThread = interface(JThread)
    ['{EF7B60F5-AF1B-401F-95AF-53CF8164D880}']
    procedure run; cdecl;
  end;
  TJFingerprintDeviceImpl_ListenForFingerprintThread = class(TJavaGenericImport<JFingerprintDeviceImpl_ListenForFingerprintThreadClass, JFingerprintDeviceImpl_ListenForFingerprintThread>) end;

  JFingerprintOperationResultImplClass = interface(JFingerprintOperationResultClass)
    ['{FCB102D6-97F3-4F77-AAD2-2580DB0DF775}']
    {class} function init: JFingerprintOperationResultImpl; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/fingerprint/impl/FingerprintOperationResultImpl')]
  JFingerprintOperationResultImpl = interface(JFingerprintOperationResult)
    ['{02EE0938-5F83-4144-BA0A-1CD70B7342ED}']
    function getFingerprint(i: Integer; i1: Integer): JFingerprint; cdecl;
    function getResultCode: Integer; cdecl;
    procedure setFingerprint(fingerprint: JFingerprint); cdecl;
    procedure setResultCode(i: Integer); cdecl;
  end;
  TJFingerprintOperationResultImpl = class(TJavaGenericImport<JFingerprintOperationResultImplClass, JFingerprintOperationResultImpl>) end;

  JSystemPropertyHelperClass = interface(JObjectClass)
    ['{03A8A175-8AF9-4706-A1D6-9B28E27D00C1}']
    {class} function &get(string_: JString): JString; cdecl;
    {class} function init: JSystemPropertyHelper; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/helper/SystemPropertyHelper')]
  JSystemPropertyHelper = interface(JObject)
    ['{7DE2A419-9B8D-491E-8223-1EC1B6B956BF}']
  end;
  TJSystemPropertyHelper = class(TJavaGenericImport<JSystemPropertyHelperClass, JSystemPropertyHelper>) end;

  JTerminalHelperClass = interface(JObjectClass)
    ['{9646F163-BE1E-489D-A81E-12717526BEE3}']
    {class} function _GetTERMINAL_TYPE_NONE: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARHAND_M0: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARHAND_Q1: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARHAND_Q1v2: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARHAND_Q2: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARPAD_1: Integer; cdecl;
    {class} function _GetTERMINAL_TYPE_WIZARPOS_1: Integer; cdecl;
    {class} function getProductModel(string_: JString): JString; cdecl;
    {class} function getTerminalType: Integer; cdecl;
    {class} function init: JTerminalHelper; cdecl;
    {class} property TERMINAL_TYPE_NONE: Integer read _GetTERMINAL_TYPE_NONE;
    {class} property TERMINAL_TYPE_WIZARHAND_M0: Integer read _GetTERMINAL_TYPE_WIZARHAND_M0;
    {class} property TERMINAL_TYPE_WIZARHAND_Q1: Integer read _GetTERMINAL_TYPE_WIZARHAND_Q1;
    {class} property TERMINAL_TYPE_WIZARHAND_Q1v2: Integer read _GetTERMINAL_TYPE_WIZARHAND_Q1v2;
    {class} property TERMINAL_TYPE_WIZARHAND_Q2: Integer read _GetTERMINAL_TYPE_WIZARHAND_Q2;
    {class} property TERMINAL_TYPE_WIZARPAD_1: Integer read _GetTERMINAL_TYPE_WIZARPAD_1;
    {class} property TERMINAL_TYPE_WIZARPOS_1: Integer read _GetTERMINAL_TYPE_WIZARPOS_1;
  end;

  [JavaSignature('com/cloudpos/sdk/helper/TerminalHelper')]
  JTerminalHelper = interface(JObject)
    ['{E175DB24-2641-416E-8DCF-B0C34137B7E0}']
  end;
  TJTerminalHelper = class(TJavaGenericImport<JTerminalHelperClass, JTerminalHelper>) end;

  JAbstractDevice_1Class = interface(JSparseArrayClass)
    ['{8FB9F64B-F73E-470F-9043-5D647B468DB2}']
  end;

  [JavaSignature('com/cloudpos/sdk/impl/AbstractDevice$1')]
  JAbstractDevice_1 = interface(JSparseArray)
    ['{AF0B02EC-5D9F-439D-BCAC-DB9C26E6DC85}']
  end;
  TJAbstractDevice_1 = class(TJavaGenericImport<JAbstractDevice_1Class, JAbstractDevice_1>) end;

  JAbstractDevice_HandleResultThreadClass = interface(JThreadClass)
    ['{D6D9275C-902C-4710-9AE3-4D0116A5CC9E}']
    {class} function init(abstractDevice: JAbstractDevice; operationListener: JOperationListener; operationResult: JOperationResult): JAbstractDevice_HandleResultThread; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/impl/AbstractDevice$HandleResultThread')]
  JAbstractDevice_HandleResultThread = interface(JThread)
    ['{61CEE484-58CE-4D54-9E47-A932F3C24C4B}']
    procedure run; cdecl;
  end;
  TJAbstractDevice_HandleResultThread = class(TJavaGenericImport<JAbstractDevice_HandleResultThreadClass, JAbstractDevice_HandleResultThread>) end;

  JDeviceNameClass = interface(JObjectClass)
    ['{138B7A3B-C278-48D8-A5AA-66182FECCFA4}']
    {class} function _GetCASH_DRAWER: JString; cdecl;
    {class} function _GetEMV: JString; cdecl;
    {class} function _GetFINGERPRINT: JString; cdecl;
    {class} function _GetHSM: JString; cdecl;
    {class} function _GetID_CARD_READER: JString; cdecl;
    {class} function _GetLED: JString; cdecl;
    {class} function _GetMSR: JString; cdecl;
    {class} function _GetPINPAD: JString; cdecl;
    {class} function _GetPRINTER: JString; cdecl;
    {class} function _GetRF_CARD_READER: JString; cdecl;
    {class} function _GetSECONDARY_DISPLAY: JString; cdecl;
    {class} function _GetSERIALPORT: JString; cdecl;
    {class} function _GetSIGNATURE: JString; cdecl;
    {class} function _GetSMARTCARD_READER: JString; cdecl;
    {class} function init: JDeviceName; cdecl;//Deprecated
    {class} property CASH_DRAWER: JString read _GetCASH_DRAWER;
    {class} property EMV: JString read _GetEMV;
    {class} property FINGERPRINT: JString read _GetFINGERPRINT;
    {class} property HSM: JString read _GetHSM;
    {class} property ID_CARD_READER: JString read _GetID_CARD_READER;
    {class} property LED: JString read _GetLED;
    {class} property MSR: JString read _GetMSR;
    {class} property PINPAD: JString read _GetPINPAD;
    {class} property PRINTER: JString read _GetPRINTER;
    {class} property RF_CARD_READER: JString read _GetRF_CARD_READER;
    {class} property SECONDARY_DISPLAY: JString read _GetSECONDARY_DISPLAY;
    {class} property SERIALPORT: JString read _GetSERIALPORT;
    {class} property SIGNATURE: JString read _GetSIGNATURE;
    {class} property SMARTCARD_READER: JString read _GetSMARTCARD_READER;
  end;

  [JavaSignature('com/cloudpos/sdk/impl/DeviceName')]
  JDeviceName = interface(JObject)
    ['{72F7E29D-AA15-4F33-B07E-F0F87E1B7171}']
  end;
  TJDeviceName = class(TJavaGenericImport<JDeviceNameClass, JDeviceName>) end;

  JPOSTerminalImplClass = interface(JPOSTerminalClass)
    ['{AD372068-CABB-42D9-8244-2F528A0B1D86}']
    {class} function getAndoridContext: JContext; cdecl;
    {class} function init: JPOSTerminalImpl; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/impl/POSTerminalImpl')]
  JPOSTerminalImpl = interface(JPOSTerminal)
    ['{3FC1E1CF-B516-4DD7-BCB1-4D4045C7291C}']
    function getDevice(string_: JString): JDevice; cdecl; overload;
    function getDevice(string_: JString; i: Integer): JDevice; cdecl; overload;
    function getDeviceSpec(string_: JString): JDeviceSpec; cdecl;
    function getTerminalSpec: JTerminalSpec; cdecl;
    function isDeviceExist(string_: JString): Boolean; cdecl;
    function listDevices: TJavaObjectArray<JString>; cdecl;
  end;
  TJPOSTerminalImpl = class(TJavaGenericImport<JPOSTerminalImplClass, JPOSTerminalImpl>) end;

  JTerminalSpecImplClass = interface(JTerminalSpecClass)
    ['{8279AB24-7D27-4895-B508-4F9384816441}']
    {class} function init(context: JContext): JTerminalSpecImpl; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/impl/TerminalSpecImpl')]
  JTerminalSpecImpl = interface(JTerminalSpec)
    ['{27914E19-F6C7-47FA-9D97-2CE741711FD2}']
    function getAPILevel: JString; cdecl;
    function getFLashID: JString; cdecl;
    function getHardwareVersion: JString; cdecl;
    function getManufacturer: JString; cdecl;
    function getModel: JString; cdecl;
    function getModuleVersion: JString; cdecl;
    function getOSVersion: JString; cdecl;
    function getSerialNumber: JString; cdecl;
    function getUniqueCode: JString; cdecl;
  end;
  TJTerminalSpecImpl = class(TJavaGenericImport<JTerminalSpecImplClass, JTerminalSpecImpl>) end;

  JLEDDeviceImplClass = interface(JAbstractDeviceClass)
    ['{2D06C916-9310-4F19-A3C8-5180D76C47B0}']
    {class} function _GetLED_INDEX_0: Integer; cdecl;
    {class} function _GetLED_INDEX_1: Integer; cdecl;
    {class} function _GetLED_INDEX_2: Integer; cdecl;
    {class} function _GetLED_INDEX_3: Integer; cdecl;
    {class} function _GetopenedDevice: JMap; cdecl;
    {class} procedure _SetopenedDevice(Value: JMap); cdecl;
    {class} function getInstance: JLEDDevice; cdecl;
    {class} property LED_INDEX_0: Integer read _GetLED_INDEX_0;
    {class} property LED_INDEX_1: Integer read _GetLED_INDEX_1;
    {class} property LED_INDEX_2: Integer read _GetLED_INDEX_2;
    {class} property LED_INDEX_3: Integer read _GetLED_INDEX_3;
    {class} property openedDevice: JMap read _GetopenedDevice write _SetopenedDevice;
  end;

  [JavaSignature('com/cloudpos/sdk/led/impl/LEDDeviceImpl')]
  JLEDDeviceImpl = interface(JAbstractDevice)
    ['{F3667694-D43B-4204-9EB4-59EAEF0E82DD}']
    procedure blink(l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure blink(b: Byte; l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure cancelBlink; cdecl;
    procedure cancelRequest; cdecl;
    procedure close; cdecl;
    function getLogicalID: Integer; cdecl;
    function getStatus: Integer; cdecl;
    procedure open; cdecl; overload;
    procedure open(i: Integer); cdecl; overload;
    procedure startBlink(l: Int64; l1: Int64); cdecl; overload;
    procedure startBlink(l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure startBlink(b: Byte; l: Int64; l1: Int64; i: Integer); cdecl; overload;
    procedure turnOff; cdecl;
    procedure turnOn; cdecl;
  end;
  TJLEDDeviceImpl = class(TJavaGenericImport<JLEDDeviceImplClass, JLEDDeviceImpl>) end;

  JLEDDeviceImpl_BlinkThreadClass = interface(JThreadClass)
    ['{CC573B04-ACF8-4109-9BF9-E7D499B27C70}']
    {class} function init(lEDDeviceImpl: JLEDDeviceImpl; b: Byte; l: Int64; l1: Int64; i: Integer): JLEDDeviceImpl_BlinkThread; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/led/impl/LEDDeviceImpl$BlinkThread')]
  JLEDDeviceImpl_BlinkThread = interface(JThread)
    ['{0D82D794-2D94-4148-922C-1C3F77767EEA}']
    procedure run; cdecl;
  end;
  TJLEDDeviceImpl_BlinkThread = class(TJavaGenericImport<JLEDDeviceImpl_BlinkThreadClass, JLEDDeviceImpl_BlinkThread>) end;

  JLEDDeviceSpecImplClass = interface(JLEDDeviceSpecClass)
    ['{3B5D630B-0A4C-4AE5-99E4-476733268055}']
    {class} function init: JLEDDeviceSpecImpl; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/led/impl/LEDDeviceSpecImpl')]
  JLEDDeviceSpecImpl = interface(JLEDDeviceSpec)
    ['{A9991123-173A-44F6-8359-D40B7FA3F23B}']
    function canQuickBlink(i: Integer): Boolean; cdecl;
    function canSlowBlink(i: Integer): Boolean; cdecl;
    function getColors(i: Integer): TJavaArray<Byte>; cdecl;
    function getCounts: Integer; cdecl;
  end;
  TJLEDDeviceSpecImpl = class(TJavaGenericImport<JLEDDeviceSpecImplClass, JLEDDeviceSpecImpl>) end;

  JPrinterCommandClass = interface(JObjectClass)
    ['{CF418758-55F3-4658-AA2F-EA7186EAA670}']
    {class} function getBarcode(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getBarcodeHRILocation(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getBarcodeHeight(b: Byte): TJavaArray<Byte>; cdecl;
    {class} function getBarcodeLeftMargin(b: Byte): TJavaArray<Byte>; cdecl;
    {class} function getBarcodeWidth(b: Byte): TJavaArray<Byte>; cdecl;
    {class} function getCmdAlignType(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdBold(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdBoldFontMedium: TJavaArray<Byte>; cdecl;
    {class} function getCmdBoldFontSmall: TJavaArray<Byte>; cdecl;
    {class} function getCmdCancelSmallFont_CN: TJavaArray<Byte>; cdecl;
    {class} function getCmdCancelSmallFont_EN: TJavaArray<Byte>; cdecl;
    {class} function getCmdClear: TJavaArray<Byte>; cdecl;
    {class} function getCmdCutPaper: TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc2: TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc3N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscAN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscC5N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscDN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscDc4: TJavaArray<Byte>; cdecl;
    {class} function getCmdEscEN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscFf: TJavaArray<Byte>; cdecl;
    {class} function getCmdEscJN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscRN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscSo: TJavaArray<Byte>; cdecl;
    {class} function getCmdEscSpN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscTN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscUN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEscVN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc_: TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc_N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc_SNMW: TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc__N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc___N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc____N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdEsc_____N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdFf: TJavaArray<Byte>; cdecl;
    {class} function getCmdFontSize(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdGsAN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdGsBN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdGsLNlNh(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdGs_N(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdHt: TJavaArray<Byte>; cdecl;
    {class} function getCmdInversion(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdLf: TJavaArray<Byte>; cdecl;
    {class} function getCmdReverse(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdSetSmallFont_CN: TJavaArray<Byte>; cdecl;
    {class} function getCmdSetSmallFont_EN: TJavaArray<Byte>; cdecl;
    {class} function getCmdSmallFontCN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdSmallFontEN(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdType(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCmdVerticalSpacing(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function getCustomTabs: TJavaArray<Byte>; cdecl;
    {class} function getQueryWizarposPrinter: TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/printer/impl/PrinterCommand')]
  JPrinterCommand = interface(JObject)
    ['{92FD424B-CAA2-4FEF-B518-F5185AA82730}']
  end;
  TJPrinterCommand = class(TJavaGenericImport<JPrinterCommandClass, JPrinterCommand>) end;

  JPrinterDeviceImplClass = interface(JAbstractDeviceClass)
    ['{526EC866-B118-4085-87D0-D7413DFE65A2}']
    {class} function getInstance: JPrinterDevice; cdecl;
    {class} function init: JPrinterDeviceImpl; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/printer/impl/PrinterDeviceImpl')]
  JPrinterDeviceImpl = interface(JAbstractDevice)
    ['{6A4D45FB-EE6B-4377-A12A-DDAE3016BECA}']
    procedure cancelRequest; cdecl;
    procedure close; cdecl;
    procedure cutPaper; cdecl;
    function getDefaultParameters: Jprinter_Format; cdecl;
    procedure open; cdecl; overload;
    procedure open(i: Integer); cdecl; overload;
    procedure printBarcode(format: Jprinter_Format; i: Integer; string_: JString); cdecl;
    procedure printBitmap(bitmap: JBitmap); cdecl; overload;
    procedure printBitmap(format: Jprinter_Format; bitmap: JBitmap); cdecl; overload;
    procedure printHTML(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
    procedure printText(string_: JString); cdecl; overload;
    procedure printText(format: Jprinter_Format; string_: JString); cdecl; overload;
    procedure printlnText(string_: JString); cdecl; overload;
    procedure printlnText(format: Jprinter_Format; string_: JString); cdecl; overload;
    function queryESC(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function queryStatus: Integer; cdecl;
    function sendESCCommand(b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJPrinterDeviceImpl = class(TJavaGenericImport<JPrinterDeviceImplClass, JPrinterDeviceImpl>) end;

  JPrinterDeviceSpecImplClass = interface(JPrinterDeviceSpecClass)
    ['{8D8D47D6-2025-4218-99CB-5EA477D40893}']
    {class} function init: JPrinterDeviceSpecImpl; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/printer/impl/PrinterDeviceSpecImpl')]
  JPrinterDeviceSpecImpl = interface(JPrinterDeviceSpec)
    ['{C1560E25-390E-4027-88AE-3D26561A742D}']
    function canCutPaper(i: Integer): Boolean; cdecl;
    function canSetDensity(i: Integer): Boolean; cdecl;
    function getBarCodeFormat(i: Integer): TJavaObjectArray<JString>; cdecl;
    function getBaseFontHeight(i: Integer): Integer; cdecl;
    function getCounts: Integer; cdecl;
    function getWidth(i: Integer): Integer; cdecl;
  end;
  TJPrinterDeviceSpecImpl = class(TJavaGenericImport<JPrinterDeviceSpecImplClass, JPrinterDeviceSpecImpl>) end;

  JPrinterUtilClass = interface(JObjectClass)
    ['{7CD4D9F4-E727-4568-B9AE-0EF22A5AD4FB}']
    {class} function generateBitmapArrayGSV_MSB(bitmap: JBitmap; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/printer/impl/PrinterUtil')]
  JPrinterUtil = interface(JObject)
    ['{9A61CD34-722E-477F-A7F2-6054F9488599}']
  end;
  TJPrinterUtil = class(TJavaGenericImport<JPrinterUtilClass, JPrinterUtil>) end;

  JSerialPortDeviceImplClass = interface(JAbstractDeviceClass)
    ['{EECBA15E-4FFC-4AA4-BB58-D9CD29035ED9}']
    {class} function _GetoperationResult: JSerialPortOperationResultImpl; cdecl;
    {class} function getInstance: JSerialPortDevice; cdecl;
    {class} property operationResult: JSerialPortOperationResultImpl read _GetoperationResult;
  end;

  [JavaSignature('com/cloudpos/sdk/serialport/impl/SerialPortDeviceImpl')]
  JSerialPortDeviceImpl = interface(JAbstractDevice)
    ['{1B38BED4-DE16-433D-AB62-3E138D74DC92}']
    procedure cancelRequest; cdecl;
    procedure changeFlowControlMode(i: Integer); cdecl;
    procedure changeRTS(b: Boolean); cdecl;
    procedure changeSerialPortParams(i: Integer; i1: Integer; i2: Integer; i3: Integer); cdecl;
    procedure close; cdecl;
    function getBaudRate: Integer; cdecl;
    function getDataBits: Integer; cdecl;
    function getFlowControlMode: Integer; cdecl;
    function getParity: Integer; cdecl;
    function getStopBits: Integer; cdecl;
    procedure listenForRead(i: Integer; operationListener: JOperationListener; i1: Integer); cdecl;
    procedure open; cdecl; overload;
    procedure open(i: Integer); cdecl; overload;
    function retrieveCTS: Boolean; cdecl;
    function retrieveRTS: Boolean; cdecl;
    function waitForRead(i: Integer; i1: Integer): JSerialPortOperationResult; cdecl;
    procedure write(b: TJavaArray<Byte>; i: Integer; i1: Integer); cdecl;
  end;
  TJSerialPortDeviceImpl = class(TJavaGenericImport<JSerialPortDeviceImplClass, JSerialPortDeviceImpl>) end;

  JSerialPortDeviceImpl_ListenForReadThreadClass = interface(JThreadClass)
    ['{61B54E18-FAEB-49B9-9EF9-3FB46D3FCF7A}']
    {class} function init(serialPortDeviceImpl: JSerialPortDeviceImpl; i: Integer; operationListener: JOperationListener; i1: Integer): JSerialPortDeviceImpl_ListenForReadThread; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/serialport/impl/SerialPortDeviceImpl$ListenForReadThread')]
  JSerialPortDeviceImpl_ListenForReadThread = interface(JThread)
    ['{5E589633-A88C-40D6-8714-579EB2540037}']
    procedure run; cdecl;
  end;
  TJSerialPortDeviceImpl_ListenForReadThread = class(TJavaGenericImport<JSerialPortDeviceImpl_ListenForReadThreadClass, JSerialPortDeviceImpl_ListenForReadThread>) end;

  JSerialPortDeviceSpecClass = interface(JDeviceSpecClass)
    ['{FF68AE81-F1D4-4253-A0F6-131A014A6B7D}']
  end;

  [JavaSignature('com/cloudpos/serialport/SerialPortDeviceSpec')]
  JSerialPortDeviceSpec = interface(JDeviceSpec)
    ['{CF74D593-F24D-47F9-98E1-FA7BEBE68D9C}']
    function getCounts: Integer; cdecl;
  end;
  TJSerialPortDeviceSpec = class(TJavaGenericImport<JSerialPortDeviceSpecClass, JSerialPortDeviceSpec>) end;

  JSerialPortDeviceSpecImplClass = interface(JSerialPortDeviceSpecClass)
    ['{4EB90F5C-0EF8-430B-B13B-ABD3F0D0A133}']
    {class} function init: JSerialPortDeviceSpecImpl; cdecl;//Deprecated
  end;

  [JavaSignature('com/cloudpos/sdk/serialport/impl/SerialPortDeviceSpecImpl')]
  JSerialPortDeviceSpecImpl = interface(JSerialPortDeviceSpec)
    ['{BACBE2B2-6190-46BE-BC85-1768DEAC1B86}']
    function getCounts: Integer; cdecl;
  end;
  TJSerialPortDeviceSpecImpl = class(TJavaGenericImport<JSerialPortDeviceSpecImplClass, JSerialPortDeviceSpecImpl>) end;

  JSerialPortOperationResultClass = interface(JOperationResultClass)
    ['{90D868D8-DE36-4C1C-9898-E8B3A3BA9F47}']
  end;

  [JavaSignature('com/cloudpos/serialport/SerialPortOperationResult')]
  JSerialPortOperationResult = interface(JOperationResult)
    ['{89D7198F-ED89-4154-94C8-F7DCB5DD15F6}']
    function getData: TJavaArray<Byte>; cdecl;
    function getDataLength: Integer; cdecl;
  end;
  TJSerialPortOperationResult = class(TJavaGenericImport<JSerialPortOperationResultClass, JSerialPortOperationResult>) end;

  JSerialPortOperationResultImplClass = interface(JSerialPortOperationResultClass)
    ['{C0E2C604-4CEE-4165-9092-61EB437DA47A}']
    {class} function _GetERR_ISRUN: Integer; cdecl;
    {class} function _GetERR_LENGTH: Integer; cdecl;
    {class} function init: JSerialPortOperationResultImpl; cdecl;//Deprecated
    {class} property ERR_ISRUN: Integer read _GetERR_ISRUN;
    {class} property ERR_LENGTH: Integer read _GetERR_LENGTH;
  end;

  [JavaSignature('com/cloudpos/sdk/serialport/impl/SerialPortOperationResultImpl')]
  JSerialPortOperationResultImpl = interface(JSerialPortOperationResult)
    ['{99A62757-0A9A-4857-9311-15BC58F42D11}']
    function getData: TJavaArray<Byte>; cdecl;
    function getDataLength: Integer; cdecl;
    function getResultCode: Integer; cdecl;
    procedure setData(b: TJavaArray<Byte>); cdecl;
    procedure setResultCode(i: Integer); cdecl;
  end;
  TJSerialPortOperationResultImpl = class(TJavaGenericImport<JSerialPortOperationResultImplClass, JSerialPortOperationResultImpl>) end;

  JByteConvertClass = interface(JObjectClass)
    ['{3F7EA7B2-608D-4CB9-B1E4-5B95241E3812}']
    {class} function _GetDEFAULT_BUFFERLENGTH: Integer; cdecl;
    {class} function _GetDEFAULT_TABLELENGTH: Integer; cdecl;
    {class} function _GetlineSeperate: JString; cdecl;
    {class} function buf2String(string_: JString; b: TJavaArray<Byte>): JString; cdecl; overload;
    {class} function buf2String(string_: JString; b: TJavaArray<Byte>; b1: Boolean): JString; cdecl; overload;
    {class} function buf2String(string_: JString; b: TJavaArray<Byte>; i: Integer; i1: Integer): JString; cdecl; overload;
    {class} function buf2String(string_: JString; b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: Boolean): JString; cdecl; overload;
    {class} function byte2int2(b: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function byte2int2(b: TJavaArray<Byte>; b1: Boolean): Integer; cdecl; overload;
    {class} function byte2int2(b: TJavaArray<Byte>; i: Integer): Integer; cdecl; overload;
    {class} function byte2int2(b: TJavaArray<Byte>; i: Integer; b1: Boolean): Integer; cdecl; overload;
    {class} function byte2int4(b: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function byte2int4(b: TJavaArray<Byte>; b1: Boolean): Integer; cdecl; overload;
    {class} function byte2int4(b: TJavaArray<Byte>; i: Integer): Integer; cdecl; overload;
    {class} function byte2int4(b: TJavaArray<Byte>; i: Integer; b1: Boolean): Integer; cdecl; overload;
    {class} function byteString2Bytes(string_: JString): TJavaArray<Byte>; cdecl;
    {class} function init: JByteConvert; cdecl;
    {class} function int2byte2(i: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function int2byte2(i: Integer; b: Boolean): TJavaArray<Byte>; cdecl; overload;
    {class} procedure int2byte2(i: Integer; b: TJavaArray<Byte>); cdecl; overload;
    {class} procedure int2byte2(i: Integer; b: TJavaArray<Byte>; i1: Integer); cdecl; overload;
    {class} procedure int2byte2(i: Integer; b: TJavaArray<Byte>; b1: Boolean); cdecl; overload;
    {class} procedure int2byte2(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: Boolean); cdecl; overload;
    {class} function int2byte4(i: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function int2byte4(i: Integer; b: Boolean): TJavaArray<Byte>; cdecl; overload;
    {class} procedure int2byte4(i: Integer; b: TJavaArray<Byte>); cdecl; overload;
    {class} procedure int2byte4(i: Integer; b: TJavaArray<Byte>; b1: Boolean); cdecl; overload;
    {class} procedure int2byte4(i: Integer; b: TJavaArray<Byte>; i1: Integer); cdecl; overload;
    {class} procedure int2byte4(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: Boolean); cdecl; overload;
    {class} property DEFAULT_BUFFERLENGTH: Integer read _GetDEFAULT_BUFFERLENGTH;
    {class} property DEFAULT_TABLELENGTH: Integer read _GetDEFAULT_TABLELENGTH;
    {class} property lineSeperate: JString read _GetlineSeperate;
  end;

  [JavaSignature('com/cloudpos/sdk/util/ByteConvert')]
  JByteConvert = interface(JObject)
    ['{F88D971D-B11A-41A5-9D0B-0AF381E856D5}']
  end;
  TJByteConvert = class(TJavaGenericImport<JByteConvertClass, JByteConvert>) end;

  JByteConvert2Class = interface(JObjectClass)
    ['{E43BBE88-423A-463C-AB6A-4726D2A44E55}']
    {class} function init: JByteConvert2; cdecl;
    {class} function subByteArray(b: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function subByteArray(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl; overload;
  end;

  [JavaSignature('com/cloudpos/sdk/util/ByteConvert2')]
  JByteConvert2 = interface(JObject)
    ['{A6D9FFE7-39B9-49F7-B0AB-ADC7EBD15508}']
  end;
  TJByteConvert2 = class(TJavaGenericImport<JByteConvert2Class, JByteConvert2>) end;

  JByteConvertStringUtilClass = interface(JObjectClass)
    ['{1E0BB78E-0EBF-474B-A9D3-CDFEC4523451}']
    {class} function byteToHexString(b: Byte): JString; cdecl;
    {class} function bytesToHexString(b: TJavaArray<Byte>; b1: Boolean): JString; cdecl;
    {class} function init: JByteConvertStringUtil; cdecl;
    {class} procedure main(string_: TJavaObjectArray<JString>); cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/ByteConvertStringUtil')]
  JByteConvertStringUtil = interface(JObject)
    ['{2F1E837A-B5DC-41B4-9E5C-0D9CCF3264DB}']
  end;
  TJByteConvertStringUtil = class(TJavaGenericImport<JByteConvertStringUtilClass, JByteConvertStringUtil>) end;

  JByteUtilClass = interface(JObjectClass)
    ['{5C6C5BE5-85C2-4D4F-92B7-2EB9D5BD5A5E}']
    {class} function concat(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    {class} function generateDataForCode128(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    {class} function init: JByteUtil; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/ByteUtil')]
  JByteUtil = interface(JObject)
    ['{BD97122D-2782-4753-948D-892BA9D07097}']
  end;
  TJByteUtil = class(TJavaGenericImport<JByteUtilClass, JByteUtil>) end;

  Jutil_DebugClass = interface(JObjectClass)
    ['{FC0184FF-76D8-4B01-BD41-00F2B16D652E}']
    {class} procedure debug(string_: JString); cdecl; overload;
    {class} procedure debug(string_: JString; string_1: JString); cdecl; overload;
    {class} procedure debug(string_: JString; string_1: JString; throwable: JThrowable); cdecl; overload;
    {class} function init: Jutil_Debug; cdecl;
    {class} procedure verbose(string_: JString; string_1: JString); cdecl; overload;
    {class} procedure verbose(string_: JString; string_1: JString; throwable: JThrowable); cdecl; overload;
  end;

  [JavaSignature('com/cloudpos/sdk/util/Debug')]
  Jutil_Debug = interface(JObject)
    ['{0DEBB9EA-5F93-4308-8A4E-8BEAC630A7E0}']
  end;
  TJutil_Debug = class(TJavaGenericImport<Jutil_DebugClass, Jutil_Debug>) end;

  JErrorCodeClass = interface(JObjectClass)
    ['{8E124A57-034B-4372-A925-6EABE7A99A37}']
    {class} function init: JErrorCode; cdecl;
    {class} function transfer2HardWareErrorCode(i: Integer): Integer; cdecl;
    {class} function transfer2SoftWareErrorCode(i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/ErrorCode')]
  JErrorCode = interface(JObject)
    ['{195D74C2-74D3-43C8-88FA-B006AFF63523}']
  end;
  TJErrorCode = class(TJavaGenericImport<JErrorCodeClass, JErrorCode>) end;

  JFileUtilClass = interface(JObjectClass)
    ['{B796E345-2998-4348-8810-F44601178D8E}']
    {class} procedure deleteFile(string_: JString); cdecl;
    {class} function init: JFileUtil; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/FileUtil')]
  JFileUtil = interface(JObject)
    ['{45F34DB6-F7F7-4238-A1B5-5EA145B478F5}']
  end;
  TJFileUtil = class(TJavaGenericImport<JFileUtilClass, JFileUtil>) end;

  JJavaSDKVersionClass = interface(JObjectClass)
    ['{A770F232-4091-42AB-8DCD-819EB7136049}']
    {class} function getJavaSDKVersionCode: Integer; cdecl;
    {class} function init: JJavaSDKVersion; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/JavaSDKVersion')]
  JJavaSDKVersion = interface(JObject)
    ['{B738FDCB-AB51-4C48-8147-A8FAA87C944F}']
  end;
  TJJavaSDKVersion = class(TJavaGenericImport<JJavaSDKVersionClass, JJavaSDKVersion>) end;

  JLogHelperClass = interface(JObjectClass)
    ['{397BB2F9-A361-47E5-8089-08678E9C2479}']
    {class} procedure info(textView: JTextView; string_: JString); cdecl;
    {class} procedure infoAppendMsg(string_: JString; textView: JTextView); cdecl;
    {class} procedure infoAppendMsgAndColor(textView: JTextView; string_: JString; i: Integer); cdecl;
    {class} procedure infoAppendMsgForFailed(string_: JString; textView: JTextView); cdecl;
    {class} procedure infoAppendMsgForSuccess(string_: JString; textView: JTextView); cdecl;
    {class} procedure infoException(textView: JTextView; string_: JString); cdecl;
    {class} procedure infoMsgAndColor(textView: JTextView; string_: JString; i: Integer); cdecl;
    {class} procedure infoWarning(textView: JTextView; string_: JString); cdecl;
    {class} function init: JLogHelper; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/LogHelper')]
  JLogHelper = interface(JObject)
    ['{7C4347C3-24B6-4D67-8852-3E4522695280}']
  end;
  TJLogHelper = class(TJavaGenericImport<JLogHelperClass, JLogHelper>) end;

  JStringUtilClass = interface(JObjectClass)
    ['{8EA81A58-9712-419E-B338-FF999B88AC22}']
    {class} function convert2ByteArray(string_: JString): TJavaArray<Byte>; cdecl;
    {class} function getFormatString(b: TJavaArray<Byte>): JString; cdecl; overload;
    {class} function getFormatString(b: TJavaArray<Byte>; i: Integer): JString; cdecl; overload;
    {class} function init: JStringUtil; cdecl;
    {class} function isExist(string_: TJavaObjectArray<JString>; string_1: JString): Boolean; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/StringUtil')]
  JStringUtil = interface(JObject)
    ['{D18479E3-A894-4F5B-B03E-6ABDE3B6CEC8}']
  end;
  TJStringUtil = class(TJavaGenericImport<JStringUtilClass, JStringUtil>) end;

  JStringUtilityClass = interface(JObjectClass)
    ['{A3605FD6-96A3-4112-AC42-736B294270EE}']
    {class} function ByteArrayToString(b: TJavaArray<Byte>; i: Integer): JString; cdecl;
    {class} function StringToByteArray(string_: JString; b: TJavaArray<Byte>): Integer; cdecl;
    {class} function init: JStringUtility; cdecl;
    {class} function isEmpty(string_: JString): Boolean; cdecl;
    {class} function spiltStrings(string_: JString; string_1: JString): TJavaObjectArray<JString>; cdecl;
  end;

  [JavaSignature('com/cloudpos/sdk/util/StringUtility')]
  JStringUtility = interface(JObject)
    ['{19B2BCAC-40ED-4647-B12D-9E36154635CC}']
  end;
  TJStringUtility = class(TJavaGenericImport<JStringUtilityClass, JStringUtility>) end;

  JSystemUtilClass = interface(JObjectClass)
    ['{3977B55E-E15E-4E9E-882B-7EC2BDCD5143}']
    {class} function _GetCUSTOM_SN: JString; cdecl;
    {class} function _GetLOGO_CUSTOM_AISINO: JString; cdecl;
    {class} function _GetLOGO_CUSTOM_MINSHNEG: JString; cdecl;
    {class} function _GetLOGO_CUSTOM_TONGLIAN_SH: JString; cdecl;
    {class} function existAPP(context: JContext): Boolean; cdecl;
    {class} function getAPPNameByPackageName(context: JContext; string_: JString): JString; cdecl;
    {class} function getAPPVersionCodeFromAPP(context: JContext; string_: JString): Integer; cdecl;
    {class} function getAPPVersionNameFromAPP(context: JContext; string_: JString): JString; cdecl;
    {class} function getApkIconByPackageName(context: JContext; string_: JString): JDrawable; cdecl;
    {class} function getCustomSN: JString; cdecl;
    {class} function getPackageNameByPid(string_: JString; activityManager: JActivityManager): JString; cdecl;
    {class} function getProperty(string_: JString): JString; cdecl; overload;
    {class} function getProperty(string_: JString; string_1: JString): JString; cdecl; overload;
    {class} function getSystemLogo: JString; cdecl;
    {class} function getSystemModel: JString; cdecl;
    {class} function getVersionCode(context: JContext): Integer; cdecl;
    {class} function init: JSystemUtil; cdecl;//Deprecated
    {class} function innerSDCardExist: Boolean; cdecl;
    {class} function innerSDCardMounted: Boolean; cdecl;
    {class} function isLogoAisino: Boolean; cdecl;
    {class} function isLogoCUP: Boolean; cdecl;
    {class} function isLogoMinsheng: Boolean; cdecl;
    {class} function isModelM0: Boolean; cdecl;
    {class} function isModelQ1: Boolean; cdecl;
    {class} function isModelWizarpad: Boolean; cdecl;
    {class} function isModelWizarpos: Boolean; cdecl;
    {class} function isRunningForeground(context: JContext; string_: JString): Boolean; cdecl;
    {class} property CUSTOM_SN: JString read _GetCUSTOM_SN;
    {class} property LOGO_CUSTOM_AISINO: JString read _GetLOGO_CUSTOM_AISINO;
    {class} property LOGO_CUSTOM_MINSHNEG: JString read _GetLOGO_CUSTOM_MINSHNEG;
    {class} property LOGO_CUSTOM_TONGLIAN_SH: JString read _GetLOGO_CUSTOM_TONGLIAN_SH;
  end;

  [JavaSignature('com/cloudpos/sdk/util/SystemUtil')]
  JSystemUtil = interface(JObject)
    ['{E93A5DA0-820A-4FF8-A6DD-33220F76D86E}']
  end;
  TJSystemUtil = class(TJavaGenericImport<JSystemUtilClass, JSystemUtil>) end;

  JSerialPortDeviceClass = interface(JDeviceClass)
    ['{88A06894-9CAB-49E7-802D-46F8F19A07A5}']
    {class} function _GetDATABITS_5: Integer; cdecl;
    {class} function _GetDATABITS_6: Integer; cdecl;
    {class} function _GetDATABITS_7: Integer; cdecl;
    {class} function _GetDATABITS_8: Integer; cdecl;
    {class} function _GetFLOWCONTROL_NONE: Integer; cdecl;
    {class} function _GetFLOWCONTROL_RTSCTS_IN: Integer; cdecl;
    {class} function _GetFLOWCONTROL_RTSCTS_IN_OUT: Integer; cdecl;
    {class} function _GetFLOWCONTROL_RTSCTS_OUT: Integer; cdecl;
    {class} function _GetFLOWCONTROL_XONXOFF_IN: Integer; cdecl;
    {class} function _GetFLOWCONTROL_XONXOFF_IN_OUT: Integer; cdecl;
    {class} function _GetFLOWCONTROL_XONXOFF_OUT: Integer; cdecl;
    {class} function _GetPARITY_EVEN: Integer; cdecl;
    {class} function _GetPARITY_NONE: Integer; cdecl;
    {class} function _GetPARITY_ODD: Integer; cdecl;
    {class} function _GetSTOPBITS_1: Integer; cdecl;
    {class} function _GetSTOPBITS_1_5: Integer; cdecl;
    {class} function _GetSTOPBITS_2: Integer; cdecl;
    {class} procedure open(i: Integer); cdecl;//Deprecated
    {class} property DATABITS_5: Integer read _GetDATABITS_5;
    {class} property DATABITS_6: Integer read _GetDATABITS_6;
    {class} property DATABITS_7: Integer read _GetDATABITS_7;
    {class} property DATABITS_8: Integer read _GetDATABITS_8;
    {class} property FLOWCONTROL_NONE: Integer read _GetFLOWCONTROL_NONE;
    {class} property FLOWCONTROL_RTSCTS_IN: Integer read _GetFLOWCONTROL_RTSCTS_IN;
    {class} property FLOWCONTROL_RTSCTS_IN_OUT: Integer read _GetFLOWCONTROL_RTSCTS_IN_OUT;
    {class} property FLOWCONTROL_RTSCTS_OUT: Integer read _GetFLOWCONTROL_RTSCTS_OUT;
    {class} property FLOWCONTROL_XONXOFF_IN: Integer read _GetFLOWCONTROL_XONXOFF_IN;
    {class} property FLOWCONTROL_XONXOFF_IN_OUT: Integer read _GetFLOWCONTROL_XONXOFF_IN_OUT;
    {class} property FLOWCONTROL_XONXOFF_OUT: Integer read _GetFLOWCONTROL_XONXOFF_OUT;
    {class} property PARITY_EVEN: Integer read _GetPARITY_EVEN;
    {class} property PARITY_NONE: Integer read _GetPARITY_NONE;
    {class} property PARITY_ODD: Integer read _GetPARITY_ODD;
    {class} property STOPBITS_1: Integer read _GetSTOPBITS_1;
    {class} property STOPBITS_1_5: Integer read _GetSTOPBITS_1_5;
    {class} property STOPBITS_2: Integer read _GetSTOPBITS_2;
  end;

  [JavaSignature('com/cloudpos/serialport/SerialPortDevice')]
  JSerialPortDevice = interface(JDevice)
    ['{B0BF5116-D9AA-4A58-84AD-53F9C0FD7147}']
    procedure changeFlowControlMode(i: Integer); cdecl;
    procedure changeRTS(b: Boolean); cdecl;
    procedure changeSerialPortParams(i: Integer; i1: Integer; i2: Integer; i3: Integer); cdecl;
    function getBaudRate: Integer; cdecl;
    function getDataBits: Integer; cdecl;
    function getFlowControlMode: Integer; cdecl;
    function getParity: Integer; cdecl;
    function getStopBits: Integer; cdecl;
    procedure listenForRead(i: Integer; operationListener: JOperationListener; i1: Integer); cdecl;
    function retrieveCTS: Boolean; cdecl;
    function retrieveRTS: Boolean; cdecl;
    function waitForRead(i: Integer; i1: Integer): JSerialPortOperationResult; cdecl;
    procedure write(b: TJavaArray<Byte>; i: Integer; i1: Integer); cdecl;
  end;
  TJSerialPortDevice = class(TJavaGenericImport<JSerialPortDeviceClass, JSerialPortDevice>) end;

  Jserialport_package_infoClass = interface(IJavaClass)
    ['{CD3DA4CF-0E61-4A89-9307-9CBF91EF9AAF}']
  end;

  [JavaSignature('com/cloudpos/serialport/package-info')]
  Jserialport_package_info = interface(IJavaInstance)
    ['{05EE96FF-3131-43AF-8F79-95D27C1D2500}']
  end;
  TJserialport_package_info = class(TJavaGenericImport<Jserialport_package_infoClass, Jserialport_package_info>) end;

  JBalancaClass = interface(JObjectClass)
    ['{565B62FA-4D3F-4AED-BE59-030ADDCC0CCF}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balanca')]
  JBalanca = interface(JObject)
    ['{1FE891A7-5939-431C-BF9E-05BF98BF92EB}']
  end;
  TJBalanca = class(TJavaGenericImport<JBalancaClass, JBalanca>) end;

  JBalanca_ConfigClass = interface(JObjectClass)
    ['{929455DC-774D-4099-913A-465BCC723423}']
    {class} function _Getparity: Integer; cdecl;
    {class} procedure _Setparity(Value: Integer); cdecl;
    {class} function _Getstopbits: Integer; cdecl;
    {class} procedure _Setstopbits(Value: Integer); cdecl;
    {class} function init(i: Integer; i1: Integer; i2: Integer; i3: Integer): JBalanca_Config; cdecl;//Deprecated
    {class} property parity: Integer read _Getparity write _Setparity;
    {class} property stopbits: Integer read _Getstopbits write _Setstopbits;
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balanca$Config')]
  JBalanca_Config = interface(JObject)
    ['{D61C6DA9-5C19-4F5F-82F0-3CD84AA5F12F}']
    function _Getbaudrate: Integer; cdecl;
    procedure _Setbaudrate(Value: Integer); cdecl;
    property baudrate: Integer read _Getbaudrate write _Setbaudrate;
  end;
  TJBalanca_Config = class(TJavaGenericImport<JBalanca_ConfigClass, JBalanca_Config>) end;

  JBalanca_ConfigAltValuesClass = interface(JEnumClass)
    ['{05E7214A-4767-4004-B72B-D32E86D39128}']
    {class} function _GetEvenParity: JBalanca_ConfigAltValues; cdecl;
    {class} function _GetNenhum: JBalanca_ConfigAltValues; cdecl;
    {class} function _GetNoParity: JBalanca_ConfigAltValues; cdecl;
    {class} function _GetOddParity: JBalanca_ConfigAltValues; cdecl;
    {class} function _GetQualquer: JBalanca_ConfigAltValues; cdecl;
    {class} function valueOf(string_: JString): JBalanca_ConfigAltValues; cdecl;
    {class} function values: TJavaObjectArray<JBalanca_ConfigAltValues>; cdecl;//Deprecated
    {class} property EvenParity: JBalanca_ConfigAltValues read _GetEvenParity;
    {class} property Nenhum: JBalanca_ConfigAltValues read _GetNenhum;
    {class} property NoParity: JBalanca_ConfigAltValues read _GetNoParity;
    {class} property OddParity: JBalanca_ConfigAltValues read _GetOddParity;
    {class} property Qualquer: JBalanca_ConfigAltValues read _GetQualquer;
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balanca$ConfigAltValues')]
  JBalanca_ConfigAltValues = interface(JEnum)
    ['{6D0E20E0-B2A7-46EC-9871-F870E74E2240}']
  end;
  TJBalanca_ConfigAltValues = class(TJavaGenericImport<JBalanca_ConfigAltValuesClass, JBalanca_ConfigAltValues>) end;

  JBalanca_ModeloBalancaClass = interface(JEnumClass)
    ['{1AC3FC03-9C8F-416B-80DD-A7C899C06BC3}']
    {class} function _GetDP3005: JBalanca_ModeloBalanca; cdecl;
    {class} function _GetDP30CK: JBalanca_ModeloBalanca; cdecl;
    {class} function _GetDPSC: JBalanca_ModeloBalanca; cdecl;
    {class} function _GetSA110: JBalanca_ModeloBalanca; cdecl;
    {class} function _GetSemBalanca: JBalanca_ModeloBalanca; cdecl;
    {class} function valueOf(string_: JString): JBalanca_ModeloBalanca; cdecl;
    {class} function values: TJavaObjectArray<JBalanca_ModeloBalanca>; cdecl;//Deprecated
    {class} property DP3005: JBalanca_ModeloBalanca read _GetDP3005;
    {class} property DP30CK: JBalanca_ModeloBalanca read _GetDP30CK;
    {class} property DPSC: JBalanca_ModeloBalanca read _GetDPSC;
    {class} property SA110: JBalanca_ModeloBalanca read _GetSA110;
    {class} property SemBalanca: JBalanca_ModeloBalanca read _GetSemBalanca;
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balanca$ModeloBalanca')]
  JBalanca_ModeloBalanca = interface(JEnum)
    ['{76301E8F-AAC0-4F8A-AC83-BE39DDD9261F}']
  end;
  TJBalanca_ModeloBalanca = class(TJavaGenericImport<JBalanca_ModeloBalancaClass, JBalanca_ModeloBalanca>) end;

  JBalanca_ProtocoloComunicacaoClass = interface(JEnumClass)
    ['{F96934A2-30B7-4D80-934F-82BF88998AC5}']
    {class} function _GetProtocolo0: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo1: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo2: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo3: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo4: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo5: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetProtocolo7: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function _GetSemProtocolo: JBalanca_ProtocoloComunicacao; cdecl;
    {class} function valueOf(string_: JString): JBalanca_ProtocoloComunicacao; cdecl;
    {class} function values: TJavaObjectArray<JBalanca_ProtocoloComunicacao>; cdecl;
    {class} property Protocolo0: JBalanca_ProtocoloComunicacao read _GetProtocolo0;
    {class} property Protocolo1: JBalanca_ProtocoloComunicacao read _GetProtocolo1;
    {class} property Protocolo2: JBalanca_ProtocoloComunicacao read _GetProtocolo2;
    {class} property Protocolo3: JBalanca_ProtocoloComunicacao read _GetProtocolo3;
    {class} property Protocolo4: JBalanca_ProtocoloComunicacao read _GetProtocolo4;
    {class} property Protocolo5: JBalanca_ProtocoloComunicacao read _GetProtocolo5;
    {class} property Protocolo7: JBalanca_ProtocoloComunicacao read _GetProtocolo7;
    {class} property SemProtocolo: JBalanca_ProtocoloComunicacao read _GetSemProtocolo;
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balanca$ProtocoloComunicacao')]
  JBalanca_ProtocoloComunicacao = interface(JEnum)
    ['{6382C67A-E48A-4733-BDB0-877EFBD2D1D3}']
  end;
  TJBalanca_ProtocoloComunicacao = class(TJavaGenericImport<JBalanca_ProtocoloComunicacaoClass, JBalanca_ProtocoloComunicacao>) end;

  JBalancaE1Class = interface(JObjectClass)
    ['{D357C9D6-2043-4A7E-B9BA-425B9C619895}']
    {class} function AbrirSerial(i: Integer; i1: Integer; c: Char; i2: Integer): Integer; cdecl;
    {class} function ConfigurarModeloBalanca(i: Integer): Integer; cdecl;
    {class} function ConfigurarProtocoloComunicacao(i: Integer): Integer; cdecl;
    {class} function DirectIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; b2: Boolean): Integer; cdecl;
    {class} function Fechar: Integer; cdecl;
    {class} function GetContinuousReadTime: Integer; cdecl;
    {class} function LerPeso(i: Integer): JString; cdecl;
    {class} function LerPreco(i: Integer): JString; cdecl;
    {class} function LerTara: JString; cdecl;
    {class} function LerTotal(d: Double): JString; cdecl;
    {class} function LigarDesligarDisplay: Integer; cdecl;
    {class} function ObterModeloBalanca: Integer; cdecl;
    {class} function ObterProtocoloComunicacao: Integer; cdecl;
    {class} function ObterTipoConexao: Integer; cdecl;
    {class} procedure SetContinuousReadTime(i: Integer); cdecl;
    {class} function TararBalanca: Integer; cdecl;
    {class} function ZerarBalanca: Integer; cdecl;
    {class} function init: JBalancaE1; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Balanca/BalancaE1')]
  JBalancaE1 = interface(JObject)
    ['{41448360-DBA4-4937-9A80-5EAEDE2A41E1}']
  end;
  TJBalancaE1 = class(TJavaGenericImport<JBalancaE1Class, JBalancaE1>) end;

  JBalancasClass = interface(JObjectClass)
    ['{1A70ADB3-02AD-4D24-9C0F-746D3F8148D6}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/Balancas')]
  JBalancas = interface(JObject)
    ['{ACF63E8A-537A-4205-91CA-AD9D238BBE6A}']
  end;
  TJBalancas = class(TJavaGenericImport<JBalancasClass, JBalancas>) end;

  JCommClass = interface(JObjectClass)
    ['{8E9B7BA1-E805-43DD-9423-DC6E4E5BC930}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/Comm')]
  JComm = interface(JObject)
    ['{F0057C6F-8B17-4AC8-A489-72A82CB62A1B}']
  end;
  TJComm = class(TJavaGenericImport<JCommClass, JComm>) end;

  JComm_1Class = interface(JObjectClass)
    ['{79AFDA4A-9802-4C12-B0CA-F2D387A19304}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/Comm$1')]
  JComm_1 = interface(JObject)
    ['{6D233888-9ED9-46BC-BDA4-7AA914BA785A}']
  end;
  TJComm_1 = class(TJavaGenericImport<JComm_1Class, JComm_1>) end;

  JComm_TipoConexaoClass = interface(JEnumClass)
    ['{795999EB-2227-428C-B87F-016E7D27B70A}']
    {class} function _GetConexaoSerial: JComm_TipoConexao; cdecl;
    {class} function _GetConexaoTCP: JComm_TipoConexao; cdecl;
    {class} function _GetSemConexao: JComm_TipoConexao; cdecl;
    {class} function _Getvalor: Integer; cdecl;
    {class} procedure _Setvalor(Value: Integer); cdecl;
    {class} function valueOf(string_: JString): JComm_TipoConexao; cdecl;
    {class} function values: TJavaObjectArray<JComm_TipoConexao>; cdecl;//Deprecated
    {class} property ConexaoSerial: JComm_TipoConexao read _GetConexaoSerial;
    {class} property ConexaoTCP: JComm_TipoConexao read _GetConexaoTCP;
    {class} property SemConexao: JComm_TipoConexao read _GetSemConexao;
    {class} property valor: Integer read _Getvalor write _Setvalor;
  end;

  [JavaSignature('com/elgin/e1/Balanca/Comm$TipoConexao')]
  JComm_TipoConexao = interface(JEnum)
    ['{10140C5B-7B02-4A61-AA03-14D8AE834E7A}']
  end;
  TJComm_TipoConexao = class(TJavaGenericImport<JComm_TipoConexaoClass, JComm_TipoConexao>) end;

  JCommSerialClass = interface(JObjectClass)
    ['{B821C091-C36C-4260-A3F9-6A868ABEF571}']
    {class} function isAuthAPI: Boolean; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Balanca/CommSerial')]
  JCommSerial = interface(JObject)
    ['{5DB1AB8D-D76B-44DA-9593-FFBE60BEEF53}']
  end;
  TJCommSerial = class(TJavaGenericImport<JCommSerialClass, JCommSerial>) end;

  JCommTCPClass = interface(JObjectClass)
    ['{158D169F-BA4B-4B3A-BBD3-66429C2EFC4E}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/CommTCP')]
  JCommTCP = interface(JObject)
    ['{F52A63E4-1C07-4184-A8AB-0DFCFFB93AF9}']
  end;
  TJCommTCP = class(TJavaGenericImport<JCommTCPClass, JCommTCP>) end;

  JCommTCP_TimeoutsClass = interface(JEnumClass)
    ['{60A954CA-781B-4D9C-906B-C6DBFABB36FD}']
    {class} function _GetTCPReadTimeout: JCommTCP_Timeouts; cdecl;
    {class} function _GetTCPWriteTimeout: JCommTCP_Timeouts; cdecl;
    {class} function _Getvalor: Integer; cdecl;
    {class} function valueOf(string_: JString): JCommTCP_Timeouts; cdecl;
    {class} function values: TJavaObjectArray<JCommTCP_Timeouts>; cdecl;//Deprecated
    {class} property TCPReadTimeout: JCommTCP_Timeouts read _GetTCPReadTimeout;
    {class} property TCPWriteTimeout: JCommTCP_Timeouts read _GetTCPWriteTimeout;
    {class} property valor: Integer read _Getvalor;
  end;

  [JavaSignature('com/elgin/e1/Balanca/CommTCP$Timeouts')]
  JCommTCP_Timeouts = interface(JEnum)
    ['{28D78B57-3F27-4F09-9D03-623A1510802A}']
  end;
  TJCommTCP_Timeouts = class(TJavaGenericImport<JCommTCP_TimeoutsClass, JCommTCP_Timeouts>) end;

  JInterfaceBalancaClass = interface(IJavaClass)
    ['{FA6A0850-07B9-4F6A-9864-FC8211032B7F}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/InterfaceBalanca')]
  JInterfaceBalanca = interface(IJavaInstance)
    ['{325D7FC8-0500-443A-98D2-EE94397B1A6D}']
    function abrir(string_: JString; i: Integer): Integer; cdecl; overload;
    function abrir(i: Integer; i1: Integer; c: Char; i2: Integer): Integer; cdecl; overload;
    function configurarModeloBalanca(i: Integer): Integer; cdecl;
    function configurarProtocoloComunicacao(i: Integer): Integer; cdecl;
    function directIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; b2: Boolean): Integer; cdecl;
    function fechar: Integer; cdecl;
    function getContinuousReadTime: Integer; cdecl;
    function lerPeso(i: Integer): JString; cdecl;
    function lerPreco(i: Integer): JString; cdecl;
    function lerTara: JString; cdecl;
    function lerTotal(d: Double): JString; cdecl;
    function ligarDesligarDisplay: Integer; cdecl;
    function obterModeloBalanca: Integer; cdecl;
    function obterProtocoloComunicacao: Integer; cdecl;
    function obterTipoConexao: Integer; cdecl;
    procedure setContinuousReadTime(i: Integer); cdecl;
    function tararBalanca: Integer; cdecl;
    function zerarBalanca: Integer; cdecl;
  end;
  TJInterfaceBalanca = class(TJavaGenericImport<JInterfaceBalancaClass, JInterfaceBalanca>) end;

  JImplementacaoBalancaClass = interface(JInterfaceBalancaClass)
    ['{60D64FE0-6DFB-4903-87C5-7D6585995E83}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/ImplementacaoBalanca')]
  JImplementacaoBalanca = interface(JInterfaceBalanca)
    ['{40F1E5B2-F351-4DE8-B520-92C6471F90AF}']
    function abrir(string_: JString; i: Integer): Integer; cdecl; overload;
    function abrir(i: Integer; i1: Integer; c: Char; i2: Integer): Integer; cdecl; overload;
    function configurarModeloBalanca(i: Integer): Integer; cdecl;
    function configurarProtocoloComunicacao(i: Integer): Integer; cdecl;
    function directIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; b2: Boolean): Integer; cdecl;
    function fechar: Integer; cdecl;
    function getContinuousReadTime: Integer; cdecl;
    function lerPeso(i: Integer): JString; cdecl;
    function lerPreco(i: Integer): JString; cdecl;
    function lerTara: JString; cdecl;
    function lerTotal(d: Double): JString; cdecl;
    function ligarDesligarDisplay: Integer; cdecl;
    function obterModeloBalanca: Integer; cdecl;
    function obterProtocoloComunicacao: Integer; cdecl;
    function obterTipoConexao: Integer; cdecl;
    procedure setContinuousReadTime(i: Integer); cdecl;
    function tararBalanca: Integer; cdecl;
    function zerarBalanca: Integer; cdecl;
  end;
  TJImplementacaoBalanca = class(TJavaGenericImport<JImplementacaoBalancaClass, JImplementacaoBalanca>) end;

  JImplementacaoBalanca_1Class = interface(JObjectClass)
    ['{70951C7B-A65D-4BFE-8B85-8594CB6E1EE6}']
  end;

  [JavaSignature('com/elgin/e1/Balanca/ImplementacaoBalanca$1')]
  JImplementacaoBalanca_1 = interface(JObject)
    ['{685149B7-03FF-4671-AC46-40B3A6EE5DE8}']
  end;
  TJImplementacaoBalanca_1 = class(TJavaGenericImport<JImplementacaoBalanca_1Class, JImplementacaoBalanca_1>) end;

  Je1_BuildConfigClass = interface(JObjectClass)
    ['{997A667A-E512-4FE7-A4A5-3569E8245625}']
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetLIBRARY_PACKAGE_NAME: JString; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Je1_BuildConfig; cdecl;//Deprecated
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property LIBRARY_PACKAGE_NAME: JString read _GetLIBRARY_PACKAGE_NAME;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/elgin/e1/BuildConfig')]
  Je1_BuildConfig = interface(JObject)
    ['{90BE9C28-A7F0-4BB8-95DD-575A27BCCC41}']
  end;
  TJe1_BuildConfig = class(TJavaGenericImport<Je1_BuildConfigClass, Je1_BuildConfig>) end;

  JConexaoClass = interface(JObjectClass)
    ['{43078DA0-1532-4136-8525-255DD183D255}']
    {class} function _GetCONEXAO_BLUETOOTH: Integer; cdecl;
    {class} function _GetCONEXAO_M8: Integer; cdecl;
    {class} function _GetCONEXAO_SERIAL: Integer; cdecl;
    {class} function _GetCONEXAO_SERVICO: Integer; cdecl;
    {class} function _GetCONEXAO_SMARTPOS: Integer; cdecl;
    {class} function _GetCONEXAO_TCP_IP: Integer; cdecl;
    {class} function _GetCONEXAO_USB: Integer; cdecl;
    {class} function _GetSEM_CONEXAO: Integer; cdecl;
    {class} function _GetSERVICO_RTIMEOUT: Integer; cdecl;
    {class} function getNextPrintDevice: Integer; cdecl;
    {class} function getPrtData: TJavaArray<Byte>; cdecl;
    {class} function getTipo: Integer; cdecl;
    {class} function init: JConexao; cdecl;//Deprecated
    {class} property CONEXAO_BLUETOOTH: Integer read _GetCONEXAO_BLUETOOTH;
    {class} property CONEXAO_M8: Integer read _GetCONEXAO_M8;
    {class} property CONEXAO_SERIAL: Integer read _GetCONEXAO_SERIAL;
    {class} property CONEXAO_SERVICO: Integer read _GetCONEXAO_SERVICO;
    {class} property CONEXAO_SMARTPOS: Integer read _GetCONEXAO_SMARTPOS;
    {class} property CONEXAO_TCP_IP: Integer read _GetCONEXAO_TCP_IP;
    {class} property CONEXAO_USB: Integer read _GetCONEXAO_USB;
    {class} property SEM_CONEXAO: Integer read _GetSEM_CONEXAO;
    {class} property SERVICO_RTIMEOUT: Integer read _GetSERVICO_RTIMEOUT;
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/Conexao')]
  JConexao = interface(JObject)
    ['{03954103-5FD5-4D18-9E85-8003FA8D8134}']
    function Abrir(context: JContext; i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function Escrever(b: TJavaArray<Byte>): Integer; cdecl;
    function Fechar: Integer; cdecl;
    function Ler(b: TJavaArray<Byte>): Integer; cdecl;
    function ReceberDados(inteiro: JInteiro; i: Integer): TJavaArray<Byte>; cdecl;
    function getConM8: JConM8; cdecl;
    function isTipoAcoplada(i: Integer): Boolean; cdecl;
    function isTipoExterna(i: Integer): Boolean; cdecl;
  end;
  TJConexao = class(TJavaGenericImport<JConexaoClass, JConexao>) end;

  JConBluetoothClass = interface(JConexaoClass)
    ['{9E184559-4CED-44FF-A38B-868224D952FB}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConBluetooth')]
  JConBluetooth = interface(JConexao)
    ['{EDA533DA-19D1-4824-8C87-CDC2AE6D2BA9}']
  end;
  TJConBluetooth = class(TJavaGenericImport<JConBluetoothClass, JConBluetooth>) end;

  JConBluetooth_1GetBluetoothDataClass = interface(JRunnableClass)
    ['{3EC6E316-2DC4-41F3-BE92-CD2C1F59671B}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConBluetooth$1GetBluetoothData')]
  JConBluetooth_1GetBluetoothData = interface(JRunnable)
    ['{5515CB72-1402-4A41-8FD6-4EA62BD92DD3}']
    function getData: TJavaArray<Byte>; cdecl;
    function getError: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConBluetooth_1GetBluetoothData = class(TJavaGenericImport<JConBluetooth_1GetBluetoothDataClass, JConBluetooth_1GetBluetoothData>) end;

  JConBluetooth_1GetPrinterBluetoothClass = interface(JRunnableClass)
    ['{93932FC3-2CFB-4FAF-AB0D-E90B780387A2}']
    {class} function init: JConBluetooth_1GetPrinterBluetooth; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConBluetooth$1GetPrinterBluetooth')]
  JConBluetooth_1GetPrinterBluetooth = interface(JRunnable)
    ['{62363FEB-FB01-4A82-94E2-0AF354223164}']
    function getBluetoothSocket: JBluetoothSocket; cdecl;
    function getError: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConBluetooth_1GetPrinterBluetooth = class(TJavaGenericImport<JConBluetooth_1GetPrinterBluetoothClass, JConBluetooth_1GetPrinterBluetooth>) end;

  JConBluetooth_1SendDataClass = interface(JRunnableClass)
    ['{1A6BB1F6-45CF-4152-ABC4-AB84CCB49FDB}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConBluetooth$1SendData')]
  JConBluetooth_1SendData = interface(JRunnable)
    ['{C2CA3DD1-C640-4283-9FD2-CDCA74CFD17C}']
    function getError: Integer; cdecl;
    function getSz: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConBluetooth_1SendData = class(TJavaGenericImport<JConBluetooth_1SendDataClass, JConBluetooth_1SendData>) end;

  JConM8Class = interface(JObjectClass)
    ['{8ABAB4A1-4384-437A-AE07-69AD5F5EBA84}']
    {class} function init: JConM8; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConM8')]
  JConM8 = interface(JObject)
    ['{8A33DE27-FB97-47B7-97EE-5B6F48477A3C}']
    function getPrinterManager: JPrinterManager; cdecl;
  end;
  TJConM8 = class(TJavaGenericImport<JConM8Class, JConM8>) end;

  JPrinterManager_PrinterManagerListenerClass = interface(IJavaClass)
    ['{474BAD21-7F69-4565-8167-833433A81D90}']
  end;

  [JavaSignature('com/elgin/minipdvm8/PrinterManager$PrinterManagerListener')]
  JPrinterManager_PrinterManagerListener = interface(IJavaInstance)
    ['{329A0A45-A9FF-472D-8F2E-77B71C5499EC}']
    procedure onServiceConnected; cdecl;
  end;
  TJPrinterManager_PrinterManagerListener = class(TJavaGenericImport<JPrinterManager_PrinterManagerListenerClass, JPrinterManager_PrinterManagerListener>) end;

  JConM8_1Class = interface(JPrinterManager_PrinterManagerListenerClass)
    ['{31F3018C-E822-4B99-81E4-92C56596091A}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConM8$1')]
  JConM8_1 = interface(JPrinterManager_PrinterManagerListener)
    ['{6570C01F-FEF5-4188-8887-EF7A8325035D}']
    procedure onServiceConnected; cdecl;
  end;
  TJConM8_1 = class(TJavaGenericImport<JConM8_1Class, JConM8_1>) end;

  JConSerialClass = interface(JConexaoClass)
    ['{5181B5E6-BCD8-42A5-97EB-2E24C63FF90F}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConSerial')]
  JConSerial = interface(JConexao)
    ['{84B94A41-E40F-4185-8F53-855E4FBEE450}']
  end;
  TJConSerial = class(TJavaGenericImport<JConSerialClass, JConSerial>) end;

  JConServiceClass = interface(JConexaoClass)
    ['{B6BFB9F4-00FB-46EA-AA22-6AA446B9D3AE}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConService')]
  JConService = interface(JConexao)
    ['{48247E1C-2F27-4D08-A8C3-0C4404CCF71B}']
  end;
  TJConService = class(TJavaGenericImport<JConServiceClass, JConService>) end;

  JConService_1GetDataClass = interface(JRunnableClass)
    ['{3AF50320-5DD0-454C-8431-ABC6448A2778}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConService$1GetData')]
  JConService_1GetData = interface(JRunnable)
    ['{CE3FE96C-2396-4D1B-B87A-6DF0979AEB3B}']
    function getError: Integer; cdecl;
    function getNumReadTotal: Integer; cdecl;
    function getRdBuffer: TJavaArray<Byte>; cdecl;
    procedure run; cdecl;
  end;
  TJConService_1GetData = class(TJavaGenericImport<JConService_1GetDataClass, JConService_1GetData>) end;

  JConService_1GetPrinterClass = interface(JRunnableClass)
    ['{78FDA88A-91EA-4E7F-95C2-3FCAAAA1C722}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConService$1GetPrinter')]
  JConService_1GetPrinter = interface(JRunnable)
    ['{D2D3C921-7E54-4323-B3AB-416E1FDFB411}']
    function getError: Integer; cdecl;
    function getSocket: JSocket; cdecl;
    procedure run; cdecl;
  end;
  TJConService_1GetPrinter = class(TJavaGenericImport<JConService_1GetPrinterClass, JConService_1GetPrinter>) end;

  JConService_1SendDataClass = interface(JRunnableClass)
    ['{22437A57-DEA5-4047-A6D5-B924A9E1262E}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConService$1SendData')]
  JConService_1SendData = interface(JRunnable)
    ['{4F84A834-21E0-4C1D-8539-89401C8EB98C}']
    function getError: Integer; cdecl;
    function getSz: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConService_1SendData = class(TJavaGenericImport<JConService_1SendDataClass, JConService_1SendData>) end;

  JConService_2GetDataClass = interface(JRunnableClass)
    ['{1F48BD74-4D05-46F2-8099-76AC0DC57B38}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConService$2GetData')]
  JConService_2GetData = interface(JRunnable)
    ['{C6082A8C-7D8E-4547-8B3B-4DD9C546585A}']
    function getError: Integer; cdecl;
    function getNumReadTotal: Integer; cdecl;
    function getRdBuffer: TJavaArray<Byte>; cdecl;
    procedure run; cdecl;
  end;
  TJConService_2GetData = class(TJavaGenericImport<JConService_2GetDataClass, JConService_2GetData>) end;

  JConSmartPOSClass = interface(JConexaoClass)
    ['{D6EE38A5-97B0-4F56-AA2C-6448494B3874}']
    {class} function getPrinterDevice(i: Integer): JPrinterDevice; cdecl;
    {class} function init: JConSmartPOS; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConSmartPOS')]
  JConSmartPOS = interface(JConexao)
    ['{5094D7FB-011F-46B7-AC29-BF54167047C2}']
  end;
  TJConSmartPOS = class(TJavaGenericImport<JConSmartPOSClass, JConSmartPOS>) end;

  JConTCP_IPClass = interface(JConexaoClass)
    ['{842CA3A1-F31C-4133-AF83-4929DBF4FDE6}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConTCP_IP')]
  JConTCP_IP = interface(JConexao)
    ['{E33609EF-49BE-47C3-80E9-779F7934A075}']
  end;
  TJConTCP_IP = class(TJavaGenericImport<JConTCP_IPClass, JConTCP_IP>) end;

  JConTCP_IP_1GetDataClass = interface(JRunnableClass)
    ['{025C309A-DE76-4982-B1E1-00DFFF4F4C2C}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConTCP_IP$1GetData')]
  JConTCP_IP_1GetData = interface(JRunnable)
    ['{560957EB-255A-45A6-8CC4-BD6F50B98EAE}']
    function getData: TJavaArray<Byte>; cdecl;
    function getError: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConTCP_IP_1GetData = class(TJavaGenericImport<JConTCP_IP_1GetDataClass, JConTCP_IP_1GetData>) end;

  JConTCP_IP_1GetPrinterClass = interface(JRunnableClass)
    ['{919C27EE-E5DA-4FBD-BB9B-531FC37427F6}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConTCP_IP$1GetPrinter')]
  JConTCP_IP_1GetPrinter = interface(JRunnable)
    ['{BB91CAF3-7076-48ED-ACB4-09FFBDEEC0EE}']
    function getError: Integer; cdecl;
    function getSocket: JSocket; cdecl;
    procedure run; cdecl;
  end;
  TJConTCP_IP_1GetPrinter = class(TJavaGenericImport<JConTCP_IP_1GetPrinterClass, JConTCP_IP_1GetPrinter>) end;

  JConTCP_IP_1SendDataClass = interface(JRunnableClass)
    ['{8100BDF1-9C4F-408B-9B4C-2B68CB9F1444}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConTCP_IP$1SendData')]
  JConTCP_IP_1SendData = interface(JRunnable)
    ['{BD4BCB26-DDB2-4604-9DAB-60B7E544A848}']
    function getError: Integer; cdecl;
    function getSz: Integer; cdecl;
    procedure run; cdecl;
  end;
  TJConTCP_IP_1SendData = class(TJavaGenericImport<JConTCP_IP_1SendDataClass, JConTCP_IP_1SendData>) end;

  JConUSBClass = interface(JInitializerClass)
    ['{12E74574-5B03-4D5A-BB71-4F5E9BE4F37E}']
    {class} function init: JConUSB; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConUSB')]
  JConUSB = interface(JInitializer)
    ['{4541B909-09AF-482C-B814-B129B50D717C}']
    function create(context: JContext): JUsbManager; cdecl;
    function dependencies: JList; cdecl;
  end;
  TJConUSB = class(TJavaGenericImport<JConUSBClass, JConUSB>) end;

  JConUSB_1Class = interface(JBroadcastReceiverClass)
    ['{0CB224E8-CF6D-4942-A278-803C4EDF3CAE}']
  end;

  [JavaSignature('com/elgin/e1/Comunicacao/ConUSB$1')]
  JConUSB_1 = interface(JBroadcastReceiver)
    ['{3AF9D672-F20B-489C-B481-9AB7F7BA7E22}']
    procedure onReceive(context: JContext; intent: JIntent); cdecl;
  end;
  TJConUSB_1 = class(TJavaGenericImport<JConUSB_1Class, JConUSB_1>) end;

  JInterfaceFactoryXMLSATClass = interface(IJavaClass)
    ['{15980905-2B79-44EE-94FC-EC4920C016DF}']
  end;

  [JavaSignature('com/elgin/e1/Fiscal/InterfaceFactoryXMLSAT')]
  JInterfaceFactoryXMLSAT = interface(IJavaInstance)
    ['{092C03EC-071E-4B86-A018-14F46AF2005E}']
    function AbreCupomCancelamento(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer): Integer; cdecl;
    function AbreCupomVenda(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString): Integer; cdecl;
    function InformaCOFINSAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaCOFINSOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaCOFINSST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaEntrega(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString): Integer; cdecl;
    function InformaICMS00(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaICMS40(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function InformaICMSSN102(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function InformaICMSSN900(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaISSQN(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString): Integer; cdecl;
    function InformaImposto(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaObsFiscoDet(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaPISAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaPISOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaPISST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaProduto(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString; string_12: JString): Integer; cdecl;
    function InformaTotal(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformainfAdProd(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformainfAdic(string_: JString; string_1: JString): Integer; cdecl;
    function Informapgto(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
  end;
  TJInterfaceFactoryXMLSAT = class(TJavaGenericImport<JInterfaceFactoryXMLSATClass, JInterfaceFactoryXMLSAT>) end;

  JImplementacaoFactoryXMLSATClass = interface(JInterfaceFactoryXMLSATClass)
    ['{8676BE38-C1CF-4DCF-AED8-8D1FE4B1349E}']
  end;

  [JavaSignature('com/elgin/e1/Fiscal/ImplementacaoFactoryXMLSAT')]
  JImplementacaoFactoryXMLSAT = interface(JInterfaceFactoryXMLSAT)
    ['{EA2F3421-D111-4C71-82DB-33713C7AA42B}']
    function AbreCupomCancelamento(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer): Integer; cdecl;
    function AbreCupomVenda(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString): Integer; cdecl;
    function InformaCOFINSAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaCOFINSOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaCOFINSSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaCOFINSST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaEntrega(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString): Integer; cdecl;
    function InformaICMS00(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaICMS40(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function InformaICMSSN102(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function InformaICMSSN900(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaISSQN(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString): Integer; cdecl;
    function InformaImposto(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaObsFiscoDet(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaPISAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaPISOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformaPISSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformaPISST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function InformaProduto(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString; string_12: JString): Integer; cdecl;
    function InformaTotal(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    function InformainfAdProd(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    function InformainfAdic(string_: JString; string_1: JString): Integer; cdecl;
    function Informapgto(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
  end;
  TJImplementacaoFactoryXMLSAT = class(TJavaGenericImport<JImplementacaoFactoryXMLSATClass, JImplementacaoFactoryXMLSAT>) end;

  JInterfaceSATClass = interface(IJavaClass)
    ['{5C47CAC3-C0AE-4D60-934E-665D63B6BCAC}']
  end;

  [JavaSignature('com/elgin/e1/Fiscal/InterfaceSAT')]
  JInterfaceSAT = interface(IJavaInstance)
    ['{D973A1D9-F9EB-45A9-9562-17AFBAEFB592}']
    function AssociarAssinatura(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function AtivarSAT(i: Integer; i1: Integer; string_: JString; string_1: JString; i2: Integer): JString; cdecl;
    function AtualizarSoftwareSAT(i: Integer; string_: JString): JString; cdecl;
    function BloquearSAT(i: Integer; string_: JString): JString; cdecl;
    function CancelaVendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString; string_3: JString): JString; cdecl;
    function CancelarUltimaVenda(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function ConfigurarInterfaceDeRede(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function ConsultarNumeroSessao(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    function ConsultarSat(i: Integer): JString; cdecl;
    function ConsultarStatusEspecifico(i: Integer; i1: Integer; string_: JString): JString; cdecl;
    function ConsultarStatusOperacional(i: Integer; string_: JString): JString; cdecl;
    function ConsultarUltimaSessaoFiscal(i: Integer; string_: JString): JString; cdecl;
    function CriaXMLCancelamentoSAT(string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function DecodificaBase64(string_: JString): JString; cdecl;
    function DesbloquearSAT(i: Integer; string_: JString): JString; cdecl;
    function EnviarDadosVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function ExtrairLogs(i: Integer; string_: JString): JString; cdecl;
    function GetVersaoDLL: JString; cdecl;
    function TesteFimAFim(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function TrocarCodigoDeAtivacao(i: Integer; string_: JString; i1: Integer; string_1: JString; string_2: JString): JString; cdecl;
    function VendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString; string_3: JString): JString; cdecl;
  end;
  TJInterfaceSAT = class(TJavaGenericImport<JInterfaceSATClass, JInterfaceSAT>) end;

  JImplementacaoSATClass = interface(JInterfaceSATClass)
    ['{7E248C19-1E0D-4056-986F-DC4669BFA180}']
  end;

  [JavaSignature('com/elgin/e1/Fiscal/ImplementacaoSAT')]
  JImplementacaoSAT = interface(JInterfaceSAT)
    ['{EEABC636-53D8-48F4-8019-D4F807EF211D}']
    function AssociarAssinatura(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function AtivarSAT(i: Integer; i1: Integer; string_: JString; string_1: JString; i2: Integer): JString; cdecl;
    function AtualizarSoftwareSAT(i: Integer; string_: JString): JString; cdecl;
    function BloquearSAT(i: Integer; string_: JString): JString; cdecl;
    function CancelaVendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString; string_3: JString): JString; cdecl;
    function CancelarUltimaVenda(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function ConfigurarInterfaceDeRede(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function ConsultarNumeroSessao(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    function ConsultarSat(i: Integer): JString; cdecl;
    function ConsultarStatusEspecifico(i: Integer; i1: Integer; string_: JString): JString; cdecl;
    function ConsultarStatusOperacional(i: Integer; string_: JString): JString; cdecl;
    function ConsultarUltimaSessaoFiscal(i: Integer; string_: JString): JString; cdecl;
    function CriaXMLCancelamentoSAT(string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    function DecodificaBase64(string_: JString): JString; cdecl;
    function DesbloquearSAT(i: Integer; string_: JString): JString; cdecl;
    function EnviarDadosVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function ExtrairLogs(i: Integer; string_: JString): JString; cdecl;
    function GetVersaoDLL: JString; cdecl;
    function TesteFimAFim(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function TrocarCodigoDeAtivacao(i: Integer; string_: JString; i1: Integer; string_1: JString; string_2: JString): JString; cdecl;
    function VendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString; string_3: JString): JString; cdecl;
  end;
  TJImplementacaoSAT = class(TJavaGenericImport<JImplementacaoSATClass, JImplementacaoSAT>) end;

  JMFeClass = interface(JObjectClass)
    ['{AB1A3B3A-F441-48EC-B8A4-EFC055E896F6}']
    {class} function init: JMFe; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Fiscal/MFe')]
  JMFe = interface(JObject)
    ['{6B8A02CC-391F-4120-8A03-7E66B20C60D5}']
  end;
  TJMFe = class(TJavaGenericImport<JMFeClass, JMFe>) end;

  JNFCeClass = interface(JObjectClass)
    ['{74C932F2-1B95-47D3-9C48-D6DA0BCFFDBF}']
    {class} function init: JNFCe; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Fiscal/NFCe')]
  JNFCe = interface(JObject)
    ['{7E0AB5C1-F957-4708-A7E1-391C01093EA1}']
  end;
  TJNFCe = class(TJavaGenericImport<JNFCeClass, JNFCe>) end;

  JSATClass = interface(JObjectClass)
    ['{B4574D5E-19C9-4BC2-8E01-110756CCD82F}']
    {class} function AbreCupomCancelamento(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer): Integer; cdecl;
    {class} function AbreCupomVenda(string_: JString; string_1: JString; string_2: JString; string_3: JString; i: Integer; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString): Integer; cdecl;
    {class} function AssociarAssinatura(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    {class} function AtivarSAT(i: Integer; i1: Integer; string_: JString; string_1: JString; i2: Integer): JString; cdecl;
    {class} function AtualizarSoftwareSAT(i: Integer; string_: JString): JString; cdecl;
    {class} function BloquearSAT(i: Integer; string_: JString): JString; cdecl;
    {class} function CancelaVendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString; string_3: JString): JString; cdecl;
    {class} function CancelarUltimaVenda(i: Integer; string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    {class} function ConfigurarInterfaceDeRede(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    {class} function ConsultarNumeroSessao(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    {class} function ConsultarSat(i: Integer): JString; cdecl;
    {class} function ConsultarStatusEspecifico(i: Integer; i1: Integer; string_: JString): JString; cdecl;
    {class} function ConsultarStatusOperacional(i: Integer; string_: JString): JString; cdecl;
    {class} function ConsultarUltimaSessaoFiscal(i: Integer; string_: JString): JString; cdecl;
    {class} function CriaXMLCancelamentoSAT(string_: JString; string_1: JString; string_2: JString): JString; cdecl;
    {class} function DecodificaBase64(string_: JString): JString; cdecl;
    {class} function DesbloquearSAT(i: Integer; string_: JString): JString; cdecl;
    {class} function EnviarDadosVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    {class} function ExtrairLogs(i: Integer; string_: JString): JString; cdecl;
    {class} function GetVersaoDLL: JString; cdecl;
    {class} function InformaCOFINSAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaCOFINSNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaCOFINSOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaCOFINSQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaCOFINSSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaCOFINSST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function InformaEntrega(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString): Integer; cdecl;
    {class} function InformaICMS00(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function InformaICMS40(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaICMSSN102(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaICMSSN900(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function InformaISSQN(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString): Integer; cdecl;
    {class} function InformaImposto(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaInfAdProd(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaInfAdic(string_: JString; string_1: JString): Integer; cdecl;
    {class} function InformaObsFiscoDet(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function InformaPISAliq(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaPISNT(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaPISOutr(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaPISQtde(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaPISSN(string_: JString; i: Integer; string_1: JString): Integer; cdecl;
    {class} function InformaPISST(string_: JString; i: Integer; i1: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function InformaPgto(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function InformaProduto(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString; string_12: JString): Integer; cdecl;
    {class} function InformaTotal(string_: JString; string_1: JString; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function TesteFimAFim(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    {class} function TrocarCodigoDeAtivacao(i: Integer; string_: JString; i1: Integer; string_1: JString; string_2: JString): JString; cdecl;
    {class} function VendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString; string_3: JString): JString; cdecl;
    {class} function getServiceResult: Integer; cdecl;
    {class} function init: JSAT; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Fiscal/SAT')]
  JSAT = interface(JObject)
    ['{D6B193A0-BEC1-48FC-A3FB-659246B7854B}']
  end;
  TJSAT = class(TJavaGenericImport<JSATClass, JSAT>) end;

  JAndroidClass = interface(JObjectClass)
    ['{A880719B-8720-43FD-BF70-FD52B4E55B23}']
    {class} function GetClasseDispositivo: JString; cdecl;
    {class} function GetDeviceInfo(i: Integer): JString; cdecl;
    {class} function GetModeloDispositivo: JString; cdecl;
    {class} function GetNumeroSerie: JString; cdecl;
    {class} function GetVersaoFirmware: JString; cdecl;
    {class} function init: JAndroid; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Android')]
  JAndroid = interface(JObject)
    ['{AF312228-9067-4516-B026-A917ADE8E4AF}']
  end;
  TJAndroid = class(TJavaGenericImport<JAndroidClass, JAndroid>) end;

  JdsImpressoraClass = interface(JObjectClass)
    ['{C6D762EE-135C-4938-B3D1-8FDD19C0051B}']
    {class} function init: JdsImpressora; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsImpressora')]
  JdsImpressora = interface(JObject)
    ['{DAC0E67D-3830-4568-B7DC-4DE6C8AC03B5}']
    function _GettimeoutLeitura: Integer; cdecl;
    function getIDHardwareImpressora(i: Integer): JdsImpressora_infoHW; cdecl;
    function getIDHardwareImpressoraSize: Integer; cdecl;
    function getVersoesNFCSuportada(i: Integer): JString; cdecl;
    function getVersoesNFCSuportadaSize: Integer; cdecl;
    property timeoutLeitura: Integer read _GettimeoutLeitura;
  end;
  TJdsImpressora = class(TJavaGenericImport<JdsImpressoraClass, JdsImpressora>) end;

  JdsImpressora_1Class = interface(JObjectClass)
    ['{D35A45AD-D913-4B10-B16D-577C6352DC94}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsImpressora$1')]
  JdsImpressora_1 = interface(JObject)
    ['{AEC823D9-6248-41A8-B430-43B78201D765}']
  end;
  TJdsImpressora_1 = class(TJavaGenericImport<JdsImpressora_1Class, JdsImpressora_1>) end;

  JdsImpressora_infoHWClass = interface(JObjectClass)
    ['{0588BAF5-8800-403F-B7F5-21077CD67460}']
    {class} function _GetPID: Integer; cdecl;
    {class} function _GetVID: Integer; cdecl;
    {class} function _GetalinhamentoQRCodeModoPaginaH: Integer; cdecl;
    {class} function _GetcodPage: Integer; cdecl;
    {class} function _GetnumColunaA: Integer; cdecl;
    {class} function _GetnumColunaB: Integer; cdecl;
    {class} property PID: Integer read _GetPID;
    {class} property VID: Integer read _GetVID;
    {class} property alinhamentoQRCodeModoPaginaH: Integer read _GetalinhamentoQRCodeModoPaginaH;
    {class} property codPage: Integer read _GetcodPage;
    {class} property numColunaA: Integer read _GetnumColunaA;
    {class} property numColunaB: Integer read _GetnumColunaB;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsImpressora$infoHW')]
  JdsImpressora_infoHW = interface(JObject)
    ['{0128DFC1-815C-4ECA-9034-064F192F6E59}']
    function _GetalinhamentoQRCodeModoPaginaL: Integer; cdecl;
    function _Getid: Integer; cdecl;
    function _Getmodelo: JString; cdecl;
    property alinhamentoQRCodeModoPaginaL: Integer read _GetalinhamentoQRCodeModoPaginaL;
    property id: Integer read _Getid;
    property modelo: JString read _Getmodelo;
  end;
  TJdsImpressora_infoHW = class(TJavaGenericImport<JdsImpressora_infoHWClass, JdsImpressora_infoHW>) end;

  JdsSATClass = interface(JObjectClass)
    ['{145F8973-7178-4242-A765-88CA511D9900}']
    {class} function init: JdsSAT; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsSAT')]
  JdsSAT = interface(JObject)
    ['{1C5FAD5F-9883-4AFD-8EFC-FE78B0931926}']
    function getChaves(i: Integer): JdsSAT_ChaveDePesquisa; cdecl;
    function getChavesSize: Integer; cdecl;
  end;
  TJdsSAT = class(TJavaGenericImport<JdsSATClass, JdsSAT>) end;

  JdsSAT_1Class = interface(JObjectClass)
    ['{0F053D9F-4AB7-4258-8AAD-361704797F6E}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsSAT$1')]
  JdsSAT_1 = interface(JObject)
    ['{8C263F4A-3B0E-4F2D-8476-67E11DE60DD4}']
  end;
  TJdsSAT_1 = class(TJavaGenericImport<JdsSAT_1Class, JdsSAT_1>) end;

  JdsSAT_ChaveDePesquisaClass = interface(JObjectClass)
    ['{6491316F-6224-47E4-9F58-426CB4A978D3}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Config/dsSAT$ChaveDePesquisa')]
  JdsSAT_ChaveDePesquisa = interface(JObject)
    ['{0F699B31-D114-4200-8B4E-95CDD398EDCB}']
    function _Getchave: TJavaObjectArray<JString>; cdecl;
    function _Getindex: Integer; cdecl;
    property chave: TJavaObjectArray<JString> read _Getchave;
    property index: Integer read _Getindex;
  end;
  TJdsSAT_ChaveDePesquisa = class(TJavaGenericImport<JdsSAT_ChaveDePesquisaClass, JdsSAT_ChaveDePesquisa>) end;

  JEtiquetaClass = interface(JObjectClass)
    ['{69314536-C01F-474F-8613-5D03D4955A0F}']
    {class} function DespejarArquivo(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString): Integer; cdecl;
    {class} function DirectIO(i: Integer; string_: JString; string_1: JString; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; i3: Integer): TJavaArray<Integer>; cdecl;
    {class} function EnviaImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; string_2: JString; string_3: JString): Integer; cdecl;
    {class} function ExcluiImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    {class} function Feed(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function GerarBarCode1D(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; i7: Integer): Integer; cdecl;
    {class} function GerarBox(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    {class} function GerarDataBar(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    {class} function GerarDataBarExpanded(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    {class} function GerarDataMatrix(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    {class} function GerarImagem(i: Integer; i1: Integer; string_: JString): Integer; cdecl;
    {class} function GerarLinha(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    {class} function GerarMaxiCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString): Integer; cdecl;
    {class} function GerarPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    {class} function GerarQRCodeAuto(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString): Integer; cdecl;
    {class} function GerarQRCodeManual(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    {class} function GerarTexto(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    {class} function GerarTextoASD(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    {class} function GerarTextoCourier(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    {class} function GetVersaoDLL: JString; cdecl;
    {class} function Imprime(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function Limpa(i: Integer): Integer; cdecl;
    {class} function LimpaMemoria(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function LimpaModulo(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function MemoryStatus(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    {class} function Reset(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function SetAlturaGap(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function SetBackfeed(i: Integer): Integer; cdecl;
    {class} function SetBaudrate(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    {class} function SetCalor(i: Integer): Integer; cdecl;
    {class} function SetCortarZero(i: Integer): Integer; cdecl;
    {class} function SetLength(i: Integer): Integer; cdecl;
    {class} function SetLogicImgMode(i: Integer): Integer; cdecl;
    {class} function SetMedidas(i: Integer): Integer; cdecl;
    {class} function SetMirror(i: Integer): Integer; cdecl;
    {class} function SetModoContinuo(i: Integer): Integer; cdecl;
    {class} function SetOffsetColuna(i: Integer): Integer; cdecl;
    {class} function SetOffsetLinha(i: Integer): Integer; cdecl;
    {class} function SetPrintStPos(i: Integer): Integer; cdecl;
    {class} function SetQtde(i: Integer): Integer; cdecl;
    {class} function SetSensor(i: Integer): Integer; cdecl;
    {class} function SetSymbolASD(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function SetTamPixel(i: Integer; i1: Integer): Integer; cdecl;
    {class} function SetTipoTransferencia(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function SetVelImpressao(i: Integer): Integer; cdecl;
    {class} function Status(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    {class} function StatusEPL(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    {class} function Teste(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function init: JEtiqueta; cdecl;
    {class} function setContext(context: JContext): Integer; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Etiqueta')]
  JEtiqueta = interface(JObject)
    ['{C33889FB-1C04-4C44-A1D0-D5DA9DCBC8E2}']
  end;
  TJEtiqueta = class(TJavaGenericImport<JEtiquetaClass, JEtiqueta>) end;

  JAndroidDevicesClass = interface(JObjectClass)
    ['{9BA92DFF-628C-4327-9094-BBFFA8675855}']
    {class} function _GetCL_INVALID: JString; cdecl;
    {class} function _GetCL_PDV_ANDROID: JString; cdecl;
    {class} function _GetCL_POS_ANDROID: JString; cdecl;
    {class} function _GetCL_SMART_TERMINAL: JString; cdecl;
    {class} function _GetELGIN_MINIPDVM10: JString; cdecl;
    {class} function _GetELGIN_MINIPDVM8: JString; cdecl;
    {class} function _GetELGIN_SMARTPOS: JString; cdecl;
    {class} function init: JAndroidDevices; cdecl;//Deprecated
    {class} property CL_INVALID: JString read _GetCL_INVALID;
    {class} property CL_PDV_ANDROID: JString read _GetCL_PDV_ANDROID;
    {class} property CL_POS_ANDROID: JString read _GetCL_POS_ANDROID;
    {class} property CL_SMART_TERMINAL: JString read _GetCL_SMART_TERMINAL;
    {class} property ELGIN_MINIPDVM10: JString read _GetELGIN_MINIPDVM10;
    {class} property ELGIN_MINIPDVM8: JString read _GetELGIN_MINIPDVM8;
    {class} property ELGIN_SMARTPOS: JString read _GetELGIN_SMARTPOS;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/AndroidDevices')]
  JAndroidDevices = interface(JObject)
    ['{C596D9FA-398E-4B87-977C-CAD14309EF6C}']
  end;
  TJAndroidDevices = class(TJavaGenericImport<JAndroidDevicesClass, JAndroidDevices>) end;

  JInterfaceAndroidClass = interface(IJavaClass)
    ['{EBADC125-4B12-4D90-8147-17D72160F757}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceAndroid')]
  JInterfaceAndroid = interface(IJavaInstance)
    ['{903F7A35-B99D-4E11-BC01-B30298DA4CC6}']
    function EnviaDadosNFCeImpressao(implementacaoOBJXMLNFCE: JImplementacaoOBJXMLNFCE; i: Integer; string_: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function GetClasseDispositivo: JString; cdecl;
    function GetDeviceInfo(i: Integer): JString; cdecl;
    function GetModeloDispositivo: JString; cdecl;
    function GetNumeroSerie: JString; cdecl;
    function GetVersaoFirmware: JString; cdecl;
    function IImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): Integer; cdecl;
    function IImprimeXMLSAT(string_: JString; i: Integer): Integer; cdecl;
  end;
  TJInterfaceAndroid = class(TJavaGenericImport<JInterfaceAndroidClass, JInterfaceAndroid>) end;

  JImplementacaoAndroidClass = interface(JInterfaceAndroidClass)
    ['{8E510C89-5D8E-48D0-80BC-08EA6BFBC538}']
    {class} function _GetGAVETA_ABERTA: Integer; cdecl;
    {class} function _GetGAVETA_FECHADA: Integer; cdecl;
    {class} function _GetPAPEL_PRESENTE: Integer; cdecl;
    {class} function _Getcon: JConexao; cdecl;
    {class} function init: JImplementacaoAndroid; cdecl; overload;
    {class} procedure setImpTexto(iIImpressaoTexto: JImplementacaoAndroid_IIImpressaoTexto); cdecl;//Deprecated
    {class} property GAVETA_ABERTA: Integer read _GetGAVETA_ABERTA;
    {class} property GAVETA_FECHADA: Integer read _GetGAVETA_FECHADA;
    {class} property PAPEL_PRESENTE: Integer read _GetPAPEL_PRESENTE;
    {class} property con: JConexao read _Getcon;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoAndroid')]
  JImplementacaoAndroid = interface(JInterfaceAndroid)
    ['{C3304DD0-6BD4-4EA8-BF61-0DCE80F3FA2A}']
    function EnviaDadosNFCeImpressao(implementacaoOBJXMLNFCE: JImplementacaoOBJXMLNFCE; i: Integer; string_: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function GetClasseDispositivo: JString; cdecl;
    function GetDeviceInfo(i: Integer): JString; cdecl;
    function GetModeloDispositivo: JString; cdecl;
    function GetNumeroSerie: JString; cdecl;
    function GetVersaoFirmware: JString; cdecl;
    function IImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): Integer; cdecl;
    function IImprimeXMLSAT(string_: JString; i: Integer): Integer; cdecl;
  end;
  TJImplementacaoAndroid = class(TJavaGenericImport<JImplementacaoAndroidClass, JImplementacaoAndroid>) end;

  JImplementacaoAndroid_IIImpressaoTextoClass = interface(IJavaClass)
    ['{A19659BC-D109-4114-8918-B04810CD151F}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoAndroid$IIImpressaoTexto')]
  JImplementacaoAndroid_IIImpressaoTexto = interface(IJavaInstance)
    ['{53595BDC-AF0B-41A7-8141-81EBDE215304}']
    function IImpressaoTexto(string_: JString): Integer; cdecl;
  end;
  TJImplementacaoAndroid_IIImpressaoTexto = class(TJavaGenericImport<JImplementacaoAndroid_IIImpressaoTextoClass, JImplementacaoAndroid_IIImpressaoTexto>) end;

  JInterfaceBematechClass = interface(IJavaClass)
    ['{7DAEA351-8D7C-492C-A68F-0BC1D8413523}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceBematech')]
  JInterfaceBematech = interface(IJavaInstance)
    ['{A8B8D33E-6E4F-4F6C-90A4-3063805B278C}']
    function FormatarMoeda(string_: JString): JString; cdecl;
    function LinhaProduto(i: Integer; implementacaoOBJPRODUTOXMLNFCE: JImplementacaoOBJPRODUTOXMLNFCE): TJavaArray<Char>; cdecl;
    function PreencheLegendaProduto(i: Integer): TJavaArray<Char>; cdecl;
    function imprimeCode128(string_: JString): Integer; cdecl;
    function imprimeQRCodeBema(string_: JString; i: Integer; i1: Integer): Integer; cdecl;
  end;
  TJInterfaceBematech = class(TJavaGenericImport<JInterfaceBematechClass, JInterfaceBematech>) end;

  JImplementacaoBematechClass = interface(JInterfaceBematechClass)
    ['{D07331FD-FB9E-4823-B6CC-2FA8601454EA}']
    {class} function init(conexao: JConexao): JImplementacaoBematech; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoBematech')]
  JImplementacaoBematech = interface(JInterfaceBematech)
    ['{5F8F086E-2550-4552-B72B-8AC20129A7B8}']
    function FormatarMoeda(string_: JString): JString; cdecl;
    function LinhaProduto(i: Integer; implementacaoOBJPRODUTOXMLNFCE: JImplementacaoOBJPRODUTOXMLNFCE): TJavaArray<Char>; cdecl;
    function PreencheLegendaProduto(i: Integer): TJavaArray<Char>; cdecl;
    function imprimeCode128(string_: JString): Integer; cdecl;
    function imprimeQRCodeBema(string_: JString; i: Integer; i1: Integer): Integer; cdecl;
  end;
  TJImplementacaoBematech = class(TJavaGenericImport<JImplementacaoBematechClass, JImplementacaoBematech>) end;

  JInterfaceEtiquetaClass = interface(IJavaClass)
    ['{EDBF4B59-20AB-44BD-AE79-55EE2408D56A}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceEtiqueta')]
  JInterfaceEtiqueta = interface(IJavaInstance)
    ['{D7CA63BD-5DDF-4529-A322-29A326CF15B1}']
    function DespejarArquivo(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString): Integer; cdecl;
    function DirectIO(i: Integer; string_: JString; string_1: JString; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; i3: Integer; b2: Boolean): TJavaArray<Integer>; cdecl;
    function EnviaImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; string_2: JString; string_3: JString): Integer; cdecl;
    function ExcluiImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    function Feed(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function GerarBarCode1D(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; i7: Integer): Integer; cdecl;
    function GerarBox(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    function GerarDataBar(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function GerarDataBarExpanded(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function GerarDataMatrix(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarImagem(i: Integer; i1: Integer; string_: JString): Integer; cdecl;
    function GerarLinha(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function GerarMaxiCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString): Integer; cdecl;
    function GerarPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    function GerarQRCodeAuto(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString): Integer; cdecl;
    function GerarQRCodeManual(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    function GerarTexto(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarTextoASD(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarTextoCourier(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GetVersaoDLL: JString; cdecl;
    function Imprime(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function Limpa(i: Integer): Integer; cdecl;
    function LimpaMemoria(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function LimpaModulo(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function MemoryStatus(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    function Reset(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function SetAlturaGap(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetBackfeed(i: Integer): Integer; cdecl;
    function SetBaudrate(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    function SetCalor(i: Integer): Integer; cdecl;
    function SetCortarZero(i: Integer): Integer; cdecl;
    function SetLength(i: Integer): Integer; cdecl;
    function SetLogicImgMode(i: Integer): Integer; cdecl;
    function SetMedidas(i: Integer): Integer; cdecl;
    function SetMirror(i: Integer): Integer; cdecl;
    function SetModoContinuo(i: Integer): Integer; cdecl;
    function SetOffsetColuna(i: Integer): Integer; cdecl;
    function SetOffsetLinha(i: Integer): Integer; cdecl;
    function SetPrintStPos(i: Integer): Integer; cdecl;
    function SetQtde(i: Integer): Integer; cdecl;
    function SetSensor(i: Integer): Integer; cdecl;
    function SetSymbolASD(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetTamPixel(i: Integer; i1: Integer): Integer; cdecl;
    function SetTipoTransferencia(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetVelImpressao(i: Integer): Integer; cdecl;
    function Status(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    function StatusEPL(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    function Teste(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
  end;
  TJInterfaceEtiqueta = class(TJavaGenericImport<JInterfaceEtiquetaClass, JInterfaceEtiqueta>) end;

  JImplementacaoEtiquetaClass = interface(JInterfaceEtiquetaClass)
    ['{1F22DC9F-AB5E-4FB4-9A93-8A8454051952}']
    {class} function init: JImplementacaoEtiqueta; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoEtiqueta')]
  JImplementacaoEtiqueta = interface(JInterfaceEtiqueta)
    ['{DC6649FD-CC29-4254-B164-6D1098C2CD80}']
    function DespejarArquivo(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString): Integer; cdecl;
    function DirectIO(i: Integer; string_: JString; string_1: JString; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; i3: Integer; b2: Boolean): TJavaArray<Integer>; cdecl;
    function EnviaImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; string_2: JString; string_3: JString): Integer; cdecl;
    function ExcluiImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    function Feed(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function GerarBarCode1D(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; i7: Integer): Integer; cdecl;
    function GerarBox(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    function GerarDataBar(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function GerarDataBarExpanded(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function GerarDataMatrix(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarImagem(i: Integer; i1: Integer; string_: JString): Integer; cdecl;
    function GerarLinha(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function GerarMaxiCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString): Integer; cdecl;
    function GerarPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    function GerarQRCodeAuto(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString): Integer; cdecl;
    function GerarQRCodeManual(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): Integer; cdecl;
    function GerarTexto(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarTextoASD(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GerarTextoCourier(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function GetVersaoDLL: JString; cdecl;
    function Imprime(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function Limpa(i: Integer): Integer; cdecl;
    function LimpaMemoria(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function LimpaModulo(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function MemoryStatus(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    function Reset(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function SetAlturaGap(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetBackfeed(i: Integer): Integer; cdecl;
    function SetBaudrate(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    function SetCalor(i: Integer): Integer; cdecl;
    function SetCortarZero(i: Integer): Integer; cdecl;
    function SetLength(i: Integer): Integer; cdecl;
    function SetLogicImgMode(i: Integer): Integer; cdecl;
    function SetMedidas(i: Integer): Integer; cdecl;
    function SetMirror(i: Integer): Integer; cdecl;
    function SetModoContinuo(i: Integer): Integer; cdecl;
    function SetOffsetColuna(i: Integer): Integer; cdecl;
    function SetOffsetLinha(i: Integer): Integer; cdecl;
    function SetPrintStPos(i: Integer): Integer; cdecl;
    function SetQtde(i: Integer): Integer; cdecl;
    function SetSensor(i: Integer): Integer; cdecl;
    function SetSymbolASD(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetTamPixel(i: Integer; i1: Integer): Integer; cdecl;
    function SetTipoTransferencia(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): Integer; cdecl;
    function SetVelImpressao(i: Integer): Integer; cdecl;
    function Status(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    function StatusEPL(i: Integer; string_: JString; string_1: JString; i1: Integer): JString; cdecl;
    function Teste(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function getServiceResult: Integer; cdecl;
  end;
  TJImplementacaoEtiqueta = class(TJavaGenericImport<JImplementacaoEtiquetaClass, JImplementacaoEtiqueta>) end;

  JImplementacaoM8Class = interface(JImplementacaoAndroidClass)
    ['{BB957C20-1EF4-49F1-A9E2-78A029DD597F}']
    {class} function init(conexao: JConexao; implementacaoTermica: JImplementacaoTermica): JImplementacaoM8; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoM8')]
  JImplementacaoM8 = interface(JImplementacaoAndroid)
    ['{20C901A6-E9C6-4853-9E36-A6D429E3E629}']
    function IAbreGaveta(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IAbreGavetaElgin: Integer; cdecl;
    function IDefinePosicao(i: Integer): Integer; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString; i6: Integer): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IImpressaoTexto(string_: JString): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap; i: Integer): Integer; cdecl;
    function IImprimeImagemMemoria(string_: JString; i: Integer): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
  end;
  TJImplementacaoM8 = class(TJavaGenericImport<JImplementacaoM8Class, JImplementacaoM8>) end;

  JImplementacaoM8_1Class = interface(JImplementacaoAndroid_IIImpressaoTextoClass)
    ['{FA636F10-99F0-4045-81DA-267627D8472B}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoM8$1')]
  JImplementacaoM8_1 = interface(JImplementacaoAndroid_IIImpressaoTexto)
    ['{CE5712F6-10EA-4217-8AED-EB0A8DDD9201}']
    function IImpressaoTexto(string_: JString): Integer; cdecl;
  end;
  TJImplementacaoM8_1 = class(TJavaGenericImport<JImplementacaoM8_1Class, JImplementacaoM8_1>) end;

  JImplementacaoSmartPOSClass = interface(JImplementacaoAndroidClass)
    ['{6FB691ED-4EB4-434C-BF4D-B454FF602B2D}']
    {class} function init(conexao: JConexao; implementacaoTermica: JImplementacaoTermica): JImplementacaoSmartPOS; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoSmartPOS')]
  JImplementacaoSmartPOS = interface(JImplementacaoAndroid)
    ['{CCB026FB-A132-4372-A9E3-38562DC08A1A}']
    function IDefinePosicao(i: Integer): JString; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer; string_1: JString): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function IImpressaoTexto(string_: JString): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap; string_: JString): Integer; cdecl;
    function IImprimeImagemMemoria(string_: JString; string_1: JString): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
  end;
  TJImplementacaoSmartPOS = class(TJavaGenericImport<JImplementacaoSmartPOSClass, JImplementacaoSmartPOS>) end;

  JImplementacaoSmartPOS_1Class = interface(JImplementacaoAndroid_IIImpressaoTextoClass)
    ['{69792E6E-1DC1-49E2-BCE2-D2C564A5844D}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoSmartPOS$1')]
  JImplementacaoSmartPOS_1 = interface(JImplementacaoAndroid_IIImpressaoTexto)
    ['{78E54060-1D73-47F9-BEED-7AF57E0CC4DF}']
    function IImpressaoTexto(string_: JString): Integer; cdecl;
  end;
  TJImplementacaoSmartPOS_1 = class(TJavaGenericImport<JImplementacaoSmartPOS_1Class, JImplementacaoSmartPOS_1>) end;

  JInterfaceTermicaClass = interface(IJavaClass)
    ['{5655D512-8E90-4587-894E-E3F8A6A3EFBE}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceTermica')]
  JInterfaceTermica = interface(IJavaInstance)
    ['{0EAFBD25-FAAA-4216-9A61-2D6DE58336DB}']
    function IAbreConexaoImpressora(context: JContext; i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function IAbreGaveta(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IAbreGavetaElgin: Integer; cdecl;
    function IAvancaPapel(i: Integer): Integer; cdecl;
    function ICorte(i: Integer; b: Boolean): Integer; cdecl;
    function IDefineAreaImpressao(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function IDefinePosicao(i: Integer): Integer; cdecl;
    function IDirecaoImpressao(i: Integer): Integer; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; inteiro: JInteiro): Integer; cdecl;
    function IFechaConexaoImpressora: Integer; cdecl;
    function IGetVersaoDLL: JString; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer): Integer; cdecl;
    function IImpressaoTexto(string_: JString; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap): Integer; cdecl;
    function IImprimeCupomTEF(string_: JString): Integer; cdecl;
    function IImprimeImagem(bitmap: JBitmap): Integer; cdecl; overload;
    function IImprimeImagem(string_: JString): Integer; cdecl; overload;
    function IImprimeImagemMemoria(string_: JString; i: Integer): Integer; cdecl;
    function IImprimeMPeRetornaPadrao: Integer; cdecl;
    function IImprimeModoPagina: Integer; cdecl;
    function IImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): Integer; cdecl;
    function IImprimeXMLNFCe(string_: JString; i: Integer; string_1: JString; i1: Integer): Integer; cdecl;
    function IImprimeXMLSAT(string_: JString; i: Integer): Integer; cdecl;
    function IInicializaImpressora: Integer; cdecl;
    function ILimpaBufferModoPagina: Integer; cdecl;
    function IModoPadrao: Integer; cdecl;
    function IModoPagina: Integer; cdecl;
    function IPosicaoImpressaoHorizontal(i: Integer): Integer; cdecl;
    function IPosicaoImpressaoVertical(i: Integer): Integer; cdecl;
    function ISinalSonoro(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
  end;
  TJInterfaceTermica = class(TJavaGenericImport<JInterfaceTermicaClass, JInterfaceTermica>) end;

  JImplementacaoTermicaClass = interface(JInterfaceTermicaClass)
    ['{E716E213-E894-417E-A26F-7A03784226B2}']
    {class} function init: JImplementacaoTermica; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/ImplementacaoTermica')]
  JImplementacaoTermica = interface(JInterfaceTermica)
    ['{B1C942A6-A957-4ACA-A667-0D959ADF9BA5}']
    function IAbreConexaoImpressora(context: JContext; i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    function IAbreGaveta(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IAbreGavetaElgin: Integer; cdecl;
    function IAvancaPapel(i: Integer): Integer; cdecl;
    function ICorte(i: Integer; b: Boolean): Integer; cdecl;
    function IDefineAreaImpressao(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function IDefinePosicao(i: Integer): Integer; cdecl;
    function IDirecaoImpressao(i: Integer): Integer; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; inteiro: JInteiro): Integer; cdecl;
    function IFechaConexaoImpressora: Integer; cdecl;
    function IGetVersaoDLL: JString; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer): Integer; cdecl;
    function IImpressaoTexto(string_: JString; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap): Integer; cdecl;
    function IImprimeCupomTEF(string_: JString): Integer; cdecl;
    function IImprimeImagem(string_: JString): Integer; cdecl; overload;
    function IImprimeImagem(bitmap: JBitmap): Integer; cdecl; overload;
    function IImprimeImagemMemoria(string_: JString; i: Integer): Integer; cdecl;
    function IImprimeMPeRetornaPadrao: Integer; cdecl;
    function IImprimeModoPagina: Integer; cdecl;
    function IImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): Integer; cdecl;
    function IImprimeXMLNFCe(string_: JString; i: Integer; string_1: JString; i1: Integer): Integer; cdecl;
    function IImprimeXMLSAT(string_: JString; i: Integer): Integer; cdecl;
    function IInicializaImpressora: Integer; cdecl;
    function ILimpaBufferModoPagina: Integer; cdecl;
    function IModoPadrao: Integer; cdecl;
    function IModoPagina: Integer; cdecl;
    function IPosicaoImpressaoHorizontal(i: Integer): Integer; cdecl;
    function IPosicaoImpressaoVertical(i: Integer): Integer; cdecl;
    function ISinalSonoro(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
    function getServiceResult: Integer; cdecl;
    function printText(string_: JString): Integer; cdecl;
  end;
  TJImplementacaoTermica = class(TJavaGenericImport<JImplementacaoTermicaClass, JImplementacaoTermica>) end;

  JInterfaceM8Class = interface(IJavaClass)
    ['{753C2CAB-D290-4DC6-BD5D-21D08D371A36}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceM8')]
  JInterfaceM8 = interface(IJavaInstance)
    ['{448E27E5-159D-4698-B880-5B4CED9E482A}']
    function IAbreGaveta(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IAbreGavetaElgin: Integer; cdecl;
    function IDefinePosicao(i: Integer): Integer; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString; i6: Integer): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function IImpressaoTexto(string_: JString): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap; i: Integer): Integer; cdecl;
    function IImprimeImagemMemoria(string_: JString; i: Integer): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
  end;
  TJInterfaceM8 = class(TJavaGenericImport<JInterfaceM8Class, JInterfaceM8>) end;

  JInterfaceSmartPOSClass = interface(IJavaClass)
    ['{A4B63842-5435-4791-AA65-424D6BAC8FBF}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Impressoras/InterfaceSmartPOS')]
  JInterfaceSmartPOS = interface(IJavaInstance)
    ['{4E048817-0C31-45CB-AEB6-4F28D0114F1B}']
    function IDefinePosicao(i: Integer): JString; cdecl;
    function IDirectIO(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function IImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer; string_1: JString): Integer; cdecl;
    function IImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString; string_1: JString): Integer; cdecl;
    function IImpressaoQRCode(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function IImpressaoTexto(string_: JString): Integer; cdecl;
    function IImprimeBitmap(bitmap: JBitmap; string_: JString): Integer; cdecl;
    function IImprimeImagemMemoria(string_: JString; string_1: JString): Integer; cdecl;
    function IStatusImpressora(i: Integer): Integer; cdecl;
  end;
  TJInterfaceSmartPOS = class(TJavaGenericImport<JInterfaceSmartPOSClass, JInterfaceSmartPOS>) end;

  JMiniPDVM8Class = interface(JObjectClass)
    ['{3D3F6747-287D-48E3-BBC6-67E2556ACF5D}']
    {class} function GetNumeroSerie: JString; cdecl;
    {class} function init: JMiniPDVM8; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/MiniPDVM8')]
  JMiniPDVM8 = interface(JObject)
    ['{08BE95E8-35B7-4056-923C-CB3848B41234}']
  end;
  TJMiniPDVM8 = class(TJavaGenericImport<JMiniPDVM8Class, JMiniPDVM8>) end;

  JSmartClass = interface(JObjectClass)
    ['{D601A238-A0C5-4EE6-AE3B-DCDAC415C160}']
    {class} function GetNumeroSerie: JString; cdecl;
    {class} function init: JSmart; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Smart')]
  JSmart = interface(JObject)
    ['{E406059F-5167-43A9-813A-C75F7E901A5D}']
  end;
  TJSmart = class(TJavaGenericImport<JSmartClass, JSmart>) end;

  JTermicaClass = interface(JObjectClass)
    ['{1AA88B76-88B1-4A39-A38A-7093B04BDE96}']
    {class} function _GetACTIVITY: Integer; cdecl;
    {class} function _GetCONTEXT: Integer; cdecl;
    {class} function _GetNULL: Integer; cdecl;
    {class} function AbreConexaoImpressora(i: Integer; string_: JString; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function AbreGaveta(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function AbreGavetaElgin: Integer; cdecl;
    {class} function AvancaPapel(i: Integer): Integer; cdecl;
    {class} function Corte(i: Integer): Integer; cdecl;
    {class} function CorteTotal(i: Integer): Integer; cdecl;
    {class} function DefineAreaImpressao(i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    {class} function DefinePosicao(i: Integer): Integer; cdecl;
    {class} function DirecaoImpressao(i: Integer): Integer; cdecl;
    {class} function DirectIO(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; inteiro: JInteiro): Integer; cdecl;
    {class} function FechaConexaoImpressora: Integer; cdecl;
    {class} function GetVersaoDLL: JString; cdecl;
    {class} function ImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    {class} function ImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): Integer; cdecl;
    {class} function ImpressaoQRCode(string_: JString; i: Integer; i1: Integer): Integer; cdecl;
    {class} function ImpressaoTexto(string_: JString; i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function ImprimeBitmap(bitmap: JBitmap): Integer; cdecl;
    {class} function ImprimeCupomTEF(string_: JString): Integer; cdecl;
    {class} function ImprimeImagem(bitmap: JBitmap): Integer; cdecl; overload;
    {class} function ImprimeImagem(string_: JString): Integer; cdecl; overload;
    {class} function ImprimeImagemMemoria(string_: JString; i: Integer): Integer; cdecl;
    {class} function ImprimeMPeRetornaPadrao: Integer; cdecl;
    {class} function ImprimeModoPagina: Integer; cdecl;
    {class} function ImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): Integer; cdecl;
    {class} function ImprimeXMLNFCe(string_: JString; i: Integer; string_1: JString; i1: Integer): Integer; cdecl;
    {class} function ImprimeXMLSAT(string_: JString; i: Integer): Integer; cdecl;
    {class} function InicializaImpressora: Integer; cdecl;
    {class} function LimpaBufferModoPagina: Integer; cdecl;
    {class} function ModoPadrao: Integer; cdecl;
    {class} function ModoPagina: Integer; cdecl;
    {class} function PosicaoImpressaoHorizontal(i: Integer): Integer; cdecl;
    {class} function PosicaoImpressaoVertical(i: Integer): Integer; cdecl;
    {class} function SinalSonoro(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    {class} function StatusImpressora(i: Integer): Integer; cdecl;
    {class} function getFlag: Integer; cdecl;
    {class} function init: JTermica; cdecl;//Deprecated
    {class} function setActivity(activity: JActivity): Integer; cdecl;
    {class} function setContext(context: JContext): Integer; cdecl;
    {class} property ACTIVITY: Integer read _GetACTIVITY;
    {class} property CONTEXT: Integer read _GetCONTEXT;
    {class} 
  end;

  [JavaSignature('com/elgin/e1/Impressora/Termica')]
  JTermica = interface(JObject)
    ['{29C4299C-3FCB-44EC-AD43-4D5535970185}']
  end;
  TJTermica = class(TJavaGenericImport<JTermicaClass, JTermica>) end;

  JCodigoErroClass = interface(JObjectClass)
    ['{0551DACE-E8AE-438F-AD75-339D97A3B1D2}']
    {class} function _GetALIQUOTA_IMPOSTO_INVALIDA: Integer; cdecl;
    {class} function _GetALIQUOTA_ISSQN_INVALIDA: Integer; cdecl;
    {class} function _GetARQUIVO_NAO_ENCONTRADO: Integer; cdecl;
    {class} function _GetARQUIVO_NAO_EXISTE: Integer; cdecl;
    {class} function _GetARQUIVO_NAO_PODE_SER_ABERTO: Integer; cdecl;
    {class} function _GetASSINATURA_QRCODE_INVALIDA: Integer; cdecl;
    {class} function _GetBAIRRO_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_BALANCA_EM_USO: Integer; cdecl;
    {class} function _GetBAL_BALANCA_INVALIDA: Integer; cdecl;
    {class} function _GetBAL_BAUDRATE_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_BAUDRATE_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetBAL_COMANDO_NAO_SUPORTADO_PELA_BALANCA: Integer; cdecl;
    {class} function _GetBAL_COMANDO_NAO_SUPORTADO_PELO_PROTOCOLO: Integer; cdecl;
    {class} function _GetBAL_COMBINACAO_DE_PARAMETROS_INVALIDA: Integer; cdecl;
    {class} function _GetBAL_CONEXAO_ATIVA: Integer; cdecl;
    {class} function _GetBAL_CONFIGS_SERIAIS_NAO_SUPORTADAS_PELO_PROTOCOLO: Integer; cdecl;
    {class} function _GetBAL_FALHA_AO_ENVIAR_PRECO: Integer; cdecl;
    {class} function _GetBAL_FALHA_NA_LEITURA_DO_PESO: Integer; cdecl;
    {class} function _GetBAL_LENGTH_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_LENGTH_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetBAL_NENHUMA_BALANCA_EM_USO: Integer; cdecl;
    {class} function _GetBAL_NENHUM_PROTOCOLO_EM_USO: Integer; cdecl;
    {class} function _GetBAL_PARITY_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_PARITY_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetBAL_PRECO_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_PROTOCOLO_EM_USO: Integer; cdecl;
    {class} function _GetBAL_PROTOCOLO_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_PROTOCOLO_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetBAL_PROTOCOLO_NAO_SUPORTADO_PELAS_CONFIGS_SERIAIS: Integer; cdecl;
    {class} function _GetBAL_QTD_LEITURAS_INVALIDA: Integer; cdecl;
    {class} function _GetBAL_STOPBITS_INVALIDO: Integer; cdecl;
    {class} function _GetBAL_STOPBITS_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetBARCODE1D_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_CARACTERE_INVALIDO: Integer; cdecl;
    {class} function _GetBARCODE1D_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetBARCODE1D_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_LARGURA_BARRAS_ESTREITAS_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_LARGURA_BARRAS_LARGAS_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetBARCODE1D_TAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetBARCODE1D_TIPO_INVALIDO: Integer; cdecl;
    {class} function _GetBASE_CALCULO_INVALIDA: Integer; cdecl;
    {class} function _GetBAUDRATE_INVALIDO: Integer; cdecl;
    {class} function _GetBLUETOOTH_DESATIVADO: Integer; cdecl;
    {class} function _GetBOX_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetBOX_COMPRIMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetBOX_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetBOX_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetBOX_GROSSURA_BORDAS_HORIZONTAIS_INVALIDA: Integer; cdecl;
    {class} function _GetBOX_GROSSURA_BORDAS_VERTICAIS_INVALIDA: Integer; cdecl;
    {class} function _GetBR_ASS_QRCODE_INVALIDO: Integer; cdecl;
    {class} function _GetBR_ASS_QRCODE_NULL: Integer; cdecl;
    {class} function _GetBR_CSC_INVALIDO: Integer; cdecl;
    {class} function _GetBR_CSC_NULL: Integer; cdecl;
    {class} function _GetBR_DATA_HORA_INVALIDA: Integer; cdecl;
    {class} function _GetBR_DATA_HORA_NULL: Integer; cdecl;
    {class} function _GetBR_ERRO_ABERTURA_ARQUIVO: Integer; cdecl;
    {class} function _GetBR_ERRO_CONECTAR_STATUS: Integer; cdecl;
    {class} function _GetBR_ERRO_CONECTAR_TRANSACAO: Integer; cdecl;
    {class} function _GetBR_ERRO_CONFIRMAR_TRANSACAO: Integer; cdecl;
    {class} function _GetBR_ERRO_ENVIO_TRANSACAO: Integer; cdecl;
    {class} function _GetBR_ERRO_ESCREVER_ARQUIVO: Integer; cdecl;
    {class} function _GetBR_ERRO_LEITURA_STATUS: Integer; cdecl;
    {class} function _GetBR_ERRO_LEITURA_TRANSACAO: Integer; cdecl;
    {class} function _GetBR_ID_TRANSACAO_INVALIDO: Integer; cdecl;
    {class} function _GetBR_IP_TERMINAL_INVALIDO: Integer; cdecl;
    {class} function _GetBR_IP_TERMINAL_NAO_INFORMADO: Integer; cdecl;
    {class} function _GetBR_MESMA_CONFIG_SENHA: Integer; cdecl;
    {class} function _GetBR_NSU_INVALIDO: Integer; cdecl;
    {class} function _GetBR_NSU_NULL: Integer; cdecl;
    {class} function _GetBR_NUM_PARCELAS_INVALIDO: Integer; cdecl;
    {class} function _GetBR_OPERACAO_INVALIDA: Integer; cdecl;
    {class} function _GetBR_OUTPUT_NULL: Integer; cdecl;
    {class} function _GetBR_PDV_INVALIDO: Integer; cdecl;
    {class} function _GetBR_PDV_NULL: Integer; cdecl;
    {class} function _GetBR_PORTAS_IGUAIS: Integer; cdecl;
    {class} function _GetBR_PORTA_STATUS_INVALIDA: Integer; cdecl;
    {class} function _GetBR_PORTA_TRANSACAO_INVALIDA: Integer; cdecl;
    {class} function _GetBR_SENHA_NAO_INFORMADA: Integer; cdecl;
    {class} function _GetBR_SENHA_NULL: Integer; cdecl;
    {class} function _GetBR_STATUS_EM_ANDAMENTO: Integer; cdecl;
    {class} function _GetBR_STATUS_NAO_RETORNADO: Integer; cdecl;
    {class} function _GetBR_TELA_BLOQUEADA: Integer; cdecl;
    {class} function _GetBR_TIMEOUT_INVALIDO: Integer; cdecl;
    {class} function _GetBR_TIPO_CARTAO_INVALIDO: Integer; cdecl;
    {class} function _GetBR_TIPO_CUPOM_INVALIDO: Integer; cdecl;
    {class} function _GetBR_TIPO_FINANCIAMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetBR_TRANSACAO_EM_ANDAMENTO: Integer; cdecl;
    {class} function _GetBR_TRANSACAO_NAO_RETORNADA: Integer; cdecl;
    {class} function _GetBR_VALOR_TOTAL_INVALIDO: Integer; cdecl;
    {class} function _GetBR_VALOR_TOTAL_NAN: Integer; cdecl;
    {class} function _GetBR_VALOR_TOTAL_NULL: Integer; cdecl;
    {class} function _GetBR_XML_INVALIDO: Integer; cdecl;
    {class} function _GetBR_XML_NULL: Integer; cdecl;
    {class} function _GetCB_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetCB_AREA_DE_IMPRESSAO_EXCEDIDA: Integer; cdecl;
    {class} function _GetCB_DADOS_INVALIDOS: Integer; cdecl;
    {class} function _GetCB_HRI_INVALIDO: Integer; cdecl;
    {class} function _GetCB_LARGURA_INVALIDA: Integer; cdecl;
    {class} function _GetCB_TIPO_INVALIDO: Integer; cdecl;
    {class} function _GetCEST_INVALIDO: Integer; cdecl;
    {class} function _GetCFOP_INVALIDO: Integer; cdecl;
    {class} function _GetCHAMADA_NAO_PERMITIDA: Integer; cdecl;
    {class} function _GetCHAVE_CANCELAMENTO_INVALIDA: Integer; cdecl;
    {class} function _GetCNPJ_INVALIDO: Integer; cdecl;
    {class} function _GetCODIGO_MEIO_PAGAMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetCODIGO_MUNICIPIO_FATO_GERADOR_INVALIDO: Integer; cdecl;
    {class} function _GetCODIGO_PRODUTO_INVALIDO: Integer; cdecl;
    {class} function _GetCODIGO_TRIBUTACAO_ISSQN_INVALIDO: Integer; cdecl;
    {class} function _GetCOMANDO_INVALIDO: Integer; cdecl;
    {class} function _GetCOMPLEMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetCONEXAO_ATIVA: Integer; cdecl;
    {class} function _GetCONEXAO_ATIVA_OUTRO: Integer; cdecl;
    {class} function _GetCONEXAO_NEGADA: Integer; cdecl;
    {class} function _GetCONTEUDO_CAMPO_INVALIDO: Integer; cdecl;
    {class} function _GetCPF_INVALIDO: Integer; cdecl;
    {class} function _GetCREDENCIADORA_CARTAO_INVALIDO: Integer; cdecl;
    {class} function _GetCREGTRIBISSQN_INVALIDO: Integer; cdecl;
    {class} function _GetCSOSN_INVALIDO: Integer; cdecl;
    {class} function _GetCST_INVALIDO: Integer; cdecl;
    {class} function _GetDADOS_PDF_INVALIDOS: Integer; cdecl;
    {class} function _GetDADOS_QR_INVALIDOS: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_ALPHANUMERIC_CARACTERE_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_ALPHANUMERIC_TAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_BAR_RATIO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_PIXEL_MULTIPLIER_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAREXPANDED_SEGMENTS_PER_ROW_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAR_BAR_RATIO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAR_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAR_NUMERIC_LINEAR_DATA_CARACTERE_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_NUMERIC_LINEAR_DATA_TAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_PIXEL_MULTIPLIER_INVALIDO: Integer; cdecl;
    {class} function _GetDATABAR_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetDATABAR_TIPO_INVALIDO: Integer; cdecl;
    {class} function _GetDATAMATRIX_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetDATAMATRIX_COLUMNS_INVALIDAS: Integer; cdecl;
    {class} function _GetDATAMATRIX_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetDATAMATRIX_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetDATAMATRIX_MULTIPLICADOR_INVALIDO: Integer; cdecl;
    {class} function _GetDATAMATRIX_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetDATAMATRIX_ROWS_INVALIDAS: Integer; cdecl;
    {class} function _GetDESCRICAO_PRODUTO_INVALIDA: Integer; cdecl;
    {class} function _GetDIRECAO_INVALIDA: Integer; cdecl;
    {class} function _GetDISPOSITIVO_NAO_ENCONTRADO: Integer; cdecl;
    {class} function _GetDISPOSITIVO_NAO_EXISTE: Integer; cdecl;
    {class} function _GetDISPOSITIVO_NAO_PAREADO: Integer; cdecl;
    {class} function _GetDISPOSITIVO_NAO_SUPORTA_BT: Integer; cdecl;
    {class} function _GetERROR_CORRECTION_LEVEL_INVALIDO: Integer; cdecl;
    {class} function _GetERRO_ABERTURA_NAO_AUTORIZADA: Integer; cdecl;
    {class} function _GetERRO_ABERTURA_PORTA: Integer; cdecl;
    {class} function _GetERRO_ACTIVITY_NAO_DEFINIDA: Integer; cdecl;
    {class} function _GetERRO_ALTURA_GAP: Integer; cdecl;
    {class} function _GetERRO_AO_CARREGAR_BIBLIOTECA_DA_ETIQUETA: Integer; cdecl;
    {class} function _GetERRO_AO_CARREGAR_BIBLIOTECA_DA_IMPRESSORA: Integer; cdecl;
    {class} function _GetERRO_AO_CARREGAR_BIBLIOTECA_DO_E1SAT: Integer; cdecl;
    {class} function _GetERRO_AO_CARREGAR_BIBLIOTECA_DO_SAT: Integer; cdecl;
    {class} function _GetERRO_BACKFEED: Integer; cdecl;
    {class} function _GetERRO_BAUDRATE_BAUDRATE: Integer; cdecl;
    {class} function _GetERRO_BAUDRATE_DATA_LENGTH: Integer; cdecl;
    {class} function _GetERRO_BAUDRATE_PARITY: Integer; cdecl;
    {class} function _GetERRO_BAUDRATE_STOP_BIT: Integer; cdecl;
    {class} function _GetERRO_CALOR: Integer; cdecl;
    {class} function _GetERRO_CAMPOS_OVERFLOW: Integer; cdecl;
    {class} function _GetERRO_CLAIM_UL: Integer; cdecl;
    {class} function _GetERRO_CONEXAO_BLUETOOTH: Integer; cdecl;
    {class} function _GetERRO_CORTAR_ZERO: Integer; cdecl;
    {class} function _GetERRO_DESCONHECIDO: Integer; cdecl;
    {class} function _GetERRO_DE_ABERTURA_PORTA_USB: Integer; cdecl;
    {class} function _GetERRO_ENVIA_IMAGEM_ARQUIVO: Integer; cdecl;
    {class} function _GetERRO_ENVIA_IMAGEM_FORMATO: Integer; cdecl;
    {class} function _GetERRO_ENVIA_IMAGEM_MODULO: Integer; cdecl;
    {class} function _GetERRO_ENVIA_IMAGEM_NOME_CARACTERE: Integer; cdecl;
    {class} function _GetERRO_ENVIA_IMAGEM_NOME_TAMANHO: Integer; cdecl;
    {class} function _GetERRO_ESCRITA: Integer; cdecl;
    {class} function _GetERRO_ESCRITA_PORTA: Integer; cdecl;
    {class} function _GetERRO_EXCLUI_IMAGEM_MODULO: Integer; cdecl;
    {class} function _GetERRO_EXCLUI_IMAGEM_NOME_CARACTERE: Integer; cdecl;
    {class} function _GetERRO_EXCLUI_IMAGEM_NOME_TAMANHO: Integer; cdecl;
    {class} function _GetERRO_FECHAMENTO_NAO_AUTORIZADO: Integer; cdecl;
    {class} function _GetERRO_FECHAMENTO_PORTA: Integer; cdecl;
    {class} function _GetERRO_FUNCAO_NAO_CHAMADA_PELO_SERVICO: Integer; cdecl;
    {class} function _GetERRO_FUNCAO_NAO_DISPONIVEL_VIA_SERVICO: Integer; cdecl;
    {class} function _GetERRO_FUNCAO_NAO_SUPORTADA: Integer; cdecl;
    {class} function _GetERRO_ID_INVALIDO: Integer; cdecl;
    {class} function _GetERRO_LEITURA_PORTA: Integer; cdecl;
    {class} function _GetERRO_LENGTH: Integer; cdecl;
    {class} function _GetERRO_LIMPAR: Integer; cdecl;
    {class} function _GetERRO_LIMPA_MODULO_MODULO: Integer; cdecl;
    {class} function _GetERRO_LOGIC_IMG_MODE: Integer; cdecl;
    {class} function _GetERRO_MEDIDA: Integer; cdecl;
    {class} function _GetERRO_MEMORY_STATUS_TIPO_DADOS: Integer; cdecl;
    {class} function _GetERRO_MIRROR: Integer; cdecl;
    {class} function _GetERRO_MODO_CONTINUO: Integer; cdecl;
    {class} function _GetERRO_NENHUM_BYTE_ENVIADO: Integer; cdecl;
    {class} function _GetERRO_NOT_ACTIVITY: Integer; cdecl;
    {class} function _GetERRO_OFFSET_COLUNA: Integer; cdecl;
    {class} function _GetERRO_OFFSET_LINHA: Integer; cdecl;
    {class} function _GetERRO_PDF_DESCONHECIDO: Integer; cdecl;
    {class} function _GetERRO_PRINT_ST_POS: Integer; cdecl;
    {class} function _GetERRO_QTDE: Integer; cdecl;
    {class} function _GetERRO_SENSOR: Integer; cdecl;
    {class} function _GetERRO_SERIAL_DESCONHECIDO: Integer; cdecl;
    {class} function _GetERRO_SERVICO_NAO_INICIADO: Integer; cdecl;
    {class} function _GetERRO_SYMBOL: Integer; cdecl;
    {class} function _GetERRO_TAM_PIXEL: Integer; cdecl;
    {class} function _GetERRO_TIPO_TRANSFERENCIA: Integer; cdecl;
    {class} function _GetERRO_VEL_IMPRESSAO: Integer; cdecl;
    {class} function _GetERRO_XSD: Integer; cdecl;
    {class} function _GetESTE_JSON_NAO_E_UM_OBJETO: Integer; cdecl;
    {class} function _GetGRUPO_INVALIDO: Integer; cdecl;
    {class} function _GetGTIN_INVALIDO: Integer; cdecl;
    {class} function _GetHEIGHT_INVALIDO: Integer; cdecl;
    {class} function _GetIDENTIFICADOR_CAMPO_INVALIDO: Integer; cdecl;
    {class} function _GetIE_INVALIDO: Integer; cdecl;
    {class} function _GetIMAGEM_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetIMAGEM_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetIMAGEM_NOME_CARACTERE_INVALIDO: Integer; cdecl;
    {class} function _GetIMAGEM_NOME_TAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetIM_INVALIDO: Integer; cdecl;
    {class} function _GetINDICADOR_INCETIVO_FISCAL_ISSQN_INVALIDO: Integer; cdecl;
    {class} function _GetINDRATISSQN_INVALIDO: Integer; cdecl;
    {class} function _GetINFORMACOES_ADICIONAIS_PRODUTO_INVALIDA: Integer; cdecl;
    {class} function _GetITEM_LISTA_SERVICO_INVALIDO: Integer; cdecl;
    {class} function _GetKEY_INVALIDO: Integer; cdecl;
    {class} function _GetLINHA_ALTURA_INVALIDA: Integer; cdecl;
    {class} function _GetLINHA_COMPRIMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetLINHA_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetLINHA_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetLOGRADOURO_INVALIDO: Integer; cdecl;
    {class} function _GetMAC_ADDRESS_INVALIDO: Integer; cdecl;
    {class} function _GetMAXICODE_CLASS_OF_SERVICE_INVALIDA: Integer; cdecl;
    {class} function _GetMAXICODE_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetMAXICODE_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetMAXICODE_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetMAXICODE_COUNTRY_INVALIDO: Integer; cdecl;
    {class} function _GetMAXICODE_PRIMARY_ZIP_INVALIDO: Integer; cdecl;
    {class} function _GetMAXICODE_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetMAXICODE_SECONDARY_ZIP_INVALIDO: Integer; cdecl;
    {class} function _GetMODELO_INVALIDO: Integer; cdecl;
    {class} function _GetMODULO_FUNCAO_NAO_ENCONTRADO: Integer; cdecl;
    {class} function _GetMUNICIPIO_INVALIDO: Integer; cdecl;
    {class} function _GetNAO_FOI_POSSIVEL_INICIAR_O_SERVICO: Integer; cdecl;
    {class} function _GetNATUREZA_OPERACAO_INVALIDA: Integer; cdecl;
    {class} function _GetNCM_INVALIDO: Integer; cdecl;
    {class} function _GetNENHUM_DADO_RETORNADO: Integer; cdecl;
    {class} function _GetNIVEL_DE_CORRECAO_INVALIDO: Integer; cdecl;
    {class} function _GetNOME_DESTINARIO_INVALIDO: Integer; cdecl;
    {class} function _GetNUMBER_COLUMNS_INVALIDO: Integer; cdecl;
    {class} function _GetNUMBER_ROWS_INVALIDO: Integer; cdecl;
    {class} function _GetNUMERO_CAIXA_INVALIDO: Integer; cdecl;
    {class} function _GetNUMERO_INVALIDO: Integer; cdecl;
    {class} function _GetNUMERO_ITEM_INVALIDO: Integer; cdecl;
    {class} function _GetOPERACAO_INVALIDA: Integer; cdecl;
    {class} function _GetOPTIONS_INVALIDO: Integer; cdecl;
    {class} function _GetORIGEM_MERCADORIA_INVALIDA: Integer; cdecl;
    {class} function _GetPARAMETRO_CONF_INVALIDO: Integer; cdecl;
    {class} function _GetPARAMETRO_NAO_ENCONTRADO: Integer; cdecl;
    {class} function _GetPARAMETRO_TIPO_STATUS_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_COLUMN_NUMBER_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetPDF417_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetPDF417_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_MULTIPLICADOR_VERTICAL_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetPDF417_ROW_NUMBER_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_SECURITY_LEVEL_INVALIDO: Integer; cdecl;
    {class} function _GetPDF417_TIPO_INVALIDO: Integer; cdecl;
    {class} function _GetPDF_417_ASPECT_RATIO_INVALIDO: Integer; cdecl;
    {class} function _GetPERCENTUAL_ALIQUOTA_COFINS_INVALIDA: Integer; cdecl;
    {class} function _GetPERCENTUAL_ALIQUOTA_PIS_INVALIDA: Integer; cdecl;
    {class} function _GetPERMISSAO_NEGADA: Integer; cdecl;
    {class} function _GetPINO_INVALIDO: Integer; cdecl;
    {class} function _GetPORTA_FECHADA: Integer; cdecl;
    {class} function _GetPORTA_TCP_INVALIDA: Integer; cdecl;
    {class} function _GetPOSICAO_INVALIDA: Integer; cdecl;
    {class} function _GetPOS_IMP_HORIZONTAL_INVALIDA: Integer; cdecl;
    {class} function _GetPRINTTEXT_ATRIBUTO_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEAUTO_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEAUTO_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetQRCODEAUTO_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetQRCODEAUTO_MULTIPLICADOR_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEAUTO_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_CODIGO_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_INPUT_CONFIG_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_INPUT_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_MULTIPLICADOR_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_NUM_CHARS_8BIT_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_NUM_MASCARA_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_NUM_MODELO_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_NVL_COR_ERRO_INVALIDO: Integer; cdecl;
    {class} function _GetQRCODEMANUAL_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_COMERCIAL_INVALIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_ELEMENTO_EXCEDIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_FORA_INTERVALO: Integer; cdecl;
    {class} function _GetQUANTIDADE_INVALIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_MEIO_PAGAMENTO_EXCEDIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_VENDIDA_COFINS_INVALIDA: Integer; cdecl;
    {class} function _GetQUANTIDADE_VENDIDA_PIS_INVALIDA: Integer; cdecl;
    {class} function _GetRECONEXOES_ESGOTADAS: Integer; cdecl;
    {class} function _GetREGRA_CALCULO_INVALIDA: Integer; cdecl;
    {class} function _GetSCALA_INVALIDA: Integer; cdecl;
    {class} function _GetSERVICO_OCUPADO: Integer; cdecl;
    {class} function _GetSIGNAC_INVALIDA: Integer; cdecl;
    {class} function _GetSTATEPRINTER_QSESEMPAPEL: Integer; cdecl;
    {class} function _GetSTATEPRINTER_QSESEMPAPELETAMPA: Integer; cdecl;
    {class} function _GetSTATEPRINTER_SEMPAPEL: Integer; cdecl;
    {class} function _GetSTATEPRINTER_SUCESSO: Integer; cdecl;
    {class} function _GetSTATEPRINTER_TAMPAABERTA: Integer; cdecl;
    {class} function _GetSTATEPRINTER_TAMPAEPAPEL: Integer; cdecl;
    {class} function _GetSTATUS_NAO_SUPORTADO: Integer; cdecl;
    {class} function _GetSTILO_INVALIDO: Integer; cdecl;
    {class} function _GetSUCESSO: Integer; cdecl;
    {class} function _GetTAMANHO_INFORMACOES_COMPLEMENTARES_INVALIDO: Integer; cdecl;
    {class} function _GetTAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetTAMANHO_QR_INVALIDO: Integer; cdecl;
    {class} function _GetTEMPO_FORA_LIMITE: Integer; cdecl;
    {class} function _GetTEMPO_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOASD_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOASD_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOASD_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOASD_MULTIPLICADOR_VERTICAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOASD_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOASD_TAMANHO_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOASD_TEXTO_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_MULTIPLICADOR_VERTICAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_SYMBOL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTOCOURIER_TEXTO_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTO_COORDENADA_X_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTO_COORDENADA_Y_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTO_FONTE_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTO_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTO_MULTIPLICADOR_VERTICAL_INVALIDO: Integer; cdecl;
    {class} function _GetTEXTO_ROTACAO_INVALIDA: Integer; cdecl;
    {class} function _GetTEXTO_TEXTO_INVALIDO: Integer; cdecl;
    {class} function _GetTHREAD_EXECUTION_EXCEPTION: Integer; cdecl;
    {class} function _GetTHREAD_INTERRUPTED_EXCEPTION: Integer; cdecl;
    {class} function _GetTIPO_EMISSAO_INDEFINIDA: Integer; cdecl;
    {class} function _GetTIPO_INVALIDO: Integer; cdecl;
    {class} function _GetTIPO_PARAMETRO_INVALIDO: Integer; cdecl;
    {class} function _GetUF_INVALIDO: Integer; cdecl;
    {class} function _GetUNIDADE_COMERCIAL_INVALIDA: Integer; cdecl;
    {class} function _GetVALOR_ACRESCIMO_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_ACRESCIMO_SUBTOTAL_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_ALIQUOTA_COFINS_INVALIDA: Integer; cdecl;
    {class} function _GetVALOR_ALIQUOTA_PIS_INVALIDA: Integer; cdecl;
    {class} function _GetVALOR_DEDUCOES_ISSQN_INVALIDA: Integer; cdecl;
    {class} function _GetVALOR_DESCONTO_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_DESCONTO_SUBTOTAL_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_MEIO_PAGAMENTO_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_UNITARIO_INVALIDO: Integer; cdecl;
    {class} function _GetVALOR_VCFELEI12741_INVALIDO: Integer; cdecl;
    {class} function _GetVERSAO_DADOS_ENT_INVALIDO: Integer; cdecl;
    {class} function _GetVERSAO_XMLNFCE_INDEFINIDA: Integer; cdecl;
    {class} function _GetVERSAO_XMLNFCE_NAO_SUPORTADA: Integer; cdecl;
    {class} function _GetVITEM12741_INVALIDO: Integer; cdecl;
    {class} function _GetWIDTH_INVALIDO: Integer; cdecl;
    {class} function _GetXSD_NAO_ENCONTRADO: Integer; cdecl;
    {class} function _Get__ERRO_AO_CARREGAR_DLL_IMPRESSORA: JString; cdecl;
    {class} function _Get__ERRO_AO_CARREGAR_DLL_SAT: JString; cdecl;
    {class} function _Get__ERRO_AO_VALIDAR_DLL_SAL: JString; cdecl;
    {class} function _Get__ERRO_CANCELAR_VENDA_SAT: JString; cdecl;
    {class} function _Get__SUCESSO: JString; cdecl;
    {class} function init: JCodigoErro; cdecl;//Deprecated
    {class} property ALIQUOTA_IMPOSTO_INVALIDA: Integer read _GetALIQUOTA_IMPOSTO_INVALIDA;
    {class} property ALIQUOTA_ISSQN_INVALIDA: Integer read _GetALIQUOTA_ISSQN_INVALIDA;
    {class} property ARQUIVO_NAO_ENCONTRADO: Integer read _GetARQUIVO_NAO_ENCONTRADO;
    {class} property ARQUIVO_NAO_EXISTE: Integer read _GetARQUIVO_NAO_EXISTE;
    {class} property ARQUIVO_NAO_PODE_SER_ABERTO: Integer read _GetARQUIVO_NAO_PODE_SER_ABERTO;
    {class} property ASSINATURA_QRCODE_INVALIDA: Integer read _GetASSINATURA_QRCODE_INVALIDA;
    {class} property BAIRRO_INVALIDO: Integer read _GetBAIRRO_INVALIDO;
    {class} property BAL_BALANCA_EM_USO: Integer read _GetBAL_BALANCA_EM_USO;
    {class} property BAL_BALANCA_INVALIDA: Integer read _GetBAL_BALANCA_INVALIDA;
    {class} property BAL_BAUDRATE_INVALIDO: Integer read _GetBAL_BAUDRATE_INVALIDO;
    {class} property BAL_BAUDRATE_NAO_SUPORTADO: Integer read _GetBAL_BAUDRATE_NAO_SUPORTADO;
    {class} property BAL_COMANDO_NAO_SUPORTADO_PELA_BALANCA: Integer read _GetBAL_COMANDO_NAO_SUPORTADO_PELA_BALANCA;
    {class} property BAL_COMANDO_NAO_SUPORTADO_PELO_PROTOCOLO: Integer read _GetBAL_COMANDO_NAO_SUPORTADO_PELO_PROTOCOLO;
    {class} property BAL_COMBINACAO_DE_PARAMETROS_INVALIDA: Integer read _GetBAL_COMBINACAO_DE_PARAMETROS_INVALIDA;
    {class} property BAL_CONEXAO_ATIVA: Integer read _GetBAL_CONEXAO_ATIVA;
    {class} property BAL_CONFIGS_SERIAIS_NAO_SUPORTADAS_PELO_PROTOCOLO: Integer read _GetBAL_CONFIGS_SERIAIS_NAO_SUPORTADAS_PELO_PROTOCOLO;
    {class} property BAL_FALHA_AO_ENVIAR_PRECO: Integer read _GetBAL_FALHA_AO_ENVIAR_PRECO;
    {class} property BAL_FALHA_NA_LEITURA_DO_PESO: Integer read _GetBAL_FALHA_NA_LEITURA_DO_PESO;
    {class} property BAL_LENGTH_INVALIDO: Integer read _GetBAL_LENGTH_INVALIDO;
    {class} property BAL_LENGTH_NAO_SUPORTADO: Integer read _GetBAL_LENGTH_NAO_SUPORTADO;
    {class} property BAL_NENHUMA_BALANCA_EM_USO: Integer read _GetBAL_NENHUMA_BALANCA_EM_USO;
    {class} property BAL_NENHUM_PROTOCOLO_EM_USO: Integer read _GetBAL_NENHUM_PROTOCOLO_EM_USO;
    {class} property BAL_PARITY_INVALIDO: Integer read _GetBAL_PARITY_INVALIDO;
    {class} property BAL_PARITY_NAO_SUPORTADO: Integer read _GetBAL_PARITY_NAO_SUPORTADO;
    {class} property BAL_PRECO_INVALIDO: Integer read _GetBAL_PRECO_INVALIDO;
    {class} property BAL_PROTOCOLO_EM_USO: Integer read _GetBAL_PROTOCOLO_EM_USO;
    {class} property BAL_PROTOCOLO_INVALIDO: Integer read _GetBAL_PROTOCOLO_INVALIDO;
    {class} property BAL_PROTOCOLO_NAO_SUPORTADO: Integer read _GetBAL_PROTOCOLO_NAO_SUPORTADO;
    {class} property BAL_PROTOCOLO_NAO_SUPORTADO_PELAS_CONFIGS_SERIAIS: Integer read _GetBAL_PROTOCOLO_NAO_SUPORTADO_PELAS_CONFIGS_SERIAIS;
    {class} property BAL_QTD_LEITURAS_INVALIDA: Integer read _GetBAL_QTD_LEITURAS_INVALIDA;
    {class} property BAL_STOPBITS_INVALIDO: Integer read _GetBAL_STOPBITS_INVALIDO;
    {class} property BAL_STOPBITS_NAO_SUPORTADO: Integer read _GetBAL_STOPBITS_NAO_SUPORTADO;
    {class} property BARCODE1D_ALTURA_INVALIDA: Integer read _GetBARCODE1D_ALTURA_INVALIDA;
    {class} property BARCODE1D_CARACTERE_INVALIDO: Integer read _GetBARCODE1D_CARACTERE_INVALIDO;
    {class} property BARCODE1D_CODIGO_INVALIDO: Integer read _GetBARCODE1D_CODIGO_INVALIDO;
    {class} property BARCODE1D_COORDENADA_X_INVALIDA: Integer read _GetBARCODE1D_COORDENADA_X_INVALIDA;
    {class} property BARCODE1D_COORDENADA_Y_INVALIDA: Integer read _GetBARCODE1D_COORDENADA_Y_INVALIDA;
    {class} property BARCODE1D_LARGURA_BARRAS_ESTREITAS_INVALIDA: Integer read _GetBARCODE1D_LARGURA_BARRAS_ESTREITAS_INVALIDA;
    {class} property BARCODE1D_LARGURA_BARRAS_LARGAS_INVALIDA: Integer read _GetBARCODE1D_LARGURA_BARRAS_LARGAS_INVALIDA;
    {class} property BARCODE1D_ROTACAO_INVALIDA: Integer read _GetBARCODE1D_ROTACAO_INVALIDA;
    {class} property BARCODE1D_TAMANHO_INVALIDO: Integer read _GetBARCODE1D_TAMANHO_INVALIDO;
    {class} property BARCODE1D_TIPO_INVALIDO: Integer read _GetBARCODE1D_TIPO_INVALIDO;
    {class} property BASE_CALCULO_INVALIDA: Integer read _GetBASE_CALCULO_INVALIDA;
    {class} property BAUDRATE_INVALIDO: Integer read _GetBAUDRATE_INVALIDO;
    {class} property BLUETOOTH_DESATIVADO: Integer read _GetBLUETOOTH_DESATIVADO;
    {class} property BOX_ALTURA_INVALIDA: Integer read _GetBOX_ALTURA_INVALIDA;
    {class} property BOX_COMPRIMENTO_INVALIDO: Integer read _GetBOX_COMPRIMENTO_INVALIDO;
    {class} property BOX_COORDENADA_X_INVALIDA: Integer read _GetBOX_COORDENADA_X_INVALIDA;
    {class} property BOX_COORDENADA_Y_INVALIDA: Integer read _GetBOX_COORDENADA_Y_INVALIDA;
    {class} property BOX_GROSSURA_BORDAS_HORIZONTAIS_INVALIDA: Integer read _GetBOX_GROSSURA_BORDAS_HORIZONTAIS_INVALIDA;
    {class} property BOX_GROSSURA_BORDAS_VERTICAIS_INVALIDA: Integer read _GetBOX_GROSSURA_BORDAS_VERTICAIS_INVALIDA;
    {class} property BR_ASS_QRCODE_INVALIDO: Integer read _GetBR_ASS_QRCODE_INVALIDO;
    {class} property BR_ASS_QRCODE_NULL: Integer read _GetBR_ASS_QRCODE_NULL;
    {class} property BR_CSC_INVALIDO: Integer read _GetBR_CSC_INVALIDO;
    {class} property BR_CSC_NULL: Integer read _GetBR_CSC_NULL;
    {class} property BR_DATA_HORA_INVALIDA: Integer read _GetBR_DATA_HORA_INVALIDA;
    {class} property BR_DATA_HORA_NULL: Integer read _GetBR_DATA_HORA_NULL;
    {class} property BR_ERRO_ABERTURA_ARQUIVO: Integer read _GetBR_ERRO_ABERTURA_ARQUIVO;
    {class} property BR_ERRO_CONECTAR_STATUS: Integer read _GetBR_ERRO_CONECTAR_STATUS;
    {class} property BR_ERRO_CONECTAR_TRANSACAO: Integer read _GetBR_ERRO_CONECTAR_TRANSACAO;
    {class} property BR_ERRO_CONFIRMAR_TRANSACAO: Integer read _GetBR_ERRO_CONFIRMAR_TRANSACAO;
    {class} property BR_ERRO_ENVIO_TRANSACAO: Integer read _GetBR_ERRO_ENVIO_TRANSACAO;
    {class} property BR_ERRO_ESCREVER_ARQUIVO: Integer read _GetBR_ERRO_ESCREVER_ARQUIVO;
    {class} property BR_ERRO_LEITURA_STATUS: Integer read _GetBR_ERRO_LEITURA_STATUS;
    {class} property BR_ERRO_LEITURA_TRANSACAO: Integer read _GetBR_ERRO_LEITURA_TRANSACAO;
    {class} property BR_ID_TRANSACAO_INVALIDO: Integer read _GetBR_ID_TRANSACAO_INVALIDO;
    {class} property BR_IP_TERMINAL_INVALIDO: Integer read _GetBR_IP_TERMINAL_INVALIDO;
    {class} property BR_IP_TERMINAL_NAO_INFORMADO: Integer read _GetBR_IP_TERMINAL_NAO_INFORMADO;
    {class} property BR_MESMA_CONFIG_SENHA: Integer read _GetBR_MESMA_CONFIG_SENHA;
    {class} property BR_NSU_INVALIDO: Integer read _GetBR_NSU_INVALIDO;
    {class} property BR_NSU_NULL: Integer read _GetBR_NSU_NULL;
    {class} property BR_NUM_PARCELAS_INVALIDO: Integer read _GetBR_NUM_PARCELAS_INVALIDO;
    {class} property BR_OPERACAO_INVALIDA: Integer read _GetBR_OPERACAO_INVALIDA;
    {class} property BR_OUTPUT_NULL: Integer read _GetBR_OUTPUT_NULL;
    {class} property BR_PDV_INVALIDO: Integer read _GetBR_PDV_INVALIDO;
    {class} property BR_PDV_NULL: Integer read _GetBR_PDV_NULL;
    {class} property BR_PORTAS_IGUAIS: Integer read _GetBR_PORTAS_IGUAIS;
    {class} property BR_PORTA_STATUS_INVALIDA: Integer read _GetBR_PORTA_STATUS_INVALIDA;
    {class} property BR_PORTA_TRANSACAO_INVALIDA: Integer read _GetBR_PORTA_TRANSACAO_INVALIDA;
    {class} property BR_SENHA_NAO_INFORMADA: Integer read _GetBR_SENHA_NAO_INFORMADA;
    {class} property BR_SENHA_NULL: Integer read _GetBR_SENHA_NULL;
    {class} property BR_STATUS_EM_ANDAMENTO: Integer read _GetBR_STATUS_EM_ANDAMENTO;
    {class} property BR_STATUS_NAO_RETORNADO: Integer read _GetBR_STATUS_NAO_RETORNADO;
    {class} property BR_TELA_BLOQUEADA: Integer read _GetBR_TELA_BLOQUEADA;
    {class} property BR_TIMEOUT_INVALIDO: Integer read _GetBR_TIMEOUT_INVALIDO;
    {class} property BR_TIPO_CARTAO_INVALIDO: Integer read _GetBR_TIPO_CARTAO_INVALIDO;
    {class} property BR_TIPO_CUPOM_INVALIDO: Integer read _GetBR_TIPO_CUPOM_INVALIDO;
    {class} property BR_TIPO_FINANCIAMENTO_INVALIDO: Integer read _GetBR_TIPO_FINANCIAMENTO_INVALIDO;
    {class} property BR_TRANSACAO_EM_ANDAMENTO: Integer read _GetBR_TRANSACAO_EM_ANDAMENTO;
    {class} property BR_TRANSACAO_NAO_RETORNADA: Integer read _GetBR_TRANSACAO_NAO_RETORNADA;
    {class} property BR_VALOR_TOTAL_INVALIDO: Integer read _GetBR_VALOR_TOTAL_INVALIDO;
    {class} property BR_VALOR_TOTAL_NAN: Integer read _GetBR_VALOR_TOTAL_NAN;
    {class} property BR_VALOR_TOTAL_NULL: Integer read _GetBR_VALOR_TOTAL_NULL;
    {class} property BR_XML_INVALIDO: Integer read _GetBR_XML_INVALIDO;
    {class} property BR_XML_NULL: Integer read _GetBR_XML_NULL;
    {class} property CB_ALTURA_INVALIDA: Integer read _GetCB_ALTURA_INVALIDA;
    {class} property CB_AREA_DE_IMPRESSAO_EXCEDIDA: Integer read _GetCB_AREA_DE_IMPRESSAO_EXCEDIDA;
    {class} property CB_DADOS_INVALIDOS: Integer read _GetCB_DADOS_INVALIDOS;
    {class} property CB_HRI_INVALIDO: Integer read _GetCB_HRI_INVALIDO;
    {class} property CB_LARGURA_INVALIDA: Integer read _GetCB_LARGURA_INVALIDA;
    {class} property CB_TIPO_INVALIDO: Integer read _GetCB_TIPO_INVALIDO;
    {class} property CEST_INVALIDO: Integer read _GetCEST_INVALIDO;
    {class} property CFOP_INVALIDO: Integer read _GetCFOP_INVALIDO;
    {class} property CHAMADA_NAO_PERMITIDA: Integer read _GetCHAMADA_NAO_PERMITIDA;
    {class} property CHAVE_CANCELAMENTO_INVALIDA: Integer read _GetCHAVE_CANCELAMENTO_INVALIDA;
    {class} property CNPJ_INVALIDO: Integer read _GetCNPJ_INVALIDO;
    {class} property CODIGO_MEIO_PAGAMENTO_INVALIDO: Integer read _GetCODIGO_MEIO_PAGAMENTO_INVALIDO;
    {class} property CODIGO_MUNICIPIO_FATO_GERADOR_INVALIDO: Integer read _GetCODIGO_MUNICIPIO_FATO_GERADOR_INVALIDO;
    {class} property CODIGO_PRODUTO_INVALIDO: Integer read _GetCODIGO_PRODUTO_INVALIDO;
    {class} property CODIGO_TRIBUTACAO_ISSQN_INVALIDO: Integer read _GetCODIGO_TRIBUTACAO_ISSQN_INVALIDO;
    {class} property COMANDO_INVALIDO: Integer read _GetCOMANDO_INVALIDO;
    {class} property COMPLEMENTO_INVALIDO: Integer read _GetCOMPLEMENTO_INVALIDO;
    {class} property CONEXAO_ATIVA: Integer read _GetCONEXAO_ATIVA;
    {class} property CONEXAO_ATIVA_OUTRO: Integer read _GetCONEXAO_ATIVA_OUTRO;
    {class} property CONEXAO_NEGADA: Integer read _GetCONEXAO_NEGADA;
    {class} property CONTEUDO_CAMPO_INVALIDO: Integer read _GetCONTEUDO_CAMPO_INVALIDO;
    {class} property CPF_INVALIDO: Integer read _GetCPF_INVALIDO;
    {class} property CREDENCIADORA_CARTAO_INVALIDO: Integer read _GetCREDENCIADORA_CARTAO_INVALIDO;
    {class} property CREGTRIBISSQN_INVALIDO: Integer read _GetCREGTRIBISSQN_INVALIDO;
    {class} property CSOSN_INVALIDO: Integer read _GetCSOSN_INVALIDO;
    {class} property CST_INVALIDO: Integer read _GetCST_INVALIDO;
    {class} property DADOS_PDF_INVALIDOS: Integer read _GetDADOS_PDF_INVALIDOS;
    {class} property DADOS_QR_INVALIDOS: Integer read _GetDADOS_QR_INVALIDOS;
    {class} property DATABAREXPANDED_ALPHANUMERIC_CARACTERE_INVALIDO: Integer read _GetDATABAREXPANDED_ALPHANUMERIC_CARACTERE_INVALIDO;
    {class} property DATABAREXPANDED_ALPHANUMERIC_TAMANHO_INVALIDO: Integer read _GetDATABAREXPANDED_ALPHANUMERIC_TAMANHO_INVALIDO;
    {class} property DATABAREXPANDED_ALTURA_INVALIDA: Integer read _GetDATABAREXPANDED_ALTURA_INVALIDA;
    {class} property DATABAREXPANDED_BAR_RATIO_INVALIDO: Integer read _GetDATABAREXPANDED_BAR_RATIO_INVALIDO;
    {class} property DATABAREXPANDED_CODIGO_INVALIDO: Integer read _GetDATABAREXPANDED_CODIGO_INVALIDO;
    {class} property DATABAREXPANDED_COORDENADA_X_INVALIDA: Integer read _GetDATABAREXPANDED_COORDENADA_X_INVALIDA;
    {class} property DATABAREXPANDED_COORDENADA_Y_INVALIDA: Integer read _GetDATABAREXPANDED_COORDENADA_Y_INVALIDA;
    {class} property DATABAREXPANDED_PIXEL_MULTIPLIER_INVALIDO: Integer read _GetDATABAREXPANDED_PIXEL_MULTIPLIER_INVALIDO;
    {class} property DATABAREXPANDED_ROTACAO_INVALIDA: Integer read _GetDATABAREXPANDED_ROTACAO_INVALIDA;
    {class} property DATABAREXPANDED_SEGMENTS_PER_ROW_INVALIDO: Integer read _GetDATABAREXPANDED_SEGMENTS_PER_ROW_INVALIDO;
    {class} property DATABAR_ALTURA_INVALIDA: Integer read _GetDATABAR_ALTURA_INVALIDA;
    {class} property DATABAR_BAR_RATIO_INVALIDO: Integer read _GetDATABAR_BAR_RATIO_INVALIDO;
    {class} property DATABAR_CODIGO_INVALIDO: Integer read _GetDATABAR_CODIGO_INVALIDO;
    {class} property DATABAR_COORDENADA_X_INVALIDA: Integer read _GetDATABAR_COORDENADA_X_INVALIDA;
    {class} property DATABAR_COORDENADA_Y_INVALIDA: Integer read _GetDATABAR_COORDENADA_Y_INVALIDA;
    {class} property DATABAR_NUMERIC_LINEAR_DATA_CARACTERE_INVALIDO: Integer read _GetDATABAR_NUMERIC_LINEAR_DATA_CARACTERE_INVALIDO;
    {class} property DATABAR_NUMERIC_LINEAR_DATA_TAMANHO_INVALIDO: Integer read _GetDATABAR_NUMERIC_LINEAR_DATA_TAMANHO_INVALIDO;
    {class} property DATABAR_PIXEL_MULTIPLIER_INVALIDO: Integer read _GetDATABAR_PIXEL_MULTIPLIER_INVALIDO;
    {class} property DATABAR_ROTACAO_INVALIDA: Integer read _GetDATABAR_ROTACAO_INVALIDA;
    {class} property DATABAR_TIPO_INVALIDO: Integer read _GetDATABAR_TIPO_INVALIDO;
    {class} property DATAMATRIX_CODIGO_INVALIDO: Integer read _GetDATAMATRIX_CODIGO_INVALIDO;
    {class} property DATAMATRIX_COLUMNS_INVALIDAS: Integer read _GetDATAMATRIX_COLUMNS_INVALIDAS;
    {class} property DATAMATRIX_COORDENADA_X_INVALIDA: Integer read _GetDATAMATRIX_COORDENADA_X_INVALIDA;
    {class} property DATAMATRIX_COORDENADA_Y_INVALIDA: Integer read _GetDATAMATRIX_COORDENADA_Y_INVALIDA;
    {class} property DATAMATRIX_MULTIPLICADOR_INVALIDO: Integer read _GetDATAMATRIX_MULTIPLICADOR_INVALIDO;
    {class} property DATAMATRIX_ROTACAO_INVALIDA: Integer read _GetDATAMATRIX_ROTACAO_INVALIDA;
    {class} property DATAMATRIX_ROWS_INVALIDAS: Integer read _GetDATAMATRIX_ROWS_INVALIDAS;
    {class} property DESCRICAO_PRODUTO_INVALIDA: Integer read _GetDESCRICAO_PRODUTO_INVALIDA;
    {class} property DIRECAO_INVALIDA: Integer read _GetDIRECAO_INVALIDA;
    {class} property DISPOSITIVO_NAO_ENCONTRADO: Integer read _GetDISPOSITIVO_NAO_ENCONTRADO;
    {class} property DISPOSITIVO_NAO_EXISTE: Integer read _GetDISPOSITIVO_NAO_EXISTE;
    {class} property DISPOSITIVO_NAO_PAREADO: Integer read _GetDISPOSITIVO_NAO_PAREADO;
    {class} property DISPOSITIVO_NAO_SUPORTA_BT: Integer read _GetDISPOSITIVO_NAO_SUPORTA_BT;
    {class} property ERROR_CORRECTION_LEVEL_INVALIDO: Integer read _GetERROR_CORRECTION_LEVEL_INVALIDO;
    {class} property ERRO_ABERTURA_NAO_AUTORIZADA: Integer read _GetERRO_ABERTURA_NAO_AUTORIZADA;
    {class} property ERRO_ABERTURA_PORTA: Integer read _GetERRO_ABERTURA_PORTA;
    {class} property ERRO_ACTIVITY_NAO_DEFINIDA: Integer read _GetERRO_ACTIVITY_NAO_DEFINIDA;
    {class} property ERRO_ALTURA_GAP: Integer read _GetERRO_ALTURA_GAP;
    {class} property ERRO_AO_CARREGAR_BIBLIOTECA_DA_ETIQUETA: Integer read _GetERRO_AO_CARREGAR_BIBLIOTECA_DA_ETIQUETA;
    {class} property ERRO_AO_CARREGAR_BIBLIOTECA_DA_IMPRESSORA: Integer read _GetERRO_AO_CARREGAR_BIBLIOTECA_DA_IMPRESSORA;
    {class} property ERRO_AO_CARREGAR_BIBLIOTECA_DO_E1SAT: Integer read _GetERRO_AO_CARREGAR_BIBLIOTECA_DO_E1SAT;
    {class} property ERRO_AO_CARREGAR_BIBLIOTECA_DO_SAT: Integer read _GetERRO_AO_CARREGAR_BIBLIOTECA_DO_SAT;
    {class} property ERRO_BACKFEED: Integer read _GetERRO_BACKFEED;
    {class} property ERRO_BAUDRATE_BAUDRATE: Integer read _GetERRO_BAUDRATE_BAUDRATE;
    {class} property ERRO_BAUDRATE_DATA_LENGTH: Integer read _GetERRO_BAUDRATE_DATA_LENGTH;
    {class} property ERRO_BAUDRATE_PARITY: Integer read _GetERRO_BAUDRATE_PARITY;
    {class} property ERRO_BAUDRATE_STOP_BIT: Integer read _GetERRO_BAUDRATE_STOP_BIT;
    {class} property ERRO_CALOR: Integer read _GetERRO_CALOR;
    {class} property ERRO_CAMPOS_OVERFLOW: Integer read _GetERRO_CAMPOS_OVERFLOW;
    {class} property ERRO_CLAIM_UL: Integer read _GetERRO_CLAIM_UL;
    {class} property ERRO_CONEXAO_BLUETOOTH: Integer read _GetERRO_CONEXAO_BLUETOOTH;
    {class} property ERRO_CORTAR_ZERO: Integer read _GetERRO_CORTAR_ZERO;
    {class} property ERRO_DESCONHECIDO: Integer read _GetERRO_DESCONHECIDO;
    {class} property ERRO_DE_ABERTURA_PORTA_USB: Integer read _GetERRO_DE_ABERTURA_PORTA_USB;
    {class} property ERRO_ENVIA_IMAGEM_ARQUIVO: Integer read _GetERRO_ENVIA_IMAGEM_ARQUIVO;
    {class} property ERRO_ENVIA_IMAGEM_FORMATO: Integer read _GetERRO_ENVIA_IMAGEM_FORMATO;
    {class} property ERRO_ENVIA_IMAGEM_MODULO: Integer read _GetERRO_ENVIA_IMAGEM_MODULO;
    {class} property ERRO_ENVIA_IMAGEM_NOME_CARACTERE: Integer read _GetERRO_ENVIA_IMAGEM_NOME_CARACTERE;
    {class} property ERRO_ENVIA_IMAGEM_NOME_TAMANHO: Integer read _GetERRO_ENVIA_IMAGEM_NOME_TAMANHO;
    {class} property ERRO_ESCRITA: Integer read _GetERRO_ESCRITA;
    {class} property ERRO_ESCRITA_PORTA: Integer read _GetERRO_ESCRITA_PORTA;
    {class} property ERRO_EXCLUI_IMAGEM_MODULO: Integer read _GetERRO_EXCLUI_IMAGEM_MODULO;
    {class} property ERRO_EXCLUI_IMAGEM_NOME_CARACTERE: Integer read _GetERRO_EXCLUI_IMAGEM_NOME_CARACTERE;
    {class} property ERRO_EXCLUI_IMAGEM_NOME_TAMANHO: Integer read _GetERRO_EXCLUI_IMAGEM_NOME_TAMANHO;
    {class} property ERRO_FECHAMENTO_NAO_AUTORIZADO: Integer read _GetERRO_FECHAMENTO_NAO_AUTORIZADO;
    {class} property ERRO_FECHAMENTO_PORTA: Integer read _GetERRO_FECHAMENTO_PORTA;
    {class} property ERRO_FUNCAO_NAO_CHAMADA_PELO_SERVICO: Integer read _GetERRO_FUNCAO_NAO_CHAMADA_PELO_SERVICO;
    {class} property ERRO_FUNCAO_NAO_DISPONIVEL_VIA_SERVICO: Integer read _GetERRO_FUNCAO_NAO_DISPONIVEL_VIA_SERVICO;
    {class} property ERRO_FUNCAO_NAO_SUPORTADA: Integer read _GetERRO_FUNCAO_NAO_SUPORTADA;
    {class} property ERRO_ID_INVALIDO: Integer read _GetERRO_ID_INVALIDO;
    {class} property ERRO_LEITURA_PORTA: Integer read _GetERRO_LEITURA_PORTA;
    {class} property ERRO_LENGTH: Integer read _GetERRO_LENGTH;
    {class} property ERRO_LIMPAR: Integer read _GetERRO_LIMPAR;
    {class} property ERRO_LIMPA_MODULO_MODULO: Integer read _GetERRO_LIMPA_MODULO_MODULO;
    {class} property ERRO_LOGIC_IMG_MODE: Integer read _GetERRO_LOGIC_IMG_MODE;
    {class} property ERRO_MEDIDA: Integer read _GetERRO_MEDIDA;
    {class} property ERRO_MEMORY_STATUS_TIPO_DADOS: Integer read _GetERRO_MEMORY_STATUS_TIPO_DADOS;
    {class} property ERRO_MIRROR: Integer read _GetERRO_MIRROR;
    {class} property ERRO_MODO_CONTINUO: Integer read _GetERRO_MODO_CONTINUO;
    {class} property ERRO_NENHUM_BYTE_ENVIADO: Integer read _GetERRO_NENHUM_BYTE_ENVIADO;
    {class} property ERRO_NOT_ACTIVITY: Integer read _GetERRO_NOT_ACTIVITY;
    {class} property ERRO_OFFSET_COLUNA: Integer read _GetERRO_OFFSET_COLUNA;
    {class} property ERRO_OFFSET_LINHA: Integer read _GetERRO_OFFSET_LINHA;
    {class} property ERRO_PDF_DESCONHECIDO: Integer read _GetERRO_PDF_DESCONHECIDO;
    {class} property ERRO_PRINT_ST_POS: Integer read _GetERRO_PRINT_ST_POS;
    {class} property ERRO_QTDE: Integer read _GetERRO_QTDE;
    {class} property ERRO_SENSOR: Integer read _GetERRO_SENSOR;
    {class} property ERRO_SERIAL_DESCONHECIDO: Integer read _GetERRO_SERIAL_DESCONHECIDO;
    {class} property ERRO_SERVICO_NAO_INICIADO: Integer read _GetERRO_SERVICO_NAO_INICIADO;
    {class} property ERRO_SYMBOL: Integer read _GetERRO_SYMBOL;
    {class} property ERRO_TAM_PIXEL: Integer read _GetERRO_TAM_PIXEL;
    {class} property ERRO_TIPO_TRANSFERENCIA: Integer read _GetERRO_TIPO_TRANSFERENCIA;
    {class} property ERRO_VEL_IMPRESSAO: Integer read _GetERRO_VEL_IMPRESSAO;
    {class} property ERRO_XSD: Integer read _GetERRO_XSD;
    {class} property ESTE_JSON_NAO_E_UM_OBJETO: Integer read _GetESTE_JSON_NAO_E_UM_OBJETO;
    {class} property GRUPO_INVALIDO: Integer read _GetGRUPO_INVALIDO;
    {class} property GTIN_INVALIDO: Integer read _GetGTIN_INVALIDO;
    {class} property HEIGHT_INVALIDO: Integer read _GetHEIGHT_INVALIDO;
    {class} property IDENTIFICADOR_CAMPO_INVALIDO: Integer read _GetIDENTIFICADOR_CAMPO_INVALIDO;
    {class} property IE_INVALIDO: Integer read _GetIE_INVALIDO;
    {class} property IMAGEM_COORDENADA_X_INVALIDA: Integer read _GetIMAGEM_COORDENADA_X_INVALIDA;
    {class} property IMAGEM_COORDENADA_Y_INVALIDA: Integer read _GetIMAGEM_COORDENADA_Y_INVALIDA;
    {class} property IMAGEM_NOME_CARACTERE_INVALIDO: Integer read _GetIMAGEM_NOME_CARACTERE_INVALIDO;
    {class} property IMAGEM_NOME_TAMANHO_INVALIDO: Integer read _GetIMAGEM_NOME_TAMANHO_INVALIDO;
    {class} property IM_INVALIDO: Integer read _GetIM_INVALIDO;
    {class} property INDICADOR_INCETIVO_FISCAL_ISSQN_INVALIDO: Integer read _GetINDICADOR_INCETIVO_FISCAL_ISSQN_INVALIDO;
    {class} property INDRATISSQN_INVALIDO: Integer read _GetINDRATISSQN_INVALIDO;
    {class} property INFORMACOES_ADICIONAIS_PRODUTO_INVALIDA: Integer read _GetINFORMACOES_ADICIONAIS_PRODUTO_INVALIDA;
    {class} property ITEM_LISTA_SERVICO_INVALIDO: Integer read _GetITEM_LISTA_SERVICO_INVALIDO;
    {class} property KEY_INVALIDO: Integer read _GetKEY_INVALIDO;
    {class} property LINHA_ALTURA_INVALIDA: Integer read _GetLINHA_ALTURA_INVALIDA;
    {class} property LINHA_COMPRIMENTO_INVALIDO: Integer read _GetLINHA_COMPRIMENTO_INVALIDO;
    {class} property LINHA_COORDENADA_X_INVALIDA: Integer read _GetLINHA_COORDENADA_X_INVALIDA;
    {class} property LINHA_COORDENADA_Y_INVALIDA: Integer read _GetLINHA_COORDENADA_Y_INVALIDA;
    {class} property LOGRADOURO_INVALIDO: Integer read _GetLOGRADOURO_INVALIDO;
    {class} property MAC_ADDRESS_INVALIDO: Integer read _GetMAC_ADDRESS_INVALIDO;
    {class} property MAXICODE_CLASS_OF_SERVICE_INVALIDA: Integer read _GetMAXICODE_CLASS_OF_SERVICE_INVALIDA;
    {class} property MAXICODE_CODIGO_INVALIDO: Integer read _GetMAXICODE_CODIGO_INVALIDO;
    {class} property MAXICODE_COORDENADA_X_INVALIDA: Integer read _GetMAXICODE_COORDENADA_X_INVALIDA;
    {class} property MAXICODE_COORDENADA_Y_INVALIDA: Integer read _GetMAXICODE_COORDENADA_Y_INVALIDA;
    {class} property MAXICODE_COUNTRY_INVALIDO: Integer read _GetMAXICODE_COUNTRY_INVALIDO;
    {class} property MAXICODE_PRIMARY_ZIP_INVALIDO: Integer read _GetMAXICODE_PRIMARY_ZIP_INVALIDO;
    {class} property MAXICODE_ROTACAO_INVALIDA: Integer read _GetMAXICODE_ROTACAO_INVALIDA;
    {class} property MAXICODE_SECONDARY_ZIP_INVALIDO: Integer read _GetMAXICODE_SECONDARY_ZIP_INVALIDO;
    {class} property MODELO_INVALIDO: Integer read _GetMODELO_INVALIDO;
    {class} property MODULO_FUNCAO_NAO_ENCONTRADO: Integer read _GetMODULO_FUNCAO_NAO_ENCONTRADO;
    {class} property MUNICIPIO_INVALIDO: Integer read _GetMUNICIPIO_INVALIDO;
    {class} property NAO_FOI_POSSIVEL_INICIAR_O_SERVICO: Integer read _GetNAO_FOI_POSSIVEL_INICIAR_O_SERVICO;
    {class} property NATUREZA_OPERACAO_INVALIDA: Integer read _GetNATUREZA_OPERACAO_INVALIDA;
    {class} property NCM_INVALIDO: Integer read _GetNCM_INVALIDO;
    {class} property NENHUM_DADO_RETORNADO: Integer read _GetNENHUM_DADO_RETORNADO;
    {class} property NIVEL_DE_CORRECAO_INVALIDO: Integer read _GetNIVEL_DE_CORRECAO_INVALIDO;
    {class} property NOME_DESTINARIO_INVALIDO: Integer read _GetNOME_DESTINARIO_INVALIDO;
    {class} property NUMBER_COLUMNS_INVALIDO: Integer read _GetNUMBER_COLUMNS_INVALIDO;
    {class} property NUMBER_ROWS_INVALIDO: Integer read _GetNUMBER_ROWS_INVALIDO;
    {class} property NUMERO_CAIXA_INVALIDO: Integer read _GetNUMERO_CAIXA_INVALIDO;
    {class} property NUMERO_INVALIDO: Integer read _GetNUMERO_INVALIDO;
    {class} property NUMERO_ITEM_INVALIDO: Integer read _GetNUMERO_ITEM_INVALIDO;
    {class} property OPERACAO_INVALIDA: Integer read _GetOPERACAO_INVALIDA;
    {class} property OPTIONS_INVALIDO: Integer read _GetOPTIONS_INVALIDO;
    {class} property ORIGEM_MERCADORIA_INVALIDA: Integer read _GetORIGEM_MERCADORIA_INVALIDA;
    {class} property PARAMETRO_CONF_INVALIDO: Integer read _GetPARAMETRO_CONF_INVALIDO;
    {class} property PARAMETRO_NAO_ENCONTRADO: Integer read _GetPARAMETRO_NAO_ENCONTRADO;
    {class} property PARAMETRO_TIPO_STATUS_INVALIDO: Integer read _GetPARAMETRO_TIPO_STATUS_INVALIDO;
    {class} property PDF417_CODIGO_INVALIDO: Integer read _GetPDF417_CODIGO_INVALIDO;
    {class} property PDF417_COLUMN_NUMBER_INVALIDO: Integer read _GetPDF417_COLUMN_NUMBER_INVALIDO;
    {class} property PDF417_COORDENADA_X_INVALIDA: Integer read _GetPDF417_COORDENADA_X_INVALIDA;
    {class} property PDF417_COORDENADA_Y_INVALIDA: Integer read _GetPDF417_COORDENADA_Y_INVALIDA;
    {class} property PDF417_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer read _GetPDF417_MULTIPLICADOR_HORIZONTAL_INVALIDO;
    {class} property PDF417_MULTIPLICADOR_VERTICAL_INVALIDO: Integer read _GetPDF417_MULTIPLICADOR_VERTICAL_INVALIDO;
    {class} property PDF417_ROTACAO_INVALIDA: Integer read _GetPDF417_ROTACAO_INVALIDA;
    {class} property PDF417_ROW_NUMBER_INVALIDO: Integer read _GetPDF417_ROW_NUMBER_INVALIDO;
    {class} property PDF417_SECURITY_LEVEL_INVALIDO: Integer read _GetPDF417_SECURITY_LEVEL_INVALIDO;
    {class} property PDF417_TIPO_INVALIDO: Integer read _GetPDF417_TIPO_INVALIDO;
    {class} property PDF_417_ASPECT_RATIO_INVALIDO: Integer read _GetPDF_417_ASPECT_RATIO_INVALIDO;
    {class} property PERCENTUAL_ALIQUOTA_COFINS_INVALIDA: Integer read _GetPERCENTUAL_ALIQUOTA_COFINS_INVALIDA;
    {class} property PERCENTUAL_ALIQUOTA_PIS_INVALIDA: Integer read _GetPERCENTUAL_ALIQUOTA_PIS_INVALIDA;
    {class} property PERMISSAO_NEGADA: Integer read _GetPERMISSAO_NEGADA;
    {class} property PINO_INVALIDO: Integer read _GetPINO_INVALIDO;
    {class} property PORTA_FECHADA: Integer read _GetPORTA_FECHADA;
    {class} property PORTA_TCP_INVALIDA: Integer read _GetPORTA_TCP_INVALIDA;
    {class} property POSICAO_INVALIDA: Integer read _GetPOSICAO_INVALIDA;
    {class} property POS_IMP_HORIZONTAL_INVALIDA: Integer read _GetPOS_IMP_HORIZONTAL_INVALIDA;
    {class} property PRINTTEXT_ATRIBUTO_INVALIDO: Integer read _GetPRINTTEXT_ATRIBUTO_INVALIDO;
    {class} property QRCODEAUTO_CODIGO_INVALIDO: Integer read _GetQRCODEAUTO_CODIGO_INVALIDO;
    {class} property QRCODEAUTO_COORDENADA_X_INVALIDA: Integer read _GetQRCODEAUTO_COORDENADA_X_INVALIDA;
    {class} property QRCODEAUTO_COORDENADA_Y_INVALIDA: Integer read _GetQRCODEAUTO_COORDENADA_Y_INVALIDA;
    {class} property QRCODEAUTO_MULTIPLICADOR_INVALIDO: Integer read _GetQRCODEAUTO_MULTIPLICADOR_INVALIDO;
    {class} property QRCODEAUTO_ROTACAO_INVALIDA: Integer read _GetQRCODEAUTO_ROTACAO_INVALIDA;
    {class} property QRCODEMANUAL_CODIGO_INVALIDO: Integer read _GetQRCODEMANUAL_CODIGO_INVALIDO;
    {class} property QRCODEMANUAL_COORDENADA_X_INVALIDA: Integer read _GetQRCODEMANUAL_COORDENADA_X_INVALIDA;
    {class} property QRCODEMANUAL_COORDENADA_Y_INVALIDA: Integer read _GetQRCODEMANUAL_COORDENADA_Y_INVALIDA;
    {class} property QRCODEMANUAL_INPUT_CONFIG_INVALIDO: Integer read _GetQRCODEMANUAL_INPUT_CONFIG_INVALIDO;
    {class} property QRCODEMANUAL_INPUT_INVALIDO: Integer read _GetQRCODEMANUAL_INPUT_INVALIDO;
    {class} property QRCODEMANUAL_MULTIPLICADOR_INVALIDO: Integer read _GetQRCODEMANUAL_MULTIPLICADOR_INVALIDO;
    {class} property QRCODEMANUAL_NUM_CHARS_8BIT_INVALIDO: Integer read _GetQRCODEMANUAL_NUM_CHARS_8BIT_INVALIDO;
    {class} property QRCODEMANUAL_NUM_MASCARA_INVALIDO: Integer read _GetQRCODEMANUAL_NUM_MASCARA_INVALIDO;
    {class} property QRCODEMANUAL_NUM_MODELO_INVALIDO: Integer read _GetQRCODEMANUAL_NUM_MODELO_INVALIDO;
    {class} property QRCODEMANUAL_NVL_COR_ERRO_INVALIDO: Integer read _GetQRCODEMANUAL_NVL_COR_ERRO_INVALIDO;
    {class} property QRCODEMANUAL_ROTACAO_INVALIDA: Integer read _GetQRCODEMANUAL_ROTACAO_INVALIDA;
    {class} property QUANTIDADE_COMERCIAL_INVALIDA: Integer read _GetQUANTIDADE_COMERCIAL_INVALIDA;
    {class} property QUANTIDADE_ELEMENTO_EXCEDIDA: Integer read _GetQUANTIDADE_ELEMENTO_EXCEDIDA;
    {class} property QUANTIDADE_FORA_INTERVALO: Integer read _GetQUANTIDADE_FORA_INTERVALO;
    {class} property QUANTIDADE_INVALIDA: Integer read _GetQUANTIDADE_INVALIDA;
    {class} property QUANTIDADE_MEIO_PAGAMENTO_EXCEDIDA: Integer read _GetQUANTIDADE_MEIO_PAGAMENTO_EXCEDIDA;
    {class} property QUANTIDADE_VENDIDA_COFINS_INVALIDA: Integer read _GetQUANTIDADE_VENDIDA_COFINS_INVALIDA;
    {class} property QUANTIDADE_VENDIDA_PIS_INVALIDA: Integer read _GetQUANTIDADE_VENDIDA_PIS_INVALIDA;
    {class} property RECONEXOES_ESGOTADAS: Integer read _GetRECONEXOES_ESGOTADAS;
    {class} property REGRA_CALCULO_INVALIDA: Integer read _GetREGRA_CALCULO_INVALIDA;
    {class} property SCALA_INVALIDA: Integer read _GetSCALA_INVALIDA;
    {class} property SERVICO_OCUPADO: Integer read _GetSERVICO_OCUPADO;
    {class} property SIGNAC_INVALIDA: Integer read _GetSIGNAC_INVALIDA;
    {class} property STATEPRINTER_QSESEMPAPEL: Integer read _GetSTATEPRINTER_QSESEMPAPEL;
    {class} property STATEPRINTER_QSESEMPAPELETAMPA: Integer read _GetSTATEPRINTER_QSESEMPAPELETAMPA;
    {class} property STATEPRINTER_SEMPAPEL: Integer read _GetSTATEPRINTER_SEMPAPEL;
    {class} property STATEPRINTER_SUCESSO: Integer read _GetSTATEPRINTER_SUCESSO;
    {class} property STATEPRINTER_TAMPAABERTA: Integer read _GetSTATEPRINTER_TAMPAABERTA;
    {class} property STATEPRINTER_TAMPAEPAPEL: Integer read _GetSTATEPRINTER_TAMPAEPAPEL;
    {class} property STATUS_NAO_SUPORTADO: Integer read _GetSTATUS_NAO_SUPORTADO;
    {class} property STILO_INVALIDO: Integer read _GetSTILO_INVALIDO;
    {class} property SUCESSO: Integer read _GetSUCESSO;
    {class} property TAMANHO_INFORMACOES_COMPLEMENTARES_INVALIDO: Integer read _GetTAMANHO_INFORMACOES_COMPLEMENTARES_INVALIDO;
    {class} property TAMANHO_INVALIDO: Integer read _GetTAMANHO_INVALIDO;
    {class} property TAMANHO_QR_INVALIDO: Integer read _GetTAMANHO_QR_INVALIDO;
    {class} property TEMPO_FORA_LIMITE: Integer read _GetTEMPO_FORA_LIMITE;
    {class} property TEMPO_INVALIDO: Integer read _GetTEMPO_INVALIDO;
    {class} property TEXTOASD_COORDENADA_X_INVALIDA: Integer read _GetTEXTOASD_COORDENADA_X_INVALIDA;
    {class} property TEXTOASD_COORDENADA_Y_INVALIDA: Integer read _GetTEXTOASD_COORDENADA_Y_INVALIDA;
    {class} property TEXTOASD_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer read _GetTEXTOASD_MULTIPLICADOR_HORIZONTAL_INVALIDO;
    {class} property TEXTOASD_MULTIPLICADOR_VERTICAL_INVALIDO: Integer read _GetTEXTOASD_MULTIPLICADOR_VERTICAL_INVALIDO;
    {class} property TEXTOASD_ROTACAO_INVALIDA: Integer read _GetTEXTOASD_ROTACAO_INVALIDA;
    {class} property TEXTOASD_TAMANHO_INVALIDO: Integer read _GetTEXTOASD_TAMANHO_INVALIDO;
    {class} property TEXTOASD_TEXTO_INVALIDO: Integer read _GetTEXTOASD_TEXTO_INVALIDO;
    {class} property TEXTOCOURIER_COORDENADA_X_INVALIDA: Integer read _GetTEXTOCOURIER_COORDENADA_X_INVALIDA;
    {class} property TEXTOCOURIER_COORDENADA_Y_INVALIDA: Integer read _GetTEXTOCOURIER_COORDENADA_Y_INVALIDA;
    {class} property TEXTOCOURIER_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer read _GetTEXTOCOURIER_MULTIPLICADOR_HORIZONTAL_INVALIDO;
    {class} property TEXTOCOURIER_MULTIPLICADOR_VERTICAL_INVALIDO: Integer read _GetTEXTOCOURIER_MULTIPLICADOR_VERTICAL_INVALIDO;
    {class} property TEXTOCOURIER_ROTACAO_INVALIDA: Integer read _GetTEXTOCOURIER_ROTACAO_INVALIDA;
    {class} property TEXTOCOURIER_SYMBOL_INVALIDO: Integer read _GetTEXTOCOURIER_SYMBOL_INVALIDO;
    {class} property TEXTOCOURIER_TEXTO_INVALIDO: Integer read _GetTEXTOCOURIER_TEXTO_INVALIDO;
    {class} property TEXTO_COORDENADA_X_INVALIDA: Integer read _GetTEXTO_COORDENADA_X_INVALIDA;
    {class} property TEXTO_COORDENADA_Y_INVALIDA: Integer read _GetTEXTO_COORDENADA_Y_INVALIDA;
    {class} property TEXTO_FONTE_INVALIDA: Integer read _GetTEXTO_FONTE_INVALIDA;
    {class} property TEXTO_MULTIPLICADOR_HORIZONTAL_INVALIDO: Integer read _GetTEXTO_MULTIPLICADOR_HORIZONTAL_INVALIDO;
    {class} property TEXTO_MULTIPLICADOR_VERTICAL_INVALIDO: Integer read _GetTEXTO_MULTIPLICADOR_VERTICAL_INVALIDO;
    {class} property TEXTO_ROTACAO_INVALIDA: Integer read _GetTEXTO_ROTACAO_INVALIDA;
    {class} property TEXTO_TEXTO_INVALIDO: Integer read _GetTEXTO_TEXTO_INVALIDO;
    {class} property THREAD_EXECUTION_EXCEPTION: Integer read _GetTHREAD_EXECUTION_EXCEPTION;
    {class} property THREAD_INTERRUPTED_EXCEPTION: Integer read _GetTHREAD_INTERRUPTED_EXCEPTION;
    {class} property TIPO_EMISSAO_INDEFINIDA: Integer read _GetTIPO_EMISSAO_INDEFINIDA;
    {class} property TIPO_INVALIDO: Integer read _GetTIPO_INVALIDO;
    {class} property TIPO_PARAMETRO_INVALIDO: Integer read _GetTIPO_PARAMETRO_INVALIDO;
    {class} property UF_INVALIDO: Integer read _GetUF_INVALIDO;
    {class} property UNIDADE_COMERCIAL_INVALIDA: Integer read _GetUNIDADE_COMERCIAL_INVALIDA;
    {class} property VALOR_ACRESCIMO_INVALIDO: Integer read _GetVALOR_ACRESCIMO_INVALIDO;
    {class} property VALOR_ACRESCIMO_SUBTOTAL_INVALIDO: Integer read _GetVALOR_ACRESCIMO_SUBTOTAL_INVALIDO;
    {class} property VALOR_ALIQUOTA_COFINS_INVALIDA: Integer read _GetVALOR_ALIQUOTA_COFINS_INVALIDA;
    {class} property VALOR_ALIQUOTA_PIS_INVALIDA: Integer read _GetVALOR_ALIQUOTA_PIS_INVALIDA;
    {class} property VALOR_DEDUCOES_ISSQN_INVALIDA: Integer read _GetVALOR_DEDUCOES_ISSQN_INVALIDA;
    {class} property VALOR_DESCONTO_INVALIDO: Integer read _GetVALOR_DESCONTO_INVALIDO;
    {class} property VALOR_DESCONTO_SUBTOTAL_INVALIDO: Integer read _GetVALOR_DESCONTO_SUBTOTAL_INVALIDO;
    {class} property VALOR_MEIO_PAGAMENTO_INVALIDO: Integer read _GetVALOR_MEIO_PAGAMENTO_INVALIDO;
    {class} property VALOR_UNITARIO_INVALIDO: Integer read _GetVALOR_UNITARIO_INVALIDO;
    {class} property VALOR_VCFELEI12741_INVALIDO: Integer read _GetVALOR_VCFELEI12741_INVALIDO;
    {class} property VERSAO_DADOS_ENT_INVALIDO: Integer read _GetVERSAO_DADOS_ENT_INVALIDO;
    {class} property VERSAO_XMLNFCE_INDEFINIDA: Integer read _GetVERSAO_XMLNFCE_INDEFINIDA;
    {class} property VERSAO_XMLNFCE_NAO_SUPORTADA: Integer read _GetVERSAO_XMLNFCE_NAO_SUPORTADA;
    {class} property VITEM12741_INVALIDO: Integer read _GetVITEM12741_INVALIDO;
    {class} property WIDTH_INVALIDO: Integer read _GetWIDTH_INVALIDO;
    {class} property XSD_NAO_ENCONTRADO: Integer read _GetXSD_NAO_ENCONTRADO;
    {class} property __ERRO_AO_CARREGAR_DLL_IMPRESSORA: JString read _Get__ERRO_AO_CARREGAR_DLL_IMPRESSORA;
    {class} property __ERRO_AO_CARREGAR_DLL_SAT: JString read _Get__ERRO_AO_CARREGAR_DLL_SAT;
    {class} property __ERRO_AO_VALIDAR_DLL_SAL: JString read _Get__ERRO_AO_VALIDAR_DLL_SAL;
    {class} property __ERRO_CANCELAR_VENDA_SAT: JString read _Get__ERRO_CANCELAR_VENDA_SAT;
    {class} property __SUCESSO: JString read _Get__SUCESSO;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/CodigoErro')]
  JCodigoErro = interface(JObject)
    ['{7E79220B-1B81-4333-9FB3-F8594C2ABB6A}']
  end;
  TJCodigoErro = class(TJavaGenericImport<JCodigoErroClass, JCodigoErro>) end;

  JESCPOSClass = interface(JObjectClass)
    ['{61D99F73-879C-4DC4-9BC9-D29C77A77DC7}']
    {class} function _GetABRE_GAVETA: TJavaArray<Byte>; cdecl;
    {class} function _GetABRE_GAVETA_ELGIN: TJavaArray<Byte>; cdecl;
    {class} function _GetALTURA_CODIGO_BARRAS: TJavaArray<Byte>; cdecl;
    {class} function _GetAVANCA_PAPEL: TJavaArray<Byte>; cdecl;
    {class} function _GetCANC_DATA_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetCANC_MINIFONT: TJavaArray<Byte>; cdecl;
    {class} function _GetCANC_NEGRITO: TJavaArray<Byte>; cdecl;
    {class} function _GetCANC_SUBLINHADO: TJavaArray<Byte>; cdecl;
    {class} procedure _SetCANC_SUBLINHADO(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetCODE_PAGE: TJavaArray<Byte>; cdecl;
    {class} function _GetCORTE_PARCIAL: TJavaArray<Byte>; cdecl;
    {class} function _GetCORTE_TOTAL: TJavaArray<Byte>; cdecl;
    {class} procedure _SetCORTE_TOTAL(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetDEF_AREA_IMPRESSAO: TJavaArray<Byte>; cdecl;
    {class} function _GetDEF_POS_HORIZONTAL_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetDEF_POS_VERTICAL_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetDESABILITA_INVERSO: TJavaArray<Byte>; cdecl;
    {class} procedure _SetDESABILITA_INVERSO(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetDES_STATUSASB: TJavaArray<Byte>; cdecl;
    {class} function _GetDES_STATUSASB_BKT: TJavaArray<Byte>; cdecl;
    {class} function _GetERROR_CORRECTION_LEVEL: TJavaArray<Byte>; cdecl;
    {class} function _GetESPACAMENTO_ENTRE_LINHA: TJavaArray<Byte>; cdecl;
    {class} function _GetHEIGHT: TJavaArray<Byte>; cdecl;
    {class} function _GetHRI_CODIGO_BARRAS: TJavaArray<Byte>; cdecl;
    {class} function _GetHRI_CODIGO_BARRAS_DARUMA: TJavaArray<Byte>; cdecl;
    {class} function _GetIMPRIME_INFO_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetIMPRIME_INFO_MODO_PAGINA_RET_MODO_PADRAO: TJavaArray<Byte>; cdecl;
    {class} function _GetIMPRIME_QRCODE: TJavaArray<Byte>; cdecl;
    {class} function _GetIMPRIME_QRCODE_BEMA: TJavaArray<Byte>; cdecl;
    {class} function _GetIMPRIME_QRCODE_BKT: TJavaArray<Byte>; cdecl;
    {class} function _GetINICIALIZAR: TJavaArray<Byte>; cdecl;
    {class} procedure _SetINICIALIZAR(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetImprimeImage: TJavaArray<Byte>; cdecl;
    {class} function _GetJUSTIFICATIVA_TEXTO: TJavaArray<Byte>; cdecl;
    {class} function _GetLARGURA_CODIGO_BARRAS: TJavaArray<Byte>; cdecl;
    {class} function _GetLIMPA_BUFFER_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetMINIFONT: TJavaArray<Byte>; cdecl;
    {class} function _GetMODO_INVERSO: TJavaArray<Byte>; cdecl;
    {class} function _GetMODO_PADRAO: TJavaArray<Byte>; cdecl;
    {class} function _GetNEGRITO: TJavaArray<Byte>; cdecl;
    {class} function _GetNIVEL_CORRECAO: TJavaArray<Byte>; cdecl;
    {class} function _GetNUMBER_COLUMNS: TJavaArray<Byte>; cdecl;
    {class} function _GetNUMBER_ROWS: TJavaArray<Byte>; cdecl;
    {class} function _GetOPTIONS: TJavaArray<Byte>; cdecl;
    {class} procedure _SetOPTIONS(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetPOS_IMP_HORIZONTAL: TJavaArray<Byte>; cdecl;
    {class} function _GetPRINT_FEED: TJavaArray<Byte>; cdecl;
    {class} function _GetPRINT_PDF417: TJavaArray<Byte>; cdecl;
    {class} function _GetSELECT_BIT_IMAGE_MODE: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_DIRECAO_MODO_PAGINA_BC_IE: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_DIRECAO_MODO_PAGINA_CB_SD: TJavaArray<Byte>; cdecl;
    {class} procedure _SetSEL_DIRECAO_MODO_PAGINA_CB_SD(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetSEL_DIRECAO_MODO_PAGINA_DE_ID: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_DIRECAO_MODO_PAGINA_ED_SE: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_MODO_PADRAO: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_MODO_PAGINA: TJavaArray<Byte>; cdecl;
    {class} function _GetSEL_MODO_PAGINA_BKT: TJavaArray<Byte>; cdecl;
    {class} function _GetSET_LINE_SPACING_24: TJavaArray<Byte>; cdecl;
    {class} function _GetSET_LINE_SPACING_30: TJavaArray<Byte>; cdecl;
    {class} function _GetSINAL_SONORO: TJavaArray<Byte>; cdecl;
    {class} function _GetSTATUS: TJavaArray<Byte>; cdecl;
    {class} function _GetSUBLINHADO: TJavaArray<Byte>; cdecl;
    {class} function _GetTAMANHO_QRCODE: TJavaArray<Byte>; cdecl;
    {class} function _GetTAMANHO_QRCODE_BKT: TJavaArray<Byte>; cdecl;
    {class} function _GetTAMANHO_TEXTO: TJavaArray<Byte>; cdecl;
    {class} procedure _SetTAMANHO_TEXTO(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetWIDTH: TJavaArray<Byte>; cdecl;
    {class} function init: JESCPOS; cdecl;//Deprecated
    {class} property ABRE_GAVETA: TJavaArray<Byte> read _GetABRE_GAVETA;
    {class} property ABRE_GAVETA_ELGIN: TJavaArray<Byte> read _GetABRE_GAVETA_ELGIN;
    {class} property ALTURA_CODIGO_BARRAS: TJavaArray<Byte> read _GetALTURA_CODIGO_BARRAS;
    {class} property AVANCA_PAPEL: TJavaArray<Byte> read _GetAVANCA_PAPEL;
    {class} property CANC_DATA_MODO_PAGINA: TJavaArray<Byte> read _GetCANC_DATA_MODO_PAGINA;
    {class} property CANC_MINIFONT: TJavaArray<Byte> read _GetCANC_MINIFONT;
    {class} property CANC_NEGRITO: TJavaArray<Byte> read _GetCANC_NEGRITO;
    {class} property CANC_SUBLINHADO: TJavaArray<Byte> read _GetCANC_SUBLINHADO write _SetCANC_SUBLINHADO;
    {class} property CODE_PAGE: TJavaArray<Byte> read _GetCODE_PAGE;
    {class} property CORTE_PARCIAL: TJavaArray<Byte> read _GetCORTE_PARCIAL;
    {class} property CORTE_TOTAL: TJavaArray<Byte> read _GetCORTE_TOTAL write _SetCORTE_TOTAL;
    {class} property DEF_AREA_IMPRESSAO: TJavaArray<Byte> read _GetDEF_AREA_IMPRESSAO;
    {class} property DEF_POS_HORIZONTAL_MODO_PAGINA: TJavaArray<Byte> read _GetDEF_POS_HORIZONTAL_MODO_PAGINA;
    {class} property DEF_POS_VERTICAL_MODO_PAGINA: TJavaArray<Byte> read _GetDEF_POS_VERTICAL_MODO_PAGINA;
    {class} property DESABILITA_INVERSO: TJavaArray<Byte> read _GetDESABILITA_INVERSO write _SetDESABILITA_INVERSO;
    {class} property DES_STATUSASB: TJavaArray<Byte> read _GetDES_STATUSASB;
    {class} property DES_STATUSASB_BKT: TJavaArray<Byte> read _GetDES_STATUSASB_BKT;
    {class} property ERROR_CORRECTION_LEVEL: TJavaArray<Byte> read _GetERROR_CORRECTION_LEVEL;
    {class} property ESPACAMENTO_ENTRE_LINHA: TJavaArray<Byte> read _GetESPACAMENTO_ENTRE_LINHA;
    {class} property HEIGHT: TJavaArray<Byte> read _GetHEIGHT;
    {class} property HRI_CODIGO_BARRAS: TJavaArray<Byte> read _GetHRI_CODIGO_BARRAS;
    {class} property HRI_CODIGO_BARRAS_DARUMA: TJavaArray<Byte> read _GetHRI_CODIGO_BARRAS_DARUMA;
    {class} property IMPRIME_INFO_MODO_PAGINA: TJavaArray<Byte> read _GetIMPRIME_INFO_MODO_PAGINA;
    {class} property IMPRIME_INFO_MODO_PAGINA_RET_MODO_PADRAO: TJavaArray<Byte> read _GetIMPRIME_INFO_MODO_PAGINA_RET_MODO_PADRAO;
    {class} property IMPRIME_QRCODE: TJavaArray<Byte> read _GetIMPRIME_QRCODE;
    {class} property IMPRIME_QRCODE_BEMA: TJavaArray<Byte> read _GetIMPRIME_QRCODE_BEMA;
    {class} property IMPRIME_QRCODE_BKT: TJavaArray<Byte> read _GetIMPRIME_QRCODE_BKT;
    {class} property INICIALIZAR: TJavaArray<Byte> read _GetINICIALIZAR write _SetINICIALIZAR;
    {class} property ImprimeImage: TJavaArray<Byte> read _GetImprimeImage;
    {class} property JUSTIFICATIVA_TEXTO: TJavaArray<Byte> read _GetJUSTIFICATIVA_TEXTO;
    {class} property LARGURA_CODIGO_BARRAS: TJavaArray<Byte> read _GetLARGURA_CODIGO_BARRAS;
    {class} property LIMPA_BUFFER_MODO_PAGINA: TJavaArray<Byte> read _GetLIMPA_BUFFER_MODO_PAGINA;
    {class} property MINIFONT: TJavaArray<Byte> read _GetMINIFONT;
    {class} property MODO_INVERSO: TJavaArray<Byte> read _GetMODO_INVERSO;
    {class} property MODO_PADRAO: TJavaArray<Byte> read _GetMODO_PADRAO;
    {class} property NEGRITO: TJavaArray<Byte> read _GetNEGRITO;
    {class} property NIVEL_CORRECAO: TJavaArray<Byte> read _GetNIVEL_CORRECAO;
    {class} property NUMBER_COLUMNS: TJavaArray<Byte> read _GetNUMBER_COLUMNS;
    {class} property NUMBER_ROWS: TJavaArray<Byte> read _GetNUMBER_ROWS;
    {class} property OPTIONS: TJavaArray<Byte> read _GetOPTIONS write _SetOPTIONS;
    {class} property POS_IMP_HORIZONTAL: TJavaArray<Byte> read _GetPOS_IMP_HORIZONTAL;
    {class} property PRINT_FEED: TJavaArray<Byte> read _GetPRINT_FEED;
    {class} property PRINT_PDF417: TJavaArray<Byte> read _GetPRINT_PDF417;
    {class} property SELECT_BIT_IMAGE_MODE: TJavaArray<Byte> read _GetSELECT_BIT_IMAGE_MODE;
    {class} property SEL_DIRECAO_MODO_PAGINA_BC_IE: TJavaArray<Byte> read _GetSEL_DIRECAO_MODO_PAGINA_BC_IE;
    {class} property SEL_DIRECAO_MODO_PAGINA_CB_SD: TJavaArray<Byte> read _GetSEL_DIRECAO_MODO_PAGINA_CB_SD write _SetSEL_DIRECAO_MODO_PAGINA_CB_SD;
    {class} property SEL_DIRECAO_MODO_PAGINA_DE_ID: TJavaArray<Byte> read _GetSEL_DIRECAO_MODO_PAGINA_DE_ID;
    {class} property SEL_DIRECAO_MODO_PAGINA_ED_SE: TJavaArray<Byte> read _GetSEL_DIRECAO_MODO_PAGINA_ED_SE;
    {class} property SEL_MODO_PADRAO: TJavaArray<Byte> read _GetSEL_MODO_PADRAO;
    {class} property SEL_MODO_PAGINA: TJavaArray<Byte> read _GetSEL_MODO_PAGINA;
    {class} property SEL_MODO_PAGINA_BKT: TJavaArray<Byte> read _GetSEL_MODO_PAGINA_BKT;
    {class} property SET_LINE_SPACING_24: TJavaArray<Byte> read _GetSET_LINE_SPACING_24;
    {class} property SET_LINE_SPACING_30: TJavaArray<Byte> read _GetSET_LINE_SPACING_30;
    {class} property SINAL_SONORO: TJavaArray<Byte> read _GetSINAL_SONORO;
    {class} property STATUS: TJavaArray<Byte> read _GetSTATUS;
    {class} property SUBLINHADO: TJavaArray<Byte> read _GetSUBLINHADO;
    {class} property TAMANHO_QRCODE: TJavaArray<Byte> read _GetTAMANHO_QRCODE;
    {class} property TAMANHO_QRCODE_BKT: TJavaArray<Byte> read _GetTAMANHO_QRCODE_BKT;
    {class} property TAMANHO_TEXTO: TJavaArray<Byte> read _GetTAMANHO_TEXTO write _SetTAMANHO_TEXTO;
    {class} property WIDTH: TJavaArray<Byte> read _GetWIDTH;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/ESCPOS')]
  JESCPOS = interface(JObject)
    ['{44E58E84-7906-4BB2-8536-4C73B2B76A3D}']
  end;
  TJESCPOS = class(TJavaGenericImport<JESCPOSClass, JESCPOS>) end;

  JInteiroClass = interface(JObjectClass)
    ['{C712EDCB-116E-4042-894B-3BF8416709F6}']
    {class} function init: JInteiro; cdecl; overload;
    {class} function init(i: Integer): JInteiro; cdecl; overload;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/Inteiro')]
  JInteiro = interface(JObject)
    ['{D9653A4C-264F-4B59-917A-8E293A1394F5}']
    function getValor: Integer; cdecl;
    procedure setValor(i: Integer); cdecl;
    function toString: JString; cdecl;
  end;
  TJInteiro = class(TJavaGenericImport<JInteiroClass, JInteiro>) end;

  JPPLAClass = interface(JObjectClass)
    ['{E4BE1A08-C5D8-4270-87D1-43E84C398EC8}']
    {class} function _GetALTURA_GAP: TJavaArray<Byte>; cdecl;
    {class} procedure _SetALTURA_GAP(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetBACKFEED: TJavaArray<Byte>; cdecl;
    {class} function _GetBAUDRATE: TJavaArray<Byte>; cdecl;
    {class} function _GetCALOR: TJavaArray<Byte>; cdecl;
    {class} function _GetCR: TJavaArray<Byte>; cdecl;
    {class} function _GetDISABLE: TJavaArray<Byte>; cdecl;
    {class} function _GetENVIA_IMAGEM: TJavaArray<Byte>; cdecl;
    {class} function _GetESC: TJavaArray<Byte>; cdecl;
    {class} function _GetEXCLUI_IMAGEM: TJavaArray<Byte>; cdecl;
    {class} function _GetEXIT: TJavaArray<Byte>; cdecl;
    {class} function _GetFEED: TJavaArray<Byte>; cdecl;
    {class} function _GetLABEL: TJavaArray<Byte>; cdecl;
    {class} function _GetLENGTH: TJavaArray<Byte>; cdecl;
    {class} function _GetLF: TJavaArray<Byte>; cdecl;
    {class} function _GetLIMPA_MEMORIA: TJavaArray<Byte>; cdecl;
    {class} function _GetLIMPA_MODULO: TJavaArray<Byte>; cdecl;
    {class} function _GetLOGIC_IMG_MODE: TJavaArray<Byte>; cdecl;
    {class} function _GetMEMORY_STATUS: TJavaArray<Byte>; cdecl;
    {class} function _GetMIRROR: TJavaArray<Byte>; cdecl;
    {class} function _GetMODO_CONTINUO: TJavaArray<Byte>; cdecl;
    {class} function _GetNAO_CORTAR_ZERO: TJavaArray<Byte>; cdecl;
    {class} function _GetOFFSET_COLUNA: TJavaArray<Byte>; cdecl;
    {class} function _GetOFFSET_LINHA: TJavaArray<Byte>; cdecl;
    {class} procedure _SetOFFSET_LINHA(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetPRINT_ST_POS: TJavaArray<Byte>; cdecl;
    {class} function _GetQTDE: TJavaArray<Byte>; cdecl;
    {class} function _GetRESET: TJavaArray<Byte>; cdecl;
    {class} procedure _SetRESET(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetSENSOR_REFLEXIVO: TJavaArray<Byte>; cdecl;
    {class} function _GetSENSOR_TRANSMISSIVO: TJavaArray<Byte>; cdecl;
    {class} function _GetSOH: TJavaArray<Byte>; cdecl;
    {class} procedure _SetSOH(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetSTATUS: TJavaArray<Byte>; cdecl;
    {class} function _GetSTATUS_EPL: TJavaArray<Byte>; cdecl;
    {class} function _GetSTX: TJavaArray<Byte>; cdecl;
    {class} procedure _SetSTX(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetSYMBOL_ASD: TJavaArray<Byte>; cdecl;
    {class} function _GetTAM_PIXEL: TJavaArray<Byte>; cdecl;
    {class} function _GetTESTE: TJavaArray<Byte>; cdecl;
    {class} function _GetTIPO_TRANSFERENCIA: TJavaArray<Byte>; cdecl;
    {class} function _GetUSAR_IMPERIAL: TJavaArray<Byte>; cdecl;
    {class} function _GetUSAR_METRICO: TJavaArray<Byte>; cdecl;
    {class} procedure _SetUSAR_METRICO(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetVEL_IMPRESSAO: TJavaArray<Byte>; cdecl;
    {class} function init: JPPLA; cdecl;//Deprecated
    {class} property ALTURA_GAP: TJavaArray<Byte> read _GetALTURA_GAP write _SetALTURA_GAP;
    {class} property BACKFEED: TJavaArray<Byte> read _GetBACKFEED;
    {class} property BAUDRATE: TJavaArray<Byte> read _GetBAUDRATE;
    {class} property CALOR: TJavaArray<Byte> read _GetCALOR;
    {class} property CR: TJavaArray<Byte> read _GetCR;
    {class} property DISABLE: TJavaArray<Byte> read _GetDISABLE;
    {class} property ENVIA_IMAGEM: TJavaArray<Byte> read _GetENVIA_IMAGEM;
    {class} property ESC: TJavaArray<Byte> read _GetESC;
    {class} property EXCLUI_IMAGEM: TJavaArray<Byte> read _GetEXCLUI_IMAGEM;
    {class} property EXIT: TJavaArray<Byte> read _GetEXIT;
    {class} property FEED: TJavaArray<Byte> read _GetFEED;
    {class} property &LABEL: TJavaArray<Byte> read _GetLABEL;
    {class} property LENGTH: TJavaArray<Byte> read _GetLENGTH;
    {class} property LF: TJavaArray<Byte> read _GetLF;
    {class} property LIMPA_MEMORIA: TJavaArray<Byte> read _GetLIMPA_MEMORIA;
    {class} property LIMPA_MODULO: TJavaArray<Byte> read _GetLIMPA_MODULO;
    {class} property LOGIC_IMG_MODE: TJavaArray<Byte> read _GetLOGIC_IMG_MODE;
    {class} property MEMORY_STATUS: TJavaArray<Byte> read _GetMEMORY_STATUS;
    {class} property MIRROR: TJavaArray<Byte> read _GetMIRROR;
    {class} property MODO_CONTINUO: TJavaArray<Byte> read _GetMODO_CONTINUO;
    {class} property NAO_CORTAR_ZERO: TJavaArray<Byte> read _GetNAO_CORTAR_ZERO;
    {class} property OFFSET_COLUNA: TJavaArray<Byte> read _GetOFFSET_COLUNA;
    {class} property OFFSET_LINHA: TJavaArray<Byte> read _GetOFFSET_LINHA write _SetOFFSET_LINHA;
    {class} property PRINT_ST_POS: TJavaArray<Byte> read _GetPRINT_ST_POS;
    {class} property QTDE: TJavaArray<Byte> read _GetQTDE;
    {class} property RESET: TJavaArray<Byte> read _GetRESET write _SetRESET;
    {class} property SENSOR_REFLEXIVO: TJavaArray<Byte> read _GetSENSOR_REFLEXIVO;
    {class} property SENSOR_TRANSMISSIVO: TJavaArray<Byte> read _GetSENSOR_TRANSMISSIVO;
    {class} property SOH: TJavaArray<Byte> read _GetSOH write _SetSOH;
    {class} property STATUS: TJavaArray<Byte> read _GetSTATUS;
    {class} property STATUS_EPL: TJavaArray<Byte> read _GetSTATUS_EPL;
    {class} property STX: TJavaArray<Byte> read _GetSTX write _SetSTX;
    {class} property SYMBOL_ASD: TJavaArray<Byte> read _GetSYMBOL_ASD;
    {class} property TAM_PIXEL: TJavaArray<Byte> read _GetTAM_PIXEL;
    {class} property TESTE: TJavaArray<Byte> read _GetTESTE;
    {class} property TIPO_TRANSFERENCIA: TJavaArray<Byte> read _GetTIPO_TRANSFERENCIA;
    {class} property USAR_IMPERIAL: TJavaArray<Byte> read _GetUSAR_IMPERIAL;
    {class} property USAR_METRICO: TJavaArray<Byte> read _GetUSAR_METRICO write _SetUSAR_METRICO;
    {class} property VEL_IMPRESSAO: TJavaArray<Byte> read _GetVEL_IMPRESSAO;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/PPLA')]
  JPPLA = interface(JObject)
    ['{9229632A-7A4E-46F3-AF44-A4B70F39FA84}']
  end;
  TJPPLA = class(TJavaGenericImport<JPPLAClass, JPPLA>) end;

  JStringRefClass = interface(JObjectClass)
    ['{CAD1318C-0B11-4548-A477-457C3BF3190D}']
    {class} function init: JStringRef; cdecl; overload;
    {class} function init(string_: JString): JStringRef; cdecl; overload;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/StringRef')]
  JStringRef = interface(JObject)
    ['{21097ACD-BF33-4B0E-B23D-1BEB8447B13A}']
    function getValor: JString; cdecl;
    procedure setValor(string_: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJStringRef = class(TJavaGenericImport<JStringRefClass, JStringRef>) end;

  JUtilidadesClass = interface(JObjectClass)
    ['{B286590F-61FC-4B67-8AE5-F3FC4669168B}']
    {class} function _GetTAG: JString; cdecl;
    {class} function appendChild(node: JNode; node1: JNode): JNode; cdecl;
    {class} function arg1(string_: JString; i: Integer; c: Char): JString; cdecl;
    {class} function array2bytes(b: Boolean; arrayList: JArrayList): TJavaArray<Byte>; cdecl;
    {class} function attribute(node: JNode; string_: JString): JString; cdecl;
    {class} function doc2string(document: JDocument): JString; cdecl;
    {class} function elementsByTagName(node: JNode; string_: JString): JNodeList; cdecl;
    {class} function getInt(string_: JString): Integer; cdecl;
    {class} function getMaxWidthForPrinter(i: Integer): Integer; cdecl;
    {class} function getPrinterInfo(string_: JString): JdsImpressora_infoHW; cdecl;
    {class} function init: JUtilidades; cdecl;
    {class} function insert(string_: JString; i: Integer; string_1: JString): JString; cdecl;
    {class} function insertAfter(node: JNode; node1: JNode; node2: JNode): JNode; cdecl;
    {class} function insertBefore(node: JNode; node1: JNode; node2: JNode): JNode; cdecl;
    {class} function intToBits(i: Integer): JBitSet; cdecl;
    {class} function isCurrentPrinter(usbDevice: JUsbDevice; string_: JString): Boolean; cdecl;
    {class} function isElginPrinter(usbDevice: JUsbDevice): JString; cdecl;
    {class} function isPrinter(usbDevice: JUsbDevice): Boolean; cdecl;
    {class} function larg2px(i: Integer; string_: JString): Integer; cdecl;
    {class} function left(string_: JString; i: Integer): JString; cdecl;
    {class} function leftJustified(string_: JString; i: Integer; c: Char; b: Boolean): JString; cdecl;
    {class} function mid(string_: JString; i: Integer; i1: Integer): JString; cdecl;
    {class} function namedItem(node: JNode; string_: JString; b: Boolean): JNode; cdecl;
    {class} function newDocument: JDocument; cdecl;
    {class} function numFmt(d: Double): JString; cdecl;
    {class} function prepend(string_: JString; string_1: JString): JString; cdecl;
    {class} function removeChild(node: JNode; node1: JNode): JNode; cdecl;
    {class} function replaceChild(node: JNode; node1: JNode; node2: JNode): JNode; cdecl;
    {class} function resizeBitmap(bitmap: JBitmap; i: Integer): JBitmap; cdecl;
    {class} function right(string_: JString; i: Integer): JString; cdecl;
    {class} function rightJustified(string_: JString; i: Integer; c: Char; b: Boolean): JString; cdecl;
    {class} function tam2px(i: Integer; string_: JString): Integer; cdecl;
    {class} function toHex(b: TJavaArray<Byte>; b1: Boolean): JString; cdecl;
    {class} function trimBitmap(bitmap: JBitmap; i: Integer): JBitmap; cdecl;
    {class} function truncate(string_: JString; i: Integer): JString; cdecl;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/Utilidades')]
  JUtilidades = interface(JObject)
    ['{EC303F44-A0B3-41D7-85D4-E0B783E5D7F3}']
  end;
  TJUtilidades = class(TJavaGenericImport<JUtilidadesClass, JUtilidades>) end;

  JNodeListClass = interface(IJavaClass)
    ['{6F6D0FED-4199-4F79-ABA2-C93007B65A8C}']
    {class} function getLength: Integer; cdecl;
    {class} function item(index: Integer): JNode; cdecl;
  end;

  [JavaSignature('org/w3c/dom/NodeList')]
  JNodeList = interface(IJavaInstance)
    ['{E6AE0711-1F43-4D8B-A153-47286455EFAF}']
  end;
  TJNodeList = class(TJavaGenericImport<JNodeListClass, JNodeList>) end;

  JUtilidades_1Class = interface(JNodeListClass)
    ['{A805FED3-04B7-4F6B-BD2F-2F222250AF75}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/Utilidades/Utilidades$1')]
  JUtilidades_1 = interface(JNodeList)
    ['{E0D58015-BFA8-4107-9FC4-5AA23E219505}']
    function getLength: Integer; cdecl;
    function item(i: Integer): JNode; cdecl;
  end;
  TJUtilidades_1 = class(TJavaGenericImport<JUtilidades_1Class, JUtilidades_1>) end;

  JInterfaceOBJXMLPRODUTOClass = interface(IJavaClass)
    ['{EF68BC96-05BC-4C80-8DE1-787800148764}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJXMLPRODUTO')]
  JInterfaceOBJXMLPRODUTO = interface(IJavaInstance)
    ['{C7D526AD-58DF-46C8-B016-A009B9651E54}']
    function GetCodProduto: JString; cdecl;
    function GetDescricao: JString; cdecl;
    function GetNItem: JString; cdecl;
    function GetQTD: JString; cdecl;
    function GetUnidadeMed: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVDescProd: JString; cdecl;
    function GetVOutros: JString; cdecl;
    function GetVOutrosProd: JString; cdecl;
    function GetValorBrutoProduto: JString; cdecl;
    function GetValorUnit: JString; cdecl;
    procedure SetCodProduto(string_: JString); cdecl;
    procedure SetDescricao(string_: JString); cdecl;
    procedure SetNItem(string_: JString); cdecl;
    procedure SetQTD(string_: JString); cdecl;
    procedure SetUnidadeMed(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVDescProd(string_: JString); cdecl;
    procedure SetVOutros(string_: JString); cdecl;
    procedure SetVOutrosProd(string_: JString); cdecl;
    procedure SetValorBrutoProduto(string_: JString); cdecl;
    procedure SetValorUnit(string_: JString); cdecl;
  end;
  TJInterfaceOBJXMLPRODUTO = class(TJavaGenericImport<JInterfaceOBJXMLPRODUTOClass, JInterfaceOBJXMLPRODUTO>) end;

  JImplementacaoOBJXMLPRODUTOClass = interface(JInterfaceOBJXMLPRODUTOClass)
    ['{4E69C780-3DD6-4632-BDAE-48984D348C92}']
    {class} function init: JImplementacaoOBJXMLPRODUTO; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXMLPRODUTO')]
  JImplementacaoOBJXMLPRODUTO = interface(JInterfaceOBJXMLPRODUTO)
    ['{09BF6C64-248C-434C-99B7-B2A087160426}']
    function GetCodProduto: JString; cdecl;
    function GetDescricao: JString; cdecl;
    function GetNItem: JString; cdecl;
    function GetQTD: JString; cdecl;
    function GetUnidadeMed: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVDescProd: JString; cdecl;
    function GetVOutros: JString; cdecl;
    function GetVOutrosProd: JString; cdecl;
    function GetValorBrutoProduto: JString; cdecl;
    function GetValorUnit: JString; cdecl;
    procedure SetCodProduto(string_: JString); cdecl;
    procedure SetDescricao(string_: JString); cdecl;
    procedure SetNItem(string_: JString); cdecl;
    procedure SetQTD(string_: JString); cdecl;
    procedure SetUnidadeMed(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVDescProd(string_: JString); cdecl;
    procedure SetVOutros(string_: JString); cdecl;
    procedure SetVOutrosProd(string_: JString); cdecl;
    procedure SetValorBrutoProduto(string_: JString); cdecl;
    procedure SetValorUnit(string_: JString); cdecl;
  end;
  TJImplementacaoOBJXMLPRODUTO = class(TJavaGenericImport<JImplementacaoOBJXMLPRODUTOClass, JImplementacaoOBJXMLPRODUTO>) end;

  JImplementacaoOBJPRODUTOXMLNFCEClass = interface(JImplementacaoOBJXMLPRODUTOClass)
    ['{180233B9-597C-4282-9F31-53079B8DF219}']
    {class} function init: JImplementacaoOBJPRODUTOXMLNFCE; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJPRODUTOXMLNFCE')]
  JImplementacaoOBJPRODUTOXMLNFCE = interface(JImplementacaoOBJXMLPRODUTO)
    ['{8620D964-DFD9-4A4D-AC3F-0FB3494044AC}']
    function GetEAN13: JString; cdecl;
    procedure SetEAN13(string_: JString); cdecl;
  end;
  TJImplementacaoOBJPRODUTOXMLNFCE = class(TJavaGenericImport<JImplementacaoOBJPRODUTOXMLNFCEClass, JImplementacaoOBJPRODUTOXMLNFCE>) end;

  JImplementacaoOBJPRODUTOXMLSATClass = interface(JImplementacaoOBJXMLPRODUTOClass)
    ['{0B7E5FEF-B91C-4DD4-9060-692240D06937}']
    {class} function init: JImplementacaoOBJPRODUTOXMLSAT; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJPRODUTOXMLSAT')]
  JImplementacaoOBJPRODUTOXMLSAT = interface(JImplementacaoOBJXMLPRODUTO)
    ['{1756C513-6E19-473D-94CA-B1364AD127D0}']
    function GetVBC: JString; cdecl;
    function GetVDeducISSQN: JString; cdecl;
    function GetVDescProd: JString; cdecl;
    function GetVOutrasProd: JString; cdecl;
    function GetVRatAcr: JString; cdecl;
    function GetVRatDesc: JString; cdecl;
    function GetValorAproxTributos: JString; cdecl;
    procedure SetVBC(string_: JString); cdecl;
    procedure SetVDeducISSQN(string_: JString); cdecl;
    procedure SetVDescProd(string_: JString); cdecl;
    procedure SetVOutrasProd(string_: JString); cdecl;
    procedure SetVRatAcr(string_: JString); cdecl;
    procedure SetVRatDesc(string_: JString); cdecl;
    procedure SetValorAproxTributos(string_: JString); cdecl;
  end;
  TJImplementacaoOBJPRODUTOXMLSAT = class(TJavaGenericImport<JImplementacaoOBJPRODUTOXMLSATClass, JImplementacaoOBJPRODUTOXMLSAT>) end;

  JInterfaceOBJXMLClass = interface(IJavaClass)
    ['{6B0C975D-AE52-443F-84EC-2A5543972E80}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJXML')]
  JInterfaceOBJXML = interface(IJavaInstance)
    ['{B3C8983D-EEA0-4C3E-9D9C-BD6C8A37B4B3}']
    function ConverterQString(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarData(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarDataSAT(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarMoeda(string_: JString): JString; cdecl;
    function GetStatusXML: JString; cdecl;
    function ObtemUF(i: Integer): JString; cdecl;
    procedure SetStatusXML(string_: JString); cdecl;
    function getList(string_: JString): JNodeList; cdecl;
    function getProp(string_: JString): JString; cdecl;
    function getValue(string_: JString): JString; cdecl;
    procedure imprimirLogo(string_: JString; i: Integer; conexao: JConexao; implementacaoTermica: JImplementacaoTermica); cdecl;
  end;
  TJInterfaceOBJXML = class(TJavaGenericImport<JInterfaceOBJXMLClass, JInterfaceOBJXML>) end;

  JImplementacaoOBJXMLClass = interface(JInterfaceOBJXMLClass)
    ['{2B03011E-3A0D-4FB4-8F4E-712F775798A4}']
    {class} function _Getcon: JConexao; cdecl;
    {class} function init(b: TJavaArray<Byte>): JImplementacaoOBJXML; cdecl;//Deprecated
    {class} property con: JConexao read _Getcon;
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXML')]
  JImplementacaoOBJXML = interface(JInterfaceOBJXML)
    ['{4F3E3156-1BC3-4D7A-995A-C7283EA1DED8}']
    function _Getib: JImplementacaoBematech; cdecl;
    procedure _Setib(Value: JImplementacaoBematech); cdecl;
    function ConverterQString(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarData(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarDataSAT(string_: JString): TJavaArray<Char>; cdecl;
    function FormatarMoeda(string_: JString): JString; cdecl;
    function GetStatusXML: JString; cdecl;
    function ObtemUF(i: Integer): JString; cdecl;
    procedure SetStatusXML(string_: JString); cdecl;
    function getList(string_: JString): JNodeList; cdecl;
    function getProp(string_: JString): JString; cdecl;
    function getValue(string_: JString): JString; cdecl;
    procedure imprimirLogo(string_: JString; i: Integer; conexao: JConexao; implementacaoTermica: JImplementacaoTermica); cdecl;
    property ib: JImplementacaoBematech read _Getib write _Setib;
  end;
  TJImplementacaoOBJXML = class(TJavaGenericImport<JImplementacaoOBJXMLClass, JImplementacaoOBJXML>) end;

  JImplementacaoOBJXML_1Class = interface(JNodeListClass)
    ['{BADBD7F1-BC6F-42C0-801A-00812D9BAAAF}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXML$1')]
  JImplementacaoOBJXML_1 = interface(JNodeList)
    ['{8D215086-9FC5-4C8F-9625-AE3CCB96FA0F}']
    function getLength: Integer; cdecl;
    function item(i: Integer): JNode; cdecl;
  end;
  TJImplementacaoOBJXML_1 = class(TJavaGenericImport<JImplementacaoOBJXML_1Class, JImplementacaoOBJXML_1>) end;

  JImplementacaoOBJXML_infoPagClass = interface(JObjectClass)
    ['{4909013E-8F4B-4F56-8E55-A7EFFB2AF8CC}']
    {class} function init(implementacaoOBJXML: JImplementacaoOBJXML): JImplementacaoOBJXML_infoPag; cdecl; overload;//Deprecated
    {class} function init(implementacaoOBJXML: JImplementacaoOBJXML; string_: JString; d: Double): JImplementacaoOBJXML_infoPag; cdecl; overload;
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXML$infoPag')]
  JImplementacaoOBJXML_infoPag = interface(JObject)
    ['{1FFCA09C-42CF-41BB-9B53-22D8E129E9D5}']
    function _GetmeioPgto: JString; cdecl;
    procedure _SetmeioPgto(Value: JString); cdecl;
    function _GetvalorPago: Double; cdecl;
    procedure _SetvalorPago(Value: Double); cdecl;
    property meioPgto: JString read _GetmeioPgto write _SetmeioPgto;
    property valorPago: Double read _GetvalorPago write _SetvalorPago;
  end;
  TJImplementacaoOBJXML_infoPag = class(TJavaGenericImport<JImplementacaoOBJXML_infoPagClass, JImplementacaoOBJXML_infoPag>) end;

  JImplementacaoOBJXMLCANCELAMENTOClass = interface(JImplementacaoOBJXMLClass)
    ['{A571C28F-559C-4195-943C-08CE1E693DD1}']
    {class} function init(b: TJavaArray<Byte>): JImplementacaoOBJXMLCANCELAMENTO; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXMLCANCELAMENTO')]
  JImplementacaoOBJXMLCANCELAMENTO = interface(JImplementacaoOBJXML)
    ['{80D26975-BA59-466D-9B2B-DC0E647BDB5B}']
    function ConstroiObj: Boolean; cdecl;
    function GetAssQRCode: JString; cdecl;
    function GetCNPJ: JString; cdecl;
    function GetCPF_CNPJ: JString; cdecl;
    function GetChaveAcesso: JString; cdecl;
    function GetChaveAcessoACancelar: JString; cdecl;
    function GetDtHrCupomACancelar: JString; cdecl;
    function GetDtHrEmissao: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetIM: JString; cdecl;
    function GetNCfe: JString; cdecl;
    function GetNomeFantasia: JString; cdecl;
    function GetNumSerieSAT: JString; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetVCfe: JString; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetAssQRCode(string_: JString); cdecl;
    procedure SetCNPJ(string_: JString); cdecl;
    procedure SetCPF_CNPJ(string_: JString); cdecl;
    procedure SetChaveAcesso(string_: JString); cdecl;
    procedure SetChaveAcessoACancelar(string_: JString); cdecl;
    procedure SetDtHrCupomACancelar(string_: JString); cdecl;
    procedure SetDtHrEmissao(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetIM(string_: JString); cdecl;
    procedure SetNCfe(string_: JString); cdecl;
    procedure SetNomeFantasia(string_: JString); cdecl;
    procedure SetNumSeriaSAT(string_: JString); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetVCfe(string_: JString); cdecl;
  end;
  TJImplementacaoOBJXMLCANCELAMENTO = class(TJavaGenericImport<JImplementacaoOBJXMLCANCELAMENTOClass, JImplementacaoOBJXMLCANCELAMENTO>) end;

  JImplementacaoOBJXMLNFCEClass = interface(JImplementacaoOBJXMLClass)
    ['{B1149EFA-B8BD-411F-BE2B-E034F1FFFD40}']
    {class} function init(b: TJavaArray<Byte>): JImplementacaoOBJXMLNFCE; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXMLNFCE')]
  JImplementacaoOBJXMLNFCE = interface(JImplementacaoOBJXML)
    ['{25C2F6AD-DD22-4DB5-9CCE-88FAD48A420E}']
    function ConstroiInfQRCode(i: Integer; string_: JString): JString; cdecl;
    function ConstroiOBJ: Boolean; cdecl;
    function GetCNPJConsumidor: JString; cdecl;
    function GetCNPJEmit: JString; cdecl;
    function GetCPFConsumidor: JString; cdecl;
    function GetCUF: JString; cdecl;
    function GetChaveConsulta: JString; cdecl;
    function GetDHEmi: JString; cdecl;
    function GetDHRecpto: JString; cdecl;
    function GetDigestValue: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetEnderecoDest: JString; cdecl;
    function GetEnderecoEntrega: JString; cdecl;
    function GetIDEstrConsumidor: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetInfAdFisco: JString; cdecl;
    function GetInfCpl: JString; cdecl;
    function GetInfoPag: JArrayList; cdecl;
    function GetNNF: JString; cdecl;
    function GetNProtocolo: JString; cdecl;
    function GetNomeDest: JString; cdecl;
    function GetProdutos: JArrayList; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetSerie: JString; cdecl;
    function GetTpAmb: JString; cdecl;
    function GetTpEmis: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVFrete: JString; cdecl;
    function GetVNF: JString; cdecl;
    function GetVOutros: JString; cdecl;
    function GetVProd: JString; cdecl;
    function GetVSeg: JString; cdecl;
    function GetVTotTrib: JString; cdecl;
    function GetVTroco: JString; cdecl;
    function GetxMsg: JString; cdecl;
    function ObtemURL(i: Integer; i1: Integer): JString; cdecl;
    function PreencheCabecalho(i: Integer; b: Boolean): TJavaArray<Char>; cdecl;
    function PreencheLegendaProduto(i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheLinhaProduto(implementacaoOBJPRODUTOXMLNFCE: JImplementacaoOBJPRODUTOXMLNFCE; i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetCNPJConsumidor(string_: JString); cdecl;
    procedure SetCNPJEmit(string_: JString); cdecl;
    procedure SetCPFConsumidor(string_: JString); cdecl;
    procedure SetCUF(string_: JString); cdecl;
    procedure SetChaveConsulta(string_: JString); cdecl;
    procedure SetDHEmi(string_: JString); cdecl;
    procedure SetDHRecpto(string_: JString); cdecl;
    procedure SetDigestValue(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetEnderecoDest(string_: JString); cdecl;
    procedure SetEnderecoEntrega(string_: JString); cdecl;
    procedure SetIDEstrConsumidor(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetInfAdFisco(string_: JString); cdecl;
    procedure SetInfCpl(string_: JString); cdecl;
    procedure SetNNF(string_: JString); cdecl;
    procedure SetNProtocolo(string_: JString); cdecl;
    procedure SetNomeDest(string_: JString); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetSerie(string_: JString); cdecl;
    procedure SetTpAmb(string_: JString); cdecl;
    procedure SetTpEmis(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVFrete(string_: JString); cdecl;
    procedure SetVNF(string_: JString); cdecl;
    procedure SetVOutros(string_: JString); cdecl;
    procedure SetVProd(string_: JString); cdecl;
    procedure SetVSeg(string_: JString); cdecl;
    procedure SetVTotTrib(string_: JString); cdecl;
    procedure SetVTroco(string_: JString); cdecl;
    procedure SetxMsg(string_: JString); cdecl;
  end;
  TJImplementacaoOBJXMLNFCE = class(TJavaGenericImport<JImplementacaoOBJXMLNFCEClass, JImplementacaoOBJXMLNFCE>) end;

  JImplementacaoOBJXMLSATClass = interface(JImplementacaoOBJXMLClass)
    ['{AEE499C8-651A-4BC3-8EAE-6F213B6BA9D4}']
    {class} function init(b: TJavaArray<Byte>): JImplementacaoOBJXMLSAT; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/ImplementacaoOBJXMLSAT')]
  JImplementacaoOBJXMLSAT = interface(JImplementacaoOBJXML)
    ['{8C0A797E-8A8E-4133-8312-2E24A0659343}']
    function ConstruirObj: Boolean; cdecl;
    function GetCNPJ: JString; cdecl;
    function GetCNPJSH: JString; cdecl;
    function GetCodQRCode: JString; cdecl;
    function GetCodigoBarras: JString; cdecl;
    function GetDocDest: JString; cdecl;
    function GetDocDestRaw: JString; cdecl;
    function GetDtHrEmissao: JString; cdecl;
    function GetEndDest: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetIM: JString; cdecl;
    function GetInfCpl: JString; cdecl;
    function GetNomeDest: JString; cdecl;
    function GetNomeFantasia: JString; cdecl;
    function GetNumDoc: JString; cdecl;
    function GetNumSerieSAT: JString; cdecl;
    function GetPagamentos: JArrayList; cdecl;
    function GetProdutos: JArrayList; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetSignAC: JString; cdecl;
    function GetVAcresSubtot: JString; cdecl;
    function GetVCFeLei12741: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVDescSubtot: JString; cdecl;
    function GetVOutras: JString; cdecl;
    function GetVProd: JString; cdecl;
    function GetVTroco: JString; cdecl;
    function GetValorCfe: JString; cdecl;
    function GetXCampo: JString; cdecl;
    function GetXTexto: JString; cdecl;
    function PreencheLinhaProduto(implementacaoOBJPRODUTOXMLSAT: JImplementacaoOBJPRODUTOXMLSAT; i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetCNPJ(string_: JString); cdecl;
    procedure SetCNPJSH(string_: JString); cdecl;
    procedure SetCodQRCode(string_: JString); cdecl;
    procedure SetCodigoBarras(string_: JString); cdecl;
    procedure SetDocDest(string_: JString); cdecl;
    procedure SetDocDestRaw(string_: JString); cdecl;
    procedure SetDtHrEmissao(string_: JString); cdecl;
    procedure SetEndDest(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetIM(string_: JString); cdecl;
    procedure SetInfCpl(string_: JString); cdecl;
    procedure SetNomeDest(string_: JString); cdecl;
    procedure SetNomeFantasia(string_: JString); cdecl;
    procedure SetNumDoc(string_: JString); cdecl;
    procedure SetNumSerieSAT(string_: JString); cdecl;
    procedure SetProdutos(implementacaoOBJPRODUTOXMLSAT: JImplementacaoOBJPRODUTOXMLSAT); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetSignAC(string_: JString); cdecl;
    procedure SetVAcresSubtot(string_: JString); cdecl;
    procedure SetVCFeLei12741(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVDescSubtot(string_: JString); cdecl;
    procedure SetVOutras(string_: JString); cdecl;
    procedure SetVProd(string_: JString); cdecl;
    procedure SetVTroco(string_: JString); cdecl;
    procedure SetValorCfe(string_: JString); cdecl;
    procedure SetXCampo(string_: JString); cdecl;
    procedure SetXTexto(string_: JString); cdecl;
  end;
  TJImplementacaoOBJXMLSAT = class(TJavaGenericImport<JImplementacaoOBJXMLSATClass, JImplementacaoOBJXMLSAT>) end;

  JInterfaceOBJPRODUTOXMLNFCEClass = interface(JInterfaceOBJXMLPRODUTOClass)
    ['{8548BA17-CB9D-48DE-8E6D-503076C5172D}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJPRODUTOXMLNFCE')]
  JInterfaceOBJPRODUTOXMLNFCE = interface(JInterfaceOBJXMLPRODUTO)
    ['{62DA7921-FEBB-4CAD-8EFE-0C3BFED73503}']
    function GetEAN13: JString; cdecl;
    procedure SetEAN13(string_: JString); cdecl;
  end;
  TJInterfaceOBJPRODUTOXMLNFCE = class(TJavaGenericImport<JInterfaceOBJPRODUTOXMLNFCEClass, JInterfaceOBJPRODUTOXMLNFCE>) end;

  JInterfaceOBJPRODUTOXMLSATClass = interface(JInterfaceOBJXMLPRODUTOClass)
    ['{924E2290-41FF-40FD-92A5-0DD7B3F77506}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJPRODUTOXMLSAT')]
  JInterfaceOBJPRODUTOXMLSAT = interface(JInterfaceOBJXMLPRODUTO)
    ['{5F1E10DD-C23D-4217-88B7-8D0B3A2ED7A0}']
    function GetVBC: JString; cdecl;
    function GetVDeducISSQN: JString; cdecl;
    function GetVDescProd: JString; cdecl;
    function GetVOutrasProd: JString; cdecl;
    function GetVRatAcr: JString; cdecl;
    function GetVRatDesc: JString; cdecl;
    function GetValorAproxTributos: JString; cdecl;
    procedure SetVBC(string_: JString); cdecl;
    procedure SetVDeducISSQN(string_: JString); cdecl;
    procedure SetVDescProd(string_: JString); cdecl;
    procedure SetVOutrasProd(string_: JString); cdecl;
    procedure SetVRatAcr(string_: JString); cdecl;
    procedure SetVRatDesc(string_: JString); cdecl;
    procedure SetValorAproxTributos(string_: JString); cdecl;
  end;
  TJInterfaceOBJPRODUTOXMLSAT = class(TJavaGenericImport<JInterfaceOBJPRODUTOXMLSATClass, JInterfaceOBJPRODUTOXMLSAT>) end;

  JInterfaceOBJXMLCANCELAMENTOClass = interface(JInterfaceOBJXMLClass)
    ['{7025B832-6BCE-45E4-8BC8-F50533414A53}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJXMLCANCELAMENTO')]
  JInterfaceOBJXMLCANCELAMENTO = interface(JInterfaceOBJXML)
    ['{7C37219C-2612-4F66-9931-1EF5AC35C579}']
    function ConstroiObj: Boolean; cdecl;
    function GetAssQRCode: JString; cdecl;
    function GetCNPJ: JString; cdecl;
    function GetCPF_CNPJ: JString; cdecl;
    function GetChaveAcesso: JString; cdecl;
    function GetChaveAcessoACancelar: JString; cdecl;
    function GetDtHrCupomACancelar: JString; cdecl;
    function GetDtHrEmissao: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetIM: JString; cdecl;
    function GetNCfe: JString; cdecl;
    function GetNomeFantasia: JString; cdecl;
    function GetNumSerieSAT: JString; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetVCfe: JString; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetAssQRCode(string_: JString); cdecl;
    procedure SetCNPJ(string_: JString); cdecl;
    procedure SetCPF_CNPJ(string_: JString); cdecl;
    procedure SetChaveAcesso(string_: JString); cdecl;
    procedure SetChaveAcessoACancelar(string_: JString); cdecl;
    procedure SetDtHrCupomACancelar(string_: JString); cdecl;
    procedure SetDtHrEmissao(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetIM(string_: JString); cdecl;
    procedure SetNCfe(string_: JString); cdecl;
    procedure SetNomeFantasia(string_: JString); cdecl;
    procedure SetNumSeriaSAT(string_: JString); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetVCfe(string_: JString); cdecl;
  end;
  TJInterfaceOBJXMLCANCELAMENTO = class(TJavaGenericImport<JInterfaceOBJXMLCANCELAMENTOClass, JInterfaceOBJXMLCANCELAMENTO>) end;

  JInterfaceOBJXMLNFCEClass = interface(JInterfaceOBJXMLClass)
    ['{F74F2A16-6605-43E7-9885-6E6E2CEB8B8F}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJXMLNFCE')]
  JInterfaceOBJXMLNFCE = interface(JInterfaceOBJXML)
    ['{93AB4626-31BE-4CAC-A6F7-E9AB22F91267}']
    function ConstroiInfQRCode(i: Integer; string_: JString): JString; cdecl;
    function ConstroiOBJ: Boolean; cdecl;
    function GetCNPJConsumidor: JString; cdecl;
    function GetCNPJEmit: JString; cdecl;
    function GetCPFConsumidor: JString; cdecl;
    function GetCUF: JString; cdecl;
    function GetChaveConsulta: JString; cdecl;
    function GetDHEmi: JString; cdecl;
    function GetDHRecpto: JString; cdecl;
    function GetDigestValue: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetEnderecoDest: JString; cdecl;
    function GetEnderecoEntrega: JString; cdecl;
    function GetIDEstrConsumidor: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetInfAdFisco: JString; cdecl;
    function GetInfCpl: JString; cdecl;
    function GetInfoPag: JArrayList; cdecl;
    function GetNNF: JString; cdecl;
    function GetNProtocolo: JString; cdecl;
    function GetNomeDest: JString; cdecl;
    function GetProdutos: JArrayList; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetSerie: JString; cdecl;
    function GetTpAmb: JString; cdecl;
    function GetTpEmis: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVFrete: JString; cdecl;
    function GetVNF: JString; cdecl;
    function GetVOutros: JString; cdecl;
    function GetVProd: JString; cdecl;
    function GetVSeg: JString; cdecl;
    function GetVTotTrib: JString; cdecl;
    function GetVTroco: JString; cdecl;
    function GetxMsg: JString; cdecl;
    function ObtemURL(i: Integer; i1: Integer): JString; cdecl;
    function PreencheCabecalho(i: Integer; b: Boolean): TJavaArray<Char>; cdecl;
    function PreencheLegendaProduto(i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheLinhaProduto(implementacaoOBJPRODUTOXMLNFCE: JImplementacaoOBJPRODUTOXMLNFCE; i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetCNPJConsumidor(string_: JString); cdecl;
    procedure SetCNPJEmit(string_: JString); cdecl;
    procedure SetCPFConsumidor(string_: JString); cdecl;
    procedure SetCUF(string_: JString); cdecl;
    procedure SetChaveConsulta(string_: JString); cdecl;
    procedure SetDHEmi(string_: JString); cdecl;
    procedure SetDHRecpto(string_: JString); cdecl;
    procedure SetDigestValue(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetEnderecoDest(string_: JString); cdecl;
    procedure SetEnderecoEntrega(string_: JString); cdecl;
    procedure SetIDEstrConsumidor(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetInfAdFisco(string_: JString); cdecl;
    procedure SetInfCpl(string_: JString); cdecl;
    procedure SetNNF(string_: JString); cdecl;
    procedure SetNProtocolo(string_: JString); cdecl;
    procedure SetNomeDest(string_: JString); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetSerie(string_: JString); cdecl;
    procedure SetTpAmb(string_: JString); cdecl;
    procedure SetTpEmis(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVFrete(string_: JString); cdecl;
    procedure SetVNF(string_: JString); cdecl;
    procedure SetVOutros(string_: JString); cdecl;
    procedure SetVProd(string_: JString); cdecl;
    procedure SetVSeg(string_: JString); cdecl;
    procedure SetVTotTrib(string_: JString); cdecl;
    procedure SetVTroco(string_: JString); cdecl;
    procedure SetxMsg(string_: JString); cdecl;
  end;
  TJInterfaceOBJXMLNFCE = class(TJavaGenericImport<JInterfaceOBJXMLNFCEClass, JInterfaceOBJXMLNFCE>) end;

  JInterfaceOBJXMLSATClass = interface(JInterfaceOBJXMLClass)
    ['{CCB76B9B-996B-4B92-8D28-198FB45A65B4}']
  end;

  [JavaSignature('com/elgin/e1/Impressora/XML/InterfaceOBJXMLSAT')]
  JInterfaceOBJXMLSAT = interface(JInterfaceOBJXML)
    ['{0615D867-9D08-4DCF-85E2-5FDC4CBD1081}']
    function ConstruirObj: Boolean; cdecl;
    function GetCNPJ: JString; cdecl;
    function GetCNPJSH: JString; cdecl;
    function GetCodQRCode: JString; cdecl;
    function GetCodigoBarras: JString; cdecl;
    function GetDocDest: JString; cdecl;
    function GetDocDestRaw: JString; cdecl;
    function GetDtHrEmissao: JString; cdecl;
    function GetEndDest: JString; cdecl;
    function GetEndereco: JString; cdecl;
    function GetIE: JString; cdecl;
    function GetIM: JString; cdecl;
    function GetInfCpl: JString; cdecl;
    function GetNomeDest: JString; cdecl;
    function GetNomeFantasia: JString; cdecl;
    function GetNumDoc: JString; cdecl;
    function GetNumSerieSAT: JString; cdecl;
    function GetPagamentos: JArrayList; cdecl;
    function GetProdutos: JArrayList; cdecl;
    function GetRazaoSocial: JString; cdecl;
    function GetSignAC: JString; cdecl;
    function GetVAcresSubtot: JString; cdecl;
    function GetVCFeLei12741: JString; cdecl;
    function GetVDesc: JString; cdecl;
    function GetVDescSubtot: JString; cdecl;
    function GetVOutras: JString; cdecl;
    function GetVProd: JString; cdecl;
    function GetVTroco: JString; cdecl;
    function GetValorCfe: JString; cdecl;
    function GetXCampo: JString; cdecl;
    function GetXTexto: JString; cdecl;
    function PreencheLinhaProduto(implementacaoOBJPRODUTOXMLSAT: JImplementacaoOBJPRODUTOXMLSAT; i: Integer; i1: Integer): TJavaArray<Char>; cdecl;
    function PreencheOBJ(i: Integer): Boolean; cdecl;
    procedure SetCNPJ(string_: JString); cdecl;
    procedure SetCNPJSH(string_: JString); cdecl;
    procedure SetCodQRCode(string_: JString); cdecl;
    procedure SetCodigoBarras(string_: JString); cdecl;
    procedure SetDocDest(string_: JString); cdecl;
    procedure SetDocDestRaw(string_: JString); cdecl;
    procedure SetDtHrEmissao(string_: JString); cdecl;
    procedure SetEndDest(string_: JString); cdecl;
    procedure SetEndereco(string_: JString); cdecl;
    procedure SetIE(string_: JString); cdecl;
    procedure SetIM(string_: JString); cdecl;
    procedure SetInfCpl(string_: JString); cdecl;
    procedure SetNomeDest(string_: JString); cdecl;
    procedure SetNomeFantasia(string_: JString); cdecl;
    procedure SetNumDoc(string_: JString); cdecl;
    procedure SetNumSerieSAT(string_: JString); cdecl;
    procedure SetProdutos(implementacaoOBJPRODUTOXMLSAT: JImplementacaoOBJPRODUTOXMLSAT); cdecl;
    procedure SetRazaoSocial(string_: JString); cdecl;
    procedure SetSignAC(string_: JString); cdecl;
    procedure SetVAcresSubtot(string_: JString); cdecl;
    procedure SetVCFeLei12741(string_: JString); cdecl;
    procedure SetVDesc(string_: JString); cdecl;
    procedure SetVDescSubtot(string_: JString); cdecl;
    procedure SetVOutras(string_: JString); cdecl;
    procedure SetVProd(string_: JString); cdecl;
    procedure SetVTroco(string_: JString); cdecl;
    procedure SetValorCfe(string_: JString); cdecl;
    procedure SetXCampo(string_: JString); cdecl;
    procedure SetXTexto(string_: JString); cdecl;
  end;
  TJInterfaceOBJXMLSAT = class(TJavaGenericImport<JInterfaceOBJXMLSATClass, JInterfaceOBJXMLSAT>) end;

  JBridgeClass = interface(JObjectClass)
    ['{968EBA77-6710-4AB9-9F5E-634A0EFC839F}']
    {class} function _GetTAG: JString; cdecl;
    {class} function ConsultarStatus: JString; cdecl;
    {class} function ConsultarStatusArq(string_: JString): Integer; cdecl;
    {class} function ConsultarStatusRef(stringRef: JStringRef): Integer; cdecl;
    {class} function ConsultarUltimaTransacao(string_: JString): JString; cdecl;
    {class} function ConsultarUltimaTransacaoArq(string_: JString; string_1: JString): Integer; cdecl;
    {class} function ConsultarUltimaTransacaoRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function GetServer: JString; cdecl;
    {class} function GetServerArq(string_: JString): Integer; cdecl;
    {class} function GetServerRef(stringRef: JStringRef): Integer; cdecl;
    {class} function GetTimeout: JString; cdecl;
    {class} function GetTimeoutArq(string_: JString): Integer; cdecl;
    {class} function GetTimeoutRef(stringRef: JStringRef): Integer; cdecl;
    {class} function ImprimirCupomNfce(string_: JString; i: Integer; string_1: JString): JString; cdecl;
    {class} function ImprimirCupomNfceArq(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function ImprimirCupomNfceRef(string_: JString; i: Integer; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function ImprimirCupomSat(string_: JString): JString; cdecl;
    {class} function ImprimirCupomSatArq(string_: JString; string_1: JString): Integer; cdecl;
    {class} function ImprimirCupomSatCancelamento(string_: JString; string_1: JString): JString; cdecl;
    {class} function ImprimirCupomSatCancelamentoArq(string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function ImprimirCupomSatCancelamentoRef(string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function ImprimirCupomSatRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function IniciaCancelamentoVenda(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString): JString; cdecl;
    {class} function IniciaCancelamentoVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString): Integer; cdecl;
    {class} function IniciaCancelamentoVendaRef(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function IniciaOperacaoAdministrativa(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    {class} function IniciaOperacaoAdministrativaArq(i: Integer; string_: JString; i1: Integer; string_1: JString): Integer; cdecl;
    {class} function IniciaOperacaoAdministrativaRef(i: Integer; string_: JString; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    {class} function IniciaVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    {class} function IniciaVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function IniciaVendaCredito(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    {class} function IniciaVendaCreditoArq(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    {class} function IniciaVendaCreditoRef(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; stringRef: JStringRef): Integer; cdecl;
    {class} function IniciaVendaDebito(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    {class} function IniciaVendaDebitoArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    {class} function IniciaVendaDebitoRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function IniciaVendaRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    {class} function SetSenha(string_: JString; b: Boolean): JString; cdecl;
    {class} function SetSenhaArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    {class} function SetSenhaRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    {class} function SetSenhaServer(string_: JString; b: Boolean): JString; cdecl;
    {class} function SetSenhaServerArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    {class} function SetSenhaServerRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    {class} function SetServer(string_: JString; i: Integer; i1: Integer): JString; cdecl;
    {class} function SetServerArq(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    {class} function SetServerRef(string_: JString; i: Integer; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    {class} function SetTimeout(i: Integer): JString; cdecl;
    {class} function SetTimeoutArq(i: Integer; string_: JString): Integer; cdecl;
    {class} function SetTimeoutRef(i: Integer; stringRef: JStringRef): Integer; cdecl;
    {class} function init: JBridge; cdecl;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/Bridge')]
  JBridge = interface(JObject)
    ['{8D899980-6209-4DAE-AAB5-52622516D793}']
  end;
  TJBridge = class(TJavaGenericImport<JBridgeClass, JBridge>) end;

  JConfigFileClass = interface(JObjectClass)
    ['{81B8238A-9450-49CD-8329-40213A7AF896}']
    {class} function _GetMSG_WRITE_SUCCESS: JString; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function _Getcontext: JContext; cdecl;
    {class} function init: JConfigFile; cdecl;//Deprecated
    {class} property MSG_WRITE_SUCCESS: JString read _GetMSG_WRITE_SUCCESS;
    {class} property TAG: JString read _GetTAG;
    {class} property context: JContext read _Getcontext;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/ConfigFile')]
  JConfigFile = interface(JObject)
    ['{8E7F5801-DCF4-4FFA-8E03-771FFB138F4F}']
  end;
  TJConfigFile = class(TJavaGenericImport<JConfigFileClass, JConfigFile>) end;

  JConfigFileInitializerClass = interface(JInitializerClass)
    ['{1DDE21B5-ABA3-4D74-887D-B9914FDE513C}']
    {class} function init: JConfigFileInitializer; cdecl;//Deprecated
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/ConfigFileInitializer')]
  JConfigFileInitializer = interface(JInitializer)
    ['{0A30D981-F96A-4CA6-9A82-598DF10FF5DC}']
    function create(context: JContext): JConfigFile; cdecl;
    function dependencies: JList; cdecl;
  end;
  TJConfigFileInitializer = class(TJavaGenericImport<JConfigFileInitializerClass, JConfigFileInitializer>) end;

  JConstantesClass = interface(JObjectClass)
    ['{E82B0E0B-5734-4242-85B5-E7301D55564F}']
    {class} function _GetADMINISTRATIVA: Integer; cdecl;
    {class} function _GetA_VISTA: Integer; cdecl;
    {class} function _GetBLOQUEIO: Integer; cdecl;
    {class} function _GetCANCELAMENTO: Integer; cdecl;
    {class} function _GetCARTAO_CREDITO: Integer; cdecl;
    {class} function _GetCARTAO_DEBITO: Integer; cdecl;
    {class} function _GetCONFIGURACAO: Integer; cdecl;
    {class} function _GetDATE_FORMAT: JString; cdecl;
    {class} function _GetDF_ASS_QRCODE: JString; cdecl;
    {class} function _GetDF_CSC: JString; cdecl;
    {class} function _GetDF_ID_TRANSACAO: Integer; cdecl;
    {class} function _GetDF_INDEXCSC: Integer; cdecl;
    {class} function _GetDF_NOVA_SENHA: JString; cdecl;
    {class} function _GetDF_NS_HABILITADA: Boolean; cdecl;
    {class} function _GetDF_PDV: JString; cdecl;
    {class} function _GetDF_XML: JString; cdecl;
    {class} function _GetDLL_ADMINISTRATIVA: Integer; cdecl;
    {class} function _GetDLL_A_VISTA: Integer; cdecl;
    {class} function _GetDLL_CARTAO_CREDITO: Integer; cdecl;
    {class} function _GetDLL_CARTAO_DEBITO: Integer; cdecl;
    {class} function _GetDLL_CONFIGURACAO: Integer; cdecl;
    {class} function _GetDLL_INSTALACAO: Integer; cdecl;
    {class} function _GetDLL_MANUTENCAO: Integer; cdecl;
    {class} function _GetDLL_PARCELADO_EMISSOR: Integer; cdecl;
    {class} function _GetDLL_PARCELADO_ESTABELECIMENTO: Integer; cdecl;
    {class} function _GetDLL_PRINT_XML_NFCE: Integer; cdecl;
    {class} function _GetDLL_PRINT_XML_SAT: Integer; cdecl;
    {class} function _GetDLL_PRINT_XML_SAT_CL: Integer; cdecl;
    {class} function _GetDLL_REIMPRESSAO: Integer; cdecl;
    {class} function _GetDLL_TESTE_COMUNICACAO: Integer; cdecl;
    {class} function _GetERROR: Integer; cdecl;
    {class} function _GetETX: Byte; cdecl;
    {class} function _GetEXTRA_KEY_CODE: JString; cdecl;
    {class} function _GetEXTRA_KEY_MSG: JString; cdecl;
    {class} function _GetFALSE: Integer; cdecl;
    {class} function _GetINSTALACAO: Integer; cdecl;
    {class} function _GetIPV4_REGEX: JString; cdecl;
    {class} function _GetJSON_CODE: JString; cdecl;
    {class} function _GetJSON_CONTENT: JString; cdecl;
    {class} function _GetJSON_OPERATION: JString; cdecl;
    {class} function _GetJSON_PARAMS: JString; cdecl;
    {class} function _GetJSON_PASSWORD: JString; cdecl;
    {class} function _GetMANUTENCAO: Integer; cdecl;
    {class} function _GetOP_GET_LAST_TRANSACTION: Integer; cdecl;
    {class} function _GetOP_PRINT_XML_NFCE: Integer; cdecl;
    {class} function _GetOP_PRINT_XML_SAT: Integer; cdecl;
    {class} function _GetOP_PRINT_XML_SAT_CL: Integer; cdecl;
    {class} function _GetOP_SET_SENHA_SERVER: Integer; cdecl;
    {class} function _GetPARAM_ASS_QRCODE: JString; cdecl;
    {class} function _GetPARAM_CSC: JString; cdecl;
    {class} function _GetPARAM_DATA_HORA: JString; cdecl;
    {class} function _GetPARAM_ID_TRANSACAO: JString; cdecl;
    {class} function _GetPARAM_INDEXCSC: JString; cdecl;
    {class} function _GetPARAM_NOVA_SENHA: JString; cdecl;
    {class} function _GetPARAM_NSU: JString; cdecl;
    {class} function _GetPARAM_NS_HABILITADA: JString; cdecl;
    {class} function _GetPARAM_NUM_PARCELAS: JString; cdecl;
    {class} function _GetPARAM_PDV: JString; cdecl;
    {class} function _GetPARAM_TIPO_CARTAO: JString; cdecl;
    {class} function _GetPARAM_TIPO_FINANCIAMENTO: JString; cdecl;
    {class} function _GetPARAM_VALOR_TOTAL: JString; cdecl;
    {class} function _GetPARAM_XML: JString; cdecl;
    {class} function _GetPARCELADO_EMISSOR: Integer; cdecl;
    {class} function _GetPARCELADO_ESTABELECIMENTO: Integer; cdecl;
    {class} function _GetPORTA_STATUS: Integer; cdecl;
    {class} function _GetPORTA_TRANSACAO: Integer; cdecl;
    {class} function _GetREIMPRESSAO: Integer; cdecl;
    {class} function _GetSEP: Char; cdecl;
    {class} function _GetSHORT_DATE_FORMAT: JString; cdecl;
    {class} function _GetSKIP_DATA_HORA: JString; cdecl;
    {class} function _GetSKIP_INTEGER: Integer; cdecl;
    {class} function _GetSKIP_NSU: JString; cdecl;
    {class} function _GetSKIP_NUM_PARCELAS: Integer; cdecl;
    {class} function _GetSKIP_STRING: JString; cdecl;
    {class} function _GetSKIP_TIPO_CARTAO: Integer; cdecl;
    {class} function _GetSKIP_TIPO_FINANCIAMENTO: Integer; cdecl;
    {class} function _GetSKIP_VALOR_TOTAL: Integer; cdecl;
    {class} function _GetSTATUS_BLOQUEIO: Integer; cdecl;
    {class} function _GetSTATUS_OFF: Integer; cdecl;
    {class} function _GetSTATUS_TRANSACAO: Integer; cdecl;
    {class} function _GetSTX: Byte; cdecl;
    {class} function _GetSUCCESS: Integer; cdecl;
    {class} function _GetTESTE_COMUNICACAO: Integer; cdecl;
    {class} function _GetTIMEOUT_RESPOSTA: Integer; cdecl;
    {class} function _GetTIMEOUT_SOCKET: Integer; cdecl;
    {class} function _GetTRANSACAO: Integer; cdecl;
    {class} function _GetTRUE: Integer; cdecl;
    {class} function _GetVENDA: Integer; cdecl;
    {class} function init: JConstantes; cdecl;//Deprecated
    {class} property ADMINISTRATIVA: Integer read _GetADMINISTRATIVA;
    {class} property A_VISTA: Integer read _GetA_VISTA;
    {class} property BLOQUEIO: Integer read _GetBLOQUEIO;
    {class} property CANCELAMENTO: Integer read _GetCANCELAMENTO;
    {class} property CARTAO_CREDITO: Integer read _GetCARTAO_CREDITO;
    {class} property CARTAO_DEBITO: Integer read _GetCARTAO_DEBITO;
    {class} property CONFIGURACAO: Integer read _GetCONFIGURACAO;
    {class} property DATE_FORMAT: JString read _GetDATE_FORMAT;
    {class} property DF_ASS_QRCODE: JString read _GetDF_ASS_QRCODE;
    {class} property DF_CSC: JString read _GetDF_CSC;
    {class} property DF_ID_TRANSACAO: Integer read _GetDF_ID_TRANSACAO;
    {class} property DF_INDEXCSC: Integer read _GetDF_INDEXCSC;
    {class} property DF_NOVA_SENHA: JString read _GetDF_NOVA_SENHA;
    {class} property DF_NS_HABILITADA: Boolean read _GetDF_NS_HABILITADA;
    {class} property DF_PDV: JString read _GetDF_PDV;
    {class} property DF_XML: JString read _GetDF_XML;
    {class} property DLL_ADMINISTRATIVA: Integer read _GetDLL_ADMINISTRATIVA;
    {class} property DLL_A_VISTA: Integer read _GetDLL_A_VISTA;
    {class} property DLL_CARTAO_CREDITO: Integer read _GetDLL_CARTAO_CREDITO;
    {class} property DLL_CARTAO_DEBITO: Integer read _GetDLL_CARTAO_DEBITO;
    {class} property DLL_CONFIGURACAO: Integer read _GetDLL_CONFIGURACAO;
    {class} property DLL_INSTALACAO: Integer read _GetDLL_INSTALACAO;
    {class} property DLL_MANUTENCAO: Integer read _GetDLL_MANUTENCAO;
    {class} property DLL_PARCELADO_EMISSOR: Integer read _GetDLL_PARCELADO_EMISSOR;
    {class} property DLL_PARCELADO_ESTABELECIMENTO: Integer read _GetDLL_PARCELADO_ESTABELECIMENTO;
    {class} property DLL_PRINT_XML_NFCE: Integer read _GetDLL_PRINT_XML_NFCE;
    {class} property DLL_PRINT_XML_SAT: Integer read _GetDLL_PRINT_XML_SAT;
    {class} property DLL_PRINT_XML_SAT_CL: Integer read _GetDLL_PRINT_XML_SAT_CL;
    {class} property DLL_REIMPRESSAO: Integer read _GetDLL_REIMPRESSAO;
    {class} property DLL_TESTE_COMUNICACAO: Integer read _GetDLL_TESTE_COMUNICACAO;
    {class} property ERROR: Integer read _GetERROR;
    {class} property ETX: Byte read _GetETX;
    {class} property EXTRA_KEY_CODE: JString read _GetEXTRA_KEY_CODE;
    {class} property EXTRA_KEY_MSG: JString read _GetEXTRA_KEY_MSG;
    {class} property FALSE: Integer read _GetFALSE;
    {class} property INSTALACAO: Integer read _GetINSTALACAO;
    {class} property IPV4_REGEX: JString read _GetIPV4_REGEX;
    {class} property JSON_CODE: JString read _GetJSON_CODE;
    {class} property JSON_CONTENT: JString read _GetJSON_CONTENT;
    {class} property JSON_OPERATION: JString read _GetJSON_OPERATION;
    {class} property JSON_PARAMS: JString read _GetJSON_PARAMS;
    {class} property JSON_PASSWORD: JString read _GetJSON_PASSWORD;
    {class} property MANUTENCAO: Integer read _GetMANUTENCAO;
    {class} property OP_GET_LAST_TRANSACTION: Integer read _GetOP_GET_LAST_TRANSACTION;
    {class} property OP_PRINT_XML_NFCE: Integer read _GetOP_PRINT_XML_NFCE;
    {class} property OP_PRINT_XML_SAT: Integer read _GetOP_PRINT_XML_SAT;
    {class} property OP_PRINT_XML_SAT_CL: Integer read _GetOP_PRINT_XML_SAT_CL;
    {class} property OP_SET_SENHA_SERVER: Integer read _GetOP_SET_SENHA_SERVER;
    {class} property PARAM_ASS_QRCODE: JString read _GetPARAM_ASS_QRCODE;
    {class} property PARAM_CSC: JString read _GetPARAM_CSC;
    {class} property PARAM_DATA_HORA: JString read _GetPARAM_DATA_HORA;
    {class} property PARAM_ID_TRANSACAO: JString read _GetPARAM_ID_TRANSACAO;
    {class} property PARAM_INDEXCSC: JString read _GetPARAM_INDEXCSC;
    {class} property PARAM_NOVA_SENHA: JString read _GetPARAM_NOVA_SENHA;
    {class} property PARAM_NSU: JString read _GetPARAM_NSU;
    {class} property PARAM_NS_HABILITADA: JString read _GetPARAM_NS_HABILITADA;
    {class} property PARAM_NUM_PARCELAS: JString read _GetPARAM_NUM_PARCELAS;
    {class} property PARAM_PDV: JString read _GetPARAM_PDV;
    {class} property PARAM_TIPO_CARTAO: JString read _GetPARAM_TIPO_CARTAO;
    {class} property PARAM_TIPO_FINANCIAMENTO: JString read _GetPARAM_TIPO_FINANCIAMENTO;
    {class} property PARAM_VALOR_TOTAL: JString read _GetPARAM_VALOR_TOTAL;
    {class} property PARAM_XML: JString read _GetPARAM_XML;
    {class} property PARCELADO_EMISSOR: Integer read _GetPARCELADO_EMISSOR;
    {class} property PARCELADO_ESTABELECIMENTO: Integer read _GetPARCELADO_ESTABELECIMENTO;
    {class} property PORTA_STATUS: Integer read _GetPORTA_STATUS;
    {class} property PORTA_TRANSACAO: Integer read _GetPORTA_TRANSACAO;
    {class} property REIMPRESSAO: Integer read _GetREIMPRESSAO;
    {class} property SEP: Char read _GetSEP;
    {class} property SHORT_DATE_FORMAT: JString read _GetSHORT_DATE_FORMAT;
    {class} property SKIP_DATA_HORA: JString read _GetSKIP_DATA_HORA;
    {class} property SKIP_INTEGER: Integer read _GetSKIP_INTEGER;
    {class} property SKIP_NSU: JString read _GetSKIP_NSU;
    {class} property SKIP_NUM_PARCELAS: Integer read _GetSKIP_NUM_PARCELAS;
    {class} property SKIP_STRING: JString read _GetSKIP_STRING;
    {class} property SKIP_TIPO_CARTAO: Integer read _GetSKIP_TIPO_CARTAO;
    {class} property SKIP_TIPO_FINANCIAMENTO: Integer read _GetSKIP_TIPO_FINANCIAMENTO;
    {class} property SKIP_VALOR_TOTAL: Integer read _GetSKIP_VALOR_TOTAL;
    {class} property STATUS_BLOQUEIO: Integer read _GetSTATUS_BLOQUEIO;
    {class} property STATUS_OFF: Integer read _GetSTATUS_OFF;
    {class} property STATUS_TRANSACAO: Integer read _GetSTATUS_TRANSACAO;
    {class} property STX: Byte read _GetSTX;
    {class} property SUCCESS: Integer read _GetSUCCESS;
    {class} property TESTE_COMUNICACAO: Integer read _GetTESTE_COMUNICACAO;
    {class} property TIMEOUT_RESPOSTA: Integer read _GetTIMEOUT_RESPOSTA;
    {class} property TIMEOUT_SOCKET: Integer read _GetTIMEOUT_SOCKET;
    {class} property TRANSACAO: Integer read _GetTRANSACAO;
    {class} property TRUE: Integer read _GetTRUE;
    {class} property VENDA: Integer read _GetVENDA;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/Constantes')]
  JConstantes = interface(JObject)
    ['{DFA2FF1A-8FCF-471B-B960-9FE835792C63}']
  end;
  TJConstantes = class(TJavaGenericImport<JConstantesClass, JConstantes>) end;

  JInterfaceBridgeClass = interface(IJavaClass)
    ['{19C7E403-DD49-44B7-BC47-048413706960}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/InterfaceBridge')]
  JInterfaceBridge = interface(IJavaInstance)
    ['{77593C52-38B5-473E-BBAC-1FB155CD259D}']
    function ConsultarStatus: JString; cdecl;
    function ConsultarStatusArq(string_: JString): Integer; cdecl;
    function ConsultarStatusRef(stringRef: JStringRef): Integer; cdecl;
    function ConsultarUltimaTransacao(string_: JString): JString; cdecl;
    function ConsultarUltimaTransacaoArq(string_: JString; string_1: JString): Integer; cdecl;
    function ConsultarUltimaTransacaoRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    function GetServer: JString; cdecl;
    function GetServerArq(string_: JString): Integer; cdecl;
    function GetServerRef(stringRef: JStringRef): Integer; cdecl;
    function GetTimeout: JString; cdecl;
    function GetTimeoutArq(string_: JString): Integer; cdecl;
    function GetTimeoutRef(stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomNfce(string_: JString; i: Integer; string_1: JString): JString; cdecl;
    function ImprimirCupomNfceArq(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function ImprimirCupomNfceRef(string_: JString; i: Integer; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomSat(string_: JString): JString; cdecl;
    function ImprimirCupomSatArq(string_: JString; string_1: JString): Integer; cdecl;
    function ImprimirCupomSatCancelamento(string_: JString; string_1: JString): JString; cdecl;
    function ImprimirCupomSatCancelamentoArq(string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function ImprimirCupomSatCancelamentoRef(string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomSatRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaCancelamentoVenda(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString): JString; cdecl;
    function IniciaCancelamentoVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString): Integer; cdecl;
    function IniciaCancelamentoVendaRef(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaOperacaoAdministrativa(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    function IniciaOperacaoAdministrativaArq(i: Integer; string_: JString; i1: Integer; string_1: JString): Integer; cdecl;
    function IniciaOperacaoAdministrativaRef(i: Integer; string_: JString; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    function IniciaVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function IniciaVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function IniciaVendaCredito(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    function IniciaVendaCreditoArq(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    function IniciaVendaCreditoRef(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; stringRef: JStringRef): Integer; cdecl;
    function IniciaVendaDebito(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function IniciaVendaDebitoArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function IniciaVendaDebitoRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaVendaRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function SetSenha(string_: JString; b: Boolean; b1: Boolean): JString; cdecl;
    function SetSenhaArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    function SetSenhaRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    function SetSenhaServer(string_: JString; b: Boolean): JString; cdecl;
    function SetSenhaServerArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    function SetSenhaServerRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    function SetServer(string_: JString; i: Integer; i1: Integer; b: Boolean): JString; cdecl;
    function SetServerArq(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function SetServerRef(string_: JString; i: Integer; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    function SetTimeout(i: Integer; b: Boolean): JString; cdecl;
    function SetTimeoutArq(i: Integer; string_: JString): Integer; cdecl;
    function SetTimeoutRef(i: Integer; stringRef: JStringRef): Integer; cdecl;
  end;
  TJInterfaceBridge = class(TJavaGenericImport<JInterfaceBridgeClass, JInterfaceBridge>) end;

  JImplementacaoBridgeClass = interface(JInterfaceBridgeClass)
    ['{17D713FD-D816-4BB0-AE29-F25B27C2F630}']
    {class} function _GetTAG: JString; cdecl;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/ImplementacaoBridge')]
  JImplementacaoBridge = interface(JInterfaceBridge)
    ['{82F3F4F0-60FA-4391-893D-DCC8CEDAC2A6}']
    function ConsultarStatus: JString; cdecl;
    function ConsultarStatusArq(string_: JString): Integer; cdecl;
    function ConsultarStatusRef(stringRef: JStringRef): Integer; cdecl;
    function ConsultarUltimaTransacao(string_: JString): JString; cdecl;
    function ConsultarUltimaTransacaoArq(string_: JString; string_1: JString): Integer; cdecl;
    function ConsultarUltimaTransacaoRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    function GetServer: JString; cdecl;
    function GetServerArq(string_: JString): Integer; cdecl;
    function GetServerRef(stringRef: JStringRef): Integer; cdecl;
    function GetTimeout: JString; cdecl;
    function GetTimeoutArq(string_: JString): Integer; cdecl;
    function GetTimeoutRef(stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomNfce(string_: JString; i: Integer; string_1: JString): JString; cdecl;
    function ImprimirCupomNfceArq(string_: JString; i: Integer; string_1: JString; string_2: JString): Integer; cdecl;
    function ImprimirCupomNfceRef(string_: JString; i: Integer; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomSat(string_: JString): JString; cdecl;
    function ImprimirCupomSatArq(string_: JString; string_1: JString): Integer; cdecl;
    function ImprimirCupomSatCancelamento(string_: JString; string_1: JString): JString; cdecl;
    function ImprimirCupomSatCancelamentoArq(string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function ImprimirCupomSatCancelamentoRef(string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function ImprimirCupomSatRef(string_: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaCancelamentoVenda(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString): JString; cdecl;
    function IniciaCancelamentoVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString): Integer; cdecl;
    function IniciaCancelamentoVendaRef(i: Integer; string_: JString; string_1: JString; string_2: JString; string_3: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaOperacaoAdministrativa(i: Integer; string_: JString; i1: Integer): JString; cdecl;
    function IniciaOperacaoAdministrativaArq(i: Integer; string_: JString; i1: Integer; string_1: JString): Integer; cdecl;
    function IniciaOperacaoAdministrativaRef(i: Integer; string_: JString; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    function IniciaVenda(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function IniciaVendaArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function IniciaVendaCredito(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): JString; cdecl;
    function IniciaVendaCreditoArq(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): Integer; cdecl;
    function IniciaVendaCreditoRef(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; stringRef: JStringRef): Integer; cdecl;
    function IniciaVendaDebito(i: Integer; string_: JString; string_1: JString): JString; cdecl;
    function IniciaVendaDebitoArq(i: Integer; string_: JString; string_1: JString; string_2: JString): Integer; cdecl;
    function IniciaVendaDebitoRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function IniciaVendaRef(i: Integer; string_: JString; string_1: JString; stringRef: JStringRef): Integer; cdecl;
    function SetSenha(string_: JString; b: Boolean; b1: Boolean): JString; cdecl;
    function SetSenhaArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    function SetSenhaRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    function SetSenhaServer(string_: JString; b: Boolean): JString; cdecl;
    function SetSenhaServerArq(string_: JString; b: Boolean; string_1: JString): Integer; cdecl;
    function SetSenhaServerRef(string_: JString; b: Boolean; stringRef: JStringRef): Integer; cdecl;
    function SetServer(string_: JString; i: Integer; i1: Integer; b: Boolean): JString; cdecl;
    function SetServerArq(string_: JString; i: Integer; i1: Integer; string_1: JString): Integer; cdecl;
    function SetServerRef(string_: JString; i: Integer; i1: Integer; stringRef: JStringRef): Integer; cdecl;
    function SetTimeout(i: Integer; b: Boolean): JString; cdecl;
    function SetTimeoutArq(i: Integer; string_: JString): Integer; cdecl;
    function SetTimeoutRef(i: Integer; stringRef: JStringRef): Integer; cdecl;
  end;
  TJImplementacaoBridge = class(TJavaGenericImport<JImplementacaoBridgeClass, JImplementacaoBridge>) end;

  JTcpSocketClass = interface(JObjectClass)
    ['{E25D6E0D-44C9-4429-9CE1-9C56D46EF171}']
    {class} function _GetTAG: JString; cdecl;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/TcpSocket')]
  JTcpSocket = interface(JObject)
    ['{676EC83F-806D-4A11-93C9-C675D6042211}']
  end;
  TJTcpSocket = class(TJavaGenericImport<JTcpSocketClass, JTcpSocket>) end;

  JTcpSocket_1TcpConnectClass = interface(JRunnableClass)
    ['{4E743F95-A0D3-4E65-A34C-806D2B31A0AD}']
    {class} function _Getthis: JTcpSocket; cdecl;
    {class} function init: JTcpSocket_1TcpConnect; cdecl;//Deprecated
    {class} property this: JTcpSocket read _Getthis;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/TcpSocket$1TcpConnect')]
  JTcpSocket_1TcpConnect = interface(JRunnable)
    ['{F7CF681B-8CC1-4C85-813B-4AEB90D05A0A}']
    function isError: Boolean; cdecl;
    procedure run; cdecl;
  end;
  TJTcpSocket_1TcpConnect = class(TJavaGenericImport<JTcpSocket_1TcpConnectClass, JTcpSocket_1TcpConnect>) end;

  JTcpSocket_1TcpReadAllClass = interface(JRunnableClass)
    ['{E83FFF15-161A-478A-B95A-8F8CFEA4BBBE}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/TcpSocket$1TcpReadAll')]
  JTcpSocket_1TcpReadAll = interface(JRunnable)
    ['{C40A24C2-0D1C-4D03-B329-197EB61D85C9}']
    function getNumReadTotal: Integer; cdecl;
    function getRdBuffer: TJavaArray<Byte>; cdecl;
    function isError: Boolean; cdecl;
    procedure run; cdecl;
  end;
  TJTcpSocket_1TcpReadAll = class(TJavaGenericImport<JTcpSocket_1TcpReadAllClass, JTcpSocket_1TcpReadAll>) end;

  JTcpSocket_1TcpWriteClass = interface(JRunnableClass)
    ['{7E167152-AB65-47C2-A3D4-A6AE6B9AEBA1}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Brigde/TcpSocket$1TcpWrite')]
  JTcpSocket_1TcpWrite = interface(JRunnable)
    ['{176B2666-3406-496B-8794-17882458A6AA}']
    function getSz: Integer; cdecl;
    function isError: Boolean; cdecl;
    procedure run; cdecl;
  end;
  TJTcpSocket_1TcpWrite = class(TJavaGenericImport<JTcpSocket_1TcpWriteClass, JTcpSocket_1TcpWrite>) end;

  JElginPayControllerClass = interface(JThreadClass)
    ['{FD1545DE-8BB5-44CF-A1BE-EF2B69E7C46A}']
    {class} function init(entradaTransacao: JEntradaTransacao; personalizacao: JPersonalizacao; handler: JHandler; context: JContext): JElginPayController; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController')]
  JElginPayController = interface(JThread)
    ['{A6535CBB-F71F-4133-8952-90D861830C46}']
    function getIdTransacao: JString; cdecl;
    function getPdv: JString; cdecl;
    function getTipoImpressao: JTipoImpressao; cdecl;
    function isColetarInfoCupomFiscal: Boolean; cdecl;
    function isEmitirCupomFiscal: Boolean; cdecl;
    function obtemDadosAutomacao: JDadosAutomacao; cdecl;
    procedure run; cdecl;
    procedure setColetarInfoCupomFiscal(b: Boolean); cdecl;
    procedure setEmitirCupomFiscal(b: Boolean); cdecl;
    procedure setIdTransacao(string_: JString); cdecl;
    procedure setPdv(string_: JString); cdecl;
    procedure setTipoImpressao(tipoImpressao: JTipoImpressao); cdecl;
  end;
  TJElginPayController = class(TJavaGenericImport<JElginPayControllerClass, JElginPayController>) end;

  JElginPayController_1Class = interface(JHandlerClass)
    ['{3374E3DF-AD75-41F5-BB5F-C0830D89C22F}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$1')]
  JElginPayController_1 = interface(JHandler)
    ['{92442FC7-4C57-4E6E-9009-2618BCAB1110}']
    procedure handleMessage(message: JMessage); cdecl;
  end;
  TJElginPayController_1 = class(TJavaGenericImport<JElginPayController_1Class, JElginPayController_1>) end;

  JElginPayController_10Class = interface(JDialogInterface_OnClickListenerClass)
    ['{6087D88C-53CA-49AE-83A9-1620E4392205}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$10')]
  JElginPayController_10 = interface(JDialogInterface_OnClickListener)
    ['{333DB546-1E7F-4CCB-8C87-065938E3B1A7}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_10 = class(TJavaGenericImport<JElginPayController_10Class, JElginPayController_10>) end;

  JElginPayController_11Class = interface(JDialogInterface_OnClickListenerClass)
    ['{294CD90F-F2A9-4503-9DC7-49F2D849D330}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$11')]
  JElginPayController_11 = interface(JDialogInterface_OnClickListener)
    ['{925D87E5-47BE-4105-8BDD-080170418BE6}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_11 = class(TJavaGenericImport<JElginPayController_11Class, JElginPayController_11>) end;

  JElginPayController_2Class = interface(JDialogInterface_OnClickListenerClass)
    ['{7BA3122D-C42D-4404-82BF-3CF5E6104EE5}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$2')]
  JElginPayController_2 = interface(JDialogInterface_OnClickListener)
    ['{858AEA5F-B18E-47A3-9E6A-13E1A0387D49}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_2 = class(TJavaGenericImport<JElginPayController_2Class, JElginPayController_2>) end;

  JElginPayController_3Class = interface(JDialogInterface_OnClickListenerClass)
    ['{F13E8F31-42A6-480F-8F97-916B9630AC9C}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$3')]
  JElginPayController_3 = interface(JDialogInterface_OnClickListener)
    ['{A28F9F17-67A2-4190-B384-7A85A9B0762E}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_3 = class(TJavaGenericImport<JElginPayController_3Class, JElginPayController_3>) end;

  JElginPayController_4Class = interface(JDialogInterface_OnClickListenerClass)
    ['{4ADD08C3-015F-4B06-BA5C-CA64A65ECCDC}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$4')]
  JElginPayController_4 = interface(JDialogInterface_OnClickListener)
    ['{E81346B5-2D2C-4292-AAE6-41545AEC6064}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_4 = class(TJavaGenericImport<JElginPayController_4Class, JElginPayController_4>) end;

  JElginPayController_5Class = interface(JDialogInterface_OnClickListenerClass)
    ['{D978EBF9-178C-4164-B6E5-F3AFB4217AA4}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$5')]
  JElginPayController_5 = interface(JDialogInterface_OnClickListener)
    ['{1AFA6208-3F09-47D9-9A38-44F3032670E8}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_5 = class(TJavaGenericImport<JElginPayController_5Class, JElginPayController_5>) end;

  JElginPayController_6Class = interface(JDialogInterface_OnClickListenerClass)
    ['{622A5920-DEFE-4160-943D-47F8EC612D77}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$6')]
  JElginPayController_6 = interface(JDialogInterface_OnClickListener)
    ['{019EB2A3-0CDB-4FF2-A67D-168BC0F162D0}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_6 = class(TJavaGenericImport<JElginPayController_6Class, JElginPayController_6>) end;

  JElginPayController_7Class = interface(JDialogInterface_OnClickListenerClass)
    ['{47CCF8F2-48CF-429D-AFDB-17C1E3618468}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$7')]
  JElginPayController_7 = interface(JDialogInterface_OnClickListener)
    ['{45007DB9-2B83-4C7B-AB9A-90CA318832AC}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_7 = class(TJavaGenericImport<JElginPayController_7Class, JElginPayController_7>) end;

  JElginPayController_8Class = interface(JDialogInterface_OnClickListenerClass)
    ['{8891C23D-3641-4042-89FC-3DE103D5946F}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$8')]
  JElginPayController_8 = interface(JDialogInterface_OnClickListener)
    ['{BFFCDABD-09D1-4A06-9D66-26F51DEC0AD0}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_8 = class(TJavaGenericImport<JElginPayController_8Class, JElginPayController_8>) end;

  JElginPayController_9Class = interface(JDialogInterface_OnClickListenerClass)
    ['{ED1B67AA-39C5-4553-AF80-C7712BFE1944}']
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/ElginPayController$9')]
  JElginPayController_9 = interface(JDialogInterface_OnClickListener)
    ['{B4827B79-C19E-439A-A298-667B1C2D4509}']
    procedure onClick(dialogInterface: JDialogInterface; i: Integer); cdecl;
  end;
  TJElginPayController_9 = class(TJavaGenericImport<JElginPayController_9Class, JElginPayController_9>) end;

  JTipoImpressaoClass = interface(JEnumClass)
    ['{CA5DB21D-91B7-4A99-878B-95E7858FA4E4}']
    {class} function _GetIMPRESSAO_DESABILITADA: JTipoImpressao; cdecl;
    {class} function _GetIMPRESSAO_DIRETA_VIA_CLIENTE: JTipoImpressao; cdecl;
    {class} function _GetIMPRESSAO_DIRETA_VIA_CLIENTE_VIA_ESTABELECIMENTO: JTipoImpressao; cdecl;
    {class} function _GetIMPRESSAO_DIRETA_VIA_ESTABELECIMENTO: JTipoImpressao; cdecl;
    {class} function _GetIMPRESSAO_INDEFINIDA: JTipoImpressao; cdecl;
    {class} function _GetIMPRESSAO_PADRAO: JTipoImpressao; cdecl;
    {class} function obtemTipoImpressao(i: Integer): JTipoImpressao; cdecl; overload;
    {class} function valueOf(string_: JString): JTipoImpressao; cdecl;
    {class} function values: TJavaObjectArray<JTipoImpressao>; cdecl;//Deprecated
    {class} property IMPRESSAO_DESABILITADA: JTipoImpressao read _GetIMPRESSAO_DESABILITADA;
    {class} property IMPRESSAO_DIRETA_VIA_CLIENTE: JTipoImpressao read _GetIMPRESSAO_DIRETA_VIA_CLIENTE;
    {class} property IMPRESSAO_DIRETA_VIA_CLIENTE_VIA_ESTABELECIMENTO: JTipoImpressao read _GetIMPRESSAO_DIRETA_VIA_CLIENTE_VIA_ESTABELECIMENTO;
    {class} property IMPRESSAO_DIRETA_VIA_ESTABELECIMENTO: JTipoImpressao read _GetIMPRESSAO_DIRETA_VIA_ESTABELECIMENTO;
    {class} property IMPRESSAO_INDEFINIDA: JTipoImpressao read _GetIMPRESSAO_INDEFINIDA;
    {class} property IMPRESSAO_PADRAO: JTipoImpressao read _GetIMPRESSAO_PADRAO;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Controller/TipoImpressao')]
  JTipoImpressao = interface(JEnum)
    ['{26F2C246-0BB1-48D6-8E81-B87DC795140A}']
    function obtemNome: JString; cdecl;
    function obtemTipoImpressao: Integer; cdecl; overload;
  end;
  TJTipoImpressao = class(TJavaGenericImport<JTipoImpressaoClass, JTipoImpressao>) end;

  JElginPayClass = interface(JObjectClass)
    ['{875331A2-B637-4B95-9B2C-D6290F8EE26F}']
    {class} function init: JElginPay; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/ElginPay')]
  JElginPay = interface(JObject)
    ['{A46997F1-910F-4535-BDCF-C595C9B4FA4A}']
    function getIdTransacao: JString; cdecl;
    function getPdv: JString; cdecl;
    function getTipoImpressao: JTipoImpressao; cdecl;
    procedure inciarPagamentoCredito(string_: JString; i: Integer; context: JContext; handler: JHandler); cdecl;
    procedure iniciaCancelamentoVenda(string_: JString; string_1: JString; string_2: JString; context: JContext; handler: JHandler); cdecl;
    procedure iniciaOperacaoAdministrativa(context: JContext; handler: JHandler); cdecl; overload;
    procedure iniciaOperacaoAdministrativa(operacoes: JOperacoes; context: JContext; handler: JHandler); cdecl; overload;
    procedure iniciaVenda(string_: JString; context: JContext; handler: JHandler); cdecl;
    procedure iniciaVendaCredito(string_: JString; i: Integer; i1: Integer; context: JContext; handler: JHandler); cdecl;
    procedure iniciaVendaDebito(string_: JString; context: JContext; handler: JHandler); cdecl;
    procedure iniciarCancelamentoVenda(string_: JString; context: JContext; handler: JHandler); cdecl; overload;
    procedure iniciarCancelamentoVenda(string_: JString; string_1: JString; string_2: JString; context: JContext; handler: JHandler); cdecl; overload;
    procedure iniciarOperacaoAdministrativa(context: JContext; handler: JHandler); cdecl;
    procedure iniciarPagamentoCredito(string_: JString; i: Integer; i1: Integer; context: JContext; handler: JHandler); cdecl;
    procedure iniciarPagamentoDebito(string_: JString; context: JContext; handler: JHandler); cdecl;
    function isColetarInfoCupomFiscal: Boolean; cdecl;
    procedure setColetarInfoCupomFiscal(b: Boolean); cdecl;
    procedure setIdTransacao(string_: JString); cdecl;
    procedure setPdv(string_: JString); cdecl;
    procedure setPersonalizacao(personalizacao: JPersonalizacao); cdecl;
    procedure setTipoImpressao(tipoImpressao: JTipoImpressao); cdecl;
  end;
  TJElginPay = class(TJavaGenericImport<JElginPayClass, JElginPay>) end;

  JPagamento_UtilsClass = interface(JObjectClass)
    ['{24E2E9B0-232D-4FA0-B924-01D83BFD4F97}']
    {class} function _GetEXTRA_KEY_CUPOM_FISCAL: JString; cdecl;
    {class} function _GetEXTRA_KEY_ID_TRANSACAO: JString; cdecl;
    {class} function _GetEXTRA_KEY_PDV: JString; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function informarCupomFiscal(string_: JString; b: Boolean): JString; cdecl;
    {class} function informarIdentificadorSaidaTransacao(string_: JString; string_1: JString): JString; cdecl;
    {class} function informarPdvSaidaTransacao(string_: JString; string_1: JString): JString; cdecl;
    {class} function init: JPagamento_Utils; cdecl;//Deprecated
    {class} function isAlphaNumeric(string_: JString): Boolean; cdecl;
    {class} function isHex(string_: JString): Boolean; cdecl;
    {class} function isIdTransacaoValid(i: Integer): Boolean; cdecl;
    {class} function isNumeric(string_: JString): Boolean; cdecl;
    {class} procedure logarEntrada(string_: JString; string_1: JString); cdecl;
    {class} function retiraPontoVirgula(string_: JString): JString; cdecl;
    {class} function sha256hex(string_: JString): JString; cdecl;
    {class} property EXTRA_KEY_CUPOM_FISCAL: JString read _GetEXTRA_KEY_CUPOM_FISCAL;
    {class} property EXTRA_KEY_ID_TRANSACAO: JString read _GetEXTRA_KEY_ID_TRANSACAO;
    {class} property EXTRA_KEY_PDV: JString read _GetEXTRA_KEY_PDV;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/elgin/e1/Pagamento/Utils')]
  JPagamento_Utils = interface(JObject)
    ['{55F59849-58E1-4984-ADE6-5000E1A91B27}']
  end;
  TJPagamento_Utils = class(TJavaGenericImport<JPagamento_UtilsClass, JPagamento_Utils>) end;

  JScanner_ScannerClass = interface(JObjectClass)
    ['{463C9E40-CCA0-4656-9906-FFB7B7690418}']
    {class} function getScanner(context: JContext): JIntent; cdecl;
    {class} function init: JScanner_Scanner; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Scanner/Scanner')]
  JScanner_Scanner = interface(JObject)
    ['{16289633-71B2-4D38-A451-757A67A5693E}']
  end;
  TJScanner_Scanner = class(TJavaGenericImport<JScanner_ScannerClass, JScanner_Scanner>) end;

  JAssinaturasClass = interface(JObjectClass)
    ['{72EA7EA7-28C7-4CCC-AE48-D65FFBA61130}']
    {class} function _GetBOOLEAN: Integer; cdecl;
    {class} function _GetCHAR: Integer; cdecl;
    {class} function _GetDOUBLE: Integer; cdecl;
    {class} function _GetINT: Integer; cdecl;
    {class} function _GetLONG: Integer; cdecl;
    {class} function _GetSHORT: Integer; cdecl;
    {class} function init: JAssinaturas; cdecl;//Deprecated
    {class} property BOOLEAN: Integer read _GetBOOLEAN;
    {class} property CHAR: Integer read _GetCHAR;
    {class} property DOUBLE: Integer read _GetDOUBLE;
    {class} property INT: Integer read _GetINT;
    {class} property LONG: Integer read _GetLONG;
    {class} property SHORT: Integer read _GetSHORT;
  end;

  [JavaSignature('com/elgin/e1/Servico/Assinaturas')]
  JAssinaturas = interface(JObject)
    ['{597BC244-5D21-4DB7-8B31-6C24F54BACAD}']
  end;
  TJAssinaturas = class(TJavaGenericImport<JAssinaturasClass, JAssinaturas>) end;

  JParametrosClass = interface(JObjectClass)
    ['{83B3E201-009A-49D3-BF01-FE37497A7597}']
  end;

  [JavaSignature('com/elgin/e1/Servico/Parametros')]
  JParametros = interface(JObject)
    ['{FC9E7EF6-0091-4F54-BBEE-4C97E13B5331}']
  end;
  TJParametros = class(TJavaGenericImport<JParametrosClass, JParametros>) end;

  JServicoE1Class = interface(JObjectClass)
    ['{3E2636AF-D481-4DD1-847D-DB67197CA742}']
    {class} function _GetCOMANDO_DELIMITADO: Integer; cdecl;
    {class} function _GetCOMANDO_JSON: Integer; cdecl;
    {class} function _GetMODULO_ETIQUETA: JString; cdecl;
    {class} function _GetMODULO_IMPRESSOR: JString; cdecl;
    {class} function _GetMODULO_SAT: JString; cdecl;
    {class} function Abrir(string_: JString; i: Integer): Integer; cdecl;
    {class} function Fechar: Integer; cdecl;
    {class} function GetSepValores: JString; cdecl;
    {class} function GetTipoComando: Integer; cdecl;
    {class} function ReceberDados(inteiro: JInteiro): TJavaArray<Byte>; cdecl; overload;
    {class} function ReceberDados(inteiro: JInteiro; i: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function SetSepValores(string_: JString): Integer; cdecl;
    {class} function SetTipoComando(i: Integer): Integer; cdecl;
    {class} function getServiceTimeout: Integer; cdecl;
    {class} function init: JServicoE1; cdecl;
    {class} function isAberto: Boolean; cdecl;
    {class} function isAutServico: Boolean; cdecl;
    {class} function setContext(context: JContext): Integer; cdecl;
    {class} property COMANDO_DELIMITADO: Integer read _GetCOMANDO_DELIMITADO;
    {class} property COMANDO_JSON: Integer read _GetCOMANDO_JSON;
    {class} property MODULO_ETIQUETA: JString read _GetMODULO_ETIQUETA;
    {class} property MODULO_IMPRESSOR: JString read _GetMODULO_IMPRESSOR;
    {class} property MODULO_SAT: JString read _GetMODULO_SAT;
  end;

  [JavaSignature('com/elgin/e1/Servico/ServicoE1')]
  JServicoE1 = interface(JObject)
    ['{1EFED2C8-59B9-4223-A9B0-D3305FB2C51A}']
  end;
  TJServicoE1 = class(TJavaGenericImport<JServicoE1Class, JServicoE1>) end;

  JServicoE1_EtiquetaClass = interface(JObjectClass)
    ['{F00E87AE-D85F-4D54-8745-F8DFEA2A1396}']
    {class} function DespejarArquivo(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function EnviaImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; string_2: JString; string_3: JString): TJavaArray<Byte>; cdecl;
    {class} function ExcluiImagem(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function Feed(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function GerarBarCode1D(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; i7: Integer): TJavaArray<Byte>; cdecl;
    {class} function GerarBox(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): TJavaArray<Byte>; cdecl;
    {class} function GerarDataBar(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarDataBarExpanded(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString; string_1: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarDataMatrix(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarImagem(i: Integer; i1: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarLinha(i: Integer; i1: Integer; i2: Integer; i3: Integer): TJavaArray<Byte>; cdecl;
    {class} function GerarMaxiCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarQRCodeAuto(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarQRCodeManual(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; i6: Integer; i7: Integer; i8: Integer; i9: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarTexto(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarTextoASD(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GerarTextoCourier(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GetVersaoDLL: TJavaArray<Byte>; cdecl;
    {class} function Imprime(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function Limpa(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function LimpaMemoria(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function LimpaModulo(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function MemoryStatus(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function Reset(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetAlturaGap(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetBackfeed(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetBaudrate(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetCalor(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetCortarZero(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetLength(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetLogicImgMode(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetMedidas(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetMirror(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetModoContinuo(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetOffsetColuna(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetOffsetLinha(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetPrintStPos(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetQtde(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetSensor(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetSymbolASD(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetTamPixel(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetTipoTransferencia(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function SetVelImpressao(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function Status(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function StatusEPL(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function Teste(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function init: JServicoE1_Etiqueta; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Servico/ServicoE1$Etiqueta')]
  JServicoE1_Etiqueta = interface(JObject)
    ['{7B09E68E-7599-4EE4-A2EA-C56745A189E9}']
  end;
  TJServicoE1_Etiqueta = class(TJavaGenericImport<JServicoE1_EtiquetaClass, JServicoE1_Etiqueta>) end;

  JServicoE1_SATClass = interface(JObjectClass)
    ['{FA833C83-827A-4D77-8C0D-9EFB16BB124A}']
    {class} function AssociarAssinatura(i: Integer; string_: JString; string_1: JString; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function AtivarSAT(i: Integer; i1: Integer; string_: JString; string_1: JString; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function AtualizarSoftwareSAT(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function BloquearSAT(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function CancelaVendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; string_2: JString; string_3: JString): TJavaArray<Byte>; cdecl;
    {class} function CancelarUltimaVenda(i: Integer; string_: JString; string_1: JString; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function ConfigurarInterfaceDeRede(i: Integer; string_: JString; string_1: JString): TJavaArray<Byte>; cdecl;
    {class} function ConsultarNumeroSessao(i: Integer; string_: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function ConsultarSat(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function ConsultarStatusEspecifico(i: Integer; i1: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function ConsultarStatusOperacional(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function ConsultarUltimaSessaoFiscal(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function CriaXMLCancelamentoSAT(string_: JString; string_1: JString; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function DecodificaBase64(string_: JString): TJavaArray<Byte>; cdecl;
    {class} function DesbloquearSAT(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function EnviarDadosVenda(i: Integer; string_: JString; string_1: JString): TJavaArray<Byte>; cdecl;
    {class} function ExtrairLogs(i: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function GetVersaoDLL: TJavaArray<Byte>; cdecl;
    {class} function TesteFimAFim(i: Integer; string_: JString; string_1: JString): TJavaArray<Byte>; cdecl;
    {class} function TrocarCodigoDeAtivacao(i: Integer; string_: JString; i1: Integer; string_1: JString; string_2: JString): TJavaArray<Byte>; cdecl;
    {class} function VendaImpressaSAT(i: Integer; string_: JString; string_1: JString; i1: Integer; i2: Integer; string_2: JString; string_3: JString): TJavaArray<Byte>; cdecl;
    {class} function init: JServicoE1_SAT; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Servico/ServicoE1$SAT')]
  JServicoE1_SAT = interface(JObject)
    ['{B3C0DD51-66C6-416A-8929-3C5245663225}']
  end;
  TJServicoE1_SAT = class(TJavaGenericImport<JServicoE1_SATClass, JServicoE1_SAT>) end;

  JServicoE1_TermicaClass = interface(JObjectClass)
    ['{DCDFA105-5B41-40D3-A1A6-C31CB3996090}']
    {class} function AbreConexaoImpressora(i: Integer; string_: JString; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function AbreGaveta(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function AbreGavetaElgin: TJavaArray<Byte>; cdecl;
    {class} function AvancaPapel(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function Corte(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function DefineAreaImpressao(i: Integer; i1: Integer; i2: Integer; i3: Integer): TJavaArray<Byte>; cdecl;
    {class} function DefinePosicao(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function DirecaoImpressao(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function FechaConexaoImpressora: TJavaArray<Byte>; cdecl;
    {class} function GetVersaoDLL: TJavaArray<Byte>; cdecl;
    {class} function ImpressaoCodigoBarras(i: Integer; string_: JString; i1: Integer; i2: Integer; i3: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImpressaoPDF417(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; string_: JString): TJavaArray<Byte>; cdecl;
    {class} function ImpressaoQRCode(string_: JString; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImpressaoTexto(string_: JString; i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImprimeImagem(string_: JString): TJavaArray<Byte>; cdecl;
    {class} function ImprimeImagemMemoria(string_: JString; i: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImprimeMPeRetornaPadrao: TJavaArray<Byte>; cdecl;
    {class} function ImprimeModoPagina: TJavaArray<Byte>; cdecl;
    {class} function ImprimeXMLCancelamentoSAT(string_: JString; string_1: JString; i: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImprimeXMLNFCe(string_: JString; i: Integer; string_1: JString; i1: Integer): TJavaArray<Byte>; cdecl;
    {class} function ImprimeXMLSAT(string_: JString; i: Integer): TJavaArray<Byte>; cdecl;
    {class} function InicializaImpressora: TJavaArray<Byte>; cdecl;
    {class} function LimpaBufferModoPagina: TJavaArray<Byte>; cdecl;
    {class} function ModoPadrao: TJavaArray<Byte>; cdecl;
    {class} function ModoPagina: TJavaArray<Byte>; cdecl;
    {class} function PosicaoImpressaoHorizontal(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function PosicaoImpressaoVertical(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function SinalSonoro(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    {class} function StatusImpressora(i: Integer): TJavaArray<Byte>; cdecl;
    {class} function init: JServicoE1_Termica; cdecl;
  end;

  [JavaSignature('com/elgin/e1/Servico/ServicoE1$Termica')]
  JServicoE1_Termica = interface(JObject)
    ['{77C7A72B-F43C-47E5-88C0-11AEFE41DB4A}']
  end;
  TJServicoE1_Termica = class(TJavaGenericImport<JServicoE1_TermicaClass, JServicoE1_Termica>) end;

  Jminipdvm8_BuildConfigClass = interface(JObjectClass)
    ['{8D1E757E-9D95-4FBE-A000-7C8A6ACAADC2}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jminipdvm8_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/elgin/minipdvm8/BuildConfig')]
  Jminipdvm8_BuildConfig = interface(JObject)
    ['{EE80802E-C216-4B8F-AEC5-7ED738271AE5}']
  end;
  TJminipdvm8_BuildConfig = class(TJavaGenericImport<Jminipdvm8_BuildConfigClass, Jminipdvm8_BuildConfig>) end;

  JPrinterManagerClass = interface(JObjectClass)
    ['{3877D4DB-E3B1-4FEF-9348-B1E7D6DD34E7}']
    {class} function _GetALIGN_CENTER: Integer; cdecl;
    {class} function _GetALIGN_LEFT: Integer; cdecl;
    {class} function _GetALIGN_RIGHT: Integer; cdecl;
    {class} function _GetARIAL: Integer; cdecl;
    {class} function _GetBOLD: Integer; cdecl;
    {class} function _GetKEY_ALIGN: JString; cdecl;
    {class} function _GetKEY_LINESPACE: JString; cdecl;
    {class} function _GetKEY_MARGINBOTTOM: JString; cdecl;
    {class} function _GetKEY_MARGINLEFT: JString; cdecl;
    {class} function _GetKEY_MARGINRIGHT: JString; cdecl;
    {class} function _GetKEY_MARGINTOP: JString; cdecl;
    {class} function _GetKEY_TEXTSIZE: JString; cdecl;
    {class} function _GetKEY_TYPEFACE: JString; cdecl;
    {class} function _GetKEY_WEIGHT: JString; cdecl;
    {class} function _GetNORMAL: Integer; cdecl;
    {class} function _GetSERIF: Integer; cdecl;
    {class} function _GetsCurrentLength: Int64; cdecl;
    {class} procedure _SetsCurrentLength(Value: Int64); cdecl;
    {class} function _GetsTotalLength: Int64; cdecl;
    {class} procedure _SetsTotalLength(Value: Int64); cdecl;
    {class} function init(activity: JActivity; printerManagerListener: JPrinterManager_PrinterManagerListener): JPrinterManager; cdecl;//Deprecated
    {class} property ALIGN_CENTER: Integer read _GetALIGN_CENTER;
    {class} property ALIGN_LEFT: Integer read _GetALIGN_LEFT;
    {class} property ALIGN_RIGHT: Integer read _GetALIGN_RIGHT;
    {class} property ARIAL: Integer read _GetARIAL;
    {class} property BOLD: Integer read _GetBOLD;
    {class} property KEY_ALIGN: JString read _GetKEY_ALIGN;
    {class} property KEY_LINESPACE: JString read _GetKEY_LINESPACE;
    {class} property KEY_MARGINBOTTOM: JString read _GetKEY_MARGINBOTTOM;
    {class} property KEY_MARGINLEFT: JString read _GetKEY_MARGINLEFT;
    {class} property KEY_MARGINRIGHT: JString read _GetKEY_MARGINRIGHT;
    {class} property KEY_MARGINTOP: JString read _GetKEY_MARGINTOP;
    {class} property KEY_TEXTSIZE: JString read _GetKEY_TEXTSIZE;
    {class} property KEY_TYPEFACE: JString read _GetKEY_TYPEFACE;
    {class} property KEY_WEIGHT: JString read _GetKEY_WEIGHT;
    {class} property NORMAL: Integer read _GetNORMAL;
    {class} property SERIF: Integer read _GetSERIF;
    {class} property sCurrentLength: Int64 read _GetsCurrentLength write _SetsCurrentLength;
    {class} property sTotalLength: Int64 read _GetsTotalLength write _SetsTotalLength;
  end;

  [JavaSignature('com/elgin/minipdvm8/PrinterManager')]
  JPrinterManager = interface(JObject)
    ['{96C2D2BD-4DBB-4E7F-AAFA-DFE13A8FC8A6}']
    function getBootloaderVersion: JString; cdecl;
    function getFirmwareVersion: JString; cdecl;
    function hasXChengPrinter(context: JContext): Boolean; cdecl;
    procedure onPrinterStart; cdecl;
    procedure onPrinterStop(b: Boolean); cdecl;
    procedure printBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer; b: Boolean); cdecl;
    procedure printBitmap(bitmap: JBitmap); cdecl; overload;
    procedure printBitmap(bitmap: JBitmap; map: JMap); cdecl; overload;
    procedure printColumnsTextWithAttributes(string_: TJavaObjectArray<JString>; list: JList); cdecl;
    procedure printQRCode(string_: JString; i: Integer; i1: Integer); cdecl;
    procedure printText(string_: JString); cdecl;
    procedure printTextWithAttributes(string_: JString; map: JMap); cdecl;
    procedure printWrapPaper(i: Integer); cdecl;
    procedure printerInit; cdecl;
    function printerPaper: Boolean; cdecl;
    procedure printerReset; cdecl;
    function printerTemperature(activity: JActivity): Integer; cdecl;
    procedure sendRAWData(b: TJavaArray<Byte>); cdecl;
    procedure setPrinterSpeed(i: Integer); cdecl;
    procedure upgradePrinter; cdecl;
  end;
  TJPrinterManager = class(TJavaGenericImport<JPrinterManagerClass, JPrinterManager>) end;

  JPrinterManager_1Class = interface(JServiceConnectionClass)
    ['{5C62A1BE-4A9F-4445-A98A-EFA4EA00DD8D}']
  end;

  [JavaSignature('com/elgin/minipdvm8/PrinterManager$1')]
  JPrinterManager_1 = interface(JServiceConnection)
    ['{E10C97DD-4FDB-4B47-B71A-84675EF6D170}']
    procedure onServiceConnected(componentName: JComponentName; iBinder: JIBinder); cdecl;
    procedure onServiceDisconnected(componentName: JComponentName); cdecl;
  end;
  TJPrinterManager_1 = class(TJavaGenericImport<JPrinterManager_1Class, JPrinterManager_1>) end;

  JIPrinterCallback_StubClass = interface(JBinderClass)
    ['{317CD355-87CE-4A8E-8F00-BC2A4114CD17}']
    {class} function _GetTRANSACTION_onComplete: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIPrinterCallback; cdecl;
    {class} function init: JIPrinterCallback_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onComplete: Integer read _GetTRANSACTION_onComplete;
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterCallback$Stub')]
  JIPrinterCallback_Stub = interface(JBinder)
    ['{4971D4FF-EFB6-451C-9713-9E4E7E96BD84}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIPrinterCallback_Stub = class(TJavaGenericImport<JIPrinterCallback_StubClass, JIPrinterCallback_Stub>) end;

  JPrinterManager_2Class = interface(JIPrinterCallback_StubClass)
    ['{6AD26712-C367-4475-8590-B82D2C4E4E40}']
  end;

  [JavaSignature('com/elgin/minipdvm8/PrinterManager$2')]
  JPrinterManager_2 = interface(JIPrinterCallback_Stub)
    ['{A2A96600-AC79-4D94-B947-56692546540C}']
    procedure onComplete; cdecl;
    procedure onException(i: Integer; string_: JString); cdecl;
    procedure onLength(l: Int64; l1: Int64); cdecl;
  end;
  TJPrinterManager_2 = class(TJavaGenericImport<JPrinterManager_2Class, JPrinterManager_2>) end;

  Jcloudpossdk_aar_slim_BuildConfigClass = interface(JObjectClass)
    ['{2E1B3206-14AE-48EF-8562-9D8377AA1C38}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jcloudpossdk_aar_slim_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/example/cloudpossdk_aar_slim/BuildConfig')]
  Jcloudpossdk_aar_slim_BuildConfig = interface(JObject)
    ['{CF531DCC-85CE-4FBD-B0AC-433301C44F38}']
  end;
  TJcloudpossdk_aar_slim_BuildConfig = class(TJavaGenericImport<Jcloudpossdk_aar_slim_BuildConfigClass, Jcloudpossdk_aar_slim_BuildConfig>) end;

  JScanner_BuildConfigClass = interface(JObjectClass)
    ['{A6721569-06E8-4C41-A3C3-81FA83727483}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: JScanner_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/exemplo/Scanner/BuildConfig')]
  JScanner_BuildConfig = interface(JObject)
    ['{503EF3E9-44CE-4FC6-9A3A-C7FFC1EA37C4}']
  end;
  TJScanner_BuildConfig = class(TJavaGenericImport<JScanner_BuildConfigClass, JScanner_BuildConfig>) end;

  JScanner_MainActivityClass = interface(JActivityClass)
    ['{D39F5665-1C2C-4B61-8046-B8301AE4D781}']
    {class} function init: JScanner_MainActivity; cdecl;
  end;

  [JavaSignature('com/exemplo/Scanner/MainActivity')]
  JScanner_MainActivity = interface(JActivity)
    ['{B306CB5E-88D5-4CF9-8DDB-A42F87B5DC75}']
    procedure beginScan; cdecl;
    procedure serviceConnected(object_: JObject; serviceConnection: JServiceConnection); cdecl;
  end;
  TJScanner_MainActivity = class(TJavaGenericImport<JScanner_MainActivityClass, JScanner_MainActivity>) end;

  JMainActivity_1Class = interface(JRunnableClass)
    ['{F14F67FB-825E-41FD-A395-584E444B5A2B}']
    {class} function _Getthis: JScanner_MainActivity; cdecl;
    {class} property this: JScanner_MainActivity read _Getthis;
  end;

  [JavaSignature('com/exemplo/Scanner/MainActivity$1')]
  JMainActivity_1 = interface(JRunnable)
    ['{FB9A0D6D-DB10-4B61-9273-2A2E2967EA6F}']
    procedure run; cdecl;
  end;
  TJMainActivity_1 = class(TJavaGenericImport<JMainActivity_1Class, JMainActivity_1>) end;

  JAidlControllerClass = interface(JObjectClass)
    ['{6FEB8BF7-BF24-4DB2-9037-4D6F46BE7D57}']
    {class} function _GetDESC_SCAN_SERVICE: JString; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function getInstance: JAidlController; cdecl;//Deprecated
    {class} property DESC_SCAN_SERVICE: JString read _GetDESC_SCAN_SERVICE;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/exemplo/Scanner/aidlcontrol/AidlController')]
  JAidlController = interface(JObject)
    ['{C6DD79D1-7E2E-41E1-A195-689D8C0B16D2}']
    function startScanService(context: JContext; iAIDLListener: JIAIDLListener): Boolean; cdecl;
  end;
  TJAidlController = class(TJavaGenericImport<JAidlControllerClass, JAidlController>) end;

  JAidlController_ServiceConnectionImplClass = interface(JServiceConnectionClass)
    ['{65E9E287-CDCE-4337-BA5E-F1C0A5AD35DB}']
    {class} function _Getthis: JAidlController; cdecl;
    {class} property this: JAidlController read _Getthis;
  end;

  [JavaSignature('com/exemplo/Scanner/aidlcontrol/AidlController$ServiceConnectionImpl')]
  JAidlController_ServiceConnectionImpl = interface(JServiceConnection)
    ['{5FE78E44-D8A2-4B18-A96E-EA107CD294DA}']
    procedure onServiceConnected(componentName: JComponentName; iBinder: JIBinder); cdecl;
    procedure onServiceDisconnected(componentName: JComponentName); cdecl;
  end;
  TJAidlController_ServiceConnectionImpl = class(TJavaGenericImport<JAidlController_ServiceConnectionImplClass, JAidlController_ServiceConnectionImpl>) end;

  JIAIDLListenerClass = interface(IJavaClass)
    ['{46A14C6C-4272-4D31-A019-6F13E55749DD}']
    {class} function _GetSTATE_UNKNOW: Integer; cdecl;
    {class} property STATE_UNKNOW: Integer read _GetSTATE_UNKNOW;
  end;

  [JavaSignature('com/exemplo/Scanner/aidlcontrol/IAIDLListener')]
  JIAIDLListener = interface(IJavaInstance)
    ['{0743FC69-F4AD-40EE-A6CB-14E4B56BD9B0}']
    procedure serviceConnected(object_: JObject; serviceConnection: JServiceConnection); cdecl;
  end;
  TJIAIDLListener = class(TJavaGenericImport<JIAIDLListenerClass, JIAIDLListener>) end;

  JDeviceUtilsClass = interface(JObjectClass)
    ['{8E5BCFA8-3F28-47AB-A5AF-3E87A8C8E9B0}']
    {class} function dp2px(context: JContext; i: Integer): Integer; cdecl;
    {class} function getScreenHeight(context: JContext): Integer; cdecl;
    {class} function getScreenWidth(context: JContext): Integer; cdecl;
    {class} function getStausHeight(context: JContext): Integer; cdecl;
    {class} function init: JDeviceUtils; cdecl;
    {class} function px2dp(context: JContext; i: Integer): Integer; cdecl;
    {class} function sp2px(context: JContext; f: Single): Integer; cdecl;
  end;

  [JavaSignature('com/exemplo/Scanner/utils/DeviceUtils')]
  JDeviceUtils = interface(JObject)
    ['{FCCB4BB9-A48D-4978-A33B-7C19FCF6D41E}']
  end;
  TJDeviceUtils = class(TJavaGenericImport<JDeviceUtilsClass, JDeviceUtils>) end;

  JCH34xIdsClass = interface(JObjectClass)
    ['{C411801E-2A17-46A1-BB8D-6326A7DEAFFB}']
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/CH34xIds')]
  JCH34xIds = interface(JObject)
    ['{DF842329-6AAC-46B2-ABB5-82BDA2B7DD76}']
  end;
  TJCH34xIds = class(TJavaGenericImport<JCH34xIdsClass, JCH34xIds>) end;

  JCH34xIds_ConcreteDeviceClass = interface(JObjectClass)
    ['{65264F97-5204-44E9-BEC8-FDEC404661C8}']
    {class} function init(i: Integer; i1: Integer): JCH34xIds_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/CH34xIds$ConcreteDevice')]
  JCH34xIds_ConcreteDevice = interface(JObject)
    ['{8E229C11-5234-4425-98E0-DE5AD19E600C}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJCH34xIds_ConcreteDevice = class(TJavaGenericImport<JCH34xIds_ConcreteDeviceClass, JCH34xIds_ConcreteDevice>) end;

  JCP210xIdsClass = interface(JObjectClass)
    ['{AB962208-6858-49AE-99B0-B02E70ABB84E}']
    {class} function init: JCP210xIds; cdecl;
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/CP210xIds')]
  JCP210xIds = interface(JObject)
    ['{84CA1C8D-4CA1-4768-ABFB-6E23B9D484F6}']
  end;
  TJCP210xIds = class(TJavaGenericImport<JCP210xIdsClass, JCP210xIds>) end;

  JCP210xIds_ConcreteDeviceClass = interface(JObjectClass)
    ['{F680F2A2-1DC3-4C36-9F78-D6EE1540F52C}']
    {class} function init(i: Integer; i1: Integer): JCP210xIds_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/CP210xIds$ConcreteDevice')]
  JCP210xIds_ConcreteDevice = interface(JObject)
    ['{0483A652-C09C-4FF5-8153-4E4E209DFA86}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJCP210xIds_ConcreteDevice = class(TJavaGenericImport<JCP210xIds_ConcreteDeviceClass, JCP210xIds_ConcreteDevice>) end;

  JCP2130IdsClass = interface(JObjectClass)
    ['{19A74432-DC2F-494F-A7A5-4FE919776E46}']
    {class} function init: JCP2130Ids; cdecl;
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/CP2130Ids')]
  JCP2130Ids = interface(JObject)
    ['{A55CDA04-BFFC-467F-9B12-AB708B3857F8}']
  end;
  TJCP2130Ids = class(TJavaGenericImport<JCP2130IdsClass, JCP2130Ids>) end;

  JCP2130Ids_ConcreteDeviceClass = interface(JObjectClass)
    ['{21ECBB15-2785-4630-B859-EE1E23B6433E}']
    {class} function init(i: Integer; i1: Integer): JCP2130Ids_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/CP2130Ids$ConcreteDevice')]
  JCP2130Ids_ConcreteDevice = interface(JObject)
    ['{FDF4C57A-4048-4711-912C-F37E62B9D79F}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJCP2130Ids_ConcreteDevice = class(TJavaGenericImport<JCP2130Ids_ConcreteDeviceClass, JCP2130Ids_ConcreteDevice>) end;

  JFTDISioIdsClass = interface(JObjectClass)
    ['{F2CDE255-E702-4AAF-AF37-8632058D22FD}']
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/FTDISioIds')]
  JFTDISioIds = interface(JObject)
    ['{770B102B-47CB-47B5-A344-F7F924FDB472}']
  end;
  TJFTDISioIds = class(TJavaGenericImport<JFTDISioIdsClass, JFTDISioIds>) end;

  JFTDISioIds_ConcreteDeviceClass = interface(JObjectClass)
    ['{FEA54BA1-D154-4974-BF23-8F09262F1FDE}']
    {class} function init(i: Integer; i1: Integer): JFTDISioIds_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/FTDISioIds$ConcreteDevice')]
  JFTDISioIds_ConcreteDevice = interface(JObject)
    ['{943E4D42-C187-4CC2-AD85-D197DAF700CC}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJFTDISioIds_ConcreteDevice = class(TJavaGenericImport<JFTDISioIds_ConcreteDeviceClass, JFTDISioIds_ConcreteDevice>) end;

  JPL2303IdsClass = interface(JObjectClass)
    ['{B3450D19-6DC7-44AC-9D58-148AFED30606}']
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/PL2303Ids')]
  JPL2303Ids = interface(JObject)
    ['{AF3E68B3-022C-4BAF-B74F-5FDFB5C64B4A}']
  end;
  TJPL2303Ids = class(TJavaGenericImport<JPL2303IdsClass, JPL2303Ids>) end;

  JPL2303Ids_ConcreteDeviceClass = interface(JObjectClass)
    ['{238DDA26-2220-4932-8D19-B8CA1ECBFFD0}']
    {class} function init(i: Integer; i1: Integer): JPL2303Ids_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/PL2303Ids$ConcreteDevice')]
  JPL2303Ids_ConcreteDevice = interface(JObject)
    ['{D38506DF-B1A2-44DF-B2C3-2D2891965531}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJPL2303Ids_ConcreteDevice = class(TJavaGenericImport<JPL2303Ids_ConcreteDeviceClass, JPL2303Ids_ConcreteDevice>) end;

  JXdcVcpIdsClass = interface(JObjectClass)
    ['{ED6BA42F-034F-4EC8-BB9C-7481D1B1138B}']
    {class} function init: JXdcVcpIds; cdecl;
    {class} function isDeviceSupported(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/deviceids/XdcVcpIds')]
  JXdcVcpIds = interface(JObject)
    ['{436F91B7-E336-4809-A77B-DD8EB5C50684}']
  end;
  TJXdcVcpIds = class(TJavaGenericImport<JXdcVcpIdsClass, JXdcVcpIds>) end;

  JXdcVcpIds_ConcreteDeviceClass = interface(JObjectClass)
    ['{218F5332-CCE2-4F92-A8D0-C73AFA7E0E96}']
    {class} function init(i: Integer; i1: Integer): JXdcVcpIds_ConcreteDevice; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/deviceids/XdcVcpIds$ConcreteDevice')]
  JXdcVcpIds_ConcreteDevice = interface(JObject)
    ['{D665D18A-222E-4164-9D53-C68EF3A09667}']
    function _GetproductId: Integer; cdecl;
    procedure _SetproductId(Value: Integer); cdecl;
    function _GetvendorId: Integer; cdecl;
    procedure _SetvendorId(Value: Integer); cdecl;
    property productId: Integer read _GetproductId write _SetproductId;
    property vendorId: Integer read _GetvendorId write _SetvendorId;
  end;
  TJXdcVcpIds_ConcreteDevice = class(TJavaGenericImport<JXdcVcpIds_ConcreteDeviceClass, JXdcVcpIds_ConcreteDevice>) end;

  JUsbSerialInterfaceClass = interface(IJavaClass)
    ['{646B3765-5C88-43CD-B1E2-9A8B5C0209CF}']
    {class} function _GetDATA_BITS_5: Integer; cdecl;
    {class} function _GetDATA_BITS_6: Integer; cdecl;
    {class} function _GetDATA_BITS_7: Integer; cdecl;
    {class} function _GetDATA_BITS_8: Integer; cdecl;
    {class} function _GetFLOW_CONTROL_DSR_DTR: Integer; cdecl;
    {class} function _GetFLOW_CONTROL_OFF: Integer; cdecl;
    {class} function _GetFLOW_CONTROL_RTS_CTS: Integer; cdecl;
    {class} function _GetFLOW_CONTROL_XON_XOFF: Integer; cdecl;
    {class} function _GetPARITY_EVEN: Integer; cdecl;
    {class} function _GetPARITY_MARK: Integer; cdecl;
    {class} function _GetPARITY_NONE: Integer; cdecl;
    {class} function _GetPARITY_ODD: Integer; cdecl;
    {class} function _GetPARITY_SPACE: Integer; cdecl;
    {class} function _GetSTOP_BITS_1: Integer; cdecl;
    {class} function _GetSTOP_BITS_15: Integer; cdecl;
    {class} function _GetSTOP_BITS_2: Integer; cdecl;
    {class} function open: Boolean; cdecl;//Deprecated
    {class} property DATA_BITS_5: Integer read _GetDATA_BITS_5;
    {class} property DATA_BITS_6: Integer read _GetDATA_BITS_6;
    {class} property DATA_BITS_7: Integer read _GetDATA_BITS_7;
    {class} property DATA_BITS_8: Integer read _GetDATA_BITS_8;
    {class} property FLOW_CONTROL_DSR_DTR: Integer read _GetFLOW_CONTROL_DSR_DTR;
    {class} property FLOW_CONTROL_OFF: Integer read _GetFLOW_CONTROL_OFF;
    {class} property FLOW_CONTROL_RTS_CTS: Integer read _GetFLOW_CONTROL_RTS_CTS;
    {class} property FLOW_CONTROL_XON_XOFF: Integer read _GetFLOW_CONTROL_XON_XOFF;
    {class} property PARITY_EVEN: Integer read _GetPARITY_EVEN;
    {class} property PARITY_MARK: Integer read _GetPARITY_MARK;
    {class} property PARITY_NONE: Integer read _GetPARITY_NONE;
    {class} property PARITY_ODD: Integer read _GetPARITY_ODD;
    {class} property PARITY_SPACE: Integer read _GetPARITY_SPACE;
    {class} property STOP_BITS_1: Integer read _GetSTOP_BITS_1;
    {class} property STOP_BITS_15: Integer read _GetSTOP_BITS_15;
    {class} property STOP_BITS_2: Integer read _GetSTOP_BITS_2;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface')]
  JUsbSerialInterface = interface(IJavaInstance)
    ['{956AA37D-558A-44C8-9084-6E866BA912E7}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function read(usbReadCallback: JUsbSerialInterface_UsbReadCallback): Integer; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
    function syncRead(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function syncWrite(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    procedure write(b: TJavaArray<Byte>); cdecl;
  end;
  TJUsbSerialInterface = class(TJavaGenericImport<JUsbSerialInterfaceClass, JUsbSerialInterface>) end;

  JUsbSerialDeviceClass = interface(JUsbSerialInterfaceClass)
    ['{AFAF3DFF-BC24-4519-BE79-46CB9E95DB6B}']
    {class} function createUsbSerialDevice(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JUsbSerialDevice; cdecl; overload;
    {class} function createUsbSerialDevice(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JUsbSerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JUsbSerialDevice; cdecl;//Deprecated
    {class} function isCdcDevice(usbDevice: JUsbDevice): Boolean; cdecl;
    {class} function isSupported(usbDevice: JUsbDevice): Boolean; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialDevice')]
  JUsbSerialDevice = interface(JUsbSerialInterface)
    ['{9028B473-84DD-4847-B076-96397E2CE9F4}']
    procedure close; cdecl;
    procedure debug(b: Boolean); cdecl;
    function open: Boolean; cdecl;
    function read(usbReadCallback: JUsbSerialInterface_UsbReadCallback): Integer; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
    function syncRead(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function syncWrite(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    procedure write(b: TJavaArray<Byte>); cdecl;
  end;
  TJUsbSerialDevice = class(TJavaGenericImport<JUsbSerialDeviceClass, JUsbSerialDevice>) end;

  JBLED112SerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{309A53EB-ECDB-4791-91F9-19AF38139319}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JBLED112SerialDevice; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/BLED112SerialDevice')]
  JBLED112SerialDevice = interface(JUsbSerialDevice)
    ['{707783B5-FAD2-44C7-B479-096FE1A0B0A7}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJBLED112SerialDevice = class(TJavaGenericImport<JBLED112SerialDeviceClass, JBLED112SerialDevice>) end;

  Jusbserial_BuildConfigClass = interface(JObjectClass)
    ['{0E930FFD-C3D8-4739-9101-1B929CE3347F}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jusbserial_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/felhr/usbserial/BuildConfig')]
  Jusbserial_BuildConfig = interface(JObject)
    ['{02E8BFF2-FEA1-484F-96ED-DF8EA56F5D20}']
  end;
  TJusbserial_BuildConfig = class(TJavaGenericImport<Jusbserial_BuildConfigClass, Jusbserial_BuildConfig>) end;

  JCDCSerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{8C068D13-B841-4295-B0BC-5620FA250CEC}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JCDCSerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JCDCSerialDevice; cdecl; overload;
  end;

  [JavaSignature('com/felhr/usbserial/CDCSerialDevice')]
  JCDCSerialDevice = interface(JUsbSerialDevice)
    ['{068CDCDD-DB0A-44BE-9394-DBAC5A9C2B3E}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJCDCSerialDevice = class(TJavaGenericImport<JCDCSerialDeviceClass, JCDCSerialDevice>) end;

  JCH34xSerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{6A05C295-093F-4D36-A9A3-3750EFC221DE}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JCH34xSerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JCH34xSerialDevice; cdecl; overload;
  end;

  [JavaSignature('com/felhr/usbserial/CH34xSerialDevice')]
  JCH34xSerialDevice = interface(JUsbSerialDevice)
    ['{1CE152ED-C557-4110-B4C4-85F3F245A414}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJCH34xSerialDevice = class(TJavaGenericImport<JCH34xSerialDeviceClass, JCH34xSerialDevice>) end;

  JCH34xSerialDevice_FlowControlThreadClass = interface(JThreadClass)
    ['{B59C43CE-621F-4F29-9E76-85D78976DA0B}']
    {class} function init(cH34xSerialDevice: JCH34xSerialDevice): JCH34xSerialDevice_FlowControlThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/CH34xSerialDevice$FlowControlThread')]
  JCH34xSerialDevice_FlowControlThread = interface(JThread)
    ['{920C0AFC-A07A-4037-8FEA-778798E5568E}']
    function pollForCTS: Boolean; cdecl;
    function pollForDSR: Boolean; cdecl;
    procedure run; cdecl;
    procedure stopThread; cdecl;
  end;
  TJCH34xSerialDevice_FlowControlThread = class(TJavaGenericImport<JCH34xSerialDevice_FlowControlThreadClass, JCH34xSerialDevice_FlowControlThread>) end;

  JCP2102SerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{628B3656-1156-4DFF-AD31-F4FFC0F241A5}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JCP2102SerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JCP2102SerialDevice; cdecl; overload;
  end;

  [JavaSignature('com/felhr/usbserial/CP2102SerialDevice')]
  JCP2102SerialDevice = interface(JUsbSerialDevice)
    ['{862B15A3-C03A-421B-8FA7-942E221A3CA3}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJCP2102SerialDevice = class(TJavaGenericImport<JCP2102SerialDeviceClass, JCP2102SerialDevice>) end;

  JCP2102SerialDevice_FlowControlThreadClass = interface(JThreadClass)
    ['{DD101B1E-B950-4A75-8AB5-40ADC9DAB0B3}']
    {class} function init(cP2102SerialDevice: JCP2102SerialDevice): JCP2102SerialDevice_FlowControlThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/CP2102SerialDevice$FlowControlThread')]
  JCP2102SerialDevice_FlowControlThread = interface(JThread)
    ['{2B897E45-CDC8-414B-AADD-237156D0FFB3}']
    procedure run; cdecl;
    procedure stopThread; cdecl;
  end;
  TJCP2102SerialDevice_FlowControlThread = class(TJavaGenericImport<JCP2102SerialDevice_FlowControlThreadClass, JCP2102SerialDevice_FlowControlThread>) end;

  JUsbSpiInterfaceClass = interface(IJavaClass)
    ['{1CF28C8B-E885-44CB-9A24-31A9264B2C67}']
    {class} function _GetDIVIDER_128: Integer; cdecl;
    {class} function _GetDIVIDER_16: Integer; cdecl;
    {class} function _GetDIVIDER_2: Integer; cdecl;
    {class} function _GetDIVIDER_32: Integer; cdecl;
    {class} function _GetDIVIDER_4: Integer; cdecl;
    {class} function _GetDIVIDER_64: Integer; cdecl;
    {class} function _GetDIVIDER_8: Integer; cdecl;
    {class} function connectSPI: Boolean; cdecl;//Deprecated
    {class} property DIVIDER_128: Integer read _GetDIVIDER_128;
    {class} property DIVIDER_16: Integer read _GetDIVIDER_16;
    {class} property DIVIDER_2: Integer read _GetDIVIDER_2;
    {class} property DIVIDER_32: Integer read _GetDIVIDER_32;
    {class} property DIVIDER_4: Integer read _GetDIVIDER_4;
    {class} property DIVIDER_64: Integer read _GetDIVIDER_64;
    {class} property DIVIDER_8: Integer read _GetDIVIDER_8;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSpiInterface')]
  JUsbSpiInterface = interface(IJavaInstance)
    ['{D77DA7E0-2B12-4BE0-B74E-31B55D579A60}']
    procedure closeSPI; cdecl;
    function getClockDivider: Integer; cdecl;
    function getSelectedSlave: Integer; cdecl;
    procedure readMISO(i: Integer); cdecl;
    procedure selectSlave(i: Integer); cdecl;
    procedure setClock(i: Integer); cdecl;
    procedure setMISOCallback(usbMISOCallback: JUsbSpiInterface_UsbMISOCallback); cdecl;
    procedure writeMOSI(b: TJavaArray<Byte>); cdecl;
    procedure writeRead(b: TJavaArray<Byte>; i: Integer); cdecl;
  end;
  TJUsbSpiInterface = class(TJavaGenericImport<JUsbSpiInterfaceClass, JUsbSpiInterface>) end;

  JUsbSpiDeviceClass = interface(JUsbSpiInterfaceClass)
    ['{1F29DC16-C45E-43F8-AA22-7485F5B58A74}']
    {class} function _Getconnection: JUsbDeviceConnection; cdecl;
    {class} function _GetserialBuffer: JSerialBuffer; cdecl;
    {class} procedure _SetserialBuffer(Value: JSerialBuffer); cdecl;
    {class} function _GetwriteThread: JUsbSpiDevice_WriteThread; cdecl;
    {class} procedure _SetwriteThread(Value: JUsbSpiDevice_WriteThread); cdecl;
    {class} function createUsbSerialDevice(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JUsbSpiDevice; cdecl; overload;
    {class} function createUsbSerialDevice(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JUsbSpiDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JUsbSpiDevice; cdecl;//Deprecated
    {class} property connection: JUsbDeviceConnection read _Getconnection;
    {class} property serialBuffer: JSerialBuffer read _GetserialBuffer write _SetserialBuffer;
    {class} property writeThread: JUsbSpiDevice_WriteThread read _GetwriteThread write _SetwriteThread;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSpiDevice')]
  JUsbSpiDevice = interface(JUsbSpiInterface)
    ['{541CFDDA-6BED-45D7-B878-F4B08EE21F04}']
    procedure closeSPI; cdecl;
    function connectSPI: Boolean; cdecl;
    function getClockDivider: Integer; cdecl;
    function getSelectedSlave: Integer; cdecl;
    procedure readMISO(i: Integer); cdecl;
    procedure selectSlave(i: Integer); cdecl;
    procedure setClock(i: Integer); cdecl;
    procedure setMISOCallback(usbMISOCallback: JUsbSpiInterface_UsbMISOCallback); cdecl;
    procedure writeMOSI(b: TJavaArray<Byte>); cdecl;
    procedure writeRead(b: TJavaArray<Byte>; i: Integer); cdecl;
  end;
  TJUsbSpiDevice = class(TJavaGenericImport<JUsbSpiDeviceClass, JUsbSpiDevice>) end;

  JCP2130SpiDeviceClass = interface(JUsbSpiDeviceClass)
    ['{F9504DCC-8A2C-4637-BA71-EE8845CFCABF}']
    {class} function _GetCLOCK_12MHz: Integer; cdecl;
    {class} function _GetCLOCK_187_5KHz: Integer; cdecl;
    {class} function _GetCLOCK_1_5MHz: Integer; cdecl;
    {class} function _GetCLOCK_375KHz: Integer; cdecl;
    {class} function _GetCLOCK_3MHz: Integer; cdecl;
    {class} function _GetCLOCK_6MHz: Integer; cdecl;
    {class} function _GetCLOCK_750KHz: Integer; cdecl;
    {class} function _GetCLOCK_93_75KHz: Integer; cdecl;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JCP2130SpiDevice; cdecl; overload;//Deprecated
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JCP2130SpiDevice; cdecl; overload;
    {class} property CLOCK_12MHz: Integer read _GetCLOCK_12MHz;
    {class} property CLOCK_187_5KHz: Integer read _GetCLOCK_187_5KHz;
    {class} property CLOCK_1_5MHz: Integer read _GetCLOCK_1_5MHz;
    {class} property CLOCK_375KHz: Integer read _GetCLOCK_375KHz;
    {class} property CLOCK_3MHz: Integer read _GetCLOCK_3MHz;
    {class} property CLOCK_6MHz: Integer read _GetCLOCK_6MHz;
    {class} property CLOCK_750KHz: Integer read _GetCLOCK_750KHz;
    {class} property CLOCK_93_75KHz: Integer read _GetCLOCK_93_75KHz;
  end;

  [JavaSignature('com/felhr/usbserial/CP2130SpiDevice')]
  JCP2130SpiDevice = interface(JUsbSpiDevice)
    ['{A18C919E-CD33-41B6-9C7B-574C17770237}']
    procedure closeSPI; cdecl;
    function connectSPI: Boolean; cdecl;
    function getClockDivider: Integer; cdecl;
    function getSelectedSlave: Integer; cdecl;
    procedure readMISO(i: Integer); cdecl;
    procedure selectSlave(i: Integer); cdecl;
    procedure setClock(i: Integer); cdecl;
    procedure writeMOSI(b: TJavaArray<Byte>); cdecl;
    procedure writeRead(b: TJavaArray<Byte>; i: Integer); cdecl;
  end;
  TJCP2130SpiDevice = class(TJavaGenericImport<JCP2130SpiDeviceClass, JCP2130SpiDevice>) end;

  JFTDISerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{FCC9235D-04CA-4432-8430-AE14D64C04C2}']
    {class} function _GetFTDI_BAUDRATE_115200: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_1200: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_19200: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_230400: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_2400: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_300: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_38400: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_460800: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_4800: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_57600: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_600: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_921600: Integer; cdecl;
    {class} function _GetFTDI_BAUDRATE_9600: Integer; cdecl;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JFTDISerialDevice; cdecl; overload;//Deprecated
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JFTDISerialDevice; cdecl; overload;
    {class} property FTDI_BAUDRATE_115200: Integer read _GetFTDI_BAUDRATE_115200;
    {class} property FTDI_BAUDRATE_1200: Integer read _GetFTDI_BAUDRATE_1200;
    {class} property FTDI_BAUDRATE_19200: Integer read _GetFTDI_BAUDRATE_19200;
    {class} property FTDI_BAUDRATE_230400: Integer read _GetFTDI_BAUDRATE_230400;
    {class} property FTDI_BAUDRATE_2400: Integer read _GetFTDI_BAUDRATE_2400;
    {class} property FTDI_BAUDRATE_300: Integer read _GetFTDI_BAUDRATE_300;
    {class} property FTDI_BAUDRATE_38400: Integer read _GetFTDI_BAUDRATE_38400;
    {class} property FTDI_BAUDRATE_460800: Integer read _GetFTDI_BAUDRATE_460800;
    {class} property FTDI_BAUDRATE_4800: Integer read _GetFTDI_BAUDRATE_4800;
    {class} property FTDI_BAUDRATE_57600: Integer read _GetFTDI_BAUDRATE_57600;
    {class} property FTDI_BAUDRATE_600: Integer read _GetFTDI_BAUDRATE_600;
    {class} property FTDI_BAUDRATE_921600: Integer read _GetFTDI_BAUDRATE_921600;
    {class} property FTDI_BAUDRATE_9600: Integer read _GetFTDI_BAUDRATE_9600;
  end;

  [JavaSignature('com/felhr/usbserial/FTDISerialDevice')]
  JFTDISerialDevice = interface(JUsbSerialDevice)
    ['{F940C0D3-6D99-4076-8518-9FF3EE59705E}']
    function _GetftdiUtilities: JFTDISerialDevice_FTDIUtilities; cdecl;
    procedure _SetftdiUtilities(Value: JFTDISerialDevice_FTDIUtilities); cdecl;
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
    function syncRead(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    property ftdiUtilities: JFTDISerialDevice_FTDIUtilities read _GetftdiUtilities write _SetftdiUtilities;
  end;
  TJFTDISerialDevice = class(TJavaGenericImport<JFTDISerialDeviceClass, JFTDISerialDevice>) end;

  JFTDISerialDevice_FTDIUtilitiesClass = interface(JObjectClass)
    ['{C13FDA2A-27E4-43FA-8A71-C047081C1B5A}']
    {class} function init(fTDISerialDevice: JFTDISerialDevice): JFTDISerialDevice_FTDIUtilities; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/FTDISerialDevice$FTDIUtilities')]
  JFTDISerialDevice_FTDIUtilities = interface(JObject)
    ['{FE267FF4-E267-466F-A83A-F00294CAEA24}']
    function adaptArray(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    procedure checkModemStatus(b: TJavaArray<Byte>); cdecl;
  end;
  TJFTDISerialDevice_FTDIUtilities = class(TJavaGenericImport<JFTDISerialDevice_FTDIUtilitiesClass, JFTDISerialDevice_FTDIUtilities>) end;

  JPL2303SerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{D472EAE4-9D35-48D2-B23A-4F2A7905001D}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JPL2303SerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JPL2303SerialDevice; cdecl; overload;
  end;

  [JavaSignature('com/felhr/usbserial/PL2303SerialDevice')]
  JPL2303SerialDevice = interface(JUsbSerialDevice)
    ['{BC5C367B-F154-44BD-AA28-B94FB7BF94A5}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJPL2303SerialDevice = class(TJavaGenericImport<JPL2303SerialDeviceClass, JPL2303SerialDevice>) end;

  JSerialBufferClass = interface(JObjectClass)
    ['{43A28CA1-80E5-488E-975C-CC8FF468C28D}']
    {class} function _GetDEFAULT_READ_BUFFER_SIZE: Integer; cdecl;
    {class} function _GetDEFAULT_WRITE_BUFFER_SIZE: Integer; cdecl;
    {class} function init(b: Boolean): JSerialBuffer; cdecl;//Deprecated
    {class} property DEFAULT_READ_BUFFER_SIZE: Integer read _GetDEFAULT_READ_BUFFER_SIZE;
    {class} property DEFAULT_WRITE_BUFFER_SIZE: Integer read _GetDEFAULT_WRITE_BUFFER_SIZE;
  end;

  [JavaSignature('com/felhr/usbserial/SerialBuffer')]
  JSerialBuffer = interface(JObject)
    ['{D13E531E-3FCC-464C-BFB8-BF6715C1910D}']
    procedure clearReadBuffer; cdecl;
    procedure debug(b: Boolean); cdecl;
    function getBufferCompatible: TJavaArray<Byte>; cdecl;
    function getDataReceived: TJavaArray<Byte>; cdecl;
    function getDataReceivedCompatible(i: Integer): TJavaArray<Byte>; cdecl;
    function getReadBuffer: JByteBuffer; cdecl;
    function getWriteBuffer: TJavaArray<Byte>; cdecl;
    procedure putReadBuffer(byteBuffer: JByteBuffer); cdecl;
    procedure putWriteBuffer(b: TJavaArray<Byte>); cdecl;
    procedure resetWriteBuffer; cdecl;
  end;
  TJSerialBuffer = class(TJavaGenericImport<JSerialBufferClass, JSerialBuffer>) end;

  JSerialBuffer_SynchronizedBufferClass = interface(JObjectClass)
    ['{3F6FC565-C6D9-457E-B1F6-AA0CC3A1C954}']
    {class} function init(serialBuffer: JSerialBuffer): JSerialBuffer_SynchronizedBuffer; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/SerialBuffer$SynchronizedBuffer')]
  JSerialBuffer_SynchronizedBuffer = interface(JObject)
    ['{393D9710-EE60-4AB5-AE62-15C0857F5F1C}']
    function &get: TJavaArray<Byte>; cdecl;
    procedure put(b: TJavaArray<Byte>); cdecl;
    procedure reset; cdecl;
  end;
  TJSerialBuffer_SynchronizedBuffer = class(TJavaGenericImport<JSerialBuffer_SynchronizedBufferClass, JSerialBuffer_SynchronizedBuffer>) end;

  JSerialInputStreamClass = interface(JInputStreamClass)
    ['{D1D817BE-7224-4BE1-891D-3CA69FA15095}']
    {class} function init(usbSerialInterface: JUsbSerialInterface): JSerialInputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/felhr/usbserial/SerialInputStream')]
  JSerialInputStream = interface(JInputStream)
    ['{BE52B34E-F656-423B-93C0-A35A62F6F93C}']
    procedure close; cdecl;
    procedure onReceivedData(b: TJavaArray<Byte>); cdecl;
    function read: Integer; cdecl;
  end;
  TJSerialInputStream = class(TJavaGenericImport<JSerialInputStreamClass, JSerialInputStream>) end;

  JSerialOutputStreamClass = interface(JOutputStreamClass)
    ['{1B4747A2-AEE0-4CEB-8510-079D77439582}']
    {class} function init(usbSerialInterface: JUsbSerialInterface): JSerialOutputStream; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/SerialOutputStream')]
  JSerialOutputStream = interface(JOutputStream)
    ['{04343C20-D3E8-497A-9570-B93D35D51CAD}']
    procedure write(b: TJavaArray<Byte>); cdecl; overload;
    procedure write(i: Integer); cdecl; overload;
  end;
  TJSerialOutputStream = class(TJavaGenericImport<JSerialOutputStreamClass, JSerialOutputStream>) end;

  JUsbSerialDebuggerClass = interface(JObjectClass)
    ['{6E6C79ED-E88C-45F7-9A2B-B83B6A585544}']
    {class} function _GetENCODING: JString; cdecl;
    {class} procedure printLogGet(b: TJavaArray<Byte>; b1: Boolean); cdecl;
    {class} procedure printLogPut(b: TJavaArray<Byte>; b1: Boolean); cdecl;
    {class} procedure printReadLogGet(b: TJavaArray<Byte>; b1: Boolean); cdecl;
    {class} procedure printReadLogPut(b: TJavaArray<Byte>; b1: Boolean); cdecl;
    {class} property ENCODING: JString read _GetENCODING;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialDebugger')]
  JUsbSerialDebugger = interface(JObject)
    ['{035B6A04-25BC-4F0D-BFED-EBE51400D52A}']
  end;
  TJUsbSerialDebugger = class(TJavaGenericImport<JUsbSerialDebuggerClass, JUsbSerialDebugger>) end;

  JUsbSerialDevice_ReadThreadClass = interface(JThreadClass)
    ['{2AABCB31-0A5B-4440-A456-3551C004DEA7}']
    {class} function init(usbSerialDevice: JUsbSerialDevice; usbSerialDevice1: JUsbSerialDevice): JUsbSerialDevice_ReadThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialDevice$ReadThread')]
  JUsbSerialDevice_ReadThread = interface(JThread)
    ['{366CD035-12E0-4FC5-8A76-84A5FA295743}']
    procedure run; cdecl;
    procedure setCallback(usbReadCallback: JUsbSerialInterface_UsbReadCallback); cdecl;
    procedure setUsbEndpoint(usbEndpoint: JUsbEndpoint); cdecl;
    procedure stopReadThread; cdecl;
  end;
  TJUsbSerialDevice_ReadThread = class(TJavaGenericImport<JUsbSerialDevice_ReadThreadClass, JUsbSerialDevice_ReadThread>) end;

  JUsbSerialDevice_WorkerThreadClass = interface(JThreadClass)
    ['{8D8398E4-04F9-4260-ADA4-CC0141E6DBDD}']
    {class} function init(usbSerialDevice: JUsbSerialDevice; usbSerialDevice1: JUsbSerialDevice): JUsbSerialDevice_WorkerThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialDevice$WorkerThread')]
  JUsbSerialDevice_WorkerThread = interface(JThread)
    ['{9DF50646-8DC9-4DAD-8522-126A0B287BE4}']
    function getUsbRequest: JUsbRequest; cdecl;
    procedure run; cdecl;
    procedure setCallback(usbReadCallback: JUsbSerialInterface_UsbReadCallback); cdecl;
    procedure setUsbRequest(usbRequest: JUsbRequest); cdecl;
    procedure stopWorkingThread; cdecl;
  end;
  TJUsbSerialDevice_WorkerThread = class(TJavaGenericImport<JUsbSerialDevice_WorkerThreadClass, JUsbSerialDevice_WorkerThread>) end;

  JUsbSerialDevice_WriteThreadClass = interface(JThreadClass)
    ['{9D64D416-8592-403F-98F2-F1A8E4DD8AA0}']
    {class} function init(usbSerialDevice: JUsbSerialDevice): JUsbSerialDevice_WriteThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialDevice$WriteThread')]
  JUsbSerialDevice_WriteThread = interface(JThread)
    ['{6C08DEF2-492A-4222-85BE-3381AD7E5060}']
    procedure run; cdecl;
    procedure setUsbEndpoint(usbEndpoint: JUsbEndpoint); cdecl;
    procedure stopWriteThread; cdecl;
  end;
  TJUsbSerialDevice_WriteThread = class(TJavaGenericImport<JUsbSerialDevice_WriteThreadClass, JUsbSerialDevice_WriteThread>) end;

  JUsbSerialInterface_UsbBreakCallbackClass = interface(IJavaClass)
    ['{038A4649-94CE-49A0-8FC5-37C41654039E}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbBreakCallback')]
  JUsbSerialInterface_UsbBreakCallback = interface(IJavaInstance)
    ['{55ACCC16-EA95-45B5-B0B7-8E5551422FA2}']
    procedure onBreakInterrupt; cdecl;
  end;
  TJUsbSerialInterface_UsbBreakCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbBreakCallbackClass, JUsbSerialInterface_UsbBreakCallback>) end;

  JUsbSerialInterface_UsbCTSCallbackClass = interface(IJavaClass)
    ['{6359D47C-A804-422C-A473-01095787E9D6}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbCTSCallback')]
  JUsbSerialInterface_UsbCTSCallback = interface(IJavaInstance)
    ['{49DEF5B6-8772-4992-99F6-800957792662}']
    procedure onCTSChanged(b: Boolean); cdecl;
  end;
  TJUsbSerialInterface_UsbCTSCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbCTSCallbackClass, JUsbSerialInterface_UsbCTSCallback>) end;

  JUsbSerialInterface_UsbDSRCallbackClass = interface(IJavaClass)
    ['{A8C4D909-EA50-4991-AA70-6D24082D07D5}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbDSRCallback')]
  JUsbSerialInterface_UsbDSRCallback = interface(IJavaInstance)
    ['{E1E6D8AA-4BBE-492E-945B-365CB1C6CB3F}']
    procedure onDSRChanged(b: Boolean); cdecl;
  end;
  TJUsbSerialInterface_UsbDSRCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbDSRCallbackClass, JUsbSerialInterface_UsbDSRCallback>) end;

  JUsbSerialInterface_UsbFrameCallbackClass = interface(IJavaClass)
    ['{FD07FA77-4F8E-433C-93E3-C9A1CC7D8913}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbFrameCallback')]
  JUsbSerialInterface_UsbFrameCallback = interface(IJavaInstance)
    ['{D4A2F2D8-057B-494D-A499-9EE3E0D61534}']
    procedure onFramingError; cdecl;
  end;
  TJUsbSerialInterface_UsbFrameCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbFrameCallbackClass, JUsbSerialInterface_UsbFrameCallback>) end;

  JUsbSerialInterface_UsbOverrunCallbackClass = interface(IJavaClass)
    ['{3F4732C6-2919-428D-9F3E-80EA6A5B9F64}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback')]
  JUsbSerialInterface_UsbOverrunCallback = interface(IJavaInstance)
    ['{56F809A5-0888-4CBC-BE2B-B768FE3DCB9B}']
    procedure onOverrunError; cdecl;
  end;
  TJUsbSerialInterface_UsbOverrunCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbOverrunCallbackClass, JUsbSerialInterface_UsbOverrunCallback>) end;

  JUsbSerialInterface_UsbParityCallbackClass = interface(IJavaClass)
    ['{5B2DE78F-F9E3-4D53-A048-3FA198A9038B}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbParityCallback')]
  JUsbSerialInterface_UsbParityCallback = interface(IJavaInstance)
    ['{3BE19E08-BE93-44F2-895A-9E71A06EC24A}']
    procedure onParityError; cdecl;
  end;
  TJUsbSerialInterface_UsbParityCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbParityCallbackClass, JUsbSerialInterface_UsbParityCallback>) end;

  JUsbSerialInterface_UsbReadCallbackClass = interface(IJavaClass)
    ['{AD193B93-7AB6-490B-BB9C-3D89A15AC906}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSerialInterface$UsbReadCallback')]
  JUsbSerialInterface_UsbReadCallback = interface(IJavaInstance)
    ['{9ABC4BD2-CFFB-49DC-9651-D042476930A4}']
    procedure onReceivedData(b: TJavaArray<Byte>); cdecl;
  end;
  TJUsbSerialInterface_UsbReadCallback = class(TJavaGenericImport<JUsbSerialInterface_UsbReadCallbackClass, JUsbSerialInterface_UsbReadCallback>) end;

  JUsbSpiDevice_ReadThreadClass = interface(JThreadClass)
    ['{BBCD5640-D83E-4E52-912C-5A938100D20C}']
    {class} function init(usbSpiDevice: JUsbSpiDevice): JUsbSpiDevice_ReadThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSpiDevice$ReadThread')]
  JUsbSpiDevice_ReadThread = interface(JThread)
    ['{DEB98CD8-BCD7-47BF-A07D-306EA693A452}']
    procedure run; cdecl;
    procedure setCallback(usbMISOCallback: JUsbSpiInterface_UsbMISOCallback); cdecl;
    procedure setUsbEndpoint(usbEndpoint: JUsbEndpoint); cdecl;
    procedure stopReadThread; cdecl;
  end;
  TJUsbSpiDevice_ReadThread = class(TJavaGenericImport<JUsbSpiDevice_ReadThreadClass, JUsbSpiDevice_ReadThread>) end;

  JUsbSpiDevice_WriteThreadClass = interface(JThreadClass)
    ['{CE88062C-98E7-420F-A1C8-0FD476C39110}']
    {class} function init(usbSpiDevice: JUsbSpiDevice): JUsbSpiDevice_WriteThread; cdecl;
  end;

  [JavaSignature('com/felhr/usbserial/UsbSpiDevice$WriteThread')]
  JUsbSpiDevice_WriteThread = interface(JThread)
    ['{6816C1DF-04E9-44E0-B5C4-A53A4095A69E}']
    procedure run; cdecl;
    procedure setUsbEndpoint(usbEndpoint: JUsbEndpoint); cdecl;
    procedure stopWriteThread; cdecl;
  end;
  TJUsbSpiDevice_WriteThread = class(TJavaGenericImport<JUsbSpiDevice_WriteThreadClass, JUsbSpiDevice_WriteThread>) end;

  JUsbSpiInterface_UsbMISOCallbackClass = interface(IJavaClass)
    ['{E6A5532A-0779-45AD-A2E0-90EBB49F2381}']
  end;

  [JavaSignature('com/felhr/usbserial/UsbSpiInterface$UsbMISOCallback')]
  JUsbSpiInterface_UsbMISOCallback = interface(IJavaInstance)
    ['{E807FFAE-AF3A-4A39-A495-2C05694CAEA6}']
    function onReceivedData(b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJUsbSpiInterface_UsbMISOCallback = class(TJavaGenericImport<JUsbSpiInterface_UsbMISOCallbackClass, JUsbSpiInterface_UsbMISOCallback>) end;

  JXdcVcpSerialDeviceClass = interface(JUsbSerialDeviceClass)
    ['{3D32BAC0-A6FE-458A-8FB5-3E63AC5E3651}']
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection): JXdcVcpSerialDevice; cdecl; overload;
    {class} function init(usbDevice: JUsbDevice; usbDeviceConnection: JUsbDeviceConnection; i: Integer): JXdcVcpSerialDevice; cdecl; overload;
  end;

  [JavaSignature('com/felhr/usbserial/XdcVcpSerialDevice')]
  JXdcVcpSerialDevice = interface(JUsbSerialDevice)
    ['{76646C34-DD03-4B08-ABBE-9400FC592C83}']
    procedure close; cdecl;
    procedure getBreak(usbBreakCallback: JUsbSerialInterface_UsbBreakCallback); cdecl;
    procedure getCTS(usbCTSCallback: JUsbSerialInterface_UsbCTSCallback); cdecl;
    procedure getDSR(usbDSRCallback: JUsbSerialInterface_UsbDSRCallback); cdecl;
    procedure getFrame(usbFrameCallback: JUsbSerialInterface_UsbFrameCallback); cdecl;
    procedure getOverrun(usbOverrunCallback: JUsbSerialInterface_UsbOverrunCallback); cdecl;
    procedure getParity(usbParityCallback: JUsbSerialInterface_UsbParityCallback); cdecl;
    function open: Boolean; cdecl;
    procedure setBaudRate(i: Integer); cdecl;
    procedure setDTR(b: Boolean); cdecl;
    procedure setDataBits(i: Integer); cdecl;
    procedure setFlowControl(i: Integer); cdecl;
    procedure setParity(i: Integer); cdecl;
    procedure setRTS(b: Boolean); cdecl;
    procedure setStopBits(i: Integer); cdecl;
    procedure syncClose; cdecl;
    function syncOpen: Boolean; cdecl;
  end;
  TJXdcVcpSerialDevice = class(TJavaGenericImport<JXdcVcpSerialDeviceClass, JXdcVcpSerialDevice>) end;

  JHexDataClass = interface(JObjectClass)
    ['{1E823D04-9A95-4F2C-8D96-E9315DAB4985}']
    {class} function hex4digits(string_: JString): JString; cdecl;
    {class} function hexToString(b: TJavaArray<Byte>): JString; cdecl;
    {class} function stringTobytes(string_: JString): TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/felhr/utils/HexData')]
  JHexData = interface(JObject)
    ['{649DDCBD-0B5F-4B18-83AC-BCBA707D186A}']
  end;
  TJHexData = class(TJavaGenericImport<JHexDataClass, JHexData>) end;

  JBarcodeFormatClass = interface(JEnumClass)
    ['{81A31E7E-8E75-40E7-9F7C-52EECC3487FC}']
    {class} function _GetAZTEC: JBarcodeFormat; cdecl;
    {class} function _GetCODABAR: JBarcodeFormat; cdecl;
    {class} function _GetCODE_128: JBarcodeFormat; cdecl;
    {class} function _GetCODE_39: JBarcodeFormat; cdecl;
    {class} function _GetCODE_93: JBarcodeFormat; cdecl;
    {class} function _GetDATA_MATRIX: JBarcodeFormat; cdecl;
    {class} function _GetEAN_13: JBarcodeFormat; cdecl;
    {class} function _GetEAN_8: JBarcodeFormat; cdecl;
    {class} function _GetITF: JBarcodeFormat; cdecl;
    {class} function _GetMAXICODE: JBarcodeFormat; cdecl;
    {class} function _GetPDF_417: JBarcodeFormat; cdecl;
    {class} function _GetQR_CODE: JBarcodeFormat; cdecl;
    {class} function _GetRSS_14: JBarcodeFormat; cdecl;
    {class} function _GetRSS_EXPANDED: JBarcodeFormat; cdecl;
    {class} function _GetUPC_A: JBarcodeFormat; cdecl;
    {class} function _GetUPC_E: JBarcodeFormat; cdecl;
    {class} function _GetUPC_EAN_EXTENSION: JBarcodeFormat; cdecl;
    {class} function valueOf(string_: JString): JBarcodeFormat; cdecl;
    {class} function values: TJavaObjectArray<JBarcodeFormat>; cdecl;//Deprecated
    {class} property AZTEC: JBarcodeFormat read _GetAZTEC;
    {class} property CODABAR: JBarcodeFormat read _GetCODABAR;
    {class} property CODE_128: JBarcodeFormat read _GetCODE_128;
    {class} property CODE_39: JBarcodeFormat read _GetCODE_39;
    {class} property CODE_93: JBarcodeFormat read _GetCODE_93;
    {class} property DATA_MATRIX: JBarcodeFormat read _GetDATA_MATRIX;
    {class} property EAN_13: JBarcodeFormat read _GetEAN_13;
    {class} property EAN_8: JBarcodeFormat read _GetEAN_8;
    {class} property ITF: JBarcodeFormat read _GetITF;
    {class} property MAXICODE: JBarcodeFormat read _GetMAXICODE;
    {class} property PDF_417: JBarcodeFormat read _GetPDF_417;
    {class} property QR_CODE: JBarcodeFormat read _GetQR_CODE;
    {class} property RSS_14: JBarcodeFormat read _GetRSS_14;
    {class} property RSS_EXPANDED: JBarcodeFormat read _GetRSS_EXPANDED;
    {class} property UPC_A: JBarcodeFormat read _GetUPC_A;
    {class} property UPC_E: JBarcodeFormat read _GetUPC_E;
    {class} property UPC_EAN_EXTENSION: JBarcodeFormat read _GetUPC_EAN_EXTENSION;
  end;

  [JavaSignature('com/google/zxing/BarcodeFormat')]
  JBarcodeFormat = interface(JEnum)
    ['{7F257394-B15B-4F6B-8231-F7C9D912DAD7}']
  end;
  TJBarcodeFormat = class(TJavaGenericImport<JBarcodeFormatClass, JBarcodeFormat>) end;

  JBinarizerClass = interface(JObjectClass)
    ['{E3F63F47-97B8-4AB0-8993-1F479764440D}']
  end;

  [JavaSignature('com/google/zxing/Binarizer')]
  JBinarizer = interface(JObject)
    ['{AEB7939E-B0DB-4C91-9C89-2BA4C2AC444A}']
    function createBinarizer(luminanceSource: JLuminanceSource): JBinarizer; cdecl;
    function getBlackMatrix: JBitMatrix; cdecl;
    function getBlackRow(i: Integer; bitArray: JBitArray): JBitArray; cdecl;
    function getHeight: Integer; cdecl;
    function getLuminanceSource: JLuminanceSource; cdecl;
    function getWidth: Integer; cdecl;
  end;
  TJBinarizer = class(TJavaGenericImport<JBinarizerClass, JBinarizer>) end;

  JBinaryBitmapClass = interface(JObjectClass)
    ['{F5A36552-F9A4-4548-9785-89DFDA797C43}']
    {class} function init(binarizer: JBinarizer): JBinaryBitmap; cdecl;
  end;

  [JavaSignature('com/google/zxing/BinaryBitmap')]
  JBinaryBitmap = interface(JObject)
    ['{63E06CF4-5867-456D-ACA6-D6870BCF196C}']
    function crop(i: Integer; i1: Integer; i2: Integer; i3: Integer): JBinaryBitmap; cdecl;
    function getBlackMatrix: JBitMatrix; cdecl;
    function getBlackRow(i: Integer; bitArray: JBitArray): JBitArray; cdecl;
    function getHeight: Integer; cdecl;
    function getWidth: Integer; cdecl;
    function isCropSupported: Boolean; cdecl;
    function isRotateSupported: Boolean; cdecl;
    function rotateCounterClockwise: JBinaryBitmap; cdecl;
    function rotateCounterClockwise45: JBinaryBitmap; cdecl;
    function toString: JString; cdecl;
  end;
  TJBinaryBitmap = class(TJavaGenericImport<JBinaryBitmapClass, JBinaryBitmap>) end;

  JReaderExceptionClass = interface(JExceptionClass)
    ['{DC4C19C4-71A7-424B-B691-2CED8000DAC4}']
  end;

  [JavaSignature('com/google/zxing/ReaderException')]
  JReaderException = interface(JException)
    ['{8D2B8FF6-3CA0-4C55-8905-3936D3E28ECE}']
    function fillInStackTrace: JThrowable; cdecl;
  end;
  TJReaderException = class(TJavaGenericImport<JReaderExceptionClass, JReaderException>) end;

  JChecksumExceptionClass = interface(JReaderExceptionClass)
    ['{C8A475C1-6F6F-4CDA-A54B-06E88CBEC77F}']
    {class} function getChecksumInstance: JChecksumException; cdecl; overload;
    {class} function getChecksumInstance(throwable: JThrowable): JChecksumException; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/ChecksumException')]
  JChecksumException = interface(JReaderException)
    ['{26478F1C-E522-4560-9DF1-BB405C13A210}']
  end;
  TJChecksumException = class(TJavaGenericImport<JChecksumExceptionClass, JChecksumException>) end;

  JDecodeHintTypeClass = interface(JEnumClass)
    ['{E94B62C0-CB60-42FB-BB8D-C05E567F55DA}']
    {class} function _GetALLOWED_EAN_EXTENSIONS: JDecodeHintType; cdecl;
    {class} function _GetALLOWED_LENGTHS: JDecodeHintType; cdecl;
    {class} function _GetASSUME_CODE_39_CHECK_DIGIT: JDecodeHintType; cdecl;
    {class} function _GetASSUME_GS1: JDecodeHintType; cdecl;
    {class} function _GetCHARACTER_SET: JDecodeHintType; cdecl;
    {class} function _GetNEED_RESULT_POINT_CALLBACK: JDecodeHintType; cdecl;
    {class} function _GetOTHER: JDecodeHintType; cdecl;
    {class} function _GetPOSSIBLE_FORMATS: JDecodeHintType; cdecl;
    {class} function _GetPURE_BARCODE: JDecodeHintType; cdecl;
    {class} function _GetRETURN_CODABAR_START_END: JDecodeHintType; cdecl;
    {class} function _GetTRY_HARDER: JDecodeHintType; cdecl;
    {class} function valueOf(string_: JString): JDecodeHintType; cdecl;
    {class} function values: TJavaObjectArray<JDecodeHintType>; cdecl;//Deprecated
    {class} property ALLOWED_EAN_EXTENSIONS: JDecodeHintType read _GetALLOWED_EAN_EXTENSIONS;
    {class} property ALLOWED_LENGTHS: JDecodeHintType read _GetALLOWED_LENGTHS;
    {class} property ASSUME_CODE_39_CHECK_DIGIT: JDecodeHintType read _GetASSUME_CODE_39_CHECK_DIGIT;
    {class} property ASSUME_GS1: JDecodeHintType read _GetASSUME_GS1;
    {class} property CHARACTER_SET: JDecodeHintType read _GetCHARACTER_SET;
    {class} property NEED_RESULT_POINT_CALLBACK: JDecodeHintType read _GetNEED_RESULT_POINT_CALLBACK;
    {class} property OTHER: JDecodeHintType read _GetOTHER;
    {class} property POSSIBLE_FORMATS: JDecodeHintType read _GetPOSSIBLE_FORMATS;
    {class} property PURE_BARCODE: JDecodeHintType read _GetPURE_BARCODE;
    {class} property RETURN_CODABAR_START_END: JDecodeHintType read _GetRETURN_CODABAR_START_END;
    {class} property TRY_HARDER: JDecodeHintType read _GetTRY_HARDER;
  end;

  [JavaSignature('com/google/zxing/DecodeHintType')]
  JDecodeHintType = interface(JEnum)
    ['{AF65B685-590F-479B-AAFA-554BCE477491}']
    function getValueType: Jlang_Class; cdecl;
  end;
  TJDecodeHintType = class(TJavaGenericImport<JDecodeHintTypeClass, JDecodeHintType>) end;

  Jzxing_DimensionClass = interface(JObjectClass)
    ['{3F849C5C-E318-4206-8C2F-DA06886BDD46}']
    {class} function init(i: Integer; i1: Integer): Jzxing_Dimension; cdecl;
  end;

  [JavaSignature('com/google/zxing/Dimension')]
  Jzxing_Dimension = interface(JObject)
    ['{ECCE0D76-5E96-4692-B686-AE3DA4FAA5FC}']
    function equals(object_: JObject): Boolean; cdecl;
    function getHeight: Integer; cdecl;
    function getWidth: Integer; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJzxing_Dimension = class(TJavaGenericImport<Jzxing_DimensionClass, Jzxing_Dimension>) end;

  JEncodeHintTypeClass = interface(JEnumClass)
    ['{BC1C7244-0C9F-4D25-9E63-566798AA2E4E}']
    {class} function _GetAZTEC_LAYERS: JEncodeHintType; cdecl;
    {class} function _GetCHARACTER_SET: JEncodeHintType; cdecl;
    {class} function _GetDATA_MATRIX_SHAPE: JEncodeHintType; cdecl;
    {class} function _GetERROR_CORRECTION: JEncodeHintType; cdecl;
    {class} function _GetGS1_FORMAT: JEncodeHintType; cdecl;
    {class} function _GetMARGIN: JEncodeHintType; cdecl;
    {class} function _GetMAX_SIZE: JEncodeHintType; cdecl;
    {class} function _GetMIN_SIZE: JEncodeHintType; cdecl;
    {class} function _GetPDF417_COMPACT: JEncodeHintType; cdecl;
    {class} function _GetPDF417_COMPACTION: JEncodeHintType; cdecl;
    {class} function _GetPDF417_DIMENSIONS: JEncodeHintType; cdecl;
    {class} function _GetQR_MASK_PATTERN: JEncodeHintType; cdecl;
    {class} function _GetQR_VERSION: JEncodeHintType; cdecl;
    {class} function valueOf(string_: JString): JEncodeHintType; cdecl;
    {class} function values: TJavaObjectArray<JEncodeHintType>; cdecl;
    {class} property AZTEC_LAYERS: JEncodeHintType read _GetAZTEC_LAYERS;
    {class} property CHARACTER_SET: JEncodeHintType read _GetCHARACTER_SET;
    {class} property DATA_MATRIX_SHAPE: JEncodeHintType read _GetDATA_MATRIX_SHAPE;
    {class} property ERROR_CORRECTION: JEncodeHintType read _GetERROR_CORRECTION;
    {class} property GS1_FORMAT: JEncodeHintType read _GetGS1_FORMAT;
    {class} property MARGIN: JEncodeHintType read _GetMARGIN;
    {class} property MAX_SIZE: JEncodeHintType read _GetMAX_SIZE;
    {class} property MIN_SIZE: JEncodeHintType read _GetMIN_SIZE;
    {class} property PDF417_COMPACT: JEncodeHintType read _GetPDF417_COMPACT;
    {class} property PDF417_COMPACTION: JEncodeHintType read _GetPDF417_COMPACTION;
    {class} property PDF417_DIMENSIONS: JEncodeHintType read _GetPDF417_DIMENSIONS;
    {class} property QR_MASK_PATTERN: JEncodeHintType read _GetQR_MASK_PATTERN;
    {class} property QR_VERSION: JEncodeHintType read _GetQR_VERSION;
  end;

  [JavaSignature('com/google/zxing/EncodeHintType')]
  JEncodeHintType = interface(JEnum)
    ['{026D6080-EC08-48CB-9D5A-D948F7C82EEF}']
  end;
  TJEncodeHintType = class(TJavaGenericImport<JEncodeHintTypeClass, JEncodeHintType>) end;

  Jzxing_FormatExceptionClass = interface(JReaderExceptionClass)
    ['{3C962D59-3CF2-40A4-8F34-7490B5C9DDC9}']
    {class} function getFormatInstance: Jzxing_FormatException; cdecl; overload;
    {class} function getFormatInstance(throwable: JThrowable): Jzxing_FormatException; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/FormatException')]
  Jzxing_FormatException = interface(JReaderException)
    ['{84193911-7B24-4C28-B0E1-40BF92F1547B}']
  end;
  TJzxing_FormatException = class(TJavaGenericImport<Jzxing_FormatExceptionClass, Jzxing_FormatException>) end;

  JLuminanceSourceClass = interface(JObjectClass)
    ['{A8B7A503-7EE5-4F6F-BC3B-AE3505DE526B}']
    {class} function init(i: Integer; i1: Integer): JLuminanceSource; cdecl;
  end;

  [JavaSignature('com/google/zxing/LuminanceSource')]
  JLuminanceSource = interface(JObject)
    ['{C429C6E8-8D08-47FE-8BBB-59D3C09D2AE1}']
    function crop(i: Integer; i1: Integer; i2: Integer; i3: Integer): JLuminanceSource; cdecl;
    function getHeight: Integer; cdecl;
    function getMatrix: TJavaArray<Byte>; cdecl;
    function getRow(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getWidth: Integer; cdecl;
    function invert: JLuminanceSource; cdecl;
    function isCropSupported: Boolean; cdecl;
    function isRotateSupported: Boolean; cdecl;
    function rotateCounterClockwise: JLuminanceSource; cdecl;
    function rotateCounterClockwise45: JLuminanceSource; cdecl;
    function toString: JString; cdecl;
  end;
  TJLuminanceSource = class(TJavaGenericImport<JLuminanceSourceClass, JLuminanceSource>) end;

  JInvertedLuminanceSourceClass = interface(JLuminanceSourceClass)
    ['{60105E24-0DEA-4BBE-8B08-F67518F11A16}']
    {class} function init(luminanceSource: JLuminanceSource): JInvertedLuminanceSource; cdecl;
  end;

  [JavaSignature('com/google/zxing/InvertedLuminanceSource')]
  JInvertedLuminanceSource = interface(JLuminanceSource)
    ['{2FAA9B1A-2D6D-4F6C-86E7-494E08EAEEFD}']
    function crop(i: Integer; i1: Integer; i2: Integer; i3: Integer): JLuminanceSource; cdecl;
    function getMatrix: TJavaArray<Byte>; cdecl;
    function getRow(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function invert: JLuminanceSource; cdecl;
    function isCropSupported: Boolean; cdecl;
    function isRotateSupported: Boolean; cdecl;
    function rotateCounterClockwise: JLuminanceSource; cdecl;
    function rotateCounterClockwise45: JLuminanceSource; cdecl;
  end;
  TJInvertedLuminanceSource = class(TJavaGenericImport<JInvertedLuminanceSourceClass, JInvertedLuminanceSource>) end;

  Jzxing_ReaderClass = interface(IJavaClass)
    ['{A7BED9BE-EE3C-455C-977B-FE96CBA06B2A}']
  end;

  [JavaSignature('com/google/zxing/Reader')]
  Jzxing_Reader = interface(IJavaInstance)
    ['{4FCDCDF8-B318-4F44-BB2B-9E76D0358498}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJzxing_Reader = class(TJavaGenericImport<Jzxing_ReaderClass, Jzxing_Reader>) end;

  JMultiFormatReaderClass = interface(Jzxing_ReaderClass)
    ['{B74D6E07-25C3-43EE-95C0-7CE296704961}']
    {class} function init: JMultiFormatReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/MultiFormatReader')]
  JMultiFormatReader = interface(Jzxing_Reader)
    ['{8DFDB748-150F-43B4-8E61-34BAC9E87AA0}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeWithState(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
    procedure setHints(map: JMap); cdecl;
  end;
  TJMultiFormatReader = class(TJavaGenericImport<JMultiFormatReaderClass, JMultiFormatReader>) end;

  Jzxing_WriterClass = interface(IJavaClass)
    ['{E6C3DE84-7655-4A43-B679-A6C38C4489F9}']
  end;

  [JavaSignature('com/google/zxing/Writer')]
  Jzxing_Writer = interface(IJavaInstance)
    ['{FA1FAA6C-A8E4-4B09-8052-F9BA48BE085E}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJzxing_Writer = class(TJavaGenericImport<Jzxing_WriterClass, Jzxing_Writer>) end;

  JMultiFormatWriterClass = interface(Jzxing_WriterClass)
    ['{385BC709-B247-4EC5-97A9-E47E945FED40}']
    {class} function init: JMultiFormatWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/MultiFormatWriter')]
  JMultiFormatWriter = interface(Jzxing_Writer)
    ['{861D03C3-6677-464F-81D1-5A586532582E}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJMultiFormatWriter = class(TJavaGenericImport<JMultiFormatWriterClass, JMultiFormatWriter>) end;

  JMultiFormatWriter_1Class = interface(JObjectClass)
    ['{612E35CD-F43A-4D6A-8429-A89267E389C0}']
  end;

  [JavaSignature('com/google/zxing/MultiFormatWriter$1')]
  JMultiFormatWriter_1 = interface(JObject)
    ['{9C98599A-F096-4018-A9FD-982251DE93BE}']
  end;
  TJMultiFormatWriter_1 = class(TJavaGenericImport<JMultiFormatWriter_1Class, JMultiFormatWriter_1>) end;

  JNotFoundExceptionClass = interface(JReaderExceptionClass)
    ['{AA4FC3A0-320C-47A4-A9CA-9A40A682FAEC}']
    {class} function getNotFoundInstance: JNotFoundException; cdecl;
  end;

  [JavaSignature('com/google/zxing/NotFoundException')]
  JNotFoundException = interface(JReaderException)
    ['{343083BF-188D-476D-9BC8-5EBFF1BE71CC}']
  end;
  TJNotFoundException = class(TJavaGenericImport<JNotFoundExceptionClass, JNotFoundException>) end;

  JPlanarYUVLuminanceSourceClass = interface(JLuminanceSourceClass)
    ['{7E517916-B29F-4913-AE9C-F0D606756F38}']
    {class} function init(b: TJavaArray<Byte>; i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer; b1: Boolean): JPlanarYUVLuminanceSource; cdecl;
  end;

  [JavaSignature('com/google/zxing/PlanarYUVLuminanceSource')]
  JPlanarYUVLuminanceSource = interface(JLuminanceSource)
    ['{E6C7E390-9371-46BB-8113-1B816EB07423}']
    function crop(i: Integer; i1: Integer; i2: Integer; i3: Integer): JLuminanceSource; cdecl;
    function getMatrix: TJavaArray<Byte>; cdecl;
    function getRow(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getThumbnailHeight: Integer; cdecl;
    function getThumbnailWidth: Integer; cdecl;
    function isCropSupported: Boolean; cdecl;
    function renderThumbnail: TJavaArray<Integer>; cdecl;
  end;
  TJPlanarYUVLuminanceSource = class(TJavaGenericImport<JPlanarYUVLuminanceSourceClass, JPlanarYUVLuminanceSource>) end;

  JRGBLuminanceSourceClass = interface(JLuminanceSourceClass)
    ['{96AD34D5-E2FC-442C-9D2A-4363B4396087}']
    {class} function init(i: Integer; i1: Integer; i2: TJavaArray<Integer>): JRGBLuminanceSource; cdecl;
  end;

  [JavaSignature('com/google/zxing/RGBLuminanceSource')]
  JRGBLuminanceSource = interface(JLuminanceSource)
    ['{BC89FBD4-7DAA-4BBE-BCDA-C1E6D33FC6B4}']
    function crop(i: Integer; i1: Integer; i2: Integer; i3: Integer): JLuminanceSource; cdecl;
    function getMatrix: TJavaArray<Byte>; cdecl;
    function getRow(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function isCropSupported: Boolean; cdecl;
  end;
  TJRGBLuminanceSource = class(TJavaGenericImport<JRGBLuminanceSourceClass, JRGBLuminanceSource>) end;

  Jzxing_ResultClass = interface(JObjectClass)
    ['{0E777F12-4336-4224-8172-D5DC8359A3CB}']
    {class} function init(string_: JString; b: TJavaArray<Byte>; resultPoint: TJavaObjectArray<JResultPoint>; barcodeFormat: JBarcodeFormat): Jzxing_Result; cdecl; overload;
    {class} function init(string_: JString; b: TJavaArray<Byte>; resultPoint: TJavaObjectArray<JResultPoint>; barcodeFormat: JBarcodeFormat; l: Int64): Jzxing_Result; cdecl; overload;
    {class} function init(string_: JString; b: TJavaArray<Byte>; i: Integer; resultPoint: TJavaObjectArray<JResultPoint>; barcodeFormat: JBarcodeFormat; l: Int64): Jzxing_Result; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/Result')]
  Jzxing_Result = interface(JObject)
    ['{D1D43028-BC70-46E8-96A1-5BFCC1E73507}']
    procedure addResultPoints(resultPoint: TJavaObjectArray<JResultPoint>); cdecl;
    function getBarcodeFormat: JBarcodeFormat; cdecl;
    function getNumBits: Integer; cdecl;
    function getRawBytes: TJavaArray<Byte>; cdecl;
    function getResultMetadata: JMap; cdecl;
    function getResultPoints: TJavaObjectArray<JResultPoint>; cdecl;
    function getText: JString; cdecl;
    function getTimestamp: Int64; cdecl;
    procedure putAllMetadata(map: JMap); cdecl;
    procedure putMetadata(resultMetadataType: JResultMetadataType; object_: JObject); cdecl;
    function toString: JString; cdecl;
  end;
  TJzxing_Result = class(TJavaGenericImport<Jzxing_ResultClass, Jzxing_Result>) end;

  JResultMetadataTypeClass = interface(JEnumClass)
    ['{225DEAEF-DBA6-4629-9DEA-284F4D64A663}']
    {class} function _GetBYTE_SEGMENTS: JResultMetadataType; cdecl;
    {class} function _GetERROR_CORRECTION_LEVEL: JResultMetadataType; cdecl;
    {class} function _GetISSUE_NUMBER: JResultMetadataType; cdecl;
    {class} function _GetORIENTATION: JResultMetadataType; cdecl;
    {class} function _GetOTHER: JResultMetadataType; cdecl;
    {class} function _GetPDF417_EXTRA_METADATA: JResultMetadataType; cdecl;
    {class} function _GetPOSSIBLE_COUNTRY: JResultMetadataType; cdecl;
    {class} function _GetSTRUCTURED_APPEND_PARITY: JResultMetadataType; cdecl;
    {class} function _GetSTRUCTURED_APPEND_SEQUENCE: JResultMetadataType; cdecl;
    {class} function _GetSUGGESTED_PRICE: JResultMetadataType; cdecl;
    {class} function _GetUPC_EAN_EXTENSION: JResultMetadataType; cdecl;
    {class} function valueOf(string_: JString): JResultMetadataType; cdecl;
    {class} function values: TJavaObjectArray<JResultMetadataType>; cdecl;//Deprecated
    {class} property BYTE_SEGMENTS: JResultMetadataType read _GetBYTE_SEGMENTS;
    {class} property ERROR_CORRECTION_LEVEL: JResultMetadataType read _GetERROR_CORRECTION_LEVEL;
    {class} property ISSUE_NUMBER: JResultMetadataType read _GetISSUE_NUMBER;
    {class} property ORIENTATION: JResultMetadataType read _GetORIENTATION;
    {class} property OTHER: JResultMetadataType read _GetOTHER;
    {class} property PDF417_EXTRA_METADATA: JResultMetadataType read _GetPDF417_EXTRA_METADATA;
    {class} property POSSIBLE_COUNTRY: JResultMetadataType read _GetPOSSIBLE_COUNTRY;
    {class} property STRUCTURED_APPEND_PARITY: JResultMetadataType read _GetSTRUCTURED_APPEND_PARITY;
    {class} property STRUCTURED_APPEND_SEQUENCE: JResultMetadataType read _GetSTRUCTURED_APPEND_SEQUENCE;
    {class} property SUGGESTED_PRICE: JResultMetadataType read _GetSUGGESTED_PRICE;
    {class} property UPC_EAN_EXTENSION: JResultMetadataType read _GetUPC_EAN_EXTENSION;
  end;

  [JavaSignature('com/google/zxing/ResultMetadataType')]
  JResultMetadataType = interface(JEnum)
    ['{6E35A0ED-2F74-4A04-A8AC-39DC72339E47}']
  end;
  TJResultMetadataType = class(TJavaGenericImport<JResultMetadataTypeClass, JResultMetadataType>) end;

  JResultPointClass = interface(JObjectClass)
    ['{F0BF5814-FB6E-45DE-8F4B-51FD48DABC1E}']
    {class} function distance(resultPoint: JResultPoint; resultPoint1: JResultPoint): Single; cdecl;
    {class} function init(f: Single; f1: Single): JResultPoint; cdecl;
    {class} procedure orderBestPatterns(resultPoint: TJavaObjectArray<JResultPoint>); cdecl;
  end;

  [JavaSignature('com/google/zxing/ResultPoint')]
  JResultPoint = interface(JObject)
    ['{6CD8DB52-BADA-4106-802D-4E2DE08E9027}']
    function equals(object_: JObject): Boolean; cdecl;
    function getX: Single; cdecl;
    function getY: Single; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJResultPoint = class(TJavaGenericImport<JResultPointClass, JResultPoint>) end;

  JResultPointCallbackClass = interface(IJavaClass)
    ['{49F3B6DA-54AA-417B-89F6-480221AE521F}']
  end;

  [JavaSignature('com/google/zxing/ResultPointCallback')]
  JResultPointCallback = interface(IJavaInstance)
    ['{E576F4BC-C817-462C-AB77-43F372A2F38E}']
    procedure foundPossibleResultPoint(resultPoint: JResultPoint); cdecl;
  end;
  TJResultPointCallback = class(TJavaGenericImport<JResultPointCallbackClass, JResultPointCallback>) end;

  JWriterExceptionClass = interface(JExceptionClass)
    ['{392456EF-0309-49D5-9362-D9EB599C493F}']
    {class} function init: JWriterException; cdecl; overload;
    {class} function init(throwable: JThrowable): JWriterException; cdecl; overload;
    {class} function init(string_: JString): JWriterException; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/WriterException')]
  JWriterException = interface(JException)
    ['{AC5F4B25-D74A-44BB-A99B-A70519C0D27B}']
  end;
  TJWriterException = class(TJavaGenericImport<JWriterExceptionClass, JWriterException>) end;

  JDetectorResultClass = interface(JObjectClass)
    ['{DF02BD00-39BD-475B-B93D-510D136B1E84}']
    {class} function init(bitMatrix: JBitMatrix; resultPoint: TJavaObjectArray<JResultPoint>): JDetectorResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/DetectorResult')]
  JDetectorResult = interface(JObject)
    ['{C5F56DB4-9EA8-4358-8310-9971D3B0D405}']
    function getBits: JBitMatrix; cdecl;
    function getPoints: TJavaObjectArray<JResultPoint>; cdecl;
  end;
  TJDetectorResult = class(TJavaGenericImport<JDetectorResultClass, JDetectorResult>) end;

  JAztecDetectorResultClass = interface(JDetectorResultClass)
    ['{EE52C545-C30B-485D-8776-F999E2D31C1E}']
    {class} function init(bitMatrix: JBitMatrix; resultPoint: TJavaObjectArray<JResultPoint>; b: Boolean; i: Integer; i1: Integer): JAztecDetectorResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/aztec/AztecDetectorResult')]
  JAztecDetectorResult = interface(JDetectorResult)
    ['{A98B213F-D577-4DA6-83BF-CA9A1327330C}']
    function getNbDatablocks: Integer; cdecl;
    function getNbLayers: Integer; cdecl;
    function isCompact: Boolean; cdecl;
  end;
  TJAztecDetectorResult = class(TJavaGenericImport<JAztecDetectorResultClass, JAztecDetectorResult>) end;

  JAztecReaderClass = interface(Jzxing_ReaderClass)
    ['{C228D773-B447-44EB-A835-8B3E0F691525}']
    {class} function init: JAztecReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/aztec/AztecReader')]
  JAztecReader = interface(Jzxing_Reader)
    ['{6B40C295-8866-4F05-ACAB-BC6F1A77BF45}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJAztecReader = class(TJavaGenericImport<JAztecReaderClass, JAztecReader>) end;

  JAztecWriterClass = interface(Jzxing_WriterClass)
    ['{FAE00993-E5E2-41CA-BC38-4B973D428B78}']
    {class} function init: JAztecWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/aztec/AztecWriter')]
  JAztecWriter = interface(Jzxing_Writer)
    ['{CCE733CC-F59A-4008-809B-0B7724DB2725}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJAztecWriter = class(TJavaGenericImport<JAztecWriterClass, JAztecWriter>) end;

  Jaztec_decoder_DecoderClass = interface(JObjectClass)
    ['{287005A0-12D1-4772-902F-13B34A27850A}']
    {class} function highLevelDecode(b: TJavaArray<Boolean>): JString; cdecl;
    {class} function init: Jaztec_decoder_Decoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/aztec/decoder/Decoder')]
  Jaztec_decoder_Decoder = interface(JObject)
    ['{3576B1AA-7F7D-45E6-AC78-92B5C4C927C4}']
    function decode(aztecDetectorResult: JAztecDetectorResult): JDecoderResult; cdecl;
  end;
  TJaztec_decoder_Decoder = class(TJavaGenericImport<Jaztec_decoder_DecoderClass, Jaztec_decoder_Decoder>) end;

  JDecoder_1Class = interface(JObjectClass)
    ['{54E67B5B-DA6D-4202-9ADD-6FC40112A1D0}']
  end;

  [JavaSignature('com/google/zxing/aztec/decoder/Decoder$1')]
  JDecoder_1 = interface(JObject)
    ['{F432FDA2-8060-4E3C-AC71-F53548BFFB4B}']
  end;
  TJDecoder_1 = class(TJavaGenericImport<JDecoder_1Class, JDecoder_1>) end;

  JDecoder_TableClass = interface(JEnumClass)
    ['{F32A8BBE-FAD0-426B-9AA0-CF0D8B8AF01F}']
    {class} function _GetBINARY: JDecoder_Table; cdecl;
    {class} function _GetDIGIT: JDecoder_Table; cdecl;
    {class} function _GetLOWER: JDecoder_Table; cdecl;
    {class} function _GetMIXED: JDecoder_Table; cdecl;
    {class} function _GetPUNCT: JDecoder_Table; cdecl;
    {class} function _GetUPPER: JDecoder_Table; cdecl;
    {class} function valueOf(string_: JString): JDecoder_Table; cdecl;
    {class} function values: TJavaObjectArray<JDecoder_Table>; cdecl;//Deprecated
    {class} property BINARY: JDecoder_Table read _GetBINARY;
    {class} property DIGIT: JDecoder_Table read _GetDIGIT;
    {class} property LOWER: JDecoder_Table read _GetLOWER;
    {class} property MIXED: JDecoder_Table read _GetMIXED;
    {class} property PUNCT: JDecoder_Table read _GetPUNCT;
    {class} property UPPER: JDecoder_Table read _GetUPPER;
  end;

  [JavaSignature('com/google/zxing/aztec/decoder/Decoder$Table')]
  JDecoder_Table = interface(JEnum)
    ['{2350FDA7-3B4C-437C-A76A-21D6B9609635}']
  end;
  TJDecoder_Table = class(TJavaGenericImport<JDecoder_TableClass, JDecoder_Table>) end;

  Jaztec_detector_DetectorClass = interface(JObjectClass)
    ['{77A31BCD-A446-4521-B0F9-20B6D129B731}']
    {class} function init(bitMatrix: JBitMatrix): Jaztec_detector_Detector; cdecl;
  end;

  [JavaSignature('com/google/zxing/aztec/detector/Detector')]
  Jaztec_detector_Detector = interface(JObject)
    ['{F5A2FB0C-11EE-48DA-9DA6-03C73D63A8C6}']
    function detect: JAztecDetectorResult; cdecl; overload;
    function detect(b: Boolean): JAztecDetectorResult; cdecl; overload;
  end;
  TJaztec_detector_Detector = class(TJavaGenericImport<Jaztec_detector_DetectorClass, Jaztec_detector_Detector>) end;

  JDetector_PointClass = interface(JObjectClass)
    ['{E7E5DFBC-89AD-4801-95B9-DCA36E2A6D9F}']
  end;

  [JavaSignature('com/google/zxing/aztec/detector/Detector$Point')]
  JDetector_Point = interface(JObject)
    ['{8192C3D6-7380-4178-A5FF-023B1EC34E3A}']
    function toString: JString; cdecl;
  end;
  TJDetector_Point = class(TJavaGenericImport<JDetector_PointClass, JDetector_Point>) end;

  JAztecCodeClass = interface(JObjectClass)
    ['{6FCF218A-ED90-4C94-8BA4-2D0DE5540823}']
    {class} function init: JAztecCode; cdecl;
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/AztecCode')]
  JAztecCode = interface(JObject)
    ['{68FE0047-E945-46E4-AC9B-8953C2F8B9FE}']
    function getCodeWords: Integer; cdecl;
    function getLayers: Integer; cdecl;
    function getMatrix: JBitMatrix; cdecl;
    function getSize: Integer; cdecl;
    function isCompact: Boolean; cdecl;
    procedure setCodeWords(i: Integer); cdecl;
    procedure setCompact(b: Boolean); cdecl;
    procedure setLayers(i: Integer); cdecl;
    procedure setMatrix(bitMatrix: JBitMatrix); cdecl;
    procedure setSize(i: Integer); cdecl;
  end;
  TJAztecCode = class(TJavaGenericImport<JAztecCodeClass, JAztecCode>) end;

  JTokenClass = interface(JObjectClass)
    ['{D72A211E-2A4A-45BA-9A51-C2BE52913793}']
    {class} function _GetEMPTY: JToken; cdecl;
    {class} property EMPTY: JToken read _GetEMPTY;
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/Token')]
  JToken = interface(JObject)
    ['{0AB8F427-7E0B-4B73-B1D3-7E6CB4FF343E}']
  end;
  TJToken = class(TJavaGenericImport<JTokenClass, JToken>) end;

  JBinaryShiftTokenClass = interface(JTokenClass)
    ['{B712280B-A71B-4F43-9C54-22EEEB4E3795}']
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/BinaryShiftToken')]
  JBinaryShiftToken = interface(JToken)
    ['{C5822808-6561-4272-BB57-98EAB929A8E6}']
    procedure appendTo(bitArray: JBitArray; b: TJavaArray<Byte>); cdecl;
    function toString: JString; cdecl;
  end;
  TJBinaryShiftToken = class(TJavaGenericImport<JBinaryShiftTokenClass, JBinaryShiftToken>) end;

  Jaztec_encoder_EncoderClass = interface(JObjectClass)
    ['{BBB8FE72-882A-43E8-B16D-27189025A817}']
    {class} function _GetDEFAULT_AZTEC_LAYERS: Integer; cdecl;
    {class} function _GetDEFAULT_EC_PERCENT: Integer; cdecl;
    {class} function encode(b: TJavaArray<Byte>): JAztecCode; cdecl; overload;//Deprecated
    {class} function encode(b: TJavaArray<Byte>; i: Integer; i1: Integer): JAztecCode; cdecl; overload;
    {class} property DEFAULT_AZTEC_LAYERS: Integer read _GetDEFAULT_AZTEC_LAYERS;
    {class} property DEFAULT_EC_PERCENT: Integer read _GetDEFAULT_EC_PERCENT;
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/Encoder')]
  Jaztec_encoder_Encoder = interface(JObject)
    ['{FEB42874-C70E-4897-BE85-2B5D2DBBFA54}']
  end;
  TJaztec_encoder_Encoder = class(TJavaGenericImport<Jaztec_encoder_EncoderClass, Jaztec_encoder_Encoder>) end;

  Jencoder_HighLevelEncoderClass = interface(JObjectClass)
    ['{07AD5C03-B082-4933-B680-632256497D8A}']
    {class} function _GetLATCH_TABLE: TJavaBiArray<Integer>; cdecl;
    {class} function _GetMODE_DIGIT: Integer; cdecl;
    {class} function _GetMODE_LOWER: Integer; cdecl;
    {class} function _GetMODE_MIXED: Integer; cdecl;
    {class} function _GetSHIFT_TABLE: TJavaBiArray<Integer>; cdecl;
    {class} function init(b: TJavaArray<Byte>): Jencoder_HighLevelEncoder; cdecl;//Deprecated
    {class} property LATCH_TABLE: TJavaBiArray<Integer> read _GetLATCH_TABLE;
    {class} property MODE_DIGIT: Integer read _GetMODE_DIGIT;
    {class} property MODE_LOWER: Integer read _GetMODE_LOWER;
    {class} property MODE_MIXED: Integer read _GetMODE_MIXED;
    {class} property SHIFT_TABLE: TJavaBiArray<Integer> read _GetSHIFT_TABLE;
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/HighLevelEncoder')]
  Jencoder_HighLevelEncoder = interface(JObject)
    ['{51CBB24A-B3FC-4CBE-AE94-DBC3926FC45E}']
    function encode: JBitArray; cdecl;
  end;
  TJencoder_HighLevelEncoder = class(TJavaGenericImport<Jencoder_HighLevelEncoderClass, Jencoder_HighLevelEncoder>) end;

  JHighLevelEncoder_1Class = interface(JComparatorClass)
    ['{FCFEC6FE-A5FE-4089-9E93-081FFB756FE5}']
    {class} function _Getthis: Jencoder_HighLevelEncoder; cdecl;
    {class} property this: Jencoder_HighLevelEncoder read _Getthis;
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/HighLevelEncoder$1')]
  JHighLevelEncoder_1 = interface(JComparator)
    ['{86126DB8-5F8F-48D7-93F6-8FB8F19EB1BF}']
    function compare(object_: JObject; object_1: JObject): Integer; cdecl; overload;
    function compare(state: JState; state1: JState): Integer; cdecl; overload;
  end;
  TJHighLevelEncoder_1 = class(TJavaGenericImport<JHighLevelEncoder_1Class, JHighLevelEncoder_1>) end;

  JSimpleTokenClass = interface(JTokenClass)
    ['{D04AFD00-6B10-498B-8CF1-CA3E9E75AAED}']
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/SimpleToken')]
  JSimpleToken = interface(JToken)
    ['{11DCA791-AEC1-45AE-BF69-CFC03F28E1C3}']
    function toString: JString; cdecl;
  end;
  TJSimpleToken = class(TJavaGenericImport<JSimpleTokenClass, JSimpleToken>) end;

  JStateClass = interface(JObjectClass)
    ['{607389C6-EFA2-422A-A2D4-6883ABA30EAD}']
  end;

  [JavaSignature('com/google/zxing/aztec/encoder/State')]
  JState = interface(JObject)
    ['{F22152EC-0BB4-42E7-9E4A-6A5FFFEB41D4}']
    function toString: JString; cdecl;
  end;
  TJState = class(TJavaGenericImport<JStateClass, JState>) end;

  JResultParserClass = interface(JObjectClass)
    ['{1DA40343-D0B5-468E-B86F-CFCF8782C237}']
    {class} function _GetEMPTY_STR_ARRAY: TJavaObjectArray<JString>; cdecl;
    {class} function init: JResultParser; cdecl;
    {class} function parseResult(result: Jzxing_Result): JParsedResult; cdecl;
    {class} property EMPTY_STR_ARRAY: TJavaObjectArray<JString> read _GetEMPTY_STR_ARRAY;
  end;

  [JavaSignature('com/google/zxing/client/result/ResultParser')]
  JResultParser = interface(JObject)
    ['{DA93AFB9-7004-427D-8CF8-2088E4144762}']
    function parse(result: Jzxing_Result): JParsedResult; cdecl;
  end;
  TJResultParser = class(TJavaGenericImport<JResultParserClass, JResultParser>) end;

  JAbstractDoCoMoResultParserClass = interface(JResultParserClass)
    ['{4D489174-11A9-43BE-8595-28D9FBA1D985}']
  end;

  [JavaSignature('com/google/zxing/client/result/AbstractDoCoMoResultParser')]
  JAbstractDoCoMoResultParser = interface(JResultParser)
    ['{C34DF09D-B473-49F4-87C3-DC1366A08B6F}']
  end;
  TJAbstractDoCoMoResultParser = class(TJavaGenericImport<JAbstractDoCoMoResultParserClass, JAbstractDoCoMoResultParser>) end;

  JAddressBookAUResultParserClass = interface(JResultParserClass)
    ['{502A5454-064F-4C39-A33E-18818046D0B4}']
    {class} function init: JAddressBookAUResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/AddressBookAUResultParser')]
  JAddressBookAUResultParser = interface(JResultParser)
    ['{4F74CF29-4046-45B1-8B6C-19452DD61149}']
    function parse(result: Jzxing_Result): JAddressBookParsedResult; cdecl;
  end;
  TJAddressBookAUResultParser = class(TJavaGenericImport<JAddressBookAUResultParserClass, JAddressBookAUResultParser>) end;

  JAddressBookDoCoMoResultParserClass = interface(JAbstractDoCoMoResultParserClass)
    ['{B4550E1C-3A8F-4443-A826-916E947DAD54}']
    {class} function init: JAddressBookDoCoMoResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/AddressBookDoCoMoResultParser')]
  JAddressBookDoCoMoResultParser = interface(JAbstractDoCoMoResultParser)
    ['{47BF92B6-F212-4BFD-BE72-069C229C123D}']
    function parse(result: Jzxing_Result): JAddressBookParsedResult; cdecl;
  end;
  TJAddressBookDoCoMoResultParser = class(TJavaGenericImport<JAddressBookDoCoMoResultParserClass, JAddressBookDoCoMoResultParser>) end;

  JParsedResultClass = interface(JObjectClass)
    ['{D85B548E-5D86-41B6-BFF4-0AF6626140CB}']
    {class} function init(parsedResultType: JParsedResultType): JParsedResult; cdecl;
    {class} procedure maybeAppend(string_: TJavaObjectArray<JString>; stringBuilder: JStringBuilder); cdecl; overload;
    {class} procedure maybeAppend(string_: JString; stringBuilder: JStringBuilder); cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/client/result/ParsedResult')]
  JParsedResult = interface(JObject)
    ['{3F30F261-3BF7-465D-93B4-E0DE566FDE71}']
    function getDisplayResult: JString; cdecl;
    function getType: JParsedResultType; cdecl;
    function toString: JString; cdecl;
  end;
  TJParsedResult = class(TJavaGenericImport<JParsedResultClass, JParsedResult>) end;

  JAddressBookParsedResultClass = interface(JParsedResultClass)
    ['{8F3494D0-4DEC-42A3-ADFF-F9DB36893525}']
    {class} function init(string_: TJavaObjectArray<JString>; string_1: TJavaObjectArray<JString>; string_2: TJavaObjectArray<JString>; string_3: TJavaObjectArray<JString>; string_4: TJavaObjectArray<JString>; string_5: TJavaObjectArray<JString>; string_6: TJavaObjectArray<JString>): JAddressBookParsedResult; cdecl; overload;
    {class} function init(string_: TJavaObjectArray<JString>; string_1: TJavaObjectArray<JString>; string_2: JString; string_3: TJavaObjectArray<JString>; string_4: TJavaObjectArray<JString>; string_5: TJavaObjectArray<JString>; string_6: TJavaObjectArray<JString>; string_7: JString; string_8: JString; string_9: TJavaObjectArray<JString>; string_10: TJavaObjectArray<JString>; string_11: JString; string_12: JString; string_13: JString; string_14: TJavaObjectArray<JString>; string_15: TJavaObjectArray<JString>): JAddressBookParsedResult; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/client/result/AddressBookParsedResult')]
  JAddressBookParsedResult = interface(JParsedResult)
    ['{3D4BA26C-B225-4155-90E2-B5E0D3AC53F1}']
    function getAddressTypes: TJavaObjectArray<JString>; cdecl;
    function getAddresses: TJavaObjectArray<JString>; cdecl;
    function getBirthday: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getEmailTypes: TJavaObjectArray<JString>; cdecl;
    function getEmails: TJavaObjectArray<JString>; cdecl;
    function getGeo: TJavaObjectArray<JString>; cdecl;
    function getInstantMessenger: JString; cdecl;
    function getNames: TJavaObjectArray<JString>; cdecl;
    function getNicknames: TJavaObjectArray<JString>; cdecl;
    function getNote: JString; cdecl;
    function getOrg: JString; cdecl;
    function getPhoneNumbers: TJavaObjectArray<JString>; cdecl;
    function getPhoneTypes: TJavaObjectArray<JString>; cdecl;
    function getPronunciation: JString; cdecl;
    function getTitle: JString; cdecl;
    function getURLs: TJavaObjectArray<JString>; cdecl;
  end;
  TJAddressBookParsedResult = class(TJavaGenericImport<JAddressBookParsedResultClass, JAddressBookParsedResult>) end;

  JBizcardResultParserClass = interface(JAbstractDoCoMoResultParserClass)
    ['{140E127C-878F-448B-A262-83C6512AF498}']
    {class} function init: JBizcardResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/BizcardResultParser')]
  JBizcardResultParser = interface(JAbstractDoCoMoResultParser)
    ['{1601E3DD-7E01-41E1-AC7D-8B55C51D61C5}']
    function parse(result: Jzxing_Result): JAddressBookParsedResult; cdecl;
  end;
  TJBizcardResultParser = class(TJavaGenericImport<JBizcardResultParserClass, JBizcardResultParser>) end;

  JBookmarkDoCoMoResultParserClass = interface(JAbstractDoCoMoResultParserClass)
    ['{305059F2-3502-4FFA-81AA-555B7E1B32A4}']
    {class} function init: JBookmarkDoCoMoResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/BookmarkDoCoMoResultParser')]
  JBookmarkDoCoMoResultParser = interface(JAbstractDoCoMoResultParser)
    ['{AE4A6B73-083A-4F8A-A7D3-C31BCD183C3C}']
    function parse(result: Jzxing_Result): JURIParsedResult; cdecl;
  end;
  TJBookmarkDoCoMoResultParser = class(TJavaGenericImport<JBookmarkDoCoMoResultParserClass, JBookmarkDoCoMoResultParser>) end;

  JCalendarParsedResultClass = interface(JParsedResultClass)
    ['{693D15F9-2D0E-4DB6-BDCA-A0A3F061E4E2}']
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: TJavaObjectArray<JString>; string_7: JString; d: Double; d1: Double): JCalendarParsedResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/CalendarParsedResult')]
  JCalendarParsedResult = interface(JParsedResult)
    ['{B711984D-7067-490C-BBB9-1B5FC2288BE4}']
    function getAttendees: TJavaObjectArray<JString>; cdecl;
    function getDescription: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getEnd: JDate; cdecl;
    function getEndTimestamp: Int64; cdecl;
    function getLatitude: Double; cdecl;
    function getLocation: JString; cdecl;
    function getLongitude: Double; cdecl;
    function getOrganizer: JString; cdecl;
    function getStart: JDate; cdecl;
    function getStartTimestamp: Int64; cdecl;
    function getSummary: JString; cdecl;
    function isEndAllDay: Boolean; cdecl;
    function isStartAllDay: Boolean; cdecl;
  end;
  TJCalendarParsedResult = class(TJavaGenericImport<JCalendarParsedResultClass, JCalendarParsedResult>) end;

  JEmailAddressParsedResultClass = interface(JParsedResultClass)
    ['{E79888D2-AD18-453D-8A63-1E02A8237CA1}']
  end;

  [JavaSignature('com/google/zxing/client/result/EmailAddressParsedResult')]
  JEmailAddressParsedResult = interface(JParsedResult)
    ['{66B36680-A836-4808-8291-593FFDBDCFB2}']
    function getBCCs: TJavaObjectArray<JString>; cdecl;
    function getBody: JString; cdecl;
    function getCCs: TJavaObjectArray<JString>; cdecl;
    function getDisplayResult: JString; cdecl;
    function getEmailAddress: JString; cdecl;
    function getMailtoURI: JString; cdecl;
    function getSubject: JString; cdecl;
    function getTos: TJavaObjectArray<JString>; cdecl;
  end;
  TJEmailAddressParsedResult = class(TJavaGenericImport<JEmailAddressParsedResultClass, JEmailAddressParsedResult>) end;

  JEmailAddressResultParserClass = interface(JResultParserClass)
    ['{DC75A78D-3EE5-4565-B7A6-96AE793E2187}']
    {class} function init: JEmailAddressResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/EmailAddressResultParser')]
  JEmailAddressResultParser = interface(JResultParser)
    ['{F9977E4D-FBCD-4A3E-AE19-1D819A71F5A5}']
    function parse(result: Jzxing_Result): JEmailAddressParsedResult; cdecl;
  end;
  TJEmailAddressResultParser = class(TJavaGenericImport<JEmailAddressResultParserClass, JEmailAddressResultParser>) end;

  JEmailDoCoMoResultParserClass = interface(JAbstractDoCoMoResultParserClass)
    ['{8360025D-2E50-45F9-92A0-65BACFB1E8AD}']
    {class} function init: JEmailDoCoMoResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/EmailDoCoMoResultParser')]
  JEmailDoCoMoResultParser = interface(JAbstractDoCoMoResultParser)
    ['{623F4615-AF66-4DFF-9AFD-9EEF27581BFD}']
    function parse(result: Jzxing_Result): JEmailAddressParsedResult; cdecl;
  end;
  TJEmailDoCoMoResultParser = class(TJavaGenericImport<JEmailDoCoMoResultParserClass, JEmailDoCoMoResultParser>) end;

  JExpandedProductParsedResultClass = interface(JParsedResultClass)
    ['{96A3EB30-23FC-4585-8F0C-5A34B6D6CF8E}']
    {class} function _GetKILOGRAM: JString; cdecl;
    {class} function _GetPOUND: JString; cdecl;
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString; string_12: JString; string_13: JString; map: JMap): JExpandedProductParsedResult; cdecl;//Deprecated
    {class} property KILOGRAM: JString read _GetKILOGRAM;
    {class} property POUND: JString read _GetPOUND;
  end;

  [JavaSignature('com/google/zxing/client/result/ExpandedProductParsedResult')]
  JExpandedProductParsedResult = interface(JParsedResult)
    ['{BF8D9585-DC8F-4A27-A7F4-6C3E91B5E09B}']
    function equals(object_: JObject): Boolean; cdecl;
    function getBestBeforeDate: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getExpirationDate: JString; cdecl;
    function getLotNumber: JString; cdecl;
    function getPackagingDate: JString; cdecl;
    function getPrice: JString; cdecl;
    function getPriceCurrency: JString; cdecl;
    function getPriceIncrement: JString; cdecl;
    function getProductID: JString; cdecl;
    function getProductionDate: JString; cdecl;
    function getRawText: JString; cdecl;
    function getSscc: JString; cdecl;
    function getUncommonAIs: JMap; cdecl;
    function getWeight: JString; cdecl;
    function getWeightIncrement: JString; cdecl;
    function getWeightType: JString; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJExpandedProductParsedResult = class(TJavaGenericImport<JExpandedProductParsedResultClass, JExpandedProductParsedResult>) end;

  JExpandedProductResultParserClass = interface(JResultParserClass)
    ['{CCB07DCD-5F52-45B4-9767-5A96C2AE739E}']
    {class} function init: JExpandedProductResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/ExpandedProductResultParser')]
  JExpandedProductResultParser = interface(JResultParser)
    ['{DEFCF5AB-9CB7-4F77-88F4-2E1AAAF4A1D7}']
    function parse(result: Jzxing_Result): JExpandedProductParsedResult; cdecl;
  end;
  TJExpandedProductResultParser = class(TJavaGenericImport<JExpandedProductResultParserClass, JExpandedProductResultParser>) end;

  JGeoParsedResultClass = interface(JParsedResultClass)
    ['{86A61AA9-93F4-4042-B998-57E078EF9B93}']
  end;

  [JavaSignature('com/google/zxing/client/result/GeoParsedResult')]
  JGeoParsedResult = interface(JParsedResult)
    ['{ECB315C5-A5E9-46AF-8EC2-425F4A7D19EB}']
    function getAltitude: Double; cdecl;
    function getDisplayResult: JString; cdecl;
    function getGeoURI: JString; cdecl;
    function getLatitude: Double; cdecl;
    function getLongitude: Double; cdecl;
    function getQuery: JString; cdecl;
  end;
  TJGeoParsedResult = class(TJavaGenericImport<JGeoParsedResultClass, JGeoParsedResult>) end;

  JGeoResultParserClass = interface(JResultParserClass)
    ['{AA022E86-B475-4845-9D3C-E288AE0F805C}']
    {class} function init: JGeoResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/GeoResultParser')]
  JGeoResultParser = interface(JResultParser)
    ['{935C9F5F-169E-444D-A150-BA795C6C2F44}']
    function parse(result: Jzxing_Result): JGeoParsedResult; cdecl;
  end;
  TJGeoResultParser = class(TJavaGenericImport<JGeoResultParserClass, JGeoResultParser>) end;

  JISBNParsedResultClass = interface(JParsedResultClass)
    ['{2A9ACE27-583D-4B35-B97D-A9619C076F60}']
  end;

  [JavaSignature('com/google/zxing/client/result/ISBNParsedResult')]
  JISBNParsedResult = interface(JParsedResult)
    ['{6444B6AF-9142-48D8-9A3E-B0773D492D5E}']
    function getDisplayResult: JString; cdecl;
    function getISBN: JString; cdecl;
  end;
  TJISBNParsedResult = class(TJavaGenericImport<JISBNParsedResultClass, JISBNParsedResult>) end;

  JISBNResultParserClass = interface(JResultParserClass)
    ['{C480BF3C-C48E-4BAE-99C3-04F941116B8D}']
    {class} function init: JISBNResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/ISBNResultParser')]
  JISBNResultParser = interface(JResultParser)
    ['{263621DE-6105-465D-A287-40B2576ACFF8}']
    function parse(result: Jzxing_Result): JISBNParsedResult; cdecl;
  end;
  TJISBNResultParser = class(TJavaGenericImport<JISBNResultParserClass, JISBNResultParser>) end;

  JParsedResultTypeClass = interface(JEnumClass)
    ['{ED0EAAC6-37FD-4517-A130-F9E70C33EE1A}']
    {class} function _GetADDRESSBOOK: JParsedResultType; cdecl;
    {class} function _GetCALENDAR: JParsedResultType; cdecl;
    {class} function _GetEMAIL_ADDRESS: JParsedResultType; cdecl;
    {class} function _GetGEO: JParsedResultType; cdecl;
    {class} function _GetISBN: JParsedResultType; cdecl;
    {class} function _GetPRODUCT: JParsedResultType; cdecl;
    {class} function _GetSMS: JParsedResultType; cdecl;
    {class} function _GetTEL: JParsedResultType; cdecl;
    {class} function _GetTEXT: JParsedResultType; cdecl;
    {class} function _GetURI: JParsedResultType; cdecl;
    {class} function _GetVIN: JParsedResultType; cdecl;
    {class} function _GetWIFI: JParsedResultType; cdecl;
    {class} function valueOf(string_: JString): JParsedResultType; cdecl;
    {class} function values: TJavaObjectArray<JParsedResultType>; cdecl;//Deprecated
    {class} property ADDRESSBOOK: JParsedResultType read _GetADDRESSBOOK;
    {class} property CALENDAR: JParsedResultType read _GetCALENDAR;
    {class} property EMAIL_ADDRESS: JParsedResultType read _GetEMAIL_ADDRESS;
    {class} property GEO: JParsedResultType read _GetGEO;
    {class} property ISBN: JParsedResultType read _GetISBN;
    {class} property PRODUCT: JParsedResultType read _GetPRODUCT;
    {class} property SMS: JParsedResultType read _GetSMS;
    {class} property TEL: JParsedResultType read _GetTEL;
    {class} property TEXT: JParsedResultType read _GetTEXT;
    {class} property URI: JParsedResultType read _GetURI;
    {class} property VIN: JParsedResultType read _GetVIN;
    {class} property WIFI: JParsedResultType read _GetWIFI;
  end;

  [JavaSignature('com/google/zxing/client/result/ParsedResultType')]
  JParsedResultType = interface(JEnum)
    ['{3AB0E050-B756-4C90-9C29-81B2827012D7}']
  end;
  TJParsedResultType = class(TJavaGenericImport<JParsedResultTypeClass, JParsedResultType>) end;

  JProductParsedResultClass = interface(JParsedResultClass)
    ['{4059B11B-C321-4BBC-8692-223C455539AC}']
  end;

  [JavaSignature('com/google/zxing/client/result/ProductParsedResult')]
  JProductParsedResult = interface(JParsedResult)
    ['{B21ECF8A-1BC4-45A0-B103-AE0B0C078029}']
    function getDisplayResult: JString; cdecl;
    function getNormalizedProductID: JString; cdecl;
    function getProductID: JString; cdecl;
  end;
  TJProductParsedResult = class(TJavaGenericImport<JProductParsedResultClass, JProductParsedResult>) end;

  JProductResultParserClass = interface(JResultParserClass)
    ['{744E9529-4D39-4EA5-8129-8BD2793C66B2}']
    {class} function init: JProductResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/ProductResultParser')]
  JProductResultParser = interface(JResultParser)
    ['{2E22F3E1-17B1-4F88-88FA-998CA7E6A8F3}']
    function parse(result: Jzxing_Result): JProductParsedResult; cdecl;
  end;
  TJProductResultParser = class(TJavaGenericImport<JProductResultParserClass, JProductResultParser>) end;

  JSMSMMSResultParserClass = interface(JResultParserClass)
    ['{A157F2D6-CD57-48A1-A2E9-D75B269379F1}']
    {class} function init: JSMSMMSResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/SMSMMSResultParser')]
  JSMSMMSResultParser = interface(JResultParser)
    ['{7728FAAE-7C6D-43AE-9912-E36481248B64}']
    function parse(result: Jzxing_Result): JSMSParsedResult; cdecl;
  end;
  TJSMSMMSResultParser = class(TJavaGenericImport<JSMSMMSResultParserClass, JSMSMMSResultParser>) end;

  JSMSParsedResultClass = interface(JParsedResultClass)
    ['{765DC73F-1BAC-4920-94CF-6F43451BC6D3}']
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString): JSMSParsedResult; cdecl; overload;
    {class} function init(string_: TJavaObjectArray<JString>; string_1: TJavaObjectArray<JString>; string_2: JString; string_3: JString): JSMSParsedResult; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/client/result/SMSParsedResult')]
  JSMSParsedResult = interface(JParsedResult)
    ['{5A4B8998-CD69-4F02-894A-9685BC350153}']
    function getBody: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getNumbers: TJavaObjectArray<JString>; cdecl;
    function getSMSURI: JString; cdecl;
    function getSubject: JString; cdecl;
    function getVias: TJavaObjectArray<JString>; cdecl;
  end;
  TJSMSParsedResult = class(TJavaGenericImport<JSMSParsedResultClass, JSMSParsedResult>) end;

  JSMSTOMMSTOResultParserClass = interface(JResultParserClass)
    ['{302D89EE-259F-459E-AEE9-4AEE2380C688}']
    {class} function init: JSMSTOMMSTOResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/SMSTOMMSTOResultParser')]
  JSMSTOMMSTOResultParser = interface(JResultParser)
    ['{ADD8A0E9-449B-4E1A-8817-7B0E87D9C9EB}']
    function parse(result: Jzxing_Result): JSMSParsedResult; cdecl;
  end;
  TJSMSTOMMSTOResultParser = class(TJavaGenericImport<JSMSTOMMSTOResultParserClass, JSMSTOMMSTOResultParser>) end;

  JSMTPResultParserClass = interface(JResultParserClass)
    ['{F858A4B6-BC93-4DED-A7FC-1D1436476A23}']
    {class} function init: JSMTPResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/SMTPResultParser')]
  JSMTPResultParser = interface(JResultParser)
    ['{B677FB15-07F6-495D-A63D-63E9507DB1DE}']
    function parse(result: Jzxing_Result): JEmailAddressParsedResult; cdecl;
  end;
  TJSMTPResultParser = class(TJavaGenericImport<JSMTPResultParserClass, JSMTPResultParser>) end;

  JTelParsedResultClass = interface(JParsedResultClass)
    ['{9BFBC87D-B188-4963-B9E0-B0E36C7712B4}']
    {class} function init(string_: JString; string_1: JString; string_2: JString): JTelParsedResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/TelParsedResult')]
  JTelParsedResult = interface(JParsedResult)
    ['{C9E2CD32-37D3-4A3B-B7E9-A5E66FCD852C}']
    function getDisplayResult: JString; cdecl;
    function getNumber: JString; cdecl;
    function getTelURI: JString; cdecl;
    function getTitle: JString; cdecl;
  end;
  TJTelParsedResult = class(TJavaGenericImport<JTelParsedResultClass, JTelParsedResult>) end;

  JTelResultParserClass = interface(JResultParserClass)
    ['{4FA52D6A-49CA-43A3-8407-8A4B42BB29E8}']
    {class} function init: JTelResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/TelResultParser')]
  JTelResultParser = interface(JResultParser)
    ['{8BC3BEB4-E40D-4A83-84EA-A9C48F95032A}']
    function parse(result: Jzxing_Result): JTelParsedResult; cdecl;
  end;
  TJTelResultParser = class(TJavaGenericImport<JTelResultParserClass, JTelResultParser>) end;

  JTextParsedResultClass = interface(JParsedResultClass)
    ['{870A951C-75EA-48D3-98EA-EA7A77013145}']
    {class} function init(string_: JString; string_1: JString): JTextParsedResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/TextParsedResult')]
  JTextParsedResult = interface(JParsedResult)
    ['{5E550868-FBE1-4975-A202-0191D10AE7D3}']
    function getDisplayResult: JString; cdecl;
    function getLanguage: JString; cdecl;
    function getText: JString; cdecl;
  end;
  TJTextParsedResult = class(TJavaGenericImport<JTextParsedResultClass, JTextParsedResult>) end;

  JURIParsedResultClass = interface(JParsedResultClass)
    ['{770DB47E-BD51-4453-8E5F-EF6520768886}']
    {class} function init(string_: JString; string_1: JString): JURIParsedResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/URIParsedResult')]
  JURIParsedResult = interface(JParsedResult)
    ['{53F6613D-0609-4EB5-823A-EB7493A426B8}']
    function getDisplayResult: JString; cdecl;
    function getTitle: JString; cdecl;
    function getURI: JString; cdecl;
    function isPossiblyMaliciousURI: Boolean; cdecl;
  end;
  TJURIParsedResult = class(TJavaGenericImport<JURIParsedResultClass, JURIParsedResult>) end;

  JURIResultParserClass = interface(JResultParserClass)
    ['{3B03FBEB-002C-4728-A8EF-ED9BBE44B8F0}']
    {class} function init: JURIResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/URIResultParser')]
  JURIResultParser = interface(JResultParser)
    ['{E1421E0A-04DF-4FE2-B300-6525433E20CF}']
    function parse(result: Jzxing_Result): JURIParsedResult; cdecl;
  end;
  TJURIResultParser = class(TJavaGenericImport<JURIResultParserClass, JURIResultParser>) end;

  JURLTOResultParserClass = interface(JResultParserClass)
    ['{CED1E1EA-21E7-4DFB-991F-FE5164D1D4C6}']
    {class} function init: JURLTOResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/URLTOResultParser')]
  JURLTOResultParser = interface(JResultParser)
    ['{FF1BFE52-2FF7-424D-9A60-1EA940502B2D}']
    function parse(result: Jzxing_Result): JURIParsedResult; cdecl;
  end;
  TJURLTOResultParser = class(TJavaGenericImport<JURLTOResultParserClass, JURLTOResultParser>) end;

  JVCardResultParserClass = interface(JResultParserClass)
    ['{C862DFCE-589B-4E4E-B2C2-D90A38FAAC62}']
    {class} function init: JVCardResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/VCardResultParser')]
  JVCardResultParser = interface(JResultParser)
    ['{C94ABA80-F561-425D-8D0A-E63C99D5A866}']
    function parse(result: Jzxing_Result): JAddressBookParsedResult; cdecl;
  end;
  TJVCardResultParser = class(TJavaGenericImport<JVCardResultParserClass, JVCardResultParser>) end;

  JVEventResultParserClass = interface(JResultParserClass)
    ['{DE951F05-C433-4F1B-A032-67860C42FDD3}']
    {class} function init: JVEventResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/VEventResultParser')]
  JVEventResultParser = interface(JResultParser)
    ['{1AEF089E-EF86-4C8B-B91A-071FE9D95267}']
    function parse(result: Jzxing_Result): JCalendarParsedResult; cdecl;
  end;
  TJVEventResultParser = class(TJavaGenericImport<JVEventResultParserClass, JVEventResultParser>) end;

  JVINParsedResultClass = interface(JParsedResultClass)
    ['{0761799B-FBF8-419D-91DA-C6FEC0ACEF9A}']
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; i: Integer; c: Char; string_6: JString): JVINParsedResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/VINParsedResult')]
  JVINParsedResult = interface(JParsedResult)
    ['{EE8793A0-0592-49E6-82FD-39B7FEAC9138}']
    function getCountryCode: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getModelYear: Integer; cdecl;
    function getPlantCode: Char; cdecl;
    function getSequentialNumber: JString; cdecl;
    function getVIN: JString; cdecl;
    function getVehicleAttributes: JString; cdecl;
    function getVehicleDescriptorSection: JString; cdecl;
    function getVehicleIdentifierSection: JString; cdecl;
    function getWorldManufacturerID: JString; cdecl;
  end;
  TJVINParsedResult = class(TJavaGenericImport<JVINParsedResultClass, JVINParsedResult>) end;

  JVINResultParserClass = interface(JResultParserClass)
    ['{5047C0B6-C277-4759-87AE-8D229D61DC51}']
    {class} function init: JVINResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/VINResultParser')]
  JVINResultParser = interface(JResultParser)
    ['{9A9671FD-1086-4C80-AB7D-18F958088706}']
    function parse(result: Jzxing_Result): JVINParsedResult; cdecl;
  end;
  TJVINResultParser = class(TJavaGenericImport<JVINResultParserClass, JVINResultParser>) end;

  JWifiParsedResultClass = interface(JParsedResultClass)
    ['{73F5E972-DA3A-48E0-9666-9EB3B86306AC}']
    {class} function init(string_: JString; string_1: JString; string_2: JString): JWifiParsedResult; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; b: Boolean): JWifiParsedResult; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; b: Boolean; string_3: JString; string_4: JString; string_5: JString; string_6: JString): JWifiParsedResult; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/client/result/WifiParsedResult')]
  JWifiParsedResult = interface(JParsedResult)
    ['{FDF0600D-6E3C-44B1-BB96-71FE2B9262A6}']
    function getAnonymousIdentity: JString; cdecl;
    function getDisplayResult: JString; cdecl;
    function getEapMethod: JString; cdecl;
    function getIdentity: JString; cdecl;
    function getNetworkEncryption: JString; cdecl;
    function getPassword: JString; cdecl;
    function getPhase2Method: JString; cdecl;
    function getSsid: JString; cdecl;
    function isHidden: Boolean; cdecl;
  end;
  TJWifiParsedResult = class(TJavaGenericImport<JWifiParsedResultClass, JWifiParsedResult>) end;

  JWifiResultParserClass = interface(JResultParserClass)
    ['{636BED6F-A3E6-4DCC-9BB4-4986E4542903}']
    {class} function init: JWifiResultParser; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/result/WifiResultParser')]
  JWifiResultParser = interface(JResultParser)
    ['{EF36C104-70D5-42D9-BD62-04B43D4CA550}']
    function parse(result: Jzxing_Result): JWifiParsedResult; cdecl;
  end;
  TJWifiResultParser = class(TJavaGenericImport<JWifiResultParserClass, JWifiResultParser>) end;

  JBitArrayClass = interface(JCloneableClass)
    ['{6E972D61-0B98-4014-B254-416F6053DDD0}']
    {class} function init: JBitArray; cdecl; overload;//Deprecated
    {class} function init(i: Integer): JBitArray; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/common/BitArray')]
  JBitArray = interface(JCloneable)
    ['{EC49B47C-1777-4520-8B2C-533595C43E82}']
    procedure appendBit(b: Boolean); cdecl;
    procedure appendBitArray(bitArray: JBitArray); cdecl;
    procedure appendBits(i: Integer; i1: Integer); cdecl;
    procedure clear; cdecl;
    function clone: JBitArray; cdecl;
    function equals(object_: JObject): Boolean; cdecl;
    procedure flip(i: Integer); cdecl;
    function &get(i: Integer): Boolean; cdecl;
    function getBitArray: TJavaArray<Integer>; cdecl;
    function getNextSet(i: Integer): Integer; cdecl;
    function getNextUnset(i: Integer): Integer; cdecl;
    function getSize: Integer; cdecl;
    function getSizeInBytes: Integer; cdecl;
    function hashCode: Integer; cdecl;
    function isRange(i: Integer; i1: Integer; b: Boolean): Boolean; cdecl;
    procedure reverse; cdecl;
    procedure &set(i: Integer); cdecl;
    procedure setBulk(i: Integer; i1: Integer); cdecl;
    procedure setRange(i: Integer; i1: Integer); cdecl;
    procedure toBytes(i: Integer; b: TJavaArray<Byte>; i1: Integer; i2: Integer); cdecl;
    function toString: JString; cdecl;
    procedure &xor(bitArray: JBitArray); cdecl;
  end;
  TJBitArray = class(TJavaGenericImport<JBitArrayClass, JBitArray>) end;

  JBitMatrixClass = interface(JCloneableClass)
    ['{C563CAC7-C189-4873-A661-1A24895DE4CF}']
    {class} function init(i: Integer): JBitMatrix; cdecl; overload;//Deprecated
    {class} function init(i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    {class} function parse(b: TJavaBiArray<Boolean>): JBitMatrix; cdecl; overload;
    {class} function parse(string_: JString; string_1: JString; string_2: JString): JBitMatrix; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/common/BitMatrix')]
  JBitMatrix = interface(JCloneable)
    ['{E60ACC61-CC3A-41DD-9AB2-AA0489B2D02D}']
    procedure clear; cdecl;
    function clone: JBitMatrix; cdecl;
    function equals(object_: JObject): Boolean; cdecl;
    procedure flip(i: Integer; i1: Integer); cdecl;
    function &get(i: Integer; i1: Integer): Boolean; cdecl;
    function getBottomRightOnBit: TJavaArray<Integer>; cdecl;
    function getEnclosingRectangle: TJavaArray<Integer>; cdecl;
    function getHeight: Integer; cdecl;
    function getRow(i: Integer; bitArray: JBitArray): JBitArray; cdecl;
    function getRowSize: Integer; cdecl;
    function getTopLeftOnBit: TJavaArray<Integer>; cdecl;
    function getWidth: Integer; cdecl;
    function hashCode: Integer; cdecl;
    procedure rotate180; cdecl;
    procedure &set(i: Integer; i1: Integer); cdecl;
    procedure setRegion(i: Integer; i1: Integer; i2: Integer; i3: Integer); cdecl;
    procedure setRow(i: Integer; bitArray: JBitArray); cdecl;
    function toString: JString; cdecl; overload;
    function toString(string_: JString; string_1: JString): JString; cdecl; overload;
    function toString(string_: JString; string_1: JString; string_2: JString): JString; cdecl; overload;
    procedure unset(i: Integer; i1: Integer); cdecl;
    procedure &xor(bitMatrix: JBitMatrix); cdecl;
  end;
  TJBitMatrix = class(TJavaGenericImport<JBitMatrixClass, JBitMatrix>) end;

  JBitSourceClass = interface(JObjectClass)
    ['{1AAB19FB-3F87-46A6-9D62-15A483AF662F}']
    {class} function init(b: TJavaArray<Byte>): JBitSource; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/BitSource')]
  JBitSource = interface(JObject)
    ['{8E8DF0A0-3940-432C-8D3E-E37CD760E6AE}']
    function available: Integer; cdecl;
    function getBitOffset: Integer; cdecl;
    function getByteOffset: Integer; cdecl;
    function readBits(i: Integer): Integer; cdecl;
  end;
  TJBitSource = class(TJavaGenericImport<JBitSourceClass, JBitSource>) end;

  JCharacterSetECIClass = interface(JEnumClass)
    ['{4ADA58C9-C4A2-43ED-BA68-E25F2BECB2E5}']
    {class} function _GetASCII: JCharacterSetECI; cdecl;
    {class} function _GetBig5: JCharacterSetECI; cdecl;
    {class} function _GetCp1250: JCharacterSetECI; cdecl;
    {class} function _GetCp1251: JCharacterSetECI; cdecl;
    {class} function _GetCp1252: JCharacterSetECI; cdecl;
    {class} function _GetCp1256: JCharacterSetECI; cdecl;
    {class} function _GetCp437: JCharacterSetECI; cdecl;
    {class} function _GetEUC_KR: JCharacterSetECI; cdecl;
    {class} function _GetGB18030: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_1: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_10: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_11: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_13: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_14: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_15: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_16: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_2: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_3: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_4: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_5: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_6: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_7: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_8: JCharacterSetECI; cdecl;
    {class} function _GetISO8859_9: JCharacterSetECI; cdecl;
    {class} function _GetSJIS: JCharacterSetECI; cdecl;
    {class} function _GetUTF8: JCharacterSetECI; cdecl;
    {class} function _GetUnicodeBigUnmarked: JCharacterSetECI; cdecl;
    {class} function getCharacterSetECIByName(string_: JString): JCharacterSetECI; cdecl;
    {class} function getCharacterSetECIByValue(i: Integer): JCharacterSetECI; cdecl;
    {class} function valueOf(string_: JString): JCharacterSetECI; cdecl;
    {class} function values: TJavaObjectArray<JCharacterSetECI>; cdecl;//Deprecated
    {class} property ASCII: JCharacterSetECI read _GetASCII;
    {class} property Big5: JCharacterSetECI read _GetBig5;
    {class} property Cp1250: JCharacterSetECI read _GetCp1250;
    {class} property Cp1251: JCharacterSetECI read _GetCp1251;
    {class} property Cp1252: JCharacterSetECI read _GetCp1252;
    {class} property Cp1256: JCharacterSetECI read _GetCp1256;
    {class} property Cp437: JCharacterSetECI read _GetCp437;
    {class} property EUC_KR: JCharacterSetECI read _GetEUC_KR;
    {class} property GB18030: JCharacterSetECI read _GetGB18030;
    {class} property ISO8859_1: JCharacterSetECI read _GetISO8859_1;
    {class} property ISO8859_10: JCharacterSetECI read _GetISO8859_10;
    {class} property ISO8859_11: JCharacterSetECI read _GetISO8859_11;
    {class} property ISO8859_13: JCharacterSetECI read _GetISO8859_13;
    {class} property ISO8859_14: JCharacterSetECI read _GetISO8859_14;
    {class} property ISO8859_15: JCharacterSetECI read _GetISO8859_15;
    {class} property ISO8859_16: JCharacterSetECI read _GetISO8859_16;
    {class} property ISO8859_2: JCharacterSetECI read _GetISO8859_2;
    {class} property ISO8859_3: JCharacterSetECI read _GetISO8859_3;
    {class} property ISO8859_4: JCharacterSetECI read _GetISO8859_4;
    {class} property ISO8859_5: JCharacterSetECI read _GetISO8859_5;
    {class} property ISO8859_6: JCharacterSetECI read _GetISO8859_6;
    {class} property ISO8859_7: JCharacterSetECI read _GetISO8859_7;
    {class} property ISO8859_8: JCharacterSetECI read _GetISO8859_8;
    {class} property ISO8859_9: JCharacterSetECI read _GetISO8859_9;
    {class} property SJIS: JCharacterSetECI read _GetSJIS;
    {class} property UTF8: JCharacterSetECI read _GetUTF8;
    {class} property UnicodeBigUnmarked: JCharacterSetECI read _GetUnicodeBigUnmarked;
  end;

  [JavaSignature('com/google/zxing/common/CharacterSetECI')]
  JCharacterSetECI = interface(JEnum)
    ['{0767A502-4C63-47F6-BD37-9BC1385F24A3}']
    function getValue: Integer; cdecl;
  end;
  TJCharacterSetECI = class(TJavaGenericImport<JCharacterSetECIClass, JCharacterSetECI>) end;

  JDecoderResultClass = interface(JObjectClass)
    ['{D44F10F9-8C1A-4068-BDF6-3A233BE3A6E2}']
    {class} function init(b: TJavaArray<Byte>; string_: JString; list: JList; string_1: JString): JDecoderResult; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; string_: JString; list: JList; string_1: JString; i: Integer; i1: Integer): JDecoderResult; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/common/DecoderResult')]
  JDecoderResult = interface(JObject)
    ['{06FEE0CD-57F6-4B01-9F76-3278321A0C76}']
    function getByteSegments: JList; cdecl;
    function getECLevel: JString; cdecl;
    function getErasures: JInteger; cdecl;
    function getErrorsCorrected: JInteger; cdecl;
    function getNumBits: Integer; cdecl;
    function getOther: JObject; cdecl;
    function getRawBytes: TJavaArray<Byte>; cdecl;
    function getStructuredAppendParity: Integer; cdecl;
    function getStructuredAppendSequenceNumber: Integer; cdecl;
    function getText: JString; cdecl;
    function hasStructuredAppend: Boolean; cdecl;
    procedure setErasures(integer_: JInteger); cdecl;
    procedure setErrorsCorrected(integer_: JInteger); cdecl;
    procedure setNumBits(i: Integer); cdecl;
    procedure setOther(object_: JObject); cdecl;
  end;
  TJDecoderResult = class(TJavaGenericImport<JDecoderResultClass, JDecoderResult>) end;

  JGridSamplerClass = interface(JObjectClass)
    ['{9B0C06D4-C859-40BD-88E1-7360829BB215}']
    {class} function getInstance: JGridSampler; cdecl;
    {class} function init: JGridSampler; cdecl;
    {class} procedure setGridSampler(gridSampler: JGridSampler); cdecl;
  end;

  [JavaSignature('com/google/zxing/common/GridSampler')]
  JGridSampler = interface(JObject)
    ['{A5AB6C01-9A6E-4060-A524-204A41606BA9}']
    function sampleGrid(bitMatrix: JBitMatrix; i: Integer; i1: Integer; perspectiveTransform: JPerspectiveTransform): JBitMatrix; cdecl; overload;
    function sampleGrid(bitMatrix: JBitMatrix; i: Integer; i1: Integer; f: Single; f1: Single; f2: Single; f3: Single; f4: Single; f5: Single; f6: Single; f7: Single; f8: Single; f9: Single; f10: Single; f11: Single; f12: Single; f13: Single; f14: Single; f15: Single): JBitMatrix; cdecl; overload;
  end;
  TJGridSampler = class(TJavaGenericImport<JGridSamplerClass, JGridSampler>) end;

  JDefaultGridSamplerClass = interface(JGridSamplerClass)
    ['{C70E5B79-8774-4952-9EC7-69F3A6385DD9}']
    {class} function init: JDefaultGridSampler; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/DefaultGridSampler')]
  JDefaultGridSampler = interface(JGridSampler)
    ['{E64DF3EB-F956-407F-A753-72A7813A0FD4}']
    function sampleGrid(bitMatrix: JBitMatrix; i: Integer; i1: Integer; perspectiveTransform: JPerspectiveTransform): JBitMatrix; cdecl; overload;
    function sampleGrid(bitMatrix: JBitMatrix; i: Integer; i1: Integer; f: Single; f1: Single; f2: Single; f3: Single; f4: Single; f5: Single; f6: Single; f7: Single; f8: Single; f9: Single; f10: Single; f11: Single; f12: Single; f13: Single; f14: Single; f15: Single): JBitMatrix; cdecl; overload;
  end;
  TJDefaultGridSampler = class(TJavaGenericImport<JDefaultGridSamplerClass, JDefaultGridSampler>) end;

  JGlobalHistogramBinarizerClass = interface(JBinarizerClass)
    ['{5005132F-1254-43C6-A6EC-8D67ACD0D811}']
    {class} function init(luminanceSource: JLuminanceSource): JGlobalHistogramBinarizer; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/GlobalHistogramBinarizer')]
  JGlobalHistogramBinarizer = interface(JBinarizer)
    ['{D1611BBD-6ED0-4B1A-B5BA-4DFC0F3DB8CC}']
    function createBinarizer(luminanceSource: JLuminanceSource): JBinarizer; cdecl;
    function getBlackMatrix: JBitMatrix; cdecl;
    function getBlackRow(i: Integer; bitArray: JBitArray): JBitArray; cdecl;
  end;
  TJGlobalHistogramBinarizer = class(TJavaGenericImport<JGlobalHistogramBinarizerClass, JGlobalHistogramBinarizer>) end;

  JHybridBinarizerClass = interface(JGlobalHistogramBinarizerClass)
    ['{0A920949-7745-4E8C-A101-168FB0D96079}']
    {class} function init(luminanceSource: JLuminanceSource): JHybridBinarizer; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/HybridBinarizer')]
  JHybridBinarizer = interface(JGlobalHistogramBinarizer)
    ['{A9BE86F4-8E11-4439-95EA-77A9028BC3CA}']
    function createBinarizer(luminanceSource: JLuminanceSource): JBinarizer; cdecl;
    function getBlackMatrix: JBitMatrix; cdecl;
  end;
  TJHybridBinarizer = class(TJavaGenericImport<JHybridBinarizerClass, JHybridBinarizer>) end;

  JPerspectiveTransformClass = interface(JObjectClass)
    ['{03E0F3F3-D5A2-4389-8870-D3C78CFB53A9}']
    {class} function quadrilateralToQuadrilateral(f: Single; f1: Single; f2: Single; f3: Single; f4: Single; f5: Single; f6: Single; f7: Single; f8: Single; f9: Single; f10: Single; f11: Single; f12: Single; f13: Single; f14: Single; f15: Single): JPerspectiveTransform; cdecl;
    {class} function quadrilateralToSquare(f: Single; f1: Single; f2: Single; f3: Single; f4: Single; f5: Single; f6: Single; f7: Single): JPerspectiveTransform; cdecl;
    {class} function squareToQuadrilateral(f: Single; f1: Single; f2: Single; f3: Single; f4: Single; f5: Single; f6: Single; f7: Single): JPerspectiveTransform; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/PerspectiveTransform')]
  JPerspectiveTransform = interface(JObject)
    ['{83A19BA4-B968-4F02-AA55-D2ABC5559F80}']
    procedure transformPoints(f: TJavaArray<Single>); cdecl; overload;
    procedure transformPoints(f: TJavaArray<Single>; f1: TJavaArray<Single>); cdecl; overload;
  end;
  TJPerspectiveTransform = class(TJavaGenericImport<JPerspectiveTransformClass, JPerspectiveTransform>) end;

  JStringUtilsClass = interface(JObjectClass)
    ['{F0B8657B-8CCC-4DCF-A880-96C6CAD0CEAF}']
    {class} function _GetGB2312: JString; cdecl;
    {class} function _GetSHIFT_JIS: JString; cdecl;
    {class} function guessEncoding(b: TJavaArray<Byte>; map: JMap): JString; cdecl;//Deprecated
    {class} property GB2312: JString read _GetGB2312;
    {class} property SHIFT_JIS: JString read _GetSHIFT_JIS;
  end;

  [JavaSignature('com/google/zxing/common/StringUtils')]
  JStringUtils = interface(JObject)
    ['{AA14C7F4-601B-4ABB-A8CB-D24C76BFB931}']
  end;
  TJStringUtils = class(TJavaGenericImport<JStringUtilsClass, JStringUtils>) end;

  Jdetector_MathUtilsClass = interface(JObjectClass)
    ['{D101ABDA-FFCC-47B6-BA74-640FFB748A8A}']
    {class} function distance(i: Integer; i1: Integer; i2: Integer; i3: Integer): Single; cdecl; overload;
    {class} function distance(f: Single; f1: Single; f2: Single; f3: Single): Single; cdecl; overload;
    {class} function round(f: Single): Integer; cdecl;
    {class} function sum(i: TJavaArray<Integer>): Integer; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/detector/MathUtils')]
  Jdetector_MathUtils = interface(JObject)
    ['{CBB33EA7-CFB9-489B-BE0F-5B1450327A3F}']
  end;
  TJdetector_MathUtils = class(TJavaGenericImport<Jdetector_MathUtilsClass, Jdetector_MathUtils>) end;

  JMonochromeRectangleDetectorClass = interface(JObjectClass)
    ['{975D60FC-28A5-476C-B9FC-2ADF9BA5FA46}']
    {class} function init(bitMatrix: JBitMatrix): JMonochromeRectangleDetector; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/detector/MonochromeRectangleDetector')]
  JMonochromeRectangleDetector = interface(JObject)
    ['{A4196A54-84FF-417E-9AB9-C482FE14A2AA}']
    function detect: TJavaObjectArray<JResultPoint>; cdecl;
  end;
  TJMonochromeRectangleDetector = class(TJavaGenericImport<JMonochromeRectangleDetectorClass, JMonochromeRectangleDetector>) end;

  JWhiteRectangleDetectorClass = interface(JObjectClass)
    ['{D75ADACE-58F8-48CB-A55F-2D509022D1FC}']
    {class} function init(bitMatrix: JBitMatrix): JWhiteRectangleDetector; cdecl; overload;
    {class} function init(bitMatrix: JBitMatrix; i: Integer; i1: Integer; i2: Integer): JWhiteRectangleDetector; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/common/detector/WhiteRectangleDetector')]
  JWhiteRectangleDetector = interface(JObject)
    ['{FD2C6C57-8325-4D10-9592-A228001F3CBB}']
    function detect: TJavaObjectArray<JResultPoint>; cdecl;
  end;
  TJWhiteRectangleDetector = class(TJavaGenericImport<JWhiteRectangleDetectorClass, JWhiteRectangleDetector>) end;

  JGenericGFClass = interface(JObjectClass)
    ['{914A4102-2FDF-4F58-8591-3410B0F36072}']
    {class} function _GetAZTEC_DATA_10: JGenericGF; cdecl;
    {class} function _GetAZTEC_DATA_12: JGenericGF; cdecl;
    {class} function _GetAZTEC_DATA_6: JGenericGF; cdecl;
    {class} function _GetAZTEC_DATA_8: JGenericGF; cdecl;
    {class} function _GetAZTEC_PARAM: JGenericGF; cdecl;
    {class} function _GetDATA_MATRIX_FIELD_256: JGenericGF; cdecl;
    {class} function _GetMAXICODE_FIELD_64: JGenericGF; cdecl;
    {class} function _GetQR_CODE_FIELD_256: JGenericGF; cdecl;
    {class} function init(i: Integer; i1: Integer; i2: Integer): JGenericGF; cdecl;//Deprecated
    {class} property AZTEC_DATA_10: JGenericGF read _GetAZTEC_DATA_10;
    {class} property AZTEC_DATA_12: JGenericGF read _GetAZTEC_DATA_12;
    {class} property AZTEC_DATA_6: JGenericGF read _GetAZTEC_DATA_6;
    {class} property AZTEC_DATA_8: JGenericGF read _GetAZTEC_DATA_8;
    {class} property AZTEC_PARAM: JGenericGF read _GetAZTEC_PARAM;
    {class} property DATA_MATRIX_FIELD_256: JGenericGF read _GetDATA_MATRIX_FIELD_256;
    {class} property MAXICODE_FIELD_64: JGenericGF read _GetMAXICODE_FIELD_64;
    {class} property QR_CODE_FIELD_256: JGenericGF read _GetQR_CODE_FIELD_256;
  end;

  [JavaSignature('com/google/zxing/common/reedsolomon/GenericGF')]
  JGenericGF = interface(JObject)
    ['{6715A0F4-E158-4896-8C61-644B3D45D49E}']
    function getGeneratorBase: Integer; cdecl;
    function getSize: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJGenericGF = class(TJavaGenericImport<JGenericGFClass, JGenericGF>) end;

  JGenericGFPolyClass = interface(JObjectClass)
    ['{C4F7C79B-A831-4321-A79F-97970EA1F038}']
    {class} function init(genericGF: JGenericGF; i: TJavaArray<Integer>): JGenericGFPoly; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/reedsolomon/GenericGFPoly')]
  JGenericGFPoly = interface(JObject)
    ['{7281476A-5AFD-470A-9307-83F1EB62647F}']
    function toString: JString; cdecl;
  end;
  TJGenericGFPoly = class(TJavaGenericImport<JGenericGFPolyClass, JGenericGFPoly>) end;

  JReedSolomonDecoderClass = interface(JObjectClass)
    ['{785BE9F9-79A9-4AC3-9411-22A961B8D747}']
    {class} function init(genericGF: JGenericGF): JReedSolomonDecoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/reedsolomon/ReedSolomonDecoder')]
  JReedSolomonDecoder = interface(JObject)
    ['{9CE8E028-D214-4DA5-8D8B-624EEA6CC996}']
    procedure decode(i: TJavaArray<Integer>; i1: Integer); cdecl;
  end;
  TJReedSolomonDecoder = class(TJavaGenericImport<JReedSolomonDecoderClass, JReedSolomonDecoder>) end;

  JReedSolomonEncoderClass = interface(JObjectClass)
    ['{F0AB126A-334B-487E-8C8A-F26C9A6C49D9}']
    {class} function init(genericGF: JGenericGF): JReedSolomonEncoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/reedsolomon/ReedSolomonEncoder')]
  JReedSolomonEncoder = interface(JObject)
    ['{D2B8E41D-E646-4730-A29E-1B63289E92D6}']
    procedure encode(i: TJavaArray<Integer>; i1: Integer); cdecl;
  end;
  TJReedSolomonEncoder = class(TJavaGenericImport<JReedSolomonEncoderClass, JReedSolomonEncoder>) end;

  JReedSolomonExceptionClass = interface(JExceptionClass)
    ['{F578E183-A306-4E60-8AE5-20030A64B4CD}']
    {class} function init(string_: JString): JReedSolomonException; cdecl;
  end;

  [JavaSignature('com/google/zxing/common/reedsolomon/ReedSolomonException')]
  JReedSolomonException = interface(JException)
    ['{C0D32215-71A3-485C-83F6-A30295BF6FFE}']
  end;
  TJReedSolomonException = class(TJavaGenericImport<JReedSolomonExceptionClass, JReedSolomonException>) end;

  JDataMatrixReaderClass = interface(Jzxing_ReaderClass)
    ['{121C58A4-0D77-41B5-AEBB-9D6645A6F411}']
    {class} function init: JDataMatrixReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/DataMatrixReader')]
  JDataMatrixReader = interface(Jzxing_Reader)
    ['{1F251993-9FC2-45B4-960B-DCA24DA46610}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJDataMatrixReader = class(TJavaGenericImport<JDataMatrixReaderClass, JDataMatrixReader>) end;

  JDataMatrixWriterClass = interface(Jzxing_WriterClass)
    ['{628C7AE3-C6C4-42AC-8850-80A4308B1FFA}']
    {class} function init: JDataMatrixWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/DataMatrixWriter')]
  JDataMatrixWriter = interface(Jzxing_Writer)
    ['{1B109C7D-1ED4-424E-86FB-2E99E8F414E1}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJDataMatrixWriter = class(TJavaGenericImport<JDataMatrixWriterClass, JDataMatrixWriter>) end;

  JBitMatrixParserClass = interface(JObjectClass)
    ['{9B4F0B37-B528-4B83-A924-C2E27F0D7854}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/BitMatrixParser')]
  JBitMatrixParser = interface(JObject)
    ['{8C5AAAB1-830E-4EC8-ACD4-D18B02F63943}']
  end;
  TJBitMatrixParser = class(TJavaGenericImport<JBitMatrixParserClass, JBitMatrixParser>) end;

  JDataBlockClass = interface(JObjectClass)
    ['{1A9D827C-A9FF-4B39-8B7F-06710BC775F9}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/DataBlock')]
  JDataBlock = interface(JObject)
    ['{BAF4523A-C353-4181-ADC8-7782BBD7C65F}']
  end;
  TJDataBlock = class(TJavaGenericImport<JDataBlockClass, JDataBlock>) end;

  Jdecoder_DecodedBitStreamParserClass = interface(JObjectClass)
    ['{EAB1A586-24BA-423E-B25E-6326957CDA84}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/DecodedBitStreamParser')]
  Jdecoder_DecodedBitStreamParser = interface(JObject)
    ['{843D2BDA-490C-4E08-A18F-60FCB232A17C}']
  end;
  TJdecoder_DecodedBitStreamParser = class(TJavaGenericImport<Jdecoder_DecodedBitStreamParserClass, Jdecoder_DecodedBitStreamParser>) end;

  Jdecoder_DecodedBitStreamParser_1Class = interface(JObjectClass)
    ['{510F574F-CEE2-4211-9C86-CA4FDEFEC955}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1')]
  Jdecoder_DecodedBitStreamParser_1 = interface(JObject)
    ['{25BE4752-07F9-459C-82F0-2DB3582956B2}']
  end;
  TJdecoder_DecodedBitStreamParser_1 = class(TJavaGenericImport<Jdecoder_DecodedBitStreamParser_1Class, Jdecoder_DecodedBitStreamParser_1>) end;

  Jdecoder_DecodedBitStreamParser_ModeClass = interface(JEnumClass)
    ['{70FB421B-1530-43A5-833D-764D06BFF44A}']
    {class} function _GetANSIX12_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetASCII_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetBASE256_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetC40_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetEDIFACT_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetPAD_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function _GetTEXT_ENCODE: Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function valueOf(string_: JString): Jdecoder_DecodedBitStreamParser_Mode; cdecl;
    {class} function values: TJavaObjectArray<Jdecoder_DecodedBitStreamParser_Mode>; cdecl;//Deprecated
    {class} property ANSIX12_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetANSIX12_ENCODE;
    {class} property ASCII_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetASCII_ENCODE;
    {class} property BASE256_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetBASE256_ENCODE;
    {class} property C40_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetC40_ENCODE;
    {class} property EDIFACT_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetEDIFACT_ENCODE;
    {class} property PAD_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetPAD_ENCODE;
    {class} property TEXT_ENCODE: Jdecoder_DecodedBitStreamParser_Mode read _GetTEXT_ENCODE;
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode')]
  Jdecoder_DecodedBitStreamParser_Mode = interface(JEnum)
    ['{226A43C4-C995-4F6D-930E-58C379986E20}']
  end;
  TJdecoder_DecodedBitStreamParser_Mode = class(TJavaGenericImport<Jdecoder_DecodedBitStreamParser_ModeClass, Jdecoder_DecodedBitStreamParser_Mode>) end;

  Jdecoder_DecoderClass = interface(JObjectClass)
    ['{45D60856-142B-4263-AB6E-00314309AD67}']
    {class} function init: Jdecoder_Decoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/Decoder')]
  Jdecoder_Decoder = interface(JObject)
    ['{DEEFBC12-9590-46B4-8298-52411E1435EC}']
    function decode(bitMatrix: JBitMatrix): JDecoderResult; cdecl; overload;
    function decode(b: TJavaBiArray<Boolean>): JDecoderResult; cdecl; overload;
  end;
  TJdecoder_Decoder = class(TJavaGenericImport<Jdecoder_DecoderClass, Jdecoder_Decoder>) end;

  Jdecoder_VersionClass = interface(JObjectClass)
    ['{801FB84C-52F2-4ACD-8DDF-51B89FE19765}']
    {class} function getVersionForDimensions(i: Integer; i1: Integer): Jdecoder_Version; cdecl;
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/Version')]
  Jdecoder_Version = interface(JObject)
    ['{15F4F285-02DA-4A28-8160-C02A661A52AB}']
    function getDataRegionSizeColumns: Integer; cdecl;
    function getDataRegionSizeRows: Integer; cdecl;
    function getSymbolSizeColumns: Integer; cdecl;
    function getSymbolSizeRows: Integer; cdecl;
    function getTotalCodewords: Integer; cdecl;
    function getVersionNumber: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJdecoder_Version = class(TJavaGenericImport<Jdecoder_VersionClass, Jdecoder_Version>) end;

  JVersion_1Class = interface(JObjectClass)
    ['{911EA856-8D02-4D41-94A5-D6AD1D7BD157}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/Version$1')]
  JVersion_1 = interface(JObject)
    ['{D14F23AC-A1F3-4311-B6BD-011AA1DF80F4}']
  end;
  TJVersion_1 = class(TJavaGenericImport<JVersion_1Class, JVersion_1>) end;

  JVersion_ECBClass = interface(JObjectClass)
    ['{BBCF2CD3-FC08-46F0-80D9-7E0A94BDCD86}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/Version$ECB')]
  JVersion_ECB = interface(JObject)
    ['{F5907674-4FE1-4E57-8ED1-913BC2161EAA}']
  end;
  TJVersion_ECB = class(TJavaGenericImport<JVersion_ECBClass, JVersion_ECB>) end;

  JVersion_ECBlocksClass = interface(JObjectClass)
    ['{9A17822A-A879-43F5-96A3-B69280C99B6F}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/decoder/Version$ECBlocks')]
  JVersion_ECBlocks = interface(JObject)
    ['{256BDBD8-AA28-4E0D-93CC-CF64A196693B}']
    function getECCodewords: Integer; cdecl;
  end;
  TJVersion_ECBlocks = class(TJavaGenericImport<JVersion_ECBlocksClass, JVersion_ECBlocks>) end;

  Jdetector_DetectorClass = interface(JObjectClass)
    ['{6766E4E6-35BC-43D5-991B-64190FA1BD93}']
    {class} function init(bitMatrix: JBitMatrix): Jdetector_Detector; cdecl;
  end;

  [JavaSignature('com/google/zxing/datamatrix/detector/Detector')]
  Jdetector_Detector = interface(JObject)
    ['{ED728E02-28AC-4823-B009-8E6682BD49D5}']
    function detect: JDetectorResult; cdecl;
  end;
  TJdetector_Detector = class(TJavaGenericImport<Jdetector_DetectorClass, Jdetector_Detector>) end;

  Jencoder_EncoderClass = interface(IJavaClass)
    ['{1D341EB3-49A2-4C52-8F0A-4CE6FC1956AC}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/Encoder')]
  Jencoder_Encoder = interface(IJavaInstance)
    ['{477C5473-FE4B-4C15-B69D-74B473FD2942}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJencoder_Encoder = class(TJavaGenericImport<Jencoder_EncoderClass, Jencoder_Encoder>) end;

  JASCIIEncoderClass = interface(Jencoder_EncoderClass)
    ['{F53D5DF0-6C7D-459C-8BE1-568A101A762E}']
    {class} function init: JASCIIEncoder; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/ASCIIEncoder')]
  JASCIIEncoder = interface(Jencoder_Encoder)
    ['{1B7B95B0-8617-43BF-9129-D8C8494840E3}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJASCIIEncoder = class(TJavaGenericImport<JASCIIEncoderClass, JASCIIEncoder>) end;

  JBase256EncoderClass = interface(Jencoder_EncoderClass)
    ['{97F1A706-B723-4517-BE4B-41D7DB604BB8}']
    {class} function init: JBase256Encoder; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/Base256Encoder')]
  JBase256Encoder = interface(Jencoder_Encoder)
    ['{63A39A4D-124B-444C-991E-B3AEF321F101}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJBase256Encoder = class(TJavaGenericImport<JBase256EncoderClass, JBase256Encoder>) end;

  JC40EncoderClass = interface(Jencoder_EncoderClass)
    ['{388AD5BE-532C-4090-97C1-BB86162C6B63}']
    {class} function init: JC40Encoder; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/C40Encoder')]
  JC40Encoder = interface(Jencoder_Encoder)
    ['{327FAD0E-B8CE-4119-B666-BB5263717070}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJC40Encoder = class(TJavaGenericImport<JC40EncoderClass, JC40Encoder>) end;

  JSymbolInfoClass = interface(JObjectClass)
    ['{4910F43D-C5D9-4BA7-8C7C-D531D60FFD64}']
    {class} function _GetPROD_SYMBOLS: TJavaObjectArray<JSymbolInfo>; cdecl;
    {class} function _GetmatrixHeight: Integer; cdecl;
    {class} function init(b: Boolean; i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer): JSymbolInfo; cdecl; overload;
    {class} function lookup(i: Integer): JSymbolInfo; cdecl; overload;
    {class} function lookup(i: Integer; symbolShapeHint: JSymbolShapeHint): JSymbolInfo; cdecl; overload;
    {class} function lookup(i: Integer; b: Boolean; b1: Boolean): JSymbolInfo; cdecl; overload;
    {class} function lookup(i: Integer; symbolShapeHint: JSymbolShapeHint; dimension: Jzxing_Dimension; dimension1: Jzxing_Dimension; b: Boolean): JSymbolInfo; cdecl; overload;
    {class} procedure overrideSymbolSet(symbolInfo: TJavaObjectArray<JSymbolInfo>); cdecl;//Deprecated
    {class} property PROD_SYMBOLS: TJavaObjectArray<JSymbolInfo> read _GetPROD_SYMBOLS;
    {class} property matrixHeight: Integer read _GetmatrixHeight;
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/SymbolInfo')]
  JSymbolInfo = interface(JObject)
    ['{F7B53124-A04B-4A7D-B97A-697277892762}']
    function _GetmatrixWidth: Integer; cdecl;
    function getCodewordCount: Integer; cdecl;
    function getDataCapacity: Integer; cdecl;
    function getDataLengthForInterleavedBlock(i: Integer): Integer; cdecl;
    function getErrorCodewords: Integer; cdecl;
    function getErrorLengthForInterleavedBlock(i: Integer): Integer; cdecl;
    function getInterleavedBlockCount: Integer; cdecl;
    function getSymbolDataHeight: Integer; cdecl;
    function getSymbolDataWidth: Integer; cdecl;
    function getSymbolHeight: Integer; cdecl;
    function getSymbolWidth: Integer; cdecl;
    function toString: JString; cdecl;
    property matrixWidth: Integer read _GetmatrixWidth;
  end;
  TJSymbolInfo = class(TJavaGenericImport<JSymbolInfoClass, JSymbolInfo>) end;

  JDataMatrixSymbolInfo144Class = interface(JSymbolInfoClass)
    ['{A42A72D0-E4AA-4B73-8037-C2B01A3269C9}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144')]
  JDataMatrixSymbolInfo144 = interface(JSymbolInfo)
    ['{1BC03F4B-74C1-47BF-8018-6979C65BEE71}']
    function getDataLengthForInterleavedBlock(i: Integer): Integer; cdecl;
    function getInterleavedBlockCount: Integer; cdecl;
  end;
  TJDataMatrixSymbolInfo144 = class(TJavaGenericImport<JDataMatrixSymbolInfo144Class, JDataMatrixSymbolInfo144>) end;

  JDefaultPlacementClass = interface(JObjectClass)
    ['{14DA8EA8-BEC5-4DBF-8D6D-EF4F13796469}']
    {class} function init(charSequence: JCharSequence; i: Integer; i1: Integer): JDefaultPlacement; cdecl;
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/DefaultPlacement')]
  JDefaultPlacement = interface(JObject)
    ['{79483E69-6EB2-4059-A425-C20853282177}']
    function getBit(i: Integer; i1: Integer): Boolean; cdecl;
    procedure place; cdecl;
  end;
  TJDefaultPlacement = class(TJavaGenericImport<JDefaultPlacementClass, JDefaultPlacement>) end;

  JEdifactEncoderClass = interface(Jencoder_EncoderClass)
    ['{F4CE3E5A-9FF8-4646-8640-7A3F671D2B90}']
    {class} function init: JEdifactEncoder; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/EdifactEncoder')]
  JEdifactEncoder = interface(Jencoder_Encoder)
    ['{3B7C77CE-3A4F-4378-8934-D6916ACC153F}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJEdifactEncoder = class(TJavaGenericImport<JEdifactEncoderClass, JEdifactEncoder>) end;

  JEncoderContextClass = interface(JObjectClass)
    ['{87F9FA94-9F03-4DE9-AF83-34EACB87BDE0}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/EncoderContext')]
  JEncoderContext = interface(JObject)
    ['{5BDDB6C5-A63A-4784-AD86-B9963E4F4B99}']
    function _Getpos: Integer; cdecl;
    procedure _Setpos(Value: Integer); cdecl;
    function getCodewordCount: Integer; cdecl;
    function getCodewords: JStringBuilder; cdecl;
    function getCurrent: Char; cdecl;
    function getCurrentChar: Char; cdecl;
    function getMessage: JString; cdecl;
    function getNewEncoding: Integer; cdecl;
    function getRemainingCharacters: Integer; cdecl;
    function getSymbolInfo: JSymbolInfo; cdecl;
    function hasMoreCharacters: Boolean; cdecl;
    procedure resetEncoderSignal; cdecl;
    procedure resetSymbolInfo; cdecl;
    procedure setSizeConstraints(dimension: Jzxing_Dimension; dimension1: Jzxing_Dimension); cdecl;
    procedure setSkipAtEnd(i: Integer); cdecl;
    procedure setSymbolShape(symbolShapeHint: JSymbolShapeHint); cdecl;
    procedure signalEncoderChange(i: Integer); cdecl;
    procedure updateSymbolInfo; cdecl; overload;
    procedure updateSymbolInfo(i: Integer); cdecl; overload;
    procedure writeCodeword(c: Char); cdecl;
    procedure writeCodewords(string_: JString); cdecl;
    property pos: Integer read _Getpos write _Setpos;
  end;
  TJEncoderContext = class(TJavaGenericImport<JEncoderContextClass, JEncoderContext>) end;

  Jencoder_ErrorCorrectionClass = interface(JObjectClass)
    ['{42193BF1-619A-4655-A4F7-E0D3FF45838F}']
    {class} function encodeECC200(string_: JString; symbolInfo: JSymbolInfo): JString; cdecl;
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/ErrorCorrection')]
  Jencoder_ErrorCorrection = interface(JObject)
    ['{28624DA4-B5C8-4E9C-ABA2-597CAE53A659}']
  end;
  TJencoder_ErrorCorrection = class(TJavaGenericImport<Jencoder_ErrorCorrectionClass, Jencoder_ErrorCorrection>) end;

  JHighLevelEncoderClass = interface(JObjectClass)
    ['{28E99FEF-D084-435F-BA9B-832CF3BF823B}']
    {class} function determineConsecutiveDigitCount(charSequence: JCharSequence; i: Integer): Integer; cdecl;
    {class} function encodeHighLevel(string_: JString): JString; cdecl; overload;//Deprecated
    {class} function encodeHighLevel(string_: JString; symbolShapeHint: JSymbolShapeHint; dimension: Jzxing_Dimension; dimension1: Jzxing_Dimension): JString; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/HighLevelEncoder')]
  JHighLevelEncoder = interface(JObject)
    ['{E31741A9-F8D7-47DC-BF94-2841B9453AD4}']
  end;
  TJHighLevelEncoder = class(TJavaGenericImport<JHighLevelEncoderClass, JHighLevelEncoder>) end;

  JSymbolShapeHintClass = interface(JEnumClass)
    ['{7D559061-5BD9-48A7-A5B9-34929C1B61BC}']
    {class} function _GetFORCE_NONE: JSymbolShapeHint; cdecl;
    {class} function _GetFORCE_RECTANGLE: JSymbolShapeHint; cdecl;
    {class} function _GetFORCE_SQUARE: JSymbolShapeHint; cdecl;
    {class} function valueOf(string_: JString): JSymbolShapeHint; cdecl;
    {class} function values: TJavaObjectArray<JSymbolShapeHint>; cdecl;//Deprecated
    {class} property FORCE_NONE: JSymbolShapeHint read _GetFORCE_NONE;
    {class} property FORCE_RECTANGLE: JSymbolShapeHint read _GetFORCE_RECTANGLE;
    {class} property FORCE_SQUARE: JSymbolShapeHint read _GetFORCE_SQUARE;
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/SymbolShapeHint')]
  JSymbolShapeHint = interface(JEnum)
    ['{1A8652C1-1F67-427B-A911-2A45D479AB31}']
  end;
  TJSymbolShapeHint = class(TJavaGenericImport<JSymbolShapeHintClass, JSymbolShapeHint>) end;

  JTextEncoderClass = interface(JC40EncoderClass)
    ['{B1CCE289-AB8C-47C5-9D98-60368170CDB0}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/TextEncoder')]
  JTextEncoder = interface(JC40Encoder)
    ['{1C605A57-6EF2-4871-859B-4B479B4A52A1}']
    function getEncodingMode: Integer; cdecl;
  end;
  TJTextEncoder = class(TJavaGenericImport<JTextEncoderClass, JTextEncoder>) end;

  JX12EncoderClass = interface(JC40EncoderClass)
    ['{9BF1F646-E1B4-4590-AFD2-6297F88FBBE8}']
  end;

  [JavaSignature('com/google/zxing/datamatrix/encoder/X12Encoder')]
  JX12Encoder = interface(JC40Encoder)
    ['{50865D9A-DB61-43F2-9708-25948F7764B1}']
    procedure encode(encoderContext: JEncoderContext); cdecl;
    function getEncodingMode: Integer; cdecl;
  end;
  TJX12Encoder = class(TJavaGenericImport<JX12EncoderClass, JX12Encoder>) end;

  JMaxiCodeReaderClass = interface(Jzxing_ReaderClass)
    ['{3D453B5D-6E29-4119-B8F0-BDE1F3A890E5}']
    {class} function init: JMaxiCodeReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/maxicode/MaxiCodeReader')]
  JMaxiCodeReader = interface(Jzxing_Reader)
    ['{0E0E0C86-BD26-4046-BE1F-C1DA69979BE6}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJMaxiCodeReader = class(TJavaGenericImport<JMaxiCodeReaderClass, JMaxiCodeReader>) end;

  Jmaxicode_decoder_BitMatrixParserClass = interface(JObjectClass)
    ['{652B5CB4-E54A-4B16-8E72-4855DD4EF020}']
  end;

  [JavaSignature('com/google/zxing/maxicode/decoder/BitMatrixParser')]
  Jmaxicode_decoder_BitMatrixParser = interface(JObject)
    ['{A34894AD-AF2F-4D1F-80FE-95156918449F}']
  end;
  TJmaxicode_decoder_BitMatrixParser = class(TJavaGenericImport<Jmaxicode_decoder_BitMatrixParserClass, Jmaxicode_decoder_BitMatrixParser>) end;

  Jmaxicode_decoder_DecodedBitStreamParserClass = interface(JObjectClass)
    ['{FB7BAF0D-E71B-4ACD-94D4-2A84EBD67C29}']
  end;

  [JavaSignature('com/google/zxing/maxicode/decoder/DecodedBitStreamParser')]
  Jmaxicode_decoder_DecodedBitStreamParser = interface(JObject)
    ['{20C3B9DE-B6DE-49B9-98C4-619EFE59D682}']
  end;
  TJmaxicode_decoder_DecodedBitStreamParser = class(TJavaGenericImport<Jmaxicode_decoder_DecodedBitStreamParserClass, Jmaxicode_decoder_DecodedBitStreamParser>) end;

  Jmaxicode_decoder_DecoderClass = interface(JObjectClass)
    ['{9318FA03-AEA8-4AC8-B059-C798330A5D42}']
    {class} function init: Jmaxicode_decoder_Decoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/maxicode/decoder/Decoder')]
  Jmaxicode_decoder_Decoder = interface(JObject)
    ['{B0662A7B-46DD-46DE-BCCD-178767C2BB27}']
    function decode(bitMatrix: JBitMatrix): JDecoderResult; cdecl; overload;
    function decode(bitMatrix: JBitMatrix; map: JMap): JDecoderResult; cdecl; overload;
  end;
  TJmaxicode_decoder_Decoder = class(TJavaGenericImport<Jmaxicode_decoder_DecoderClass, Jmaxicode_decoder_Decoder>) end;

  JByQuadrantReaderClass = interface(Jzxing_ReaderClass)
    ['{5E22B450-9F79-4014-B833-E0C8854C3DDE}']
    {class} function init(reader: Jzxing_Reader): JByQuadrantReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/multi/ByQuadrantReader')]
  JByQuadrantReader = interface(Jzxing_Reader)
    ['{1A89B396-ACDE-4E1A-8BBE-2CB9F9BC8614}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJByQuadrantReader = class(TJavaGenericImport<JByQuadrantReaderClass, JByQuadrantReader>) end;

  JMultipleBarcodeReaderClass = interface(IJavaClass)
    ['{09D8F616-0F68-49E8-A262-9F48DDD0E0CC}']
  end;

  [JavaSignature('com/google/zxing/multi/MultipleBarcodeReader')]
  JMultipleBarcodeReader = interface(IJavaInstance)
    ['{88A863C6-2932-4535-A725-0E5326EE0C7E}']
    function decodeMultiple(binaryBitmap: JBinaryBitmap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
    function decodeMultiple(binaryBitmap: JBinaryBitmap; map: JMap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
  end;
  TJMultipleBarcodeReader = class(TJavaGenericImport<JMultipleBarcodeReaderClass, JMultipleBarcodeReader>) end;

  JGenericMultipleBarcodeReaderClass = interface(JMultipleBarcodeReaderClass)
    ['{0722FCB3-BBD6-4647-A1EA-878F60F88150}']
    {class} function _GetEMPTY_RESULT_ARRAY: TJavaObjectArray<Jzxing_Result>; cdecl;
    {class} function init(reader: Jzxing_Reader): JGenericMultipleBarcodeReader; cdecl;
    {class} property EMPTY_RESULT_ARRAY: TJavaObjectArray<Jzxing_Result> read _GetEMPTY_RESULT_ARRAY;
  end;

  [JavaSignature('com/google/zxing/multi/GenericMultipleBarcodeReader')]
  JGenericMultipleBarcodeReader = interface(JMultipleBarcodeReader)
    ['{DBE3767C-81B0-47F4-80DE-E02BC1484628}']
    function decodeMultiple(binaryBitmap: JBinaryBitmap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
    function decodeMultiple(binaryBitmap: JBinaryBitmap; map: JMap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
  end;
  TJGenericMultipleBarcodeReader = class(TJavaGenericImport<JGenericMultipleBarcodeReaderClass, JGenericMultipleBarcodeReader>) end;

  JQRCodeReaderClass = interface(Jzxing_ReaderClass)
    ['{31AE2851-966A-4CE5-B6DC-26CBCB57EDC6}']
    {class} function init: JQRCodeReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/qrcode/QRCodeReader')]
  JQRCodeReader = interface(Jzxing_Reader)
    ['{32C21D53-ADA5-41E7-AF45-E5DC81FB8571}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJQRCodeReader = class(TJavaGenericImport<JQRCodeReaderClass, JQRCodeReader>) end;

  JQRCodeMultiReaderClass = interface(JQRCodeReaderClass)
    ['{4C1BED50-9C0A-42F9-9DAC-B440AB1C698F}']
    {class} function init: JQRCodeMultiReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/QRCodeMultiReader')]
  JQRCodeMultiReader = interface(JQRCodeReader)
    ['{158A852F-84C7-4EC0-8C92-261616755135}']
    function decodeMultiple(binaryBitmap: JBinaryBitmap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
    function decodeMultiple(binaryBitmap: JBinaryBitmap; map: JMap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
  end;
  TJQRCodeMultiReader = class(TJavaGenericImport<JQRCodeMultiReaderClass, JQRCodeMultiReader>) end;

  JQRCodeMultiReader_1Class = interface(JObjectClass)
    ['{6E2A1AB5-D041-440D-B1E5-A64CE838F371}']
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/QRCodeMultiReader$1')]
  JQRCodeMultiReader_1 = interface(JObject)
    ['{EA894B99-876E-4D62-8258-B0400F056331}']
  end;
  TJQRCodeMultiReader_1 = class(TJavaGenericImport<JQRCodeMultiReader_1Class, JQRCodeMultiReader_1>) end;

  JQRCodeMultiReader_SAComparatorClass = interface(JSerializableClass)
    ['{A40EEEE9-C571-4DF7-82F5-AE5AE6FF86C5}']
    {class} function compare(result: Jzxing_Result; result1: Jzxing_Result): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator')]
  JQRCodeMultiReader_SAComparator = interface(JSerializable)
    ['{C2723977-F675-46D0-932F-6E0DBBB52457}']
    function compare(object_: JObject; object_1: JObject): Integer; cdecl; overload;
  end;
  TJQRCodeMultiReader_SAComparator = class(TJavaGenericImport<JQRCodeMultiReader_SAComparatorClass, JQRCodeMultiReader_SAComparator>) end;

  Jqrcode_detector_DetectorClass = interface(JObjectClass)
    ['{3DC54E2F-5476-40B0-9A09-2995B4430420}']
    {class} function init(bitMatrix: JBitMatrix): Jqrcode_detector_Detector; cdecl;
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/Detector')]
  Jqrcode_detector_Detector = interface(JObject)
    ['{B3EE1E96-E006-47E6-93D1-EE29ED71623B}']
    function detect: JDetectorResult; cdecl; overload;
    function detect(map: JMap): JDetectorResult; cdecl; overload;
  end;
  TJqrcode_detector_Detector = class(TJavaGenericImport<Jqrcode_detector_DetectorClass, Jqrcode_detector_Detector>) end;

  JMultiDetectorClass = interface(Jqrcode_detector_DetectorClass)
    ['{0D1E893E-5948-4526-82AD-433D6E24E61A}']
    {class} function init(bitMatrix: JBitMatrix): JMultiDetector; cdecl;
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/detector/MultiDetector')]
  JMultiDetector = interface(Jqrcode_detector_Detector)
    ['{585E21DD-71D8-4790-835E-6D0621A15DF1}']
    function detectMulti(map: JMap): TJavaObjectArray<JDetectorResult>; cdecl;
  end;
  TJMultiDetector = class(TJavaGenericImport<JMultiDetectorClass, JMultiDetector>) end;

  JFinderPatternFinderClass = interface(JObjectClass)
    ['{10DCAA87-01C9-415E-9300-6A3AAD30BBC6}']
    {class} function _GetMIN_SKIP: Integer; cdecl;
    {class} function init(bitMatrix: JBitMatrix): JFinderPatternFinder; cdecl; overload;//Deprecated
    {class} function init(bitMatrix: JBitMatrix; resultPointCallback: JResultPointCallback): JFinderPatternFinder; cdecl; overload;
    {class} property MIN_SKIP: Integer read _GetMIN_SKIP;
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/FinderPatternFinder')]
  JFinderPatternFinder = interface(JObject)
    ['{BC76D68D-0EB7-45A2-98A5-E64060F11985}']
  end;
  TJFinderPatternFinder = class(TJavaGenericImport<JFinderPatternFinderClass, JFinderPatternFinder>) end;

  JMultiFinderPatternFinderClass = interface(JFinderPatternFinderClass)
    ['{9C061DE5-F055-4FB1-B9B7-7D6D2E6AF670}']
    {class} function init(bitMatrix: JBitMatrix; resultPointCallback: JResultPointCallback): JMultiFinderPatternFinder; cdecl;
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder')]
  JMultiFinderPatternFinder = interface(JFinderPatternFinder)
    ['{B28EA289-5C9C-47D2-A8D8-3436E7B0A4BE}']
    function findMulti(map: JMap): TJavaObjectArray<JFinderPatternInfo>; cdecl;
  end;
  TJMultiFinderPatternFinder = class(TJavaGenericImport<JMultiFinderPatternFinderClass, JMultiFinderPatternFinder>) end;

  JMultiFinderPatternFinder_1Class = interface(JObjectClass)
    ['{8C5EA592-9233-4FB5-A49F-FB5F35A6A08F}']
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1')]
  JMultiFinderPatternFinder_1 = interface(JObject)
    ['{06EB80B3-6BBD-46B6-AE1E-9344969C4A5F}']
  end;
  TJMultiFinderPatternFinder_1 = class(TJavaGenericImport<JMultiFinderPatternFinder_1Class, JMultiFinderPatternFinder_1>) end;

  JMultiFinderPatternFinder_ModuleSizeComparatorClass = interface(JSerializableClass)
    ['{DCFDB1C5-CA0C-4C5A-8148-CAD64755AE48}']
    {class} function compare(finderPattern: JFinderPattern; finderPattern1: JFinderPattern): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator')]
  JMultiFinderPatternFinder_ModuleSizeComparator = interface(JSerializable)
    ['{173BCA88-998B-4344-8D5A-C798F6AADB53}']
    function compare(object_: JObject; object_1: JObject): Integer; cdecl; overload;
  end;
  TJMultiFinderPatternFinder_ModuleSizeComparator = class(TJavaGenericImport<JMultiFinderPatternFinder_ModuleSizeComparatorClass, JMultiFinderPatternFinder_ModuleSizeComparator>) end;

  JOneDReaderClass = interface(Jzxing_ReaderClass)
    ['{0E987B3B-ABC5-407C-8162-8985263C63E6}']
    {class} function init: JOneDReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/oned/OneDReader')]
  JOneDReader = interface(Jzxing_Reader)
    ['{249A844D-099F-475D-A723-686BE309A4DD}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
  end;
  TJOneDReader = class(TJavaGenericImport<JOneDReaderClass, JOneDReader>) end;

  JCodaBarReaderClass = interface(JOneDReaderClass)
    ['{5EAA6222-A20E-4299-8824-876C1506442C}']
    {class} function init: JCodaBarReader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/oned/CodaBarReader')]
  JCodaBarReader = interface(JOneDReader)
    ['{5FCAFAA6-0B67-464B-8A20-2E358E8FCFA3}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
  end;
  TJCodaBarReader = class(TJavaGenericImport<JCodaBarReaderClass, JCodaBarReader>) end;

  JOneDimensionalCodeWriterClass = interface(Jzxing_WriterClass)
    ['{D0CAAC30-281B-48D2-BA14-BB4D8CF1776F}']
    {class} function init: JOneDimensionalCodeWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/oned/OneDimensionalCodeWriter')]
  JOneDimensionalCodeWriter = interface(Jzxing_Writer)
    ['{1C8ACF13-039B-4D07-AEE0-68C90B07E503}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
    function getDefaultMargin: Integer; cdecl;
  end;
  TJOneDimensionalCodeWriter = class(TJavaGenericImport<JOneDimensionalCodeWriterClass, JOneDimensionalCodeWriter>) end;

  JCodaBarWriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{261331AF-E5F9-4D98-9870-339EEF74273D}']
    {class} function init: JCodaBarWriter; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/CodaBarWriter')]
  JCodaBarWriter = interface(JOneDimensionalCodeWriter)
    ['{03614AA8-7758-48BC-9B1E-31C0AEA0F147}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJCodaBarWriter = class(TJavaGenericImport<JCodaBarWriterClass, JCodaBarWriter>) end;

  JCode128ReaderClass = interface(JOneDReaderClass)
    ['{9FAA0E04-369A-46DA-A599-F2DA101BCE4D}']
    {class} function init: JCode128Reader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/Code128Reader')]
  JCode128Reader = interface(JOneDReader)
    ['{B05BA09F-5367-4CD2-B9C6-CA9E14FE0480}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
  end;
  TJCode128Reader = class(TJavaGenericImport<JCode128ReaderClass, JCode128Reader>) end;

  JCode128WriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{ACC394EC-BBCD-4D9B-9685-97FD5D4C7F9B}']
    {class} function init: JCode128Writer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/Code128Writer')]
  JCode128Writer = interface(JOneDimensionalCodeWriter)
    ['{03E28A80-6E12-486A-8F5C-A1C9F45F5CA8}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJCode128Writer = class(TJavaGenericImport<JCode128WriterClass, JCode128Writer>) end;

  JCode128Writer_CTypeClass = interface(JEnumClass)
    ['{90EDC570-F916-4C62-9FE5-E9E0076D9181}']
    {class} function _GetFNC_1: JCode128Writer_CType; cdecl;
    {class} function _GetONE_DIGIT: JCode128Writer_CType; cdecl;
    {class} function _GetTWO_DIGITS: JCode128Writer_CType; cdecl;
    {class} function _GetUNCODABLE: JCode128Writer_CType; cdecl;
    {class} function valueOf(string_: JString): JCode128Writer_CType; cdecl;
    {class} function values: TJavaObjectArray<JCode128Writer_CType>; cdecl;//Deprecated
    {class} property FNC_1: JCode128Writer_CType read _GetFNC_1;
    {class} property ONE_DIGIT: JCode128Writer_CType read _GetONE_DIGIT;
    {class} property TWO_DIGITS: JCode128Writer_CType read _GetTWO_DIGITS;
    {class} property UNCODABLE: JCode128Writer_CType read _GetUNCODABLE;
  end;

  [JavaSignature('com/google/zxing/oned/Code128Writer$CType')]
  JCode128Writer_CType = interface(JEnum)
    ['{CD0F0D77-8273-4267-8CEE-6C5569A12006}']
  end;
  TJCode128Writer_CType = class(TJavaGenericImport<JCode128Writer_CTypeClass, JCode128Writer_CType>) end;

  JCode39ReaderClass = interface(JOneDReaderClass)
    ['{84255291-8491-4B9C-AAB7-22602203BD64}']
    {class} function _GetASTERISK_ENCODING: Integer; cdecl;
    {class} function init: JCode39Reader; cdecl; overload;//Deprecated
    {class} function init(b: Boolean): JCode39Reader; cdecl; overload;
    {class} function init(b: Boolean; b1: Boolean): JCode39Reader; cdecl; overload;
    {class} property ASTERISK_ENCODING: Integer read _GetASTERISK_ENCODING;
  end;

  [JavaSignature('com/google/zxing/oned/Code39Reader')]
  JCode39Reader = interface(JOneDReader)
    ['{96F8F3B6-6BAF-4C90-906F-BAA953469FB5}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
  end;
  TJCode39Reader = class(TJavaGenericImport<JCode39ReaderClass, JCode39Reader>) end;

  JCode39WriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{9A6CA895-23EE-4B99-B15C-BA4B72947BFE}']
    {class} function init: JCode39Writer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/Code39Writer')]
  JCode39Writer = interface(JOneDimensionalCodeWriter)
    ['{2F6B8B17-1F6C-4751-B0A7-6727157B3D3B}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJCode39Writer = class(TJavaGenericImport<JCode39WriterClass, JCode39Writer>) end;

  JCode93ReaderClass = interface(JOneDReaderClass)
    ['{C14F6383-E1DD-4F13-A43E-BCF525217F8E}']
    {class} function _GetASTERISK_ENCODING: Integer; cdecl;
    {class} function init: JCode93Reader; cdecl;//Deprecated
    {class} property ASTERISK_ENCODING: Integer read _GetASTERISK_ENCODING;
  end;

  [JavaSignature('com/google/zxing/oned/Code93Reader')]
  JCode93Reader = interface(JOneDReader)
    ['{A688D887-1A90-46C9-A75F-5A1F9161FA4A}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
  end;
  TJCode93Reader = class(TJavaGenericImport<JCode93ReaderClass, JCode93Reader>) end;

  JCode93WriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{89C64144-C4DC-4690-83C2-777B540583F3}']
    {class} function init: JCode93Writer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/Code93Writer')]
  JCode93Writer = interface(JOneDimensionalCodeWriter)
    ['{696FD965-C5F9-44AF-ACC5-0CC43E2D9B2D}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJCode93Writer = class(TJavaGenericImport<JCode93WriterClass, JCode93Writer>) end;

  JUPCEANReaderClass = interface(JOneDReaderClass)
    ['{9AB93944-F259-497B-81E4-74F7E657B77B}']
    {class} function _GetEND_PATTERN: TJavaArray<Integer>; cdecl;
    {class} function _GetL_AND_G_PATTERNS: TJavaBiArray<Integer>; cdecl;
    {class} function _GetL_PATTERNS: TJavaBiArray<Integer>; cdecl;
    {class} property END_PATTERN: TJavaArray<Integer> read _GetEND_PATTERN;
    {class} property L_AND_G_PATTERNS: TJavaBiArray<Integer> read _GetL_AND_G_PATTERNS;
    {class} property L_PATTERNS: TJavaBiArray<Integer> read _GetL_PATTERNS;
  end;

  [JavaSignature('com/google/zxing/oned/UPCEANReader')]
  JUPCEANReader = interface(JOneDReader)
    ['{8BD09CAF-7CB2-470E-9ACD-5DFCB03072A9}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeRow(i: Integer; bitArray: JBitArray; i1: TJavaArray<Integer>; map: JMap): Jzxing_Result; cdecl; overload;
  end;
  TJUPCEANReader = class(TJavaGenericImport<JUPCEANReaderClass, JUPCEANReader>) end;

  JEAN13ReaderClass = interface(JUPCEANReaderClass)
    ['{91BB7520-B71E-4AFF-BF9F-A8D4B25C2D2B}']
    {class} function init: JEAN13Reader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/EAN13Reader')]
  JEAN13Reader = interface(JUPCEANReader)
    ['{92ACBBEA-62EC-4F5B-9A6D-B94070EA1A6B}']
  end;
  TJEAN13Reader = class(TJavaGenericImport<JEAN13ReaderClass, JEAN13Reader>) end;

  JUPCEANWriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{46B89A60-07CD-4E60-AF44-A8616374419F}']
    {class} function init: JUPCEANWriter; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/UPCEANWriter')]
  JUPCEANWriter = interface(JOneDimensionalCodeWriter)
    ['{0E6B910B-83DD-4218-A184-B9977139AEA2}']
    function getDefaultMargin: Integer; cdecl;
  end;
  TJUPCEANWriter = class(TJavaGenericImport<JUPCEANWriterClass, JUPCEANWriter>) end;

  JEAN13WriterClass = interface(JUPCEANWriterClass)
    ['{345C35BD-DA94-43D3-BAF8-9E31BAD402BB}']
    {class} function init: JEAN13Writer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/EAN13Writer')]
  JEAN13Writer = interface(JUPCEANWriter)
    ['{3F0A87D5-5DCE-4ADD-9E3E-0057C6BC9B69}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJEAN13Writer = class(TJavaGenericImport<JEAN13WriterClass, JEAN13Writer>) end;

  JEAN8ReaderClass = interface(JUPCEANReaderClass)
    ['{05C63CEB-ACFB-4272-B508-EA264DDACAC1}']
    {class} function init: JEAN8Reader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/EAN8Reader')]
  JEAN8Reader = interface(JUPCEANReader)
    ['{DFC7A759-BE91-484E-952D-E4027E1DEA6B}']
  end;
  TJEAN8Reader = class(TJavaGenericImport<JEAN8ReaderClass, JEAN8Reader>) end;

  JEAN8WriterClass = interface(JUPCEANWriterClass)
    ['{5251558E-E539-4C50-ADF8-A84083FF2BFC}']
    {class} function init: JEAN8Writer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/EAN8Writer')]
  JEAN8Writer = interface(JUPCEANWriter)
    ['{6D465966-C86A-4490-971F-A16B00123A4D}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJEAN8Writer = class(TJavaGenericImport<JEAN8WriterClass, JEAN8Writer>) end;

  JEANManufacturerOrgSupportClass = interface(JObjectClass)
    ['{2AFC2EF9-32E8-4D5A-AF04-A723ABC63089}']
  end;

  [JavaSignature('com/google/zxing/oned/EANManufacturerOrgSupport')]
  JEANManufacturerOrgSupport = interface(JObject)
    ['{6100AC38-AE9B-4061-8047-DCBEFA759801}']
  end;
  TJEANManufacturerOrgSupport = class(TJavaGenericImport<JEANManufacturerOrgSupportClass, JEANManufacturerOrgSupport>) end;

  JITFReaderClass = interface(JOneDReaderClass)
    ['{6D858D02-6BF3-4C6C-B3D1-2F3B4ABF8C45}']
    {class} function init: JITFReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/ITFReader')]
  JITFReader = interface(JOneDReader)
    ['{BC3263E2-B229-44A6-9EDA-8C039C5E3473}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
  end;
  TJITFReader = class(TJavaGenericImport<JITFReaderClass, JITFReader>) end;

  JITFWriterClass = interface(JOneDimensionalCodeWriterClass)
    ['{8A5B48D3-B81D-4B04-9B82-765C0962CFE8}']
    {class} function init: JITFWriter; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/ITFWriter')]
  JITFWriter = interface(JOneDimensionalCodeWriter)
    ['{B4DAC308-02E8-46A1-914C-62FB3C351DD3}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJITFWriter = class(TJavaGenericImport<JITFWriterClass, JITFWriter>) end;

  JMultiFormatOneDReaderClass = interface(JOneDReaderClass)
    ['{C9636BB9-CE00-40EE-96B1-6151191A3C0E}']
    {class} function init(map: JMap): JMultiFormatOneDReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/MultiFormatOneDReader')]
  JMultiFormatOneDReader = interface(JOneDReader)
    ['{BBBEEA8A-9B74-4CCE-80FA-48F379D5B823}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
  end;
  TJMultiFormatOneDReader = class(TJavaGenericImport<JMultiFormatOneDReaderClass, JMultiFormatOneDReader>) end;

  JMultiFormatUPCEANReaderClass = interface(JOneDReaderClass)
    ['{069F9F01-A0E9-41D6-B5A4-D9FC2DB64E28}']
    {class} function init(map: JMap): JMultiFormatUPCEANReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/MultiFormatUPCEANReader')]
  JMultiFormatUPCEANReader = interface(JOneDReader)
    ['{237513DB-57F6-40F4-928F-FA81C1BA2D66}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
  end;
  TJMultiFormatUPCEANReader = class(TJavaGenericImport<JMultiFormatUPCEANReaderClass, JMultiFormatUPCEANReader>) end;

  JUPCAReaderClass = interface(JUPCEANReaderClass)
    ['{3D6C3C77-8F8D-424D-A479-9B10ED4961B0}']
    {class} function init: JUPCAReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/UPCAReader')]
  JUPCAReader = interface(JUPCEANReader)
    ['{D4B82AAD-655A-434E-A7CA-3D762562CA7A}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeRow(i: Integer; bitArray: JBitArray; i1: TJavaArray<Integer>; map: JMap): Jzxing_Result; cdecl; overload;
  end;
  TJUPCAReader = class(TJavaGenericImport<JUPCAReaderClass, JUPCAReader>) end;

  JUPCAWriterClass = interface(Jzxing_WriterClass)
    ['{72AB064A-01F5-415E-8C4B-5FB7C9887536}']
    {class} function init: JUPCAWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/oned/UPCAWriter')]
  JUPCAWriter = interface(Jzxing_Writer)
    ['{78E871AF-D492-4E57-8D58-EBAA0526FB16}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJUPCAWriter = class(TJavaGenericImport<JUPCAWriterClass, JUPCAWriter>) end;

  JUPCEANExtension2SupportClass = interface(JObjectClass)
    ['{0438A0AF-6CE0-4EB5-AE56-2B946B2A6AAB}']
  end;

  [JavaSignature('com/google/zxing/oned/UPCEANExtension2Support')]
  JUPCEANExtension2Support = interface(JObject)
    ['{D802E6A0-0E5B-4BCA-AE7A-F93D298C9AD8}']
  end;
  TJUPCEANExtension2Support = class(TJavaGenericImport<JUPCEANExtension2SupportClass, JUPCEANExtension2Support>) end;

  JUPCEANExtension5SupportClass = interface(JObjectClass)
    ['{AEA73F23-FE14-4802-8316-49DFC77DC738}']
  end;

  [JavaSignature('com/google/zxing/oned/UPCEANExtension5Support')]
  JUPCEANExtension5Support = interface(JObject)
    ['{4393BAF4-BFA7-440C-A737-9161993FC732}']
  end;
  TJUPCEANExtension5Support = class(TJavaGenericImport<JUPCEANExtension5SupportClass, JUPCEANExtension5Support>) end;

  JUPCEANExtensionSupportClass = interface(JObjectClass)
    ['{E0A35147-7659-411D-9485-AE8264BA2947}']
  end;

  [JavaSignature('com/google/zxing/oned/UPCEANExtensionSupport')]
  JUPCEANExtensionSupport = interface(JObject)
    ['{4A5E9A26-3BAC-460B-BB3C-8EBA90EAA62F}']
  end;
  TJUPCEANExtensionSupport = class(TJavaGenericImport<JUPCEANExtensionSupportClass, JUPCEANExtensionSupport>) end;

  JUPCEReaderClass = interface(JUPCEANReaderClass)
    ['{473366C1-ADA2-4F16-A342-4F2D156C5137}']
    {class} function convertUPCEtoUPCA(string_: JString): JString; cdecl;
    {class} function init: JUPCEReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/UPCEReader')]
  JUPCEReader = interface(JUPCEANReader)
    ['{2D8B61F6-A213-47C7-92F6-B1DD60DF8DDD}']
  end;
  TJUPCEReader = class(TJavaGenericImport<JUPCEReaderClass, JUPCEReader>) end;

  JUPCEWriterClass = interface(JUPCEANWriterClass)
    ['{615858D0-F465-4491-8A57-D9777909E551}']
    {class} function init: JUPCEWriter; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/UPCEWriter')]
  JUPCEWriter = interface(JUPCEANWriter)
    ['{713A8523-B12F-4730-9CD0-2F903BDA4173}']
    function encode(string_: JString): TJavaArray<Boolean>; cdecl;
  end;
  TJUPCEWriter = class(TJavaGenericImport<JUPCEWriterClass, JUPCEWriter>) end;

  JAbstractRSSReaderClass = interface(JOneDReaderClass)
    ['{76F389E9-6825-4820-983A-CC08D23C628E}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/AbstractRSSReader')]
  JAbstractRSSReader = interface(JOneDReader)
    ['{B11C42D1-973F-4CAB-B31A-9ED777A138C1}']
  end;
  TJAbstractRSSReader = class(TJavaGenericImport<JAbstractRSSReaderClass, JAbstractRSSReader>) end;

  JDataCharacterClass = interface(JObjectClass)
    ['{C47BAD2B-BC73-4F85-A8C7-5F1023729257}']
    {class} function init(i: Integer; i1: Integer): JDataCharacter; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/DataCharacter')]
  JDataCharacter = interface(JObject)
    ['{7E330C4D-A9E9-43BF-94BD-94DA844EAE1A}']
    function equals(object_: JObject): Boolean; cdecl;
    function getChecksumPortion: Integer; cdecl;
    function getValue: Integer; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJDataCharacter = class(TJavaGenericImport<JDataCharacterClass, JDataCharacter>) end;

  Jrss_FinderPatternClass = interface(JObjectClass)
    ['{0066A5CA-ED5A-45FD-BBFA-15C61591CD6F}']
    {class} function init(i: Integer; i1: TJavaArray<Integer>; i2: Integer; i3: Integer; i4: Integer): Jrss_FinderPattern; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/FinderPattern')]
  Jrss_FinderPattern = interface(JObject)
    ['{50D90AF1-E2B8-4C18-93C5-D557A22B9073}']
    function equals(object_: JObject): Boolean; cdecl;
    function getResultPoints: TJavaObjectArray<JResultPoint>; cdecl;
    function getStartEnd: TJavaArray<Integer>; cdecl;
    function getValue: Integer; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJrss_FinderPattern = class(TJavaGenericImport<Jrss_FinderPatternClass, Jrss_FinderPattern>) end;

  Jrss_PairClass = interface(JDataCharacterClass)
    ['{928E6621-7808-4AAA-9B58-5F5B2D12E545}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/Pair')]
  Jrss_Pair = interface(JDataCharacter)
    ['{D90A3BA8-7315-4A6E-9F88-33E7F04BFE4C}']
  end;
  TJrss_Pair = class(TJavaGenericImport<Jrss_PairClass, Jrss_Pair>) end;

  JRSS14ReaderClass = interface(JAbstractRSSReaderClass)
    ['{A26982E9-422A-453D-89E1-25DE869576D5}']
    {class} function init: JRSS14Reader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/RSS14Reader')]
  JRSS14Reader = interface(JAbstractRSSReader)
    ['{A0F9357E-96F3-4BE2-AE94-8AB48CD1762C}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
  end;
  TJRSS14Reader = class(TJavaGenericImport<JRSS14ReaderClass, JRSS14Reader>) end;

  JRSSUtilsClass = interface(JObjectClass)
    ['{B8E51BDA-2FDB-4B01-9DFE-BB8385BF276A}']
    {class} function getRSSvalue(i: TJavaArray<Integer>; i1: Integer; b: Boolean): Integer; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/RSSUtils')]
  JRSSUtils = interface(JObject)
    ['{47B7FA3A-1C68-4231-955F-31A761D77669}']
  end;
  TJRSSUtils = class(TJavaGenericImport<JRSSUtilsClass, JRSSUtils>) end;

  JBitArrayBuilderClass = interface(JObjectClass)
    ['{29008884-836A-495F-967B-092E49B0708A}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/BitArrayBuilder')]
  JBitArrayBuilder = interface(JObject)
    ['{75C3361F-DE53-4A68-8940-234DB9A8FC76}']
  end;
  TJBitArrayBuilder = class(TJavaGenericImport<JBitArrayBuilderClass, JBitArrayBuilder>) end;

  JExpandedPairClass = interface(JObjectClass)
    ['{4BCFFC8A-4C07-457A-BA69-477261D7DA26}']
    {class} function init(dataCharacter: JDataCharacter; dataCharacter1: JDataCharacter; finderPattern: Jrss_FinderPattern): JExpandedPair; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/ExpandedPair')]
  JExpandedPair = interface(JObject)
    ['{6674F4CA-A454-4053-B3E3-9E61887F1ADC}']
    function equals(object_: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJExpandedPair = class(TJavaGenericImport<JExpandedPairClass, JExpandedPair>) end;

  JExpandedRowClass = interface(JObjectClass)
    ['{D4322483-BF3A-4543-A9D8-5452116A7477}']
    {class} function init(list: JList; i: Integer; b: Boolean): JExpandedRow; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/ExpandedRow')]
  JExpandedRow = interface(JObject)
    ['{2A005A9C-6F8D-4031-BB47-E9FB8ADFBF84}']
    function equals(object_: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJExpandedRow = class(TJavaGenericImport<JExpandedRowClass, JExpandedRow>) end;

  JRSSExpandedReaderClass = interface(JAbstractRSSReaderClass)
    ['{550E1125-429E-403E-8D2F-54A29245C531}']
    {class} function init: JRSSExpandedReader; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/RSSExpandedReader')]
  JRSSExpandedReader = interface(JAbstractRSSReader)
    ['{EDD51FD0-4AA2-4001-948F-A84F70A733FA}']
    function decodeRow(i: Integer; bitArray: JBitArray; map: JMap): Jzxing_Result; cdecl;
    procedure reset; cdecl;
  end;
  TJRSSExpandedReader = class(TJavaGenericImport<JRSSExpandedReaderClass, JRSSExpandedReader>) end;

  JAbstractExpandedDecoderClass = interface(JObjectClass)
    ['{3E0C7639-8D2E-4418-AD5F-89956E8B4FE3}']
    {class} function createDecoder(bitArray: JBitArray): JAbstractExpandedDecoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder')]
  JAbstractExpandedDecoder = interface(JObject)
    ['{3E76EDE1-B91C-4019-B9AF-27B8BED22CEE}']
    function parseInformation: JString; cdecl;
  end;
  TJAbstractExpandedDecoder = class(TJavaGenericImport<JAbstractExpandedDecoderClass, JAbstractExpandedDecoder>) end;

  JAI01decoderClass = interface(JAbstractExpandedDecoderClass)
    ['{0756A007-7A4C-4226-BD6E-EF4ED751D180}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01decoder')]
  JAI01decoder = interface(JAbstractExpandedDecoder)
    ['{837E4C11-924B-4BAB-82FE-6D1B6055F985}']
  end;
  TJAI01decoder = class(TJavaGenericImport<JAI01decoderClass, JAI01decoder>) end;

  JAI01weightDecoderClass = interface(JAI01decoderClass)
    ['{D6186F19-164E-4462-B833-D5A7DF5D3244}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder')]
  JAI01weightDecoder = interface(JAI01decoder)
    ['{2444A316-F43A-42B6-9605-A6B165CA3C7E}']
  end;
  TJAI01weightDecoder = class(TJavaGenericImport<JAI01weightDecoderClass, JAI01weightDecoder>) end;

  JAI013x0xDecoderClass = interface(JAI01weightDecoderClass)
    ['{4DBD4167-7E1B-4741-B864-E5C93A321426}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder')]
  JAI013x0xDecoder = interface(JAI01weightDecoder)
    ['{0D129710-9556-4145-8B91-B5E205E765A8}']
    function parseInformation: JString; cdecl;
  end;
  TJAI013x0xDecoder = class(TJavaGenericImport<JAI013x0xDecoderClass, JAI013x0xDecoder>) end;

  JAI013103decoderClass = interface(JAI013x0xDecoderClass)
    ['{19122736-3F4B-4CAB-B430-A33F38E8163D}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI013103decoder')]
  JAI013103decoder = interface(JAI013x0xDecoder)
    ['{AB2B56CC-D082-4781-91E8-5E0BFBEB66DF}']
  end;
  TJAI013103decoder = class(TJavaGenericImport<JAI013103decoderClass, JAI013103decoder>) end;

  JAI01320xDecoderClass = interface(JAI013x0xDecoderClass)
    ['{0AB67195-DE6F-44DB-8187-3B9C3E8DDE22}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder')]
  JAI01320xDecoder = interface(JAI013x0xDecoder)
    ['{428A8A26-A9A5-4788-8471-85697676A90F}']
  end;
  TJAI01320xDecoder = class(TJavaGenericImport<JAI01320xDecoderClass, JAI01320xDecoder>) end;

  JAI01392xDecoderClass = interface(JAI01decoderClass)
    ['{E98760A6-CFED-45CD-BAFA-E294A5857899}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder')]
  JAI01392xDecoder = interface(JAI01decoder)
    ['{F866677E-92F2-4CFB-A09C-DCF52153D477}']
    function parseInformation: JString; cdecl;
  end;
  TJAI01392xDecoder = class(TJavaGenericImport<JAI01392xDecoderClass, JAI01392xDecoder>) end;

  JAI01393xDecoderClass = interface(JAI01decoderClass)
    ['{7100985F-EBF2-4D04-B7EF-A9C4654B0AAC}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder')]
  JAI01393xDecoder = interface(JAI01decoder)
    ['{D19C0706-0346-425B-90AB-24652158BBBD}']
    function parseInformation: JString; cdecl;
  end;
  TJAI01393xDecoder = class(TJavaGenericImport<JAI01393xDecoderClass, JAI01393xDecoder>) end;

  JAI013x0x1xDecoderClass = interface(JAI01weightDecoderClass)
    ['{BD685FA9-E341-4758-9A6E-36FF8136EFE3}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder')]
  JAI013x0x1xDecoder = interface(JAI01weightDecoder)
    ['{339D1381-1D0B-492F-9741-BA6FFA8C6730}']
    function parseInformation: JString; cdecl;
  end;
  TJAI013x0x1xDecoder = class(TJavaGenericImport<JAI013x0x1xDecoderClass, JAI013x0x1xDecoder>) end;

  JAI01AndOtherAIsClass = interface(JAI01decoderClass)
    ['{288DC71A-C813-4B14-A4D8-C2E76D1D98BE}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs')]
  JAI01AndOtherAIs = interface(JAI01decoder)
    ['{68691926-542E-419B-89B1-7DB9BE412E5E}']
    function parseInformation: JString; cdecl;
  end;
  TJAI01AndOtherAIs = class(TJavaGenericImport<JAI01AndOtherAIsClass, JAI01AndOtherAIs>) end;

  JAnyAIDecoderClass = interface(JAbstractExpandedDecoderClass)
    ['{744DF019-423F-470F-956C-538A1AA232E5}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder')]
  JAnyAIDecoder = interface(JAbstractExpandedDecoder)
    ['{B7FB6191-4937-46B1-B253-451EB8935F32}']
    function parseInformation: JString; cdecl;
  end;
  TJAnyAIDecoder = class(TJavaGenericImport<JAnyAIDecoderClass, JAnyAIDecoder>) end;

  JBlockParsedResultClass = interface(JObjectClass)
    ['{98CABFB5-3304-4A5B-8933-0AFF916A17B9}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/BlockParsedResult')]
  JBlockParsedResult = interface(JObject)
    ['{FFF2559D-E5E5-4011-A779-0F5C75D79853}']
  end;
  TJBlockParsedResult = class(TJavaGenericImport<JBlockParsedResultClass, JBlockParsedResult>) end;

  JCurrentParsingStateClass = interface(JObjectClass)
    ['{C9E2102F-607A-4BBA-B7DF-6C98FCE58A4C}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/CurrentParsingState')]
  JCurrentParsingState = interface(JObject)
    ['{00D7FC9F-5199-4E97-B9AA-8923FDDFB686}']
  end;
  TJCurrentParsingState = class(TJavaGenericImport<JCurrentParsingStateClass, JCurrentParsingState>) end;

  JCurrentParsingState_StateClass = interface(JEnumClass)
    ['{2F55CF84-651A-4EFD-953E-C779121343C4}']
    {class} function _GetALPHA: JCurrentParsingState_State; cdecl;
    {class} function _GetISO_IEC_646: JCurrentParsingState_State; cdecl;
    {class} function _GetNUMERIC: JCurrentParsingState_State; cdecl;
    {class} function valueOf(string_: JString): JCurrentParsingState_State; cdecl;
    {class} function values: TJavaObjectArray<JCurrentParsingState_State>; cdecl;//Deprecated
    {class} property ALPHA: JCurrentParsingState_State read _GetALPHA;
    {class} property ISO_IEC_646: JCurrentParsingState_State read _GetISO_IEC_646;
    {class} property NUMERIC: JCurrentParsingState_State read _GetNUMERIC;
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State')]
  JCurrentParsingState_State = interface(JEnum)
    ['{5C38366B-7CB7-4041-A207-1C763CA15C60}']
  end;
  TJCurrentParsingState_State = class(TJavaGenericImport<JCurrentParsingState_StateClass, JCurrentParsingState_State>) end;

  JDecodedObjectClass = interface(JObjectClass)
    ['{3DDB2D49-2853-4EB8-94C2-BDA9FFC8B615}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/DecodedObject')]
  JDecodedObject = interface(JObject)
    ['{3BE2D40C-A7D6-4538-B84D-12C114350E65}']
  end;
  TJDecodedObject = class(TJavaGenericImport<JDecodedObjectClass, JDecodedObject>) end;

  JDecodedCharClass = interface(JDecodedObjectClass)
    ['{3678AE33-5246-42BC-B238-4DA76BAE65F1}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/DecodedChar')]
  JDecodedChar = interface(JDecodedObject)
    ['{C8B779DF-C4A2-42A6-A1C4-49234BB90675}']
  end;
  TJDecodedChar = class(TJavaGenericImport<JDecodedCharClass, JDecodedChar>) end;

  JDecodedInformationClass = interface(JDecodedObjectClass)
    ['{E1629116-C417-4220-BD6F-7F674EA149AD}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/DecodedInformation')]
  JDecodedInformation = interface(JDecodedObject)
    ['{619CE2D9-FAAD-40CF-8B06-D7E0B45FB863}']
  end;
  TJDecodedInformation = class(TJavaGenericImport<JDecodedInformationClass, JDecodedInformation>) end;

  JDecodedNumericClass = interface(JDecodedObjectClass)
    ['{0A405381-79C5-4A7A-8D1C-B281BD556DF9}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/DecodedNumeric')]
  JDecodedNumeric = interface(JDecodedObject)
    ['{ED9B7A23-183E-4620-AA4E-6BB09A194DEF}']
  end;
  TJDecodedNumeric = class(TJavaGenericImport<JDecodedNumericClass, JDecodedNumeric>) end;

  JFieldParserClass = interface(JObjectClass)
    ['{C6CA1155-D022-4616-B450-38E113F8BA23}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/FieldParser')]
  JFieldParser = interface(JObject)
    ['{0B44A5DB-DC28-459D-9940-9DECD1BE11EB}']
  end;
  TJFieldParser = class(TJavaGenericImport<JFieldParserClass, JFieldParser>) end;

  JGeneralAppIdDecoderClass = interface(JObjectClass)
    ['{62924FEB-F15F-48DE-B17D-02561817ADB8}']
  end;

  [JavaSignature('com/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder')]
  JGeneralAppIdDecoder = interface(JObject)
    ['{4F78CB8B-50CB-443B-A2B8-1B8F4B724E1A}']
  end;
  TJGeneralAppIdDecoder = class(TJavaGenericImport<JGeneralAppIdDecoderClass, JGeneralAppIdDecoder>) end;

  JPDF417CommonClass = interface(JObjectClass)
    ['{2C7A27AF-CE98-4025-89C2-1C2E88ADB0EE}']
    {class} function _GetBARS_IN_MODULE: Integer; cdecl;
    {class} function _GetMAX_CODEWORDS_IN_BARCODE: Integer; cdecl;
    {class} function _GetMAX_ROWS_IN_BARCODE: Integer; cdecl;
    {class} function _GetMIN_ROWS_IN_BARCODE: Integer; cdecl;
    {class} function _GetMODULES_IN_CODEWORD: Integer; cdecl;
    {class} function _GetMODULES_IN_STOP_PATTERN: Integer; cdecl;
    {class} function _GetNUMBER_OF_CODEWORDS: Integer; cdecl;
    {class} function _GetSYMBOL_TABLE: TJavaArray<Integer>; cdecl;
    {class} function getBitCountSum(i: TJavaArray<Integer>): Integer; cdecl;//Deprecated
    {class} function getCodeword(i: Integer): Integer; cdecl;
    {class} function toIntArray(collection: JCollection): TJavaArray<Integer>; cdecl;
    {class} property BARS_IN_MODULE: Integer read _GetBARS_IN_MODULE;
    {class} property MAX_CODEWORDS_IN_BARCODE: Integer read _GetMAX_CODEWORDS_IN_BARCODE;
    {class} property MAX_ROWS_IN_BARCODE: Integer read _GetMAX_ROWS_IN_BARCODE;
    {class} property MIN_ROWS_IN_BARCODE: Integer read _GetMIN_ROWS_IN_BARCODE;
    {class} property MODULES_IN_CODEWORD: Integer read _GetMODULES_IN_CODEWORD;
    {class} property MODULES_IN_STOP_PATTERN: Integer read _GetMODULES_IN_STOP_PATTERN;
    {class} property NUMBER_OF_CODEWORDS: Integer read _GetNUMBER_OF_CODEWORDS;
    {class} property SYMBOL_TABLE: TJavaArray<Integer> read _GetSYMBOL_TABLE;
  end;

  [JavaSignature('com/google/zxing/pdf417/PDF417Common')]
  JPDF417Common = interface(JObject)
    ['{F91BBB2C-AD22-4FB7-B1A0-EBC1A1245D72}']
  end;
  TJPDF417Common = class(TJavaGenericImport<JPDF417CommonClass, JPDF417Common>) end;

  JPDF417ReaderClass = interface(Jzxing_ReaderClass)
    ['{FB81BAAC-6CBB-4A4F-818E-335E7709A160}']
    {class} function init: JPDF417Reader; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/pdf417/PDF417Reader')]
  JPDF417Reader = interface(Jzxing_Reader)
    ['{54E125B8-79CB-4068-A26C-9E47DEFE07C9}']
    function decode(binaryBitmap: JBinaryBitmap): Jzxing_Result; cdecl; overload;
    function decode(binaryBitmap: JBinaryBitmap; map: JMap): Jzxing_Result; cdecl; overload;
    function decodeMultiple(binaryBitmap: JBinaryBitmap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
    function decodeMultiple(binaryBitmap: JBinaryBitmap; map: JMap): TJavaObjectArray<Jzxing_Result>; cdecl; overload;
    procedure reset; cdecl;
  end;
  TJPDF417Reader = class(TJavaGenericImport<JPDF417ReaderClass, JPDF417Reader>) end;

  JPDF417ResultMetadataClass = interface(JObjectClass)
    ['{30E93B34-8D5B-40A6-8B11-CC1D3C537A9B}']
    {class} function init: JPDF417ResultMetadata; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/PDF417ResultMetadata')]
  JPDF417ResultMetadata = interface(JObject)
    ['{95292FCE-3975-475B-BB94-E1A701DBFCFD}']
    function getAddressee: JString; cdecl;
    function getChecksum: Integer; cdecl;
    function getFileId: JString; cdecl;
    function getFileName: JString; cdecl;
    function getFileSize: Int64; cdecl;
    function getOptionalData: TJavaArray<Integer>; cdecl;
    function getSegmentCount: Integer; cdecl;
    function getSegmentIndex: Integer; cdecl;
    function getSender: JString; cdecl;
    function getTimestamp: Int64; cdecl;
    function isLastSegment: Boolean; cdecl;
    procedure setAddressee(string_: JString); cdecl;
    procedure setChecksum(i: Integer); cdecl;
    procedure setFileId(string_: JString); cdecl;
    procedure setFileName(string_: JString); cdecl;
    procedure setFileSize(l: Int64); cdecl;
    procedure setLastSegment(b: Boolean); cdecl;
    procedure setOptionalData(i: TJavaArray<Integer>); cdecl;
    procedure setSegmentCount(i: Integer); cdecl;
    procedure setSegmentIndex(i: Integer); cdecl;
    procedure setSender(string_: JString); cdecl;
    procedure setTimestamp(l: Int64); cdecl;
  end;
  TJPDF417ResultMetadata = class(TJavaGenericImport<JPDF417ResultMetadataClass, JPDF417ResultMetadata>) end;

  JPDF417WriterClass = interface(Jzxing_WriterClass)
    ['{B3848F7D-6633-492E-A646-0DFFDB26950D}']
    {class} function init: JPDF417Writer; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/pdf417/PDF417Writer')]
  JPDF417Writer = interface(Jzxing_Writer)
    ['{F04F0ECA-2D59-4EEC-AB26-C88757108CAE}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJPDF417Writer = class(TJavaGenericImport<JPDF417WriterClass, JPDF417Writer>) end;

  JBarcodeMetadataClass = interface(JObjectClass)
    ['{2F40EA41-96D2-4D37-9ADA-49DE47E75BD3}']
    {class} function init(i: Integer; i1: Integer; i2: Integer; i3: Integer): JBarcodeMetadata; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/BarcodeMetadata')]
  JBarcodeMetadata = interface(JObject)
    ['{B87D2A13-1177-4F37-9EEB-EC55CF7E7D7F}']
  end;
  TJBarcodeMetadata = class(TJavaGenericImport<JBarcodeMetadataClass, JBarcodeMetadata>) end;

  JBarcodeValueClass = interface(JObjectClass)
    ['{C622875B-18C6-4D22-8C13-2889BB9980BE}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/BarcodeValue')]
  JBarcodeValue = interface(JObject)
    ['{3D054F2B-BFE0-478C-901E-45ECBB0477A2}']
  end;
  TJBarcodeValue = class(TJavaGenericImport<JBarcodeValueClass, JBarcodeValue>) end;

  JBoundingBoxClass = interface(JObjectClass)
    ['{1CCB1EA1-1B30-48AB-A36F-00CDF1277C7C}']
    {class} function init(bitMatrix: JBitMatrix; resultPoint: JResultPoint; resultPoint1: JResultPoint; resultPoint2: JResultPoint; resultPoint3: JResultPoint): JBoundingBox; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/BoundingBox')]
  JBoundingBox = interface(JObject)
    ['{F01772E8-BE2F-44E0-98CE-8569B4FA4253}']
  end;
  TJBoundingBox = class(TJavaGenericImport<JBoundingBoxClass, JBoundingBox>) end;

  JCodewordClass = interface(JObjectClass)
    ['{F726FC81-3007-43E7-A109-2424DA859765}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/Codeword')]
  JCodeword = interface(JObject)
    ['{561A6A34-A0E0-4171-A8F6-29B0EBAA6F46}']
    function toString: JString; cdecl;
  end;
  TJCodeword = class(TJavaGenericImport<JCodewordClass, JCodeword>) end;

  JDecodedBitStreamParserClass = interface(JObjectClass)
    ['{5A9EC0C8-1CCE-47F3-B867-55B72C2B081C}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DecodedBitStreamParser')]
  JDecodedBitStreamParser = interface(JObject)
    ['{98407BE0-1D38-455B-8AD3-25BD2E3D83D7}']
  end;
  TJDecodedBitStreamParser = class(TJavaGenericImport<JDecodedBitStreamParserClass, JDecodedBitStreamParser>) end;

  JDecodedBitStreamParser_1Class = interface(JObjectClass)
    ['{B187823E-318F-41D5-A80B-5656DD3898F9}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DecodedBitStreamParser$1')]
  JDecodedBitStreamParser_1 = interface(JObject)
    ['{7127490F-AD11-479E-BE02-1F6E240BE6EE}']
  end;
  TJDecodedBitStreamParser_1 = class(TJavaGenericImport<JDecodedBitStreamParser_1Class, JDecodedBitStreamParser_1>) end;

  JDecodedBitStreamParser_ModeClass = interface(JEnumClass)
    ['{D6A0F935-C8EA-4D05-93B2-F5765D4C4F68}']
    {class} function _GetALPHA: JDecodedBitStreamParser_Mode; cdecl;
    {class} function _GetALPHA_SHIFT: JDecodedBitStreamParser_Mode; cdecl;
    {class} function _GetLOWER: JDecodedBitStreamParser_Mode; cdecl;
    {class} function _GetMIXED: JDecodedBitStreamParser_Mode; cdecl;
    {class} function _GetPUNCT: JDecodedBitStreamParser_Mode; cdecl;
    {class} function _GetPUNCT_SHIFT: JDecodedBitStreamParser_Mode; cdecl;
    {class} function valueOf(string_: JString): JDecodedBitStreamParser_Mode; cdecl;
    {class} function values: TJavaObjectArray<JDecodedBitStreamParser_Mode>; cdecl;//Deprecated
    {class} property ALPHA: JDecodedBitStreamParser_Mode read _GetALPHA;
    {class} property ALPHA_SHIFT: JDecodedBitStreamParser_Mode read _GetALPHA_SHIFT;
    {class} property LOWER: JDecodedBitStreamParser_Mode read _GetLOWER;
    {class} property MIXED: JDecodedBitStreamParser_Mode read _GetMIXED;
    {class} property PUNCT: JDecodedBitStreamParser_Mode read _GetPUNCT;
    {class} property PUNCT_SHIFT: JDecodedBitStreamParser_Mode read _GetPUNCT_SHIFT;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode')]
  JDecodedBitStreamParser_Mode = interface(JEnum)
    ['{B14F407C-0255-4C4F-8746-0BF27B74004B}']
  end;
  TJDecodedBitStreamParser_Mode = class(TJavaGenericImport<JDecodedBitStreamParser_ModeClass, JDecodedBitStreamParser_Mode>) end;

  JDetectionResultClass = interface(JObjectClass)
    ['{E68EF6FA-15B6-457D-9832-4D083C977F20}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DetectionResult')]
  JDetectionResult = interface(JObject)
    ['{AF55CCBF-5B24-4EEF-B6D8-CAC75436FF72}']
    function toString: JString; cdecl;
  end;
  TJDetectionResult = class(TJavaGenericImport<JDetectionResultClass, JDetectionResult>) end;

  JDetectionResultColumnClass = interface(JObjectClass)
    ['{EBFF8F12-7DB4-4340-B9B4-2C3D81C5000C}']
    {class} function init(boundingBox: JBoundingBox): JDetectionResultColumn; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DetectionResultColumn')]
  JDetectionResultColumn = interface(JObject)
    ['{8F3BEA67-8914-4E55-98DC-69919442A6B6}']
    function toString: JString; cdecl;
  end;
  TJDetectionResultColumn = class(TJavaGenericImport<JDetectionResultColumnClass, JDetectionResultColumn>) end;

  JDetectionResultRowIndicatorColumnClass = interface(JDetectionResultColumnClass)
    ['{C16EB7E1-AEC0-4C45-87B4-9C05D2457C97}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn')]
  JDetectionResultRowIndicatorColumn = interface(JDetectionResultColumn)
    ['{53A559EE-80DE-4FE2-8800-F36D3A40114B}']
    function toString: JString; cdecl;
  end;
  TJDetectionResultRowIndicatorColumn = class(TJavaGenericImport<JDetectionResultRowIndicatorColumnClass, JDetectionResultRowIndicatorColumn>) end;

  JPDF417CodewordDecoderClass = interface(JObjectClass)
    ['{2FE65E05-8376-4F13-8CA9-8CE61F205FB2}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/PDF417CodewordDecoder')]
  JPDF417CodewordDecoder = interface(JObject)
    ['{59066912-B371-42C5-84E6-6100E6634BBD}']
  end;
  TJPDF417CodewordDecoder = class(TJavaGenericImport<JPDF417CodewordDecoderClass, JPDF417CodewordDecoder>) end;

  JPDF417ScanningDecoderClass = interface(JObjectClass)
    ['{39DCBD2C-E8E0-4F11-AE39-BD0D12970D87}']
    {class} function decode(bitMatrix: JBitMatrix; resultPoint: JResultPoint; resultPoint1: JResultPoint; resultPoint2: JResultPoint; resultPoint3: JResultPoint; i: Integer; i1: Integer): JDecoderResult; cdecl;
    {class} function toString(barcodeValue: TJavaObjectBiArray<JBarcodeValue>): JString; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/PDF417ScanningDecoder')]
  JPDF417ScanningDecoder = interface(JObject)
    ['{71581840-5CCB-4DC6-8436-FF4C6C7A7D5E}']
  end;
  TJPDF417ScanningDecoder = class(TJavaGenericImport<JPDF417ScanningDecoderClass, JPDF417ScanningDecoder>) end;

  JErrorCorrectionClass = interface(JObjectClass)
    ['{C4E6E645-FE31-485C-A035-B4E5012405F8}']
    {class} function init: JErrorCorrection; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/ec/ErrorCorrection')]
  JErrorCorrection = interface(JObject)
    ['{C7933F1E-A27F-4C1A-BAC6-629035987753}']
    function decode(i: TJavaArray<Integer>; i1: Integer; i2: TJavaArray<Integer>): Integer; cdecl;
  end;
  TJErrorCorrection = class(TJavaGenericImport<JErrorCorrectionClass, JErrorCorrection>) end;

  JModulusGFClass = interface(JObjectClass)
    ['{914F50CF-9366-4B86-B4BB-26AD1F0CAF5F}']
    {class} function _GetPDF417_GF: JModulusGF; cdecl;
    {class} property PDF417_GF: JModulusGF read _GetPDF417_GF;
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/ec/ModulusGF')]
  JModulusGF = interface(JObject)
    ['{2406206C-81D5-4C83-97BB-9A9593A82921}']
  end;
  TJModulusGF = class(TJavaGenericImport<JModulusGFClass, JModulusGF>) end;

  JModulusPolyClass = interface(JObjectClass)
    ['{E5D3E3FA-DCDC-40DE-8F2E-705454B33397}']
  end;

  [JavaSignature('com/google/zxing/pdf417/decoder/ec/ModulusPoly')]
  JModulusPoly = interface(JObject)
    ['{347297B5-2AD0-49AB-8001-09781867F9AD}']
    function toString: JString; cdecl;
  end;
  TJModulusPoly = class(TJavaGenericImport<JModulusPolyClass, JModulusPoly>) end;

  JDetectorClass = interface(JObjectClass)
    ['{6DA6BA3E-4F27-496B-836A-3D11F2EC74F1}']
    {class} function detect(binaryBitmap: JBinaryBitmap; map: JMap; b: Boolean): JPDF417DetectorResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/detector/Detector')]
  JDetector = interface(JObject)
    ['{78A8D50D-F8BC-4927-9A17-216D306040CE}']
  end;
  TJDetector = class(TJavaGenericImport<JDetectorClass, JDetector>) end;

  JPDF417DetectorResultClass = interface(JObjectClass)
    ['{4EB5345D-618E-49F7-AAFB-1EB851C59A1A}']
    {class} function init(bitMatrix: JBitMatrix; list: JList): JPDF417DetectorResult; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/detector/PDF417DetectorResult')]
  JPDF417DetectorResult = interface(JObject)
    ['{C18AADBC-8B33-4677-9D5A-370F6D2CD23E}']
    function getBits: JBitMatrix; cdecl;
    function getPoints: JList; cdecl;
  end;
  TJPDF417DetectorResult = class(TJavaGenericImport<JPDF417DetectorResultClass, JPDF417DetectorResult>) end;

  JBarcodeMatrixClass = interface(JObjectClass)
    ['{6A5BB4D2-3BB2-4906-953B-1DC6AE172606}']
    {class} function init(i: Integer; i1: Integer): JBarcodeMatrix; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/BarcodeMatrix')]
  JBarcodeMatrix = interface(JObject)
    ['{B9A5BB54-137D-46C3-98F1-F33C018CD5A7}']
    function getMatrix: TJavaBiArray<Byte>; cdecl;
    function getScaledMatrix(i: Integer; i1: Integer): TJavaBiArray<Byte>; cdecl;
  end;
  TJBarcodeMatrix = class(TJavaGenericImport<JBarcodeMatrixClass, JBarcodeMatrix>) end;

  JBarcodeRowClass = interface(JObjectClass)
    ['{04428FB2-80DA-4E99-B585-FB48A906A1F3}']
    {class} function init(i: Integer): JBarcodeRow; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/BarcodeRow')]
  JBarcodeRow = interface(JObject)
    ['{8C9F1E29-4A00-479C-8E66-E34DBDFD251A}']
  end;
  TJBarcodeRow = class(TJavaGenericImport<JBarcodeRowClass, JBarcodeRow>) end;

  JCompactionClass = interface(JEnumClass)
    ['{939F2811-4131-4944-95F8-867E9B0D3D58}']
    {class} function _GetAUTO: JCompaction; cdecl;
    {class} function _GetBYTE: JCompaction; cdecl;
    {class} function _GetNUMERIC: JCompaction; cdecl;
    {class} function _GetTEXT: JCompaction; cdecl;
    {class} function valueOf(string_: JString): JCompaction; cdecl;
    {class} function values: TJavaObjectArray<JCompaction>; cdecl;//Deprecated
    {class} property AUTO: JCompaction read _GetAUTO;
    {class} property BYTE: JCompaction read _GetBYTE;
    {class} property NUMERIC: JCompaction read _GetNUMERIC;
    {class} property TEXT: JCompaction read _GetTEXT;
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/Compaction')]
  JCompaction = interface(JEnum)
    ['{C7CE9BE9-0450-46B1-86C0-AF7921B49C42}']
  end;
  TJCompaction = class(TJavaGenericImport<JCompactionClass, JCompaction>) end;

  JDimensionsClass = interface(JObjectClass)
    ['{B26B7442-8D1F-4086-A20E-BE2C51B04DA3}']
    {class} function init(i: Integer; i1: Integer; i2: Integer; i3: Integer): JDimensions; cdecl;
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/Dimensions')]
  JDimensions = interface(JObject)
    ['{8871E79F-4B65-46EC-8FE7-FC6FB1AF4854}']
    function getMaxCols: Integer; cdecl;
    function getMaxRows: Integer; cdecl;
    function getMinCols: Integer; cdecl;
    function getMinRows: Integer; cdecl;
  end;
  TJDimensions = class(TJavaGenericImport<JDimensionsClass, JDimensions>) end;

  JPDF417Class = interface(JObjectClass)
    ['{02BCB4B3-9F59-46C2-AAC3-DB245F397286}']
    {class} function init: JPDF417; cdecl; overload;
    {class} function init(b: Boolean): JPDF417; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/PDF417')]
  JPDF417 = interface(JObject)
    ['{CD48EEFF-F85C-4E2D-A778-6637500BB18B}']
    procedure generateBarcodeLogic(string_: JString; i: Integer); cdecl;
    function getBarcodeMatrix: JBarcodeMatrix; cdecl;
    procedure setCompact(b: Boolean); cdecl;
    procedure setCompaction(compaction: JCompaction); cdecl;
    procedure setDimensions(i: Integer; i1: Integer; i2: Integer; i3: Integer); cdecl;
    procedure setEncoding(charset: JCharset); cdecl;
  end;
  TJPDF417 = class(TJavaGenericImport<JPDF417Class, JPDF417>) end;

  JPDF417ErrorCorrectionClass = interface(JObjectClass)
    ['{2CCAEB4E-FEFA-4A00-9E52-AEB312780BF5}']
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/PDF417ErrorCorrection')]
  JPDF417ErrorCorrection = interface(JObject)
    ['{A1BB6CC9-3D06-49EB-9709-51C89372E9C9}']
  end;
  TJPDF417ErrorCorrection = class(TJavaGenericImport<JPDF417ErrorCorrectionClass, JPDF417ErrorCorrection>) end;

  JPDF417HighLevelEncoderClass = interface(JObjectClass)
    ['{BFC83152-8E96-4A8A-865E-5A4A08C2D7F3}']
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/PDF417HighLevelEncoder')]
  JPDF417HighLevelEncoder = interface(JObject)
    ['{6987405D-4E3E-4F7D-B06F-868D4B33F85E}']
  end;
  TJPDF417HighLevelEncoder = class(TJavaGenericImport<JPDF417HighLevelEncoderClass, JPDF417HighLevelEncoder>) end;

  JPDF417HighLevelEncoder_1Class = interface(JObjectClass)
    ['{01FA781E-07F6-449E-951D-EF20032AFCC6}']
  end;

  [JavaSignature('com/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1')]
  JPDF417HighLevelEncoder_1 = interface(JObject)
    ['{F6930FF4-8B6D-4B8A-88F2-18C2C3BE353B}']
  end;
  TJPDF417HighLevelEncoder_1 = class(TJavaGenericImport<JPDF417HighLevelEncoder_1Class, JPDF417HighLevelEncoder_1>) end;

  JQRCodeWriterClass = interface(Jzxing_WriterClass)
    ['{2108585F-AE4E-4473-8478-1F2C6AC3C75B}']
    {class} function init: JQRCodeWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/zxing/qrcode/QRCodeWriter')]
  JQRCodeWriter = interface(Jzxing_Writer)
    ['{11949F96-B293-42C2-824A-AEB69EF451B4}']
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer): JBitMatrix; cdecl; overload;
    function encode(string_: JString; barcodeFormat: JBarcodeFormat; i: Integer; i1: Integer; map: JMap): JBitMatrix; cdecl; overload;
  end;
  TJQRCodeWriter = class(TJavaGenericImport<JQRCodeWriterClass, JQRCodeWriter>) end;

  Jdecoder_BitMatrixParserClass = interface(JObjectClass)
    ['{37F09369-843F-4F28-B962-30CD0A50D328}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/BitMatrixParser')]
  Jdecoder_BitMatrixParser = interface(JObject)
    ['{638A8F42-2CD5-46BF-913C-4226FDD3244E}']
  end;
  TJdecoder_BitMatrixParser = class(TJavaGenericImport<Jdecoder_BitMatrixParserClass, Jdecoder_BitMatrixParser>) end;

  Jdecoder_DataBlockClass = interface(JObjectClass)
    ['{5104BCC1-1DCE-485F-B4BA-1E81CB2FEC8F}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataBlock')]
  Jdecoder_DataBlock = interface(JObject)
    ['{A6F2317E-37E3-48BB-A166-C0F1E03EAB35}']
  end;
  TJdecoder_DataBlock = class(TJavaGenericImport<Jdecoder_DataBlockClass, Jdecoder_DataBlock>) end;

  JDataMaskClass = interface(JEnumClass)
    ['{5E98FC1B-CE4B-45C9-A381-00FE1D1BD57C}']
    {class} function _GetDATA_MASK_000: JDataMask; cdecl;
    {class} function _GetDATA_MASK_001: JDataMask; cdecl;
    {class} function _GetDATA_MASK_010: JDataMask; cdecl;
    {class} function _GetDATA_MASK_011: JDataMask; cdecl;
    {class} function _GetDATA_MASK_100: JDataMask; cdecl;
    {class} function _GetDATA_MASK_101: JDataMask; cdecl;
    {class} function _GetDATA_MASK_110: JDataMask; cdecl;
    {class} function _GetDATA_MASK_111: JDataMask; cdecl;
    {class} function valueOf(string_: JString): JDataMask; cdecl;
    {class} function values: TJavaObjectArray<JDataMask>; cdecl;//Deprecated
    {class} property DATA_MASK_000: JDataMask read _GetDATA_MASK_000;
    {class} property DATA_MASK_001: JDataMask read _GetDATA_MASK_001;
    {class} property DATA_MASK_010: JDataMask read _GetDATA_MASK_010;
    {class} property DATA_MASK_011: JDataMask read _GetDATA_MASK_011;
    {class} property DATA_MASK_100: JDataMask read _GetDATA_MASK_100;
    {class} property DATA_MASK_101: JDataMask read _GetDATA_MASK_101;
    {class} property DATA_MASK_110: JDataMask read _GetDATA_MASK_110;
    {class} property DATA_MASK_111: JDataMask read _GetDATA_MASK_111;
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask')]
  JDataMask = interface(JEnum)
    ['{764EC930-1732-406A-8F56-A31D3B98CABE}']
  end;
  TJDataMask = class(TJavaGenericImport<JDataMaskClass, JDataMask>) end;

  JDataMask_1Class = interface(JDataMaskClass)
    ['{112DCD3E-1AA3-4AB7-9CA0-84FF15F58BCE}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$1')]
  JDataMask_1 = interface(JDataMask)
    ['{6EB142A7-F866-4054-829A-5DFC755221F1}']
  end;
  TJDataMask_1 = class(TJavaGenericImport<JDataMask_1Class, JDataMask_1>) end;

  JDataMask_2Class = interface(JDataMaskClass)
    ['{247079EA-D153-4D93-8F5B-FD0E4F806EA0}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$2')]
  JDataMask_2 = interface(JDataMask)
    ['{2C53C375-6E8E-47FC-B4AA-F341A4BD9320}']
  end;
  TJDataMask_2 = class(TJavaGenericImport<JDataMask_2Class, JDataMask_2>) end;

  JDataMask_3Class = interface(JDataMaskClass)
    ['{0F8EA209-6B8E-4FE3-B5C6-643CEA73E238}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$3')]
  JDataMask_3 = interface(JDataMask)
    ['{BE91B152-C4CE-46D7-9937-702D9EDC2D36}']
  end;
  TJDataMask_3 = class(TJavaGenericImport<JDataMask_3Class, JDataMask_3>) end;

  JDataMask_4Class = interface(JDataMaskClass)
    ['{22B009E7-A914-4F1C-9304-8CBCAB1753B3}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$4')]
  JDataMask_4 = interface(JDataMask)
    ['{06AE8A5C-62E4-4593-A68E-116868120E63}']
  end;
  TJDataMask_4 = class(TJavaGenericImport<JDataMask_4Class, JDataMask_4>) end;

  JDataMask_5Class = interface(JDataMaskClass)
    ['{221C6A96-F1D8-43E0-BE03-09E1BDAA9DEF}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$5')]
  JDataMask_5 = interface(JDataMask)
    ['{7215BF97-4365-4696-8592-692C88EC74C0}']
  end;
  TJDataMask_5 = class(TJavaGenericImport<JDataMask_5Class, JDataMask_5>) end;

  JDataMask_6Class = interface(JDataMaskClass)
    ['{60B06090-25F6-42DA-84D1-43409636BA3D}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$6')]
  JDataMask_6 = interface(JDataMask)
    ['{D2A8503F-3062-4860-B280-99F905519A60}']
  end;
  TJDataMask_6 = class(TJavaGenericImport<JDataMask_6Class, JDataMask_6>) end;

  JDataMask_7Class = interface(JDataMaskClass)
    ['{A16336D9-F034-419D-8C87-84DFE3C73F44}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$7')]
  JDataMask_7 = interface(JDataMask)
    ['{0919381F-40F9-4F7E-81EE-7960482A1D31}']
  end;
  TJDataMask_7 = class(TJavaGenericImport<JDataMask_7Class, JDataMask_7>) end;

  JDataMask_8Class = interface(JDataMaskClass)
    ['{7C6F72FE-E190-40BF-8C22-68425C25607C}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DataMask$8')]
  JDataMask_8 = interface(JDataMask)
    ['{1866ACE0-9007-4A5D-9167-E6D213A8E7E5}']
  end;
  TJDataMask_8 = class(TJavaGenericImport<JDataMask_8Class, JDataMask_8>) end;

  Jqrcode_decoder_DecodedBitStreamParserClass = interface(JObjectClass)
    ['{84BB8C08-E9C0-4DEE-A697-D8F02BB788A7}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DecodedBitStreamParser')]
  Jqrcode_decoder_DecodedBitStreamParser = interface(JObject)
    ['{48F290BE-3E4F-4D03-B053-87C96A236E56}']
  end;
  TJqrcode_decoder_DecodedBitStreamParser = class(TJavaGenericImport<Jqrcode_decoder_DecodedBitStreamParserClass, Jqrcode_decoder_DecodedBitStreamParser>) end;

  Jqrcode_decoder_DecodedBitStreamParser_1Class = interface(JObjectClass)
    ['{78D3B498-8370-4552-94B3-F37363314DEC}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/DecodedBitStreamParser$1')]
  Jqrcode_decoder_DecodedBitStreamParser_1 = interface(JObject)
    ['{352A0FF8-A141-4741-A6BC-62DC0F1E717E}']
  end;
  TJqrcode_decoder_DecodedBitStreamParser_1 = class(TJavaGenericImport<Jqrcode_decoder_DecodedBitStreamParser_1Class, Jqrcode_decoder_DecodedBitStreamParser_1>) end;

  Jqrcode_decoder_DecoderClass = interface(JObjectClass)
    ['{BD3A2B97-0A48-4565-A24B-89D8ED966D8D}']
    {class} function init: Jqrcode_decoder_Decoder; cdecl;
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/Decoder')]
  Jqrcode_decoder_Decoder = interface(JObject)
    ['{611A43A6-9294-43FD-B1C5-6B83844F7657}']
    function decode(bitMatrix: JBitMatrix): JDecoderResult; cdecl; overload;
    function decode(b: TJavaBiArray<Boolean>): JDecoderResult; cdecl; overload;
    function decode(bitMatrix: JBitMatrix; map: JMap): JDecoderResult; cdecl; overload;
    function decode(b: TJavaBiArray<Boolean>; map: JMap): JDecoderResult; cdecl; overload;
  end;
  TJqrcode_decoder_Decoder = class(TJavaGenericImport<Jqrcode_decoder_DecoderClass, Jqrcode_decoder_Decoder>) end;

  JErrorCorrectionLevelClass = interface(JEnumClass)
    ['{A19811F9-6B85-4DB2-B4AC-7787D96F9B12}']
    {class} function _GetH: JErrorCorrectionLevel; cdecl;
    {class} function _GetL: JErrorCorrectionLevel; cdecl;
    {class} function _GetM: JErrorCorrectionLevel; cdecl;
    {class} function _GetQ: JErrorCorrectionLevel; cdecl;
    {class} function forBits(i: Integer): JErrorCorrectionLevel; cdecl;
    {class} function valueOf(string_: JString): JErrorCorrectionLevel; cdecl;
    {class} function values: TJavaObjectArray<JErrorCorrectionLevel>; cdecl;//Deprecated
    {class} property H: JErrorCorrectionLevel read _GetH;
    {class} property L: JErrorCorrectionLevel read _GetL;
    {class} property M: JErrorCorrectionLevel read _GetM;
    {class} property Q: JErrorCorrectionLevel read _GetQ;
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/ErrorCorrectionLevel')]
  JErrorCorrectionLevel = interface(JEnum)
    ['{BEFE0058-5A3F-40D9-A5DA-C788B0C76A75}']
    function getBits: Integer; cdecl;
  end;
  TJErrorCorrectionLevel = class(TJavaGenericImport<JErrorCorrectionLevelClass, JErrorCorrectionLevel>) end;

  JFormatInformationClass = interface(JObjectClass)
    ['{43AAF725-67F7-48E6-94C9-4DCD81AE40C3}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/FormatInformation')]
  JFormatInformation = interface(JObject)
    ['{4F3C5C02-E94B-4B71-8A0B-DFE8171752F0}']
    function equals(object_: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJFormatInformation = class(TJavaGenericImport<JFormatInformationClass, JFormatInformation>) end;

  JModeClass = interface(JEnumClass)
    ['{7A60DA87-DAF2-4EAA-8D34-55B7A3080DE8}']
    {class} function _GetALPHANUMERIC: JMode; cdecl;
    {class} function _GetBYTE: JMode; cdecl;
    {class} function _GetECI: JMode; cdecl;
    {class} function _GetFNC1_FIRST_POSITION: JMode; cdecl;
    {class} function _GetFNC1_SECOND_POSITION: JMode; cdecl;
    {class} function _GetHANZI: JMode; cdecl;
    {class} function _GetKANJI: JMode; cdecl;
    {class} function _GetNUMERIC: JMode; cdecl;
    {class} function _GetSTRUCTURED_APPEND: JMode; cdecl;
    {class} function _GetTERMINATOR: JMode; cdecl;
    {class} function forBits(i: Integer): JMode; cdecl;
    {class} function valueOf(string_: JString): JMode; cdecl;
    {class} function values: TJavaObjectArray<JMode>; cdecl;//Deprecated
    {class} property ALPHANUMERIC: JMode read _GetALPHANUMERIC;
    {class} property BYTE: JMode read _GetBYTE;
    {class} property ECI: JMode read _GetECI;
    {class} property FNC1_FIRST_POSITION: JMode read _GetFNC1_FIRST_POSITION;
    {class} property FNC1_SECOND_POSITION: JMode read _GetFNC1_SECOND_POSITION;
    {class} property HANZI: JMode read _GetHANZI;
    {class} property KANJI: JMode read _GetKANJI;
    {class} property NUMERIC: JMode read _GetNUMERIC;
    {class} property STRUCTURED_APPEND: JMode read _GetSTRUCTURED_APPEND;
    {class} property TERMINATOR: JMode read _GetTERMINATOR;
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/Mode')]
  JMode = interface(JEnum)
    ['{DD8A291B-0AC4-4C99-BA54-FD443D307505}']
    function getBits: Integer; cdecl;
    function getCharacterCountBits(version: Jqrcode_decoder_Version): Integer; cdecl;
  end;
  TJMode = class(TJavaGenericImport<JModeClass, JMode>) end;

  JQRCodeDecoderMetaDataClass = interface(JObjectClass)
    ['{FBA1C6B4-BB61-434F-9724-0C1E656A3129}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData')]
  JQRCodeDecoderMetaData = interface(JObject)
    ['{52493A08-FECE-4779-937D-35033C180976}']
    procedure applyMirroredCorrection(resultPoint: TJavaObjectArray<JResultPoint>); cdecl;
    function isMirrored: Boolean; cdecl;
  end;
  TJQRCodeDecoderMetaData = class(TJavaGenericImport<JQRCodeDecoderMetaDataClass, JQRCodeDecoderMetaData>) end;

  Jqrcode_decoder_VersionClass = interface(JObjectClass)
    ['{CCC225ED-BEDC-45EE-98F1-88F36CD73589}']
    {class} function getProvisionalVersionForDimension(i: Integer): Jqrcode_decoder_Version; cdecl;
    {class} function getVersionForNumber(i: Integer): Jqrcode_decoder_Version; cdecl;
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/Version')]
  Jqrcode_decoder_Version = interface(JObject)
    ['{825A1708-BB7F-4607-B376-13CD6DA35CF6}']
    function getAlignmentPatternCenters: TJavaArray<Integer>; cdecl;
    function getDimensionForVersion: Integer; cdecl;
    function getECBlocksForLevel(errorCorrectionLevel: JErrorCorrectionLevel): Jdecoder_Version_ECBlocks; cdecl;
    function getTotalCodewords: Integer; cdecl;
    function getVersionNumber: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJqrcode_decoder_Version = class(TJavaGenericImport<Jqrcode_decoder_VersionClass, Jqrcode_decoder_Version>) end;

  Jdecoder_Version_ECBClass = interface(JObjectClass)
    ['{0DA2CBFC-4209-4EBE-8108-BCC7E23C2A61}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/Version$ECB')]
  Jdecoder_Version_ECB = interface(JObject)
    ['{992883F3-199E-4F64-A85B-B36168D97F46}']
    function getCount: Integer; cdecl;
    function getDataCodewords: Integer; cdecl;
  end;
  TJdecoder_Version_ECB = class(TJavaGenericImport<Jdecoder_Version_ECBClass, Jdecoder_Version_ECB>) end;

  Jdecoder_Version_ECBlocksClass = interface(JObjectClass)
    ['{53E04CD2-EF7B-4538-A08F-452AEA90A93D}']
  end;

  [JavaSignature('com/google/zxing/qrcode/decoder/Version$ECBlocks')]
  Jdecoder_Version_ECBlocks = interface(JObject)
    ['{54357DD1-17F9-429E-A911-460AEC895289}']
    function getECBlocks: TJavaObjectArray<Jdecoder_Version_ECB>; cdecl;
    function getECCodewordsPerBlock: Integer; cdecl;
    function getNumBlocks: Integer; cdecl;
    function getTotalECCodewords: Integer; cdecl;
  end;
  TJdecoder_Version_ECBlocks = class(TJavaGenericImport<Jdecoder_Version_ECBlocksClass, Jdecoder_Version_ECBlocks>) end;

  JAlignmentPatternClass = interface(JResultPointClass)
    ['{E9CBD2ED-7EA8-497A-BE53-E8F1A81BD974}']
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/AlignmentPattern')]
  JAlignmentPattern = interface(JResultPoint)
    ['{F44592E9-0ACC-4681-9368-27ADB49A5090}']
  end;
  TJAlignmentPattern = class(TJavaGenericImport<JAlignmentPatternClass, JAlignmentPattern>) end;

  JAlignmentPatternFinderClass = interface(JObjectClass)
    ['{0EE79BCE-8D08-4059-8B41-8D2F31B22B64}']
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/AlignmentPatternFinder')]
  JAlignmentPatternFinder = interface(JObject)
    ['{DD16272C-EB1D-46E4-BE83-27ED7DEBC340}']
  end;
  TJAlignmentPatternFinder = class(TJavaGenericImport<JAlignmentPatternFinderClass, JAlignmentPatternFinder>) end;

  JFinderPatternClass = interface(JResultPointClass)
    ['{0EEBC327-A995-498F-B9BA-62DC523B14F8}']
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/FinderPattern')]
  JFinderPattern = interface(JResultPoint)
    ['{F2730D4D-81AF-4BC3-8D1C-31138DFF0E0B}']
    function getEstimatedModuleSize: Single; cdecl;
  end;
  TJFinderPattern = class(TJavaGenericImport<JFinderPatternClass, JFinderPattern>) end;

  JFinderPatternFinder_1Class = interface(JObjectClass)
    ['{9FE5455F-6E6A-42D6-9563-F6B6773EBE4E}']
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/FinderPatternFinder$1')]
  JFinderPatternFinder_1 = interface(JObject)
    ['{18C3AA53-299D-4995-BA52-A7440A51531F}']
  end;
  TJFinderPatternFinder_1 = class(TJavaGenericImport<JFinderPatternFinder_1Class, JFinderPatternFinder_1>) end;

  JFinderPatternFinder_EstimatedModuleComparatorClass = interface(JSerializableClass)
    ['{03DC08CF-7D24-44D3-BFC5-22B5057DCCEA}']
    {class} function compare(finderPattern: JFinderPattern; finderPattern1: JFinderPattern): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator')]
  JFinderPatternFinder_EstimatedModuleComparator = interface(JSerializable)
    ['{E91C43B3-ADCA-447C-9767-F1FE88852F2B}']
    function compare(object_: JObject; object_1: JObject): Integer; cdecl; overload;
  end;
  TJFinderPatternFinder_EstimatedModuleComparator = class(TJavaGenericImport<JFinderPatternFinder_EstimatedModuleComparatorClass, JFinderPatternFinder_EstimatedModuleComparator>) end;

  JFinderPatternInfoClass = interface(JObjectClass)
    ['{D2F3BE02-9D1C-4CF0-888A-E9A991BB8523}']
    {class} function init(finderPattern: TJavaObjectArray<JFinderPattern>): JFinderPatternInfo; cdecl;
  end;

  [JavaSignature('com/google/zxing/qrcode/detector/FinderPatternInfo')]
  JFinderPatternInfo = interface(JObject)
    ['{2C85EDC4-38D2-4AAA-8F73-015E518F6F13}']
    function getBottomLeft: JFinderPattern; cdecl;
    function getTopLeft: JFinderPattern; cdecl;
    function getTopRight: JFinderPattern; cdecl;
  end;
  TJFinderPatternInfo = class(TJavaGenericImport<JFinderPatternInfoClass, JFinderPatternInfo>) end;

  JBlockPairClass = interface(JObjectClass)
    ['{29E719FB-0BBD-487E-B413-3A1E4F85630D}']
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/BlockPair')]
  JBlockPair = interface(JObject)
    ['{AC4BA676-1D8D-433F-B7C6-21CDD7A41462}']
    function getDataBytes: TJavaArray<Byte>; cdecl;
    function getErrorCorrectionBytes: TJavaArray<Byte>; cdecl;
  end;
  TJBlockPair = class(TJavaGenericImport<JBlockPairClass, JBlockPair>) end;

  JByteMatrixClass = interface(JObjectClass)
    ['{E47213A5-8307-40B7-8B2B-067367957B36}']
    {class} function init(i: Integer; i1: Integer): JByteMatrix; cdecl;
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/ByteMatrix')]
  JByteMatrix = interface(JObject)
    ['{3EBDFFB7-CCE4-4CC6-8D72-13877F8BCB18}']
    procedure clear(b: Byte); cdecl;
    function &get(i: Integer; i1: Integer): Byte; cdecl;
    function getArray: TJavaBiArray<Byte>; cdecl;
    function getHeight: Integer; cdecl;
    function getWidth: Integer; cdecl;
    procedure &set(i: Integer; i1: Integer; b: Boolean); cdecl; overload;
    procedure &set(i: Integer; i1: Integer; b: Byte); cdecl; overload;
    procedure &set(i: Integer; i1: Integer; i2: Integer); cdecl; overload;
    function toString: JString; cdecl;
  end;
  TJByteMatrix = class(TJavaGenericImport<JByteMatrixClass, JByteMatrix>) end;

  Jqrcode_encoder_EncoderClass = interface(JObjectClass)
    ['{093DE238-3085-4B46-9496-6871685DBBCD}']
    {class} function chooseMode(string_: JString): JMode; cdecl;
    {class} function encode(string_: JString; errorCorrectionLevel: JErrorCorrectionLevel): JQRCode; cdecl; overload;
    {class} function encode(string_: JString; errorCorrectionLevel: JErrorCorrectionLevel; map: JMap): JQRCode; cdecl; overload;
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/Encoder')]
  Jqrcode_encoder_Encoder = interface(JObject)
    ['{D30FD088-87AE-483C-B8C7-E71DDDB361DB}']
  end;
  TJqrcode_encoder_Encoder = class(TJavaGenericImport<Jqrcode_encoder_EncoderClass, Jqrcode_encoder_Encoder>) end;

  JEncoder_1Class = interface(JObjectClass)
    ['{0909B1BA-7B93-40C9-B7C4-FF721A8FB4EE}']
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/Encoder$1')]
  JEncoder_1 = interface(JObject)
    ['{2412B452-54A0-4C83-A459-D4A58D5EE51F}']
  end;
  TJEncoder_1 = class(TJavaGenericImport<JEncoder_1Class, JEncoder_1>) end;

  JMaskUtilClass = interface(JObjectClass)
    ['{4941B7C0-604C-4B3A-AA89-50B6732D1015}']
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/MaskUtil')]
  JMaskUtil = interface(JObject)
    ['{78AF2C9F-5087-49A9-A579-84D82798398B}']
  end;
  TJMaskUtil = class(TJavaGenericImport<JMaskUtilClass, JMaskUtil>) end;

  JMatrixUtilClass = interface(JObjectClass)
    ['{3A2C815A-4B87-48B3-B271-AE4FA3B4B12D}']
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/MatrixUtil')]
  JMatrixUtil = interface(JObject)
    ['{C253EB13-D1EA-4B20-AE68-1636766D77FB}']
  end;
  TJMatrixUtil = class(TJavaGenericImport<JMatrixUtilClass, JMatrixUtil>) end;

  JQRCodeClass = interface(JObjectClass)
    ['{B24F986E-CFF6-4F06-AC54-61E7F787B0EE}']
    {class} function _GetNUM_MASK_PATTERNS: Integer; cdecl;
    {class} function init: JQRCode; cdecl;
    {class} function isValidMaskPattern(i: Integer): Boolean; cdecl;
    {class} property NUM_MASK_PATTERNS: Integer read _GetNUM_MASK_PATTERNS;
  end;

  [JavaSignature('com/google/zxing/qrcode/encoder/QRCode')]
  JQRCode = interface(JObject)
    ['{D0DA8492-D1FC-419D-A49E-7FD82E259159}']
    function getECLevel: JErrorCorrectionLevel; cdecl;
    function getMaskPattern: Integer; cdecl;
    function getMatrix: JByteMatrix; cdecl;
    function getMode: JMode; cdecl;
    function getVersion: Jqrcode_decoder_Version; cdecl;
    procedure setECLevel(errorCorrectionLevel: JErrorCorrectionLevel); cdecl;
    procedure setMaskPattern(i: Integer); cdecl;
    procedure setMatrix(byteMatrix: JByteMatrix); cdecl;
    procedure setMode(mode: JMode); cdecl;
    procedure setVersion(version: Jqrcode_decoder_Version); cdecl;
    function toString: JString; cdecl;
  end;
  TJQRCode = class(TJavaGenericImport<JQRCodeClass, JQRCode>) end;

  JPrintHtmlInterfaceClass = interface(IJavaClass)
    ['{345A243B-832F-4A47-BF31-CEF75D9A0A5B}']
  end;

  [JavaSignature('com/wizarpos/htmllibrary/PrintHtmlInterface')]
  JPrintHtmlInterface = interface(IJavaInstance)
    ['{FF987A23-CACD-4517-AB0E-49E2675AE1C8}']
    procedure convert2Image(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
    procedure printHTML(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
  end;
  TJPrintHtmlInterface = class(TJavaGenericImport<JPrintHtmlInterfaceClass, JPrintHtmlInterface>) end;

  JPrinterBitmapUtilClass = interface(JObjectClass)
    ['{3480E242-F0FC-4DD6-A297-E254536340D2}']
    {class} function init: JPrinterBitmapUtil; cdecl;
    {class} procedure printBitmap(bitmap: JBitmap; i: Integer; i1: Integer); cdecl; overload;
    {class} procedure printBitmap(bitmap: JBitmap; i: Integer; i1: Integer; b: Boolean); cdecl; overload;
  end;

  [JavaSignature('com/wizarpos/htmllibrary/PrinterBitmapUtil')]
  JPrinterBitmapUtil = interface(JObject)
    ['{9CD18555-F0C5-4499-B79E-89DB2AF4BC39}']
  end;
  TJPrinterBitmapUtil = class(TJavaGenericImport<JPrinterBitmapUtilClass, JPrinterBitmapUtil>) end;

  JPrinterHtmlListenerClass = interface(IJavaClass)
    ['{40338018-52BB-4089-BC34-35ECFF754C08}']
    {class} function _GetBITMAP_ERROR: Integer; cdecl;
    {class} function _GetBITMAP_SUCCESS: Integer; cdecl;
    {class} function _GetDEVICE_NOT_OPEN: Integer; cdecl;
    {class} function _GetPRINT_ERROR: Integer; cdecl;
    {class} function _GetPRINT_SUCCESS: Integer; cdecl;
    {class} property BITMAP_ERROR: Integer read _GetBITMAP_ERROR;
    {class} property BITMAP_SUCCESS: Integer read _GetBITMAP_SUCCESS;
    {class} property DEVICE_NOT_OPEN: Integer read _GetDEVICE_NOT_OPEN;
    {class} property PRINT_ERROR: Integer read _GetPRINT_ERROR;
    {class} property PRINT_SUCCESS: Integer read _GetPRINT_SUCCESS;
  end;

  [JavaSignature('com/wizarpos/htmllibrary/PrinterHtmlListener')]
  JPrinterHtmlListener = interface(IJavaInstance)
    ['{5C23D8AD-F59B-420C-ACBA-54C6240E24F1}']
    procedure onFinishPrinting(i: Integer); cdecl;
    procedure onGet(bitmap: JBitmap; i: Integer); cdecl;
  end;
  TJPrinterHtmlListener = class(TJavaGenericImport<JPrinterHtmlListenerClass, JPrinterHtmlListener>) end;

  JPrinterHtmlUtilClass = interface(JPrintHtmlInterfaceClass)
    ['{8AA96DC5-C80A-4C8E-9598-EF79FC8F7C2A}']
    {class} function init: JPrinterHtmlUtil; cdecl;
  end;

  [JavaSignature('com/wizarpos/htmllibrary/PrinterHtmlUtil')]
  JPrinterHtmlUtil = interface(JPrintHtmlInterface)
    ['{CCAEC54F-72A3-4E98-9041-26276243B8DE}']
    procedure convert2Image(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
    procedure printHTML(context: JContext; string_: JString; printerHtmlListener: JPrinterHtmlListener); cdecl;
  end;
  TJPrinterHtmlUtil = class(TJavaGenericImport<JPrinterHtmlUtilClass, JPrinterHtmlUtil>) end;

  Jhtmllibrary_aClass = interface(JWebView_PictureListenerClass)
    ['{E878DB78-7A35-4302-AAA0-96C5D923B275}']
  end;

  [JavaSignature('com/wizarpos/htmllibrary/a')]
  Jhtmllibrary_a = interface(JWebView_PictureListener)
    ['{7164D7A4-5ED7-4898-89D1-BB3E44BCE8FF}']
    procedure onNewPicture(webView: JWebView; picture: JPicture); cdecl;
  end;
  TJhtmllibrary_a = class(TJavaGenericImport<Jhtmllibrary_aClass, Jhtmllibrary_a>) end;

  JCommSerialAPIClass = interface(JObjectClass)
    ['{C2D65B8E-0ADF-4357-9DD4-AD125D48B937}']
    {class} function comPortClose(i: Integer): Integer; cdecl;
    {class} function comPortOpen(string_: JString; i: Integer; i1: Integer; c: Char; i2: Integer): Integer; cdecl;
    {class} function comPortRead(i: Integer): JString; cdecl;
    {class} function comPortWrite(string_: JString; i: Integer): Boolean; cdecl;
    {class} function init: JCommSerialAPI; cdecl;
  end;

  [JavaSignature('com/xc/comportdemo/CommSerialAPI')]
  JCommSerialAPI = interface(JObject)
    ['{13686954-4DCE-4470-A771-D44C4BBFA7EB}']
  end;
  TJCommSerialAPI = class(TJavaGenericImport<JCommSerialAPIClass, JCommSerialAPI>) end;

  JComportNativeClass = interface(JObjectClass)
    ['{3C663C0B-5981-4A78-9D00-30759FE35135}']
  end;

  [JavaSignature('com/xc/comportdemo/ComportNative')]
  JComportNative = interface(JObject)
    ['{FE831766-2F2E-4FB3-8817-24426757404B}']
  end;
  TJComportNative = class(TJavaGenericImport<JComportNativeClass, JComportNative>) end;

  JIPrinterCallbackClass = interface(JIInterfaceClass)
    ['{5A849707-B6D0-4369-AD5A-E0400D33788B}']
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterCallback')]
  JIPrinterCallback = interface(JIInterface)
    ['{2A4439B1-6CC3-4389-92B4-F27924024C46}']
    procedure onComplete; cdecl;
    procedure onException(i: Integer; string_: JString); cdecl;
    procedure onLength(l: Int64; l1: Int64); cdecl;
  end;
  TJIPrinterCallback = class(TJavaGenericImport<JIPrinterCallbackClass, JIPrinterCallback>) end;

  JIPrinterCallback_Stub_ProxyClass = interface(JIPrinterCallbackClass)
    ['{E9D9231A-952A-4F23-A1AA-E09F5EB17A18}']
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterCallback$Stub$Proxy')]
  JIPrinterCallback_Stub_Proxy = interface(JIPrinterCallback)
    ['{0339F5D2-EEAB-4250-88B5-51CC5D1A6476}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onComplete; cdecl;
    procedure onException(i: Integer; string_: JString); cdecl;
    procedure onLength(l: Int64; l1: Int64); cdecl;
  end;
  TJIPrinterCallback_Stub_Proxy = class(TJavaGenericImport<JIPrinterCallback_Stub_ProxyClass, JIPrinterCallback_Stub_Proxy>) end;

  JIPrinterServiceClass = interface(JIInterfaceClass)
    ['{2D4FA0E0-5D0C-445F-8032-85FB03DAB334}']
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterService')]
  JIPrinterService = interface(JIInterface)
    ['{81A86E7C-A0EB-4369-B626-2EADF86F205E}']
    function getBootloaderVersion: JString; cdecl;
    function getFirmwareVersion: JString; cdecl;
    procedure printBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer; b: Boolean; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printBitmap(bitmap: JBitmap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printBitmapWithAttributes(bitmap: JBitmap; map: JMap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printColumnsTextWithAttributes(string_: TJavaObjectArray<JString>; list: JList; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printQRCode(string_: JString; i: Integer; i1: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printText(string_: JString; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printTextWithAttributes(string_: JString; map: JMap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printWrapPaper(i: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printerInit(iPrinterCallback: JIPrinterCallback); cdecl;
    function printerPaper(iPrinterCallback: JIPrinterCallback): Boolean; cdecl;
    procedure printerReset(iPrinterCallback: JIPrinterCallback); cdecl;
    function printerTemperature(iPrinterCallback: JIPrinterCallback): Integer; cdecl;
    procedure sendRAWData(b: TJavaArray<Byte>; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure setPrinterSpeed(i: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure upgradePrinter; cdecl;
  end;
  TJIPrinterService = class(TJavaGenericImport<JIPrinterServiceClass, JIPrinterService>) end;

  JIPrinterService_StubClass = interface(JBinderClass)
    ['{7ECA971E-E1B6-43D7-AC3B-FE69101ADC56}']
    {class} function _GetTRANSACTION_getBootloaderVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_printBarCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printBitmapWithAttributes: Integer; cdecl;
    {class} function _GetTRANSACTION_printColumnsTextWithAttributes: Integer; cdecl;
    {class} function _GetTRANSACTION_printQRCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printText: Integer; cdecl;
    {class} function _GetTRANSACTION_printTextWithAttributes: Integer; cdecl;
    {class} function _GetTRANSACTION_printerInit: Integer; cdecl;
    {class} function _GetTRANSACTION_printerPaper: Integer; cdecl;
    {class} function _GetTRANSACTION_printerReset: Integer; cdecl;
    {class} function _GetTRANSACTION_printerTemperature: Integer; cdecl;
    {class} function _GetTRANSACTION_sendRAWData: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIPrinterService; cdecl;
    {class} function init: JIPrinterService_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_getBootloaderVersion: Integer read _GetTRANSACTION_getBootloaderVersion;
    {class} property TRANSACTION_printBarCode: Integer read _GetTRANSACTION_printBarCode;
    {class} property TRANSACTION_printBitmapWithAttributes: Integer read _GetTRANSACTION_printBitmapWithAttributes;
    {class} property TRANSACTION_printColumnsTextWithAttributes: Integer read _GetTRANSACTION_printColumnsTextWithAttributes;
    {class} property TRANSACTION_printQRCode: Integer read _GetTRANSACTION_printQRCode;
    {class} property TRANSACTION_printText: Integer read _GetTRANSACTION_printText;
    {class} property TRANSACTION_printTextWithAttributes: Integer read _GetTRANSACTION_printTextWithAttributes;
    {class} property TRANSACTION_printerInit: Integer read _GetTRANSACTION_printerInit;
    {class} property TRANSACTION_printerPaper: Integer read _GetTRANSACTION_printerPaper;
    {class} property TRANSACTION_printerReset: Integer read _GetTRANSACTION_printerReset;
    {class} property TRANSACTION_printerTemperature: Integer read _GetTRANSACTION_printerTemperature;
    {class} property TRANSACTION_sendRAWData: Integer read _GetTRANSACTION_sendRAWData;
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterService$Stub')]
  JIPrinterService_Stub = interface(JBinder)
    ['{1699F5AA-A433-42E8-AF72-4C621F7728D5}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIPrinterService_Stub = class(TJavaGenericImport<JIPrinterService_StubClass, JIPrinterService_Stub>) end;

  JIPrinterService_Stub_ProxyClass = interface(JIPrinterServiceClass)
    ['{712907A4-98AA-4730-9892-A978F3320FAD}']
  end;

  [JavaSignature('com/xcheng/printerservice/IPrinterService$Stub$Proxy')]
  JIPrinterService_Stub_Proxy = interface(JIPrinterService)
    ['{B8817891-4D1A-490C-BD5E-74B7C7E70F35}']
    function asBinder: JIBinder; cdecl;
    function getBootloaderVersion: JString; cdecl;
    function getFirmwareVersion: JString; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure printBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer; b: Boolean; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printBitmap(bitmap: JBitmap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printBitmapWithAttributes(bitmap: JBitmap; map: JMap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printColumnsTextWithAttributes(string_: TJavaObjectArray<JString>; list: JList; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printQRCode(string_: JString; i: Integer; i1: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printText(string_: JString; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printTextWithAttributes(string_: JString; map: JMap; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printWrapPaper(i: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure printerInit(iPrinterCallback: JIPrinterCallback); cdecl;
    function printerPaper(iPrinterCallback: JIPrinterCallback): Boolean; cdecl;
    procedure printerReset(iPrinterCallback: JIPrinterCallback); cdecl;
    function printerTemperature(iPrinterCallback: JIPrinterCallback): Integer; cdecl;
    procedure sendRAWData(b: TJavaArray<Byte>; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure setPrinterSpeed(i: Integer; iPrinterCallback: JIPrinterCallback); cdecl;
    procedure upgradePrinter; cdecl;
  end;
  TJIPrinterService_Stub_Proxy = class(TJavaGenericImport<JIPrinterService_Stub_ProxyClass, JIPrinterService_Stub_Proxy>) end;

  JAbstractQueueClass = interface(JAbstractCollectionClass)
    ['{8DB55313-D71D-4956-A1D3-090FF0FF4998}']
    {class} function add(e: JObject): Boolean; cdecl;//Deprecated
    {class} function addAll(c: JCollection): Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('java/util/AbstractQueue')]
  JAbstractQueue = interface(JAbstractCollection)
    ['{954DD6B0-AF78-4938-92AE-4985F7EE7EF1}']
    procedure clear; cdecl;//Deprecated
    function element: JObject; cdecl;//Deprecated
    function remove: JObject; cdecl;//Deprecated
  end;
  TJAbstractQueue = class(TJavaGenericImport<JAbstractQueueClass, JAbstractQueue>) end;

  JArrayBlockingQueueClass = interface(JAbstractQueueClass)
    ['{49E55D90-B4AF-4C6C-9B9C-DE35873B349C}']
    {class} function init(capacity: Integer): JArrayBlockingQueue; cdecl; overload;
    {class} function init(capacity: Integer; fair: Boolean): JArrayBlockingQueue; cdecl; overload;
    {class} function init(capacity: Integer; fair: Boolean; c: JCollection): JArrayBlockingQueue; cdecl; overload;
    {class} function drainTo(c: JCollection): Integer; cdecl; overload;//Deprecated
    {class} function drainTo(c: JCollection; maxElements: Integer): Integer; cdecl; overload;//Deprecated
    {class} function iterator: JIterator; cdecl;//Deprecated
    {class} function poll: JObject; cdecl; overload;//Deprecated
    {class} function poll(timeout: Int64; unit_: JTimeUnit): JObject; cdecl; overload;//Deprecated
    {class} function size: Integer; cdecl;//Deprecated
    {class} function take: JObject; cdecl;//Deprecated
    {class} function toArray: TJavaObjectArray<JObject>; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/util/concurrent/ArrayBlockingQueue')]
  JArrayBlockingQueue = interface(JAbstractQueue)
    ['{23CA7FCE-5F7A-47B2-AC8C-E0AEE4D40D51}']
    function add(e: JObject): Boolean; cdecl;//Deprecated
    procedure clear; cdecl;//Deprecated
    function &contains(o: JObject): Boolean; cdecl;//Deprecated
    function offer(e: JObject): Boolean; cdecl; overload;//Deprecated
    function offer(e: JObject; timeout: Int64; unit_: JTimeUnit): Boolean; cdecl; overload;//Deprecated
    function peek: JObject; cdecl;//Deprecated
    procedure put(e: JObject); cdecl;//Deprecated
    function remainingCapacity: Integer; cdecl;//Deprecated
    function remove(o: JObject): Boolean; cdecl;//Deprecated
    function toArray(a: TJavaObjectArray<JObject>): TJavaObjectArray<JObject>; cdecl; overload;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJArrayBlockingQueue = class(TJavaGenericImport<JArrayBlockingQueueClass, JArrayBlockingQueue>) end;

  JNodeClass = interface(IJavaClass)
    ['{4FF9B265-CEE8-4AB9-B74A-5F2D9CED8981}']
    {class} function _GetATTRIBUTE_NODE: SmallInt; cdecl;
    {class} function _GetCDATA_SECTION_NODE: SmallInt; cdecl;
    {class} function _GetCOMMENT_NODE: SmallInt; cdecl;
    {class} function _GetDOCUMENT_FRAGMENT_NODE: SmallInt; cdecl;
    {class} function _GetDOCUMENT_NODE: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_CONTAINED_BY: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_CONTAINS: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_DISCONNECTED: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_FOLLOWING: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: SmallInt; cdecl;
    {class} function _GetDOCUMENT_POSITION_PRECEDING: SmallInt; cdecl;
    {class} function _GetDOCUMENT_TYPE_NODE: SmallInt; cdecl;
    {class} function _GetELEMENT_NODE: SmallInt; cdecl;
    {class} function _GetENTITY_NODE: SmallInt; cdecl;
    {class} function _GetENTITY_REFERENCE_NODE: SmallInt; cdecl;
    {class} function _GetNOTATION_NODE: SmallInt; cdecl;
    {class} function _GetPROCESSING_INSTRUCTION_NODE: SmallInt; cdecl;
    {class} function _GetTEXT_NODE: SmallInt; cdecl;
    {class} function compareDocumentPosition(other: JNode): SmallInt; cdecl;
    {class} function getAttributes: JNamedNodeMap; cdecl;
    {class} function getBaseURI: JString; cdecl;
    {class} function getLastChild: JNode; cdecl;
    {class} function getLocalName: JString; cdecl;
    {class} function getNamespaceURI: JString; cdecl;
    {class} function getNodeValue: JString; cdecl;
    {class} function getOwnerDocument: JDocument; cdecl;
    {class} function getTextContent: JString; cdecl;//Deprecated
    {class} function getUserData(key: JString): JObject; cdecl;//Deprecated
    {class} function hasAttributes: Boolean; cdecl;//Deprecated
    {class} function isEqualNode(arg: JNode): Boolean; cdecl;//Deprecated
    {class} function isSameNode(other: JNode): Boolean; cdecl;//Deprecated
    {class} function isSupported(feature: JString; version: JString): Boolean; cdecl;//Deprecated
    {class} function removeChild(oldChild: JNode): JNode; cdecl;//Deprecated
    {class} function replaceChild(newChild: JNode; oldChild: JNode): JNode; cdecl;//Deprecated
    {class} procedure setNodeValue(nodeValue: JString); cdecl;//Deprecated
    {class} property ATTRIBUTE_NODE: SmallInt read _GetATTRIBUTE_NODE;
    {class} property CDATA_SECTION_NODE: SmallInt read _GetCDATA_SECTION_NODE;
    {class} property COMMENT_NODE: SmallInt read _GetCOMMENT_NODE;
    {class} property DOCUMENT_FRAGMENT_NODE: SmallInt read _GetDOCUMENT_FRAGMENT_NODE;
    {class} property DOCUMENT_NODE: SmallInt read _GetDOCUMENT_NODE;
    {class} property DOCUMENT_POSITION_CONTAINED_BY: SmallInt read _GetDOCUMENT_POSITION_CONTAINED_BY;
    {class} property DOCUMENT_POSITION_CONTAINS: SmallInt read _GetDOCUMENT_POSITION_CONTAINS;
    {class} property DOCUMENT_POSITION_DISCONNECTED: SmallInt read _GetDOCUMENT_POSITION_DISCONNECTED;
    {class} property DOCUMENT_POSITION_FOLLOWING: SmallInt read _GetDOCUMENT_POSITION_FOLLOWING;
    {class} property DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: SmallInt read _GetDOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
    {class} property DOCUMENT_POSITION_PRECEDING: SmallInt read _GetDOCUMENT_POSITION_PRECEDING;
    {class} property DOCUMENT_TYPE_NODE: SmallInt read _GetDOCUMENT_TYPE_NODE;
    {class} property ELEMENT_NODE: SmallInt read _GetELEMENT_NODE;
    {class} property ENTITY_NODE: SmallInt read _GetENTITY_NODE;
    {class} property ENTITY_REFERENCE_NODE: SmallInt read _GetENTITY_REFERENCE_NODE;
    {class} property NOTATION_NODE: SmallInt read _GetNOTATION_NODE;
    {class} property PROCESSING_INSTRUCTION_NODE: SmallInt read _GetPROCESSING_INSTRUCTION_NODE;
    {class} property TEXT_NODE: SmallInt read _GetTEXT_NODE;
  end;

  [JavaSignature('org/w3c/dom/Node')]
  JNode = interface(IJavaInstance)
    ['{35CFF397-04C8-489D-9C62-607EFFA8B051}']
    function appendChild(newChild: JNode): JNode; cdecl;
    function cloneNode(deep: Boolean): JNode; cdecl;
    function getChildNodes: JNodeList; cdecl;
    function getFeature(feature: JString; version: JString): JObject; cdecl;
    function getFirstChild: JNode; cdecl;
    function getNextSibling: JNode; cdecl;
    function getNodeName: JString; cdecl;
    function getNodeType: SmallInt; cdecl;
    function getParentNode: JNode; cdecl;//Deprecated
    function getPrefix: JString; cdecl;//Deprecated
    function getPreviousSibling: JNode; cdecl;//Deprecated
    function hasChildNodes: Boolean; cdecl;//Deprecated
    function insertBefore(newChild: JNode; refChild: JNode): JNode; cdecl;//Deprecated
    function isDefaultNamespace(namespaceURI: JString): Boolean; cdecl;//Deprecated
    function lookupNamespaceURI(prefix: JString): JString; cdecl;//Deprecated
    function lookupPrefix(namespaceURI: JString): JString; cdecl;//Deprecated
    procedure normalize; cdecl;//Deprecated
    procedure setPrefix(prefix: JString); cdecl;//Deprecated
    procedure setTextContent(textContent: JString); cdecl;//Deprecated
    function setUserData(key: JString; data: JObject; handler: JUserDataHandler): JObject; cdecl;//Deprecated
  end;
  TJNode = class(TJavaGenericImport<JNodeClass, JNode>) end;

  JAttrClass = interface(JNodeClass)
    ['{5FB044B8-0031-4520-B87A-3CDB994277D7}']
    {class} function getName: JString; cdecl;
    {class} function getValue: JString; cdecl;//Deprecated
    {class} function isId: Boolean; cdecl;//Deprecated
    {class} procedure setValue(value: JString); cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/Attr')]
  JAttr = interface(JNode)
    ['{F9FC2FA5-CCAD-4D11-8B8D-3958C5F55273}']
    function getOwnerElement: JElement; cdecl;//Deprecated
    function getSchemaTypeInfo: JTypeInfo; cdecl;//Deprecated
    function getSpecified: Boolean; cdecl;//Deprecated
  end;
  TJAttr = class(TJavaGenericImport<JAttrClass, JAttr>) end;

  JCharacterDataClass = interface(JNodeClass)
    ['{2C17F389-87C1-444E-957E-9F54C1531B5A}']
    {class} procedure appendData(arg: JString); cdecl;//Deprecated
    {class} procedure deleteData(offset: Integer; count: Integer); cdecl;//Deprecated
    {class} procedure replaceData(offset: Integer; count: Integer; arg: JString); cdecl;//Deprecated
    {class} procedure setData(data: JString); cdecl;//Deprecated
    {class} function substringData(offset: Integer; count: Integer): JString; cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/CharacterData')]
  JCharacterData = interface(JNode)
    ['{10B18FAD-C168-4834-9BF9-996C53B31D9E}']
    function getData: JString; cdecl;//Deprecated
    function getLength: Integer; cdecl;//Deprecated
    procedure insertData(offset: Integer; arg: JString); cdecl;//Deprecated
  end;
  TJCharacterData = class(TJavaGenericImport<JCharacterDataClass, JCharacterData>) end;

  JTextClass = interface(JCharacterDataClass)
    ['{A1698F81-D2B1-4131-A464-3E6A6ADD1D56}']
    {class} function getWholeText: JString; cdecl;
    {class} function isElementContentWhitespace: Boolean; cdecl;
  end;

  [JavaSignature('org/w3c/dom/Text')]
  JText = interface(JCharacterData)
    ['{FAE4042A-1DDA-4B7D-BCFC-3C629B2818A4}']
    function replaceWholeText(content: JString): JText; cdecl;
    function splitText(offset: Integer): JText; cdecl;
  end;
  TJText = class(TJavaGenericImport<JTextClass, JText>) end;

  JCDATASectionClass = interface(JTextClass)
    ['{7CBFD045-12AF-4D98-A080-469281E3B4DA}']
  end;

  [JavaSignature('org/w3c/dom/CDATASection')]
  JCDATASection = interface(JText)
    ['{58B470DE-13D3-4B4A-A9B7-5F03E4D4CD75}']
  end;
  TJCDATASection = class(TJavaGenericImport<JCDATASectionClass, JCDATASection>) end;

  JCommentClass = interface(JCharacterDataClass)
    ['{44667247-E701-4F4A-A4A6-1B2C2249BD0E}']
  end;

  [JavaSignature('org/w3c/dom/Comment')]
  JComment = interface(JCharacterData)
    ['{4E3A4920-FC80-4A44-A6A8-DBCC5D94A473}']
  end;
  TJComment = class(TJavaGenericImport<JCommentClass, JComment>) end;

  JDOMConfigurationClass = interface(IJavaClass)
    ['{DECB79BC-0125-4589-A7F9-4515540AE6A2}']
    {class} function getParameter(name: JString): JObject; cdecl;
    {class} function getParameterNames: JDOMStringList; cdecl;
    {class} procedure setParameter(name: JString; value: JObject); cdecl;
  end;

  [JavaSignature('org/w3c/dom/DOMConfiguration')]
  JDOMConfiguration = interface(IJavaInstance)
    ['{E8ABF7F9-F6D5-41BB-939D-8012C99B087D}']
    function canSetParameter(name: JString; value: JObject): Boolean; cdecl;
  end;
  TJDOMConfiguration = class(TJavaGenericImport<JDOMConfigurationClass, JDOMConfiguration>) end;

  JDOMImplementationClass = interface(IJavaClass)
    ['{B1E4F8D3-F1BD-4F6C-B4ED-0310907DF7A4}']
    {class} function createDocument(namespaceURI: JString; qualifiedName: JString; doctype: JDocumentType): JDocument; cdecl;
    {class} function createDocumentType(qualifiedName: JString; publicId: JString; systemId: JString): JDocumentType; cdecl;
  end;

  [JavaSignature('org/w3c/dom/DOMImplementation')]
  JDOMImplementation = interface(IJavaInstance)
    ['{B1DCFB4D-AA66-4B31-A161-7E7D420C0BD4}']
    function getFeature(feature: JString; version: JString): JObject; cdecl;
    function hasFeature(feature: JString; version: JString): Boolean; cdecl;
  end;
  TJDOMImplementation = class(TJavaGenericImport<JDOMImplementationClass, JDOMImplementation>) end;

  JDOMStringListClass = interface(IJavaClass)
    ['{07E16943-A1B1-457E-B687-6BF0DC8A0B2B}']
    {class} function &contains(str: JString): Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/DOMStringList')]
  JDOMStringList = interface(IJavaInstance)
    ['{429D640E-1DB3-442F-9ABF-98965BDEF484}']
    function getLength: Integer; cdecl;//Deprecated
    function item(index: Integer): JString; cdecl;//Deprecated
  end;
  TJDOMStringList = class(TJavaGenericImport<JDOMStringListClass, JDOMStringList>) end;

  JDocumentClass = interface(JNodeClass)
    ['{D6F13E91-584B-40E3-98D4-A49B673E1FAA}']
    {class} function adoptNode(source: JNode): JNode; cdecl;//Deprecated
    {class} function createCDATASection(data: JString): JCDATASection; cdecl;
    {class} function createComment(data: JString): JComment; cdecl;
    {class} function createDocumentFragment: JDocumentFragment; cdecl;
    {class} function createProcessingInstruction(target: JString; data: JString): JProcessingInstruction; cdecl;
    {class} function createTextNode(data: JString): JText; cdecl;
    {class} function getDoctype: JDocumentType; cdecl;
    {class} function getElementById(elementId: JString): JElement; cdecl;
    {class} function getElementsByTagName(tagname: JString): JNodeList; cdecl;
    {class} function getElementsByTagNameNS(namespaceURI: JString; localName: JString): JNodeList; cdecl;
    {class} function getXmlEncoding: JString; cdecl;
    {class} function getXmlStandalone: Boolean; cdecl;
    {class} function getXmlVersion: JString; cdecl;
    {class} procedure setDocumentURI(documentURI: JString); cdecl;//Deprecated
    {class} procedure setStrictErrorChecking(strictErrorChecking: Boolean); cdecl;//Deprecated
    {class} procedure setXmlStandalone(xmlStandalone: Boolean); cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/Document')]
  JDocument = interface(JNode)
    ['{A1A54941-AF47-44E3-9987-16699E7D7AE8}']
    function createAttribute(name: JString): JAttr; cdecl;
    function createAttributeNS(namespaceURI: JString; qualifiedName: JString): JAttr; cdecl;
    function createElement(tagName: JString): JElement; cdecl;
    function createElementNS(namespaceURI: JString; qualifiedName: JString): JElement; cdecl;
    function createEntityReference(name: JString): JEntityReference; cdecl;
    function getDocumentElement: JElement; cdecl;
    function getDocumentURI: JString; cdecl;
    function getDomConfig: JDOMConfiguration; cdecl;
    function getImplementation: JDOMImplementation; cdecl;
    function getInputEncoding: JString; cdecl;
    function getStrictErrorChecking: Boolean; cdecl;
    function importNode(importedNode: JNode; deep: Boolean): JNode; cdecl;//Deprecated
    procedure normalizeDocument; cdecl;//Deprecated
    function renameNode(n: JNode; namespaceURI: JString; qualifiedName: JString): JNode; cdecl;//Deprecated
    procedure setXmlVersion(xmlVersion: JString); cdecl;//Deprecated
  end;
  TJDocument = class(TJavaGenericImport<JDocumentClass, JDocument>) end;

  JDocumentFragmentClass = interface(JNodeClass)
    ['{C7329109-13F5-4DAF-9B1D-67C135CA426E}']
  end;

  [JavaSignature('org/w3c/dom/DocumentFragment')]
  JDocumentFragment = interface(JNode)
    ['{58188EC9-6A2F-4B05-B94E-0DF20D5C2214}']
  end;
  TJDocumentFragment = class(TJavaGenericImport<JDocumentFragmentClass, JDocumentFragment>) end;

  JDocumentTypeClass = interface(JNodeClass)
    ['{0A107FFB-8693-4B27-9422-07B0ACCAD242}']
    {class} function getInternalSubset: JString; cdecl;//Deprecated
    {class} function getName: JString; cdecl;//Deprecated
    {class} function getNotations: JNamedNodeMap; cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/DocumentType')]
  JDocumentType = interface(JNode)
    ['{CFD608DB-450E-45EA-BEC6-B680E662E816}']
    function getEntities: JNamedNodeMap; cdecl;//Deprecated
    function getPublicId: JString; cdecl;//Deprecated
    function getSystemId: JString; cdecl;//Deprecated
  end;
  TJDocumentType = class(TJavaGenericImport<JDocumentTypeClass, JDocumentType>) end;

  JElementClass = interface(JNodeClass)
    ['{02A52262-29B4-4297-859E-FDCE017479D5}']
    {class} function getAttribute(name: JString): JString; cdecl;//Deprecated
    {class} function getAttributeNS(namespaceURI: JString; localName: JString): JString; cdecl;//Deprecated
    {class} function getAttributeNode(name: JString): JAttr; cdecl;//Deprecated
    {class} function getSchemaTypeInfo: JTypeInfo; cdecl;//Deprecated
    {class} function getTagName: JString; cdecl;//Deprecated
    {class} function hasAttribute(name: JString): Boolean; cdecl;//Deprecated
    {class} function removeAttributeNode(oldAttr: JAttr): JAttr; cdecl;//Deprecated
    {class} procedure setAttribute(name: JString; value: JString); cdecl;//Deprecated
    {class} procedure setAttributeNS(namespaceURI: JString; qualifiedName: JString; value: JString); cdecl;//Deprecated
    {class} function setAttributeNode(newAttr: JAttr): JAttr; cdecl;
    {class} procedure setIdAttributeNode(idAttr: JAttr; isId: Boolean); cdecl;
  end;

  [JavaSignature('org/w3c/dom/Element')]
  JElement = interface(JNode)
    ['{953C1ADD-28E2-4725-95C9-B2E518AE79F9}']
    function getAttributeNodeNS(namespaceURI: JString; localName: JString): JAttr; cdecl;//Deprecated
    function getElementsByTagName(name: JString): JNodeList; cdecl;//Deprecated
    function getElementsByTagNameNS(namespaceURI: JString; localName: JString): JNodeList; cdecl;//Deprecated
    function hasAttributeNS(namespaceURI: JString; localName: JString): Boolean; cdecl;//Deprecated
    procedure removeAttribute(name: JString); cdecl;//Deprecated
    procedure removeAttributeNS(namespaceURI: JString; localName: JString); cdecl;//Deprecated
    function setAttributeNodeNS(newAttr: JAttr): JAttr; cdecl;
    procedure setIdAttribute(name: JString; isId: Boolean); cdecl;
    procedure setIdAttributeNS(namespaceURI: JString; localName: JString; isId: Boolean); cdecl;
  end;
  TJElement = class(TJavaGenericImport<JElementClass, JElement>) end;

  JEntityReferenceClass = interface(JNodeClass)
    ['{EDE635BA-9CEC-473C-BF75-163686CB36BB}']
  end;

  [JavaSignature('org/w3c/dom/EntityReference')]
  JEntityReference = interface(JNode)
    ['{47BBF06F-638E-47A8-8BE2-1FC93F0A2067}']
  end;
  TJEntityReference = class(TJavaGenericImport<JEntityReferenceClass, JEntityReference>) end;

  JNamedNodeMapClass = interface(IJavaClass)
    ['{FD563D08-BB75-461A-B13C-8C7DF3E00CC5}']
    {class} function getNamedItem(name: JString): JNode; cdecl;//Deprecated
    {class} function getNamedItemNS(namespaceURI: JString; localName: JString): JNode; cdecl;//Deprecated
    {class} function item(index: Integer): JNode; cdecl;//Deprecated
    {class} function setNamedItem(arg: JNode): JNode; cdecl;//Deprecated
    {class} function setNamedItemNS(arg: JNode): JNode; cdecl;//Deprecated
  end;

  [JavaSignature('org/w3c/dom/NamedNodeMap')]
  JNamedNodeMap = interface(IJavaInstance)
    ['{92F9509D-82EA-4290-A970-7BB551F08679}']
    function getLength: Integer; cdecl;//Deprecated
    function removeNamedItem(name: JString): JNode; cdecl;//Deprecated
    function removeNamedItemNS(namespaceURI: JString; localName: JString): JNode; cdecl;//Deprecated
  end;
  TJNamedNodeMap = class(TJavaGenericImport<JNamedNodeMapClass, JNamedNodeMap>) end;

  JProcessingInstructionClass = interface(JNodeClass)
    ['{9B71FB69-7682-435D-9031-529E15076309}']
    {class} function getData: JString; cdecl;
    {class} function getTarget: JString; cdecl;
  end;

  [JavaSignature('org/w3c/dom/ProcessingInstruction')]
  JProcessingInstruction = interface(JNode)
    ['{50F37F5A-E5A2-4190-B19F-820997AF3D4C}']
    procedure setData(data: JString); cdecl;
  end;
  TJProcessingInstruction = class(TJavaGenericImport<JProcessingInstructionClass, JProcessingInstruction>) end;

  JTypeInfoClass = interface(IJavaClass)
    ['{532BAFC7-6829-43E4-9478-E739B90EE1FC}']
    {class} function _GetDERIVATION_EXTENSION: Integer; cdecl;
    {class} function _GetDERIVATION_LIST: Integer; cdecl;
    {class} function _GetDERIVATION_RESTRICTION: Integer; cdecl;
    {class} function _GetDERIVATION_UNION: Integer; cdecl;
    {class} function isDerivedFrom(typeNamespaceArg: JString; typeNameArg: JString; derivationMethod: Integer): Boolean; cdecl;//Deprecated
    {class} property DERIVATION_EXTENSION: Integer read _GetDERIVATION_EXTENSION;
    {class} property DERIVATION_LIST: Integer read _GetDERIVATION_LIST;
    {class} property DERIVATION_RESTRICTION: Integer read _GetDERIVATION_RESTRICTION;
    {class} property DERIVATION_UNION: Integer read _GetDERIVATION_UNION;
  end;

  [JavaSignature('org/w3c/dom/TypeInfo')]
  JTypeInfo = interface(IJavaInstance)
    ['{876A11F9-8450-45FF-8F4F-F9D68333BDEF}']
    function getTypeName: JString; cdecl;//Deprecated
    function getTypeNamespace: JString; cdecl;//Deprecated
  end;
  TJTypeInfo = class(TJavaGenericImport<JTypeInfoClass, JTypeInfo>) end;

  JUserDataHandlerClass = interface(IJavaClass)
    ['{AD3B738E-675E-4B2E-869D-6888E7959C0B}']
    {class} function _GetNODE_ADOPTED: SmallInt; cdecl;
    {class} function _GetNODE_CLONED: SmallInt; cdecl;
    {class} function _GetNODE_DELETED: SmallInt; cdecl;
    {class} function _GetNODE_IMPORTED: SmallInt; cdecl;
    {class} function _GetNODE_RENAMED: SmallInt; cdecl;
    {class} procedure handle(operation: SmallInt; key: JString; data: JObject; src: JNode; dst: JNode); cdecl;//Deprecated
    {class} property NODE_ADOPTED: SmallInt read _GetNODE_ADOPTED;
    {class} property NODE_CLONED: SmallInt read _GetNODE_CLONED;
    {class} property NODE_DELETED: SmallInt read _GetNODE_DELETED;
    {class} property NODE_IMPORTED: SmallInt read _GetNODE_IMPORTED;
    {class} property NODE_RENAMED: SmallInt read _GetNODE_RENAMED;
  end;

  [JavaSignature('org/w3c/dom/UserDataHandler')]
  JUserDataHandler = interface(IJavaInstance)
    ['{F3E555E4-F55C-4228-B9D6-4494A3E32FDF}']
  end;
  TJUserDataHandler = class(TJavaGenericImport<JUserDataHandlerClass, JUserDataHandler>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Elgin.JNI.E1.JAnimator', TypeInfo(Elgin.JNI.E1.JAnimator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAnimator_AnimatorListener', TypeInfo(Elgin.JNI.E1.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAnimator_AnimatorPauseListener', TypeInfo(Elgin.JNI.E1.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JKeyframe', TypeInfo(Elgin.JNI.E1.JKeyframe));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLayoutTransition', TypeInfo(Elgin.JNI.E1.JLayoutTransition));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLayoutTransition_TransitionListener', TypeInfo(Elgin.JNI.E1.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPropertyValuesHolder', TypeInfo(Elgin.JNI.E1.JPropertyValuesHolder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStateListAnimator', TypeInfo(Elgin.JNI.E1.JStateListAnimator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTimeInterpolator', TypeInfo(Elgin.JNI.E1.JTimeInterpolator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTypeConverter', TypeInfo(Elgin.JNI.E1.JTypeConverter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTypeEvaluator', TypeInfo(Elgin.JNI.E1.JTypeEvaluator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JValueAnimator', TypeInfo(Elgin.JNI.E1.JValueAnimator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JValueAnimator_AnimatorUpdateListener', TypeInfo(Elgin.JNI.E1.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbAccessory', TypeInfo(Elgin.JNI.E1.JUsbAccessory));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbConfiguration', TypeInfo(Elgin.JNI.E1.JUsbConfiguration));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbDevice', TypeInfo(Elgin.JNI.E1.JUsbDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbDeviceConnection', TypeInfo(Elgin.JNI.E1.JUsbDeviceConnection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbEndpoint', TypeInfo(Elgin.JNI.E1.JUsbEndpoint));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbInterface', TypeInfo(Elgin.JNI.E1.JUsbInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbManager', TypeInfo(Elgin.JNI.E1.JUsbManager));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbRequest', TypeInfo(Elgin.JNI.E1.JUsbRequest));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPathMotion', TypeInfo(Elgin.JNI.E1.JPathMotion));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScene', TypeInfo(Elgin.JNI.E1.JScene));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransition', TypeInfo(Elgin.JNI.E1.JTransition));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransition_EpicenterCallback', TypeInfo(Elgin.JNI.E1.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransition_TransitionListener', TypeInfo(Elgin.JNI.E1.JTransition_TransitionListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransitionManager', TypeInfo(Elgin.JNI.E1.JTransitionManager));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransitionPropagation', TypeInfo(Elgin.JNI.E1.JTransitionPropagation));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransitionValues', TypeInfo(Elgin.JNI.E1.JTransitionValues));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterpolator', TypeInfo(Elgin.JNI.E1.JInterpolator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JToolbar_LayoutParams', TypeInfo(Elgin.JNI.E1.JToolbar_LayoutParams));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAppInitializer', TypeInfo(Elgin.JNI.E1.JAppInitializer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInitializationProvider', TypeInfo(Elgin.JNI.E1.JInitializationProvider));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInitializer', TypeInfo(Elgin.JNI.E1.JInitializer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStartupException', TypeInfo(Elgin.JNI.E1.JStartupException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStartupLogger', TypeInfo(Elgin.JNI.E1.JStartupLogger));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAplicacaoNaoInstaladaExcecao', TypeInfo(Elgin.JNI.E1.JAplicacaoNaoInstaladaExcecao));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jinterfaceautomacao_BuildConfig', TypeInfo(Elgin.JNI.E1.Jinterfaceautomacao_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCartoes', TypeInfo(Elgin.JNI.E1.JCartoes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComunicacaoServico', TypeInfo(Elgin.JNI.E1.JComunicacaoServico));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComunicacaoServico_IncomingHandler', TypeInfo(Elgin.JNI.E1.JComunicacaoServico_IncomingHandler));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConfirmacao', TypeInfo(Elgin.JNI.E1.JConfirmacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConfirmacoes', TypeInfo(Elgin.JNI.E1.JConfirmacoes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDadosAutomacao', TypeInfo(Elgin.JNI.E1.JDadosAutomacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEntradaTransacao', TypeInfo(Elgin.JNI.E1.JEntradaTransacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinanciamentos', TypeInfo(Elgin.JNI.E1.JFinanciamentos));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGlobalDefs', TypeInfo(Elgin.JNI.E1.JGlobalDefs));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIdentificacaoPortadorCarteira', TypeInfo(Elgin.JNI.E1.JIdentificacaoPortadorCarteira));
  TRegTypes.RegisterType('Elgin.JNI.E1.JModalidadesPagamento', TypeInfo(Elgin.JNI.E1.JModalidadesPagamento));
  TRegTypes.RegisterType('Elgin.JNI.E1.JModalidadesTransacao', TypeInfo(Elgin.JNI.E1.JModalidadesTransacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOperacoes', TypeInfo(Elgin.JNI.E1.JOperacoes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPersonalizacao', TypeInfo(Elgin.JNI.E1.JPersonalizacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPersonalizacao_1', TypeInfo(Elgin.JNI.E1.JPersonalizacao_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPersonalizacao_Builder', TypeInfo(Elgin.JNI.E1.JPersonalizacao_Builder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JProvedores', TypeInfo(Elgin.JNI.E1.JProvedores));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQuedaConexaoTerminalExcecao', TypeInfo(Elgin.JNI.E1.JQuedaConexaoTerminalExcecao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSaidaTransacao', TypeInfo(Elgin.JNI.E1.JSaidaTransacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSenderActivity', TypeInfo(Elgin.JNI.E1.JSenderActivity));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStatusTransacao', TypeInfo(Elgin.JNI.E1.JStatusTransacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminal', TypeInfo(Elgin.JNI.E1.JTerminal));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminalDesconectadoExcecao', TypeInfo(Elgin.JNI.E1.JTerminalDesconectadoExcecao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminalNaoConfiguradoExcecao', TypeInfo(Elgin.JNI.E1.JTerminalNaoConfiguradoExcecao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransacao', TypeInfo(Elgin.JNI.E1.JTransacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransacaoPendenteDados', TypeInfo(Elgin.JNI.E1.JTransacaoPendenteDados));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransacoes', TypeInfo(Elgin.JNI.E1.JTransacoes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransacoes_1', TypeInfo(Elgin.JNI.E1.JTransacoes_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransacoes_TransacaoResultReceiver', TypeInfo(Elgin.JNI.E1.JTransacoes_TransacaoResultReceiver));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVersoes', TypeInfo(Elgin.JNI.E1.JVersoes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JViasImpressao', TypeInfo(Elgin.JNI.E1.JViasImpressao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCustomization', TypeInfo(Elgin.JNI.E1.JCustomization));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransactionInput', TypeInfo(Elgin.JNI.E1.JTransactionInput));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTransactionOutput', TypeInfo(Elgin.JNI.E1.JTransactionOutput));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDateParser', TypeInfo(Elgin.JNI.E1.JDateParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEnumType', TypeInfo(Elgin.JNI.E1.JEnumType));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInputParser', TypeInfo(Elgin.JNI.E1.JInputParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOutputParser', TypeInfo(Elgin.JNI.E1.JOutputParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jparser_ParseException', TypeInfo(Elgin.JNI.E1.Jparser_ParseException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriArrayFieldName', TypeInfo(Elgin.JNI.E1.JUriArrayFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jparser_UriClass', TypeInfo(Elgin.JNI.E1.Jparser_UriClass));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriCustomizeFieldName', TypeInfo(Elgin.JNI.E1.JUriCustomizeFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriDateFieldName', TypeInfo(Elgin.JNI.E1.JUriDateFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriEnumFieldName', TypeInfo(Elgin.JNI.E1.JUriEnumFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriFileFieldName', TypeInfo(Elgin.JNI.E1.JUriFileFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriMethodName', TypeInfo(Elgin.JNI.E1.JUriMethodName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriObjectFieldName', TypeInfo(Elgin.JNI.E1.JUriObjectFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUriPrimitiveFieldName', TypeInfo(Elgin.JNI.E1.JUriPrimitiveFieldName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAlgorithmConstants', TypeInfo(Elgin.JNI.E1.JAlgorithmConstants));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDevice', TypeInfo(Elgin.JNI.E1.JDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDeviceException', TypeInfo(Elgin.JNI.E1.JDeviceException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDeviceSpec', TypeInfo(Elgin.JNI.E1.JDeviceSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOperationListener', TypeInfo(Elgin.JNI.E1.JOperationListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOperationResult', TypeInfo(Elgin.JNI.E1.JOperationResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPOSTerminal', TypeInfo(Elgin.JNI.E1.JPOSTerminal));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminalSpec', TypeInfo(Elgin.JNI.E1.JTerminalSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTimeConstants', TypeInfo(Elgin.JNI.E1.JTimeConstants));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprint', TypeInfo(Elgin.JNI.E1.JFingerprint));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintDevice', TypeInfo(Elgin.JNI.E1.JFingerprintDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintDeviceSpec', TypeInfo(Elgin.JNI.E1.JFingerprintDeviceSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintOperationResult', TypeInfo(Elgin.JNI.E1.JFingerprintOperationResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIFPHelper', TypeInfo(Elgin.JNI.E1.JIFPHelper));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIFPHelper_Stub', TypeInfo(Elgin.JNI.E1.JIFPHelper_Stub));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIFPHelper_Stub_Proxy', TypeInfo(Elgin.JNI.E1.JIFPHelper_Stub_Proxy));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jfingerprint_package_info', TypeInfo(Elgin.JNI.E1.Jfingerprint_package_info));
  TRegTypes.RegisterType('Elgin.JNI.E1.JExternalPrinterInterface', TypeInfo(Elgin.JNI.E1.JExternalPrinterInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerPrintInterface', TypeInfo(Elgin.JNI.E1.JFingerPrintInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIsoFingerPrintInterface', TypeInfo(Elgin.JNI.E1.JIsoFingerPrintInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JJNILoad', TypeInfo(Elgin.JNI.E1.JJNILoad));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDInterface', TypeInfo(Elgin.JNI.E1.JLEDInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterHtmlInterface', TypeInfo(Elgin.JNI.E1.JPrinterHtmlInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterInterface', TypeInfo(Elgin.JNI.E1.JPrinterInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortInterface', TypeInfo(Elgin.JNI.E1.JSerialPortInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDDevice', TypeInfo(Elgin.JNI.E1.JLEDDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDDeviceSpec', TypeInfo(Elgin.JNI.E1.JLEDDeviceSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jled_package_info', TypeInfo(Elgin.JNI.E1.Jled_package_info));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jpackage_info', TypeInfo(Elgin.JNI.E1.Jpackage_info));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jprinter_Format', TypeInfo(Elgin.JNI.E1.Jprinter_Format));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterDevice', TypeInfo(Elgin.JNI.E1.JPrinterDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterDeviceSpec', TypeInfo(Elgin.JNI.E1.JPrinterDeviceSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterOperationResult', TypeInfo(Elgin.JNI.E1.JPrinterOperationResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jprinter_package_info', TypeInfo(Elgin.JNI.E1.Jprinter_package_info));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanCallBack', TypeInfo(Elgin.JNI.E1.JIScanCallBack));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanCallBack_Stub', TypeInfo(Elgin.JNI.E1.JIScanCallBack_Stub));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanCallBack_Stub_Proxy', TypeInfo(Elgin.JNI.E1.JIScanCallBack_Stub_Proxy));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanService', TypeInfo(Elgin.JNI.E1.JIScanService));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanService_Stub', TypeInfo(Elgin.JNI.E1.JIScanService_Stub));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIScanService_Stub_Proxy', TypeInfo(Elgin.JNI.E1.JIScanService_Stub_Proxy));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanParameter', TypeInfo(Elgin.JNI.E1.JScanParameter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanParameter_1', TypeInfo(Elgin.JNI.E1.JScanParameter_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jaidl_ScanResult', TypeInfo(Elgin.JNI.E1.Jaidl_ScanResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanResult_1', TypeInfo(Elgin.JNI.E1.JScanResult_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jcommon_Common', TypeInfo(Elgin.JNI.E1.Jcommon_Common));
  TRegTypes.RegisterType('Elgin.JNI.E1.JReflect', TypeInfo(Elgin.JNI.E1.JReflect));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSystemProperties', TypeInfo(Elgin.JNI.E1.JSystemProperties));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractDevice', TypeInfo(Elgin.JNI.E1.JAbstractDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintDeviceImpl', TypeInfo(Elgin.JNI.E1.JFingerprintDeviceImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintDeviceImpl_FpConnection', TypeInfo(Elgin.JNI.E1.JFingerprintDeviceImpl_FpConnection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintDeviceImpl_ListenForFingerprintThread', TypeInfo(Elgin.JNI.E1.JFingerprintDeviceImpl_ListenForFingerprintThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFingerprintOperationResultImpl', TypeInfo(Elgin.JNI.E1.JFingerprintOperationResultImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSystemPropertyHelper', TypeInfo(Elgin.JNI.E1.JSystemPropertyHelper));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminalHelper', TypeInfo(Elgin.JNI.E1.JTerminalHelper));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractDevice_1', TypeInfo(Elgin.JNI.E1.JAbstractDevice_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractDevice_HandleResultThread', TypeInfo(Elgin.JNI.E1.JAbstractDevice_HandleResultThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDeviceName', TypeInfo(Elgin.JNI.E1.JDeviceName));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPOSTerminalImpl', TypeInfo(Elgin.JNI.E1.JPOSTerminalImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTerminalSpecImpl', TypeInfo(Elgin.JNI.E1.JTerminalSpecImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDDeviceImpl', TypeInfo(Elgin.JNI.E1.JLEDDeviceImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDDeviceImpl_BlinkThread', TypeInfo(Elgin.JNI.E1.JLEDDeviceImpl_BlinkThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLEDDeviceSpecImpl', TypeInfo(Elgin.JNI.E1.JLEDDeviceSpecImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterCommand', TypeInfo(Elgin.JNI.E1.JPrinterCommand));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterDeviceImpl', TypeInfo(Elgin.JNI.E1.JPrinterDeviceImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterDeviceSpecImpl', TypeInfo(Elgin.JNI.E1.JPrinterDeviceSpecImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterUtil', TypeInfo(Elgin.JNI.E1.JPrinterUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortDeviceImpl', TypeInfo(Elgin.JNI.E1.JSerialPortDeviceImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortDeviceImpl_ListenForReadThread', TypeInfo(Elgin.JNI.E1.JSerialPortDeviceImpl_ListenForReadThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortDeviceSpec', TypeInfo(Elgin.JNI.E1.JSerialPortDeviceSpec));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortDeviceSpecImpl', TypeInfo(Elgin.JNI.E1.JSerialPortDeviceSpecImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortOperationResult', TypeInfo(Elgin.JNI.E1.JSerialPortOperationResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortOperationResultImpl', TypeInfo(Elgin.JNI.E1.JSerialPortOperationResultImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByteConvert', TypeInfo(Elgin.JNI.E1.JByteConvert));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByteConvert2', TypeInfo(Elgin.JNI.E1.JByteConvert2));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByteConvertStringUtil', TypeInfo(Elgin.JNI.E1.JByteConvertStringUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByteUtil', TypeInfo(Elgin.JNI.E1.JByteUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jutil_Debug', TypeInfo(Elgin.JNI.E1.Jutil_Debug));
  TRegTypes.RegisterType('Elgin.JNI.E1.JErrorCode', TypeInfo(Elgin.JNI.E1.JErrorCode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFileUtil', TypeInfo(Elgin.JNI.E1.JFileUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JJavaSDKVersion', TypeInfo(Elgin.JNI.E1.JJavaSDKVersion));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLogHelper', TypeInfo(Elgin.JNI.E1.JLogHelper));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStringUtil', TypeInfo(Elgin.JNI.E1.JStringUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStringUtility', TypeInfo(Elgin.JNI.E1.JStringUtility));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSystemUtil', TypeInfo(Elgin.JNI.E1.JSystemUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialPortDevice', TypeInfo(Elgin.JNI.E1.JSerialPortDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jserialport_package_info', TypeInfo(Elgin.JNI.E1.Jserialport_package_info));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalanca', TypeInfo(Elgin.JNI.E1.JBalanca));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalanca_Config', TypeInfo(Elgin.JNI.E1.JBalanca_Config));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalanca_ConfigAltValues', TypeInfo(Elgin.JNI.E1.JBalanca_ConfigAltValues));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalanca_ModeloBalanca', TypeInfo(Elgin.JNI.E1.JBalanca_ModeloBalanca));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalanca_ProtocoloComunicacao', TypeInfo(Elgin.JNI.E1.JBalanca_ProtocoloComunicacao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalancaE1', TypeInfo(Elgin.JNI.E1.JBalancaE1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBalancas', TypeInfo(Elgin.JNI.E1.JBalancas));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComm', TypeInfo(Elgin.JNI.E1.JComm));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComm_1', TypeInfo(Elgin.JNI.E1.JComm_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComm_TipoConexao', TypeInfo(Elgin.JNI.E1.JComm_TipoConexao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCommSerial', TypeInfo(Elgin.JNI.E1.JCommSerial));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCommTCP', TypeInfo(Elgin.JNI.E1.JCommTCP));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCommTCP_Timeouts', TypeInfo(Elgin.JNI.E1.JCommTCP_Timeouts));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceBalanca', TypeInfo(Elgin.JNI.E1.JInterfaceBalanca));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoBalanca', TypeInfo(Elgin.JNI.E1.JImplementacaoBalanca));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoBalanca_1', TypeInfo(Elgin.JNI.E1.JImplementacaoBalanca_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.Je1_BuildConfig', TypeInfo(Elgin.JNI.E1.Je1_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConexao', TypeInfo(Elgin.JNI.E1.JConexao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConBluetooth', TypeInfo(Elgin.JNI.E1.JConBluetooth));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConBluetooth_1GetBluetoothData', TypeInfo(Elgin.JNI.E1.JConBluetooth_1GetBluetoothData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConBluetooth_1GetPrinterBluetooth', TypeInfo(Elgin.JNI.E1.JConBluetooth_1GetPrinterBluetooth));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConBluetooth_1SendData', TypeInfo(Elgin.JNI.E1.JConBluetooth_1SendData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConM8', TypeInfo(Elgin.JNI.E1.JConM8));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterManager_PrinterManagerListener', TypeInfo(Elgin.JNI.E1.JPrinterManager_PrinterManagerListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConM8_1', TypeInfo(Elgin.JNI.E1.JConM8_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConSerial', TypeInfo(Elgin.JNI.E1.JConSerial));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConService', TypeInfo(Elgin.JNI.E1.JConService));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConService_1GetData', TypeInfo(Elgin.JNI.E1.JConService_1GetData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConService_1GetPrinter', TypeInfo(Elgin.JNI.E1.JConService_1GetPrinter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConService_1SendData', TypeInfo(Elgin.JNI.E1.JConService_1SendData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConService_2GetData', TypeInfo(Elgin.JNI.E1.JConService_2GetData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConSmartPOS', TypeInfo(Elgin.JNI.E1.JConSmartPOS));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConTCP_IP', TypeInfo(Elgin.JNI.E1.JConTCP_IP));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConTCP_IP_1GetData', TypeInfo(Elgin.JNI.E1.JConTCP_IP_1GetData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConTCP_IP_1GetPrinter', TypeInfo(Elgin.JNI.E1.JConTCP_IP_1GetPrinter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConTCP_IP_1SendData', TypeInfo(Elgin.JNI.E1.JConTCP_IP_1SendData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConUSB', TypeInfo(Elgin.JNI.E1.JConUSB));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConUSB_1', TypeInfo(Elgin.JNI.E1.JConUSB_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceFactoryXMLSAT', TypeInfo(Elgin.JNI.E1.JInterfaceFactoryXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoFactoryXMLSAT', TypeInfo(Elgin.JNI.E1.JImplementacaoFactoryXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceSAT', TypeInfo(Elgin.JNI.E1.JInterfaceSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoSAT', TypeInfo(Elgin.JNI.E1.JImplementacaoSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMFe', TypeInfo(Elgin.JNI.E1.JMFe));
  TRegTypes.RegisterType('Elgin.JNI.E1.JNFCe', TypeInfo(Elgin.JNI.E1.JNFCe));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSAT', TypeInfo(Elgin.JNI.E1.JSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAndroid', TypeInfo(Elgin.JNI.E1.JAndroid));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsImpressora', TypeInfo(Elgin.JNI.E1.JdsImpressora));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsImpressora_1', TypeInfo(Elgin.JNI.E1.JdsImpressora_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsImpressora_infoHW', TypeInfo(Elgin.JNI.E1.JdsImpressora_infoHW));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsSAT', TypeInfo(Elgin.JNI.E1.JdsSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsSAT_1', TypeInfo(Elgin.JNI.E1.JdsSAT_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JdsSAT_ChaveDePesquisa', TypeInfo(Elgin.JNI.E1.JdsSAT_ChaveDePesquisa));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEtiqueta', TypeInfo(Elgin.JNI.E1.JEtiqueta));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAndroidDevices', TypeInfo(Elgin.JNI.E1.JAndroidDevices));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceAndroid', TypeInfo(Elgin.JNI.E1.JInterfaceAndroid));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoAndroid', TypeInfo(Elgin.JNI.E1.JImplementacaoAndroid));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoAndroid_IIImpressaoTexto', TypeInfo(Elgin.JNI.E1.JImplementacaoAndroid_IIImpressaoTexto));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceBematech', TypeInfo(Elgin.JNI.E1.JInterfaceBematech));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoBematech', TypeInfo(Elgin.JNI.E1.JImplementacaoBematech));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceEtiqueta', TypeInfo(Elgin.JNI.E1.JInterfaceEtiqueta));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoEtiqueta', TypeInfo(Elgin.JNI.E1.JImplementacaoEtiqueta));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoM8', TypeInfo(Elgin.JNI.E1.JImplementacaoM8));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoM8_1', TypeInfo(Elgin.JNI.E1.JImplementacaoM8_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoSmartPOS', TypeInfo(Elgin.JNI.E1.JImplementacaoSmartPOS));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoSmartPOS_1', TypeInfo(Elgin.JNI.E1.JImplementacaoSmartPOS_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceTermica', TypeInfo(Elgin.JNI.E1.JInterfaceTermica));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoTermica', TypeInfo(Elgin.JNI.E1.JImplementacaoTermica));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceM8', TypeInfo(Elgin.JNI.E1.JInterfaceM8));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceSmartPOS', TypeInfo(Elgin.JNI.E1.JInterfaceSmartPOS));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMiniPDVM8', TypeInfo(Elgin.JNI.E1.JMiniPDVM8));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSmart', TypeInfo(Elgin.JNI.E1.JSmart));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTermica', TypeInfo(Elgin.JNI.E1.JTermica));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCodigoErro', TypeInfo(Elgin.JNI.E1.JCodigoErro));
  TRegTypes.RegisterType('Elgin.JNI.E1.JESCPOS', TypeInfo(Elgin.JNI.E1.JESCPOS));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInteiro', TypeInfo(Elgin.JNI.E1.JInteiro));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPPLA', TypeInfo(Elgin.JNI.E1.JPPLA));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStringRef', TypeInfo(Elgin.JNI.E1.JStringRef));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUtilidades', TypeInfo(Elgin.JNI.E1.JUtilidades));
  TRegTypes.RegisterType('Elgin.JNI.E1.JNodeList', TypeInfo(Elgin.JNI.E1.JNodeList));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUtilidades_1', TypeInfo(Elgin.JNI.E1.JUtilidades_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJXMLPRODUTO', TypeInfo(Elgin.JNI.E1.JInterfaceOBJXMLPRODUTO));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXMLPRODUTO', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXMLPRODUTO));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJPRODUTOXMLNFCE', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJPRODUTOXMLNFCE));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJPRODUTOXMLSAT', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJPRODUTOXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJXML', TypeInfo(Elgin.JNI.E1.JInterfaceOBJXML));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXML', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXML));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXML_1', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXML_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXML_infoPag', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXML_infoPag));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXMLCANCELAMENTO', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXMLCANCELAMENTO));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXMLNFCE', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXMLNFCE));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoOBJXMLSAT', TypeInfo(Elgin.JNI.E1.JImplementacaoOBJXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJPRODUTOXMLNFCE', TypeInfo(Elgin.JNI.E1.JInterfaceOBJPRODUTOXMLNFCE));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJPRODUTOXMLSAT', TypeInfo(Elgin.JNI.E1.JInterfaceOBJPRODUTOXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJXMLCANCELAMENTO', TypeInfo(Elgin.JNI.E1.JInterfaceOBJXMLCANCELAMENTO));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJXMLNFCE', TypeInfo(Elgin.JNI.E1.JInterfaceOBJXMLNFCE));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceOBJXMLSAT', TypeInfo(Elgin.JNI.E1.JInterfaceOBJXMLSAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBridge', TypeInfo(Elgin.JNI.E1.JBridge));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConfigFile', TypeInfo(Elgin.JNI.E1.JConfigFile));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConfigFileInitializer', TypeInfo(Elgin.JNI.E1.JConfigFileInitializer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JConstantes', TypeInfo(Elgin.JNI.E1.JConstantes));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInterfaceBridge', TypeInfo(Elgin.JNI.E1.JInterfaceBridge));
  TRegTypes.RegisterType('Elgin.JNI.E1.JImplementacaoBridge', TypeInfo(Elgin.JNI.E1.JImplementacaoBridge));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTcpSocket', TypeInfo(Elgin.JNI.E1.JTcpSocket));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTcpSocket_1TcpConnect', TypeInfo(Elgin.JNI.E1.JTcpSocket_1TcpConnect));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTcpSocket_1TcpReadAll', TypeInfo(Elgin.JNI.E1.JTcpSocket_1TcpReadAll));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTcpSocket_1TcpWrite', TypeInfo(Elgin.JNI.E1.JTcpSocket_1TcpWrite));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController', TypeInfo(Elgin.JNI.E1.JElginPayController));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_1', TypeInfo(Elgin.JNI.E1.JElginPayController_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_10', TypeInfo(Elgin.JNI.E1.JElginPayController_10));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_11', TypeInfo(Elgin.JNI.E1.JElginPayController_11));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_2', TypeInfo(Elgin.JNI.E1.JElginPayController_2));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_3', TypeInfo(Elgin.JNI.E1.JElginPayController_3));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_4', TypeInfo(Elgin.JNI.E1.JElginPayController_4));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_5', TypeInfo(Elgin.JNI.E1.JElginPayController_5));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_6', TypeInfo(Elgin.JNI.E1.JElginPayController_6));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_7', TypeInfo(Elgin.JNI.E1.JElginPayController_7));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_8', TypeInfo(Elgin.JNI.E1.JElginPayController_8));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPayController_9', TypeInfo(Elgin.JNI.E1.JElginPayController_9));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTipoImpressao', TypeInfo(Elgin.JNI.E1.JTipoImpressao));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElginPay', TypeInfo(Elgin.JNI.E1.JElginPay));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPagamento_Utils', TypeInfo(Elgin.JNI.E1.JPagamento_Utils));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanner_Scanner', TypeInfo(Elgin.JNI.E1.JScanner_Scanner));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAssinaturas', TypeInfo(Elgin.JNI.E1.JAssinaturas));
  TRegTypes.RegisterType('Elgin.JNI.E1.JParametros', TypeInfo(Elgin.JNI.E1.JParametros));
  TRegTypes.RegisterType('Elgin.JNI.E1.JServicoE1', TypeInfo(Elgin.JNI.E1.JServicoE1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JServicoE1_Etiqueta', TypeInfo(Elgin.JNI.E1.JServicoE1_Etiqueta));
  TRegTypes.RegisterType('Elgin.JNI.E1.JServicoE1_SAT', TypeInfo(Elgin.JNI.E1.JServicoE1_SAT));
  TRegTypes.RegisterType('Elgin.JNI.E1.JServicoE1_Termica', TypeInfo(Elgin.JNI.E1.JServicoE1_Termica));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jminipdvm8_BuildConfig', TypeInfo(Elgin.JNI.E1.Jminipdvm8_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterManager', TypeInfo(Elgin.JNI.E1.JPrinterManager));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterManager_1', TypeInfo(Elgin.JNI.E1.JPrinterManager_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterCallback_Stub', TypeInfo(Elgin.JNI.E1.JIPrinterCallback_Stub));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterManager_2', TypeInfo(Elgin.JNI.E1.JPrinterManager_2));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jcloudpossdk_aar_slim_BuildConfig', TypeInfo(Elgin.JNI.E1.Jcloudpossdk_aar_slim_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanner_BuildConfig', TypeInfo(Elgin.JNI.E1.JScanner_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JScanner_MainActivity', TypeInfo(Elgin.JNI.E1.JScanner_MainActivity));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMainActivity_1', TypeInfo(Elgin.JNI.E1.JMainActivity_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAidlController', TypeInfo(Elgin.JNI.E1.JAidlController));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAidlController_ServiceConnectionImpl', TypeInfo(Elgin.JNI.E1.JAidlController_ServiceConnectionImpl));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIAIDLListener', TypeInfo(Elgin.JNI.E1.JIAIDLListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDeviceUtils', TypeInfo(Elgin.JNI.E1.JDeviceUtils));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCH34xIds', TypeInfo(Elgin.JNI.E1.JCH34xIds));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCH34xIds_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JCH34xIds_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP210xIds', TypeInfo(Elgin.JNI.E1.JCP210xIds));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP210xIds_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JCP210xIds_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP2130Ids', TypeInfo(Elgin.JNI.E1.JCP2130Ids));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP2130Ids_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JCP2130Ids_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFTDISioIds', TypeInfo(Elgin.JNI.E1.JFTDISioIds));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFTDISioIds_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JFTDISioIds_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPL2303Ids', TypeInfo(Elgin.JNI.E1.JPL2303Ids));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPL2303Ids_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JPL2303Ids_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JXdcVcpIds', TypeInfo(Elgin.JNI.E1.JXdcVcpIds));
  TRegTypes.RegisterType('Elgin.JNI.E1.JXdcVcpIds_ConcreteDevice', TypeInfo(Elgin.JNI.E1.JXdcVcpIds_ConcreteDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialDevice', TypeInfo(Elgin.JNI.E1.JUsbSerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBLED112SerialDevice', TypeInfo(Elgin.JNI.E1.JBLED112SerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jusbserial_BuildConfig', TypeInfo(Elgin.JNI.E1.Jusbserial_BuildConfig));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCDCSerialDevice', TypeInfo(Elgin.JNI.E1.JCDCSerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCH34xSerialDevice', TypeInfo(Elgin.JNI.E1.JCH34xSerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCH34xSerialDevice_FlowControlThread', TypeInfo(Elgin.JNI.E1.JCH34xSerialDevice_FlowControlThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP2102SerialDevice', TypeInfo(Elgin.JNI.E1.JCP2102SerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP2102SerialDevice_FlowControlThread', TypeInfo(Elgin.JNI.E1.JCP2102SerialDevice_FlowControlThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSpiInterface', TypeInfo(Elgin.JNI.E1.JUsbSpiInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSpiDevice', TypeInfo(Elgin.JNI.E1.JUsbSpiDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCP2130SpiDevice', TypeInfo(Elgin.JNI.E1.JCP2130SpiDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFTDISerialDevice', TypeInfo(Elgin.JNI.E1.JFTDISerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFTDISerialDevice_FTDIUtilities', TypeInfo(Elgin.JNI.E1.JFTDISerialDevice_FTDIUtilities));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPL2303SerialDevice', TypeInfo(Elgin.JNI.E1.JPL2303SerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialBuffer', TypeInfo(Elgin.JNI.E1.JSerialBuffer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialBuffer_SynchronizedBuffer', TypeInfo(Elgin.JNI.E1.JSerialBuffer_SynchronizedBuffer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialInputStream', TypeInfo(Elgin.JNI.E1.JSerialInputStream));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSerialOutputStream', TypeInfo(Elgin.JNI.E1.JSerialOutputStream));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialDebugger', TypeInfo(Elgin.JNI.E1.JUsbSerialDebugger));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialDevice_ReadThread', TypeInfo(Elgin.JNI.E1.JUsbSerialDevice_ReadThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialDevice_WorkerThread', TypeInfo(Elgin.JNI.E1.JUsbSerialDevice_WorkerThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialDevice_WriteThread', TypeInfo(Elgin.JNI.E1.JUsbSerialDevice_WriteThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbBreakCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbBreakCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbCTSCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbCTSCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbDSRCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbDSRCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbFrameCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbFrameCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbOverrunCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbOverrunCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbParityCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbParityCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSerialInterface_UsbReadCallback', TypeInfo(Elgin.JNI.E1.JUsbSerialInterface_UsbReadCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSpiDevice_ReadThread', TypeInfo(Elgin.JNI.E1.JUsbSpiDevice_ReadThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSpiDevice_WriteThread', TypeInfo(Elgin.JNI.E1.JUsbSpiDevice_WriteThread));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUsbSpiInterface_UsbMISOCallback', TypeInfo(Elgin.JNI.E1.JUsbSpiInterface_UsbMISOCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JXdcVcpSerialDevice', TypeInfo(Elgin.JNI.E1.JXdcVcpSerialDevice));
  TRegTypes.RegisterType('Elgin.JNI.E1.JHexData', TypeInfo(Elgin.JNI.E1.JHexData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBarcodeFormat', TypeInfo(Elgin.JNI.E1.JBarcodeFormat));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBinarizer', TypeInfo(Elgin.JNI.E1.JBinarizer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBinaryBitmap', TypeInfo(Elgin.JNI.E1.JBinaryBitmap));
  TRegTypes.RegisterType('Elgin.JNI.E1.JReaderException', TypeInfo(Elgin.JNI.E1.JReaderException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JChecksumException', TypeInfo(Elgin.JNI.E1.JChecksumException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodeHintType', TypeInfo(Elgin.JNI.E1.JDecodeHintType));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jzxing_Dimension', TypeInfo(Elgin.JNI.E1.Jzxing_Dimension));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEncodeHintType', TypeInfo(Elgin.JNI.E1.JEncodeHintType));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jzxing_FormatException', TypeInfo(Elgin.JNI.E1.Jzxing_FormatException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JLuminanceSource', TypeInfo(Elgin.JNI.E1.JLuminanceSource));
  TRegTypes.RegisterType('Elgin.JNI.E1.JInvertedLuminanceSource', TypeInfo(Elgin.JNI.E1.JInvertedLuminanceSource));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jzxing_Reader', TypeInfo(Elgin.JNI.E1.Jzxing_Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFormatReader', TypeInfo(Elgin.JNI.E1.JMultiFormatReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jzxing_Writer', TypeInfo(Elgin.JNI.E1.Jzxing_Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFormatWriter', TypeInfo(Elgin.JNI.E1.JMultiFormatWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFormatWriter_1', TypeInfo(Elgin.JNI.E1.JMultiFormatWriter_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JNotFoundException', TypeInfo(Elgin.JNI.E1.JNotFoundException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPlanarYUVLuminanceSource', TypeInfo(Elgin.JNI.E1.JPlanarYUVLuminanceSource));
  TRegTypes.RegisterType('Elgin.JNI.E1.JRGBLuminanceSource', TypeInfo(Elgin.JNI.E1.JRGBLuminanceSource));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jzxing_Result', TypeInfo(Elgin.JNI.E1.Jzxing_Result));
  TRegTypes.RegisterType('Elgin.JNI.E1.JResultMetadataType', TypeInfo(Elgin.JNI.E1.JResultMetadataType));
  TRegTypes.RegisterType('Elgin.JNI.E1.JResultPoint', TypeInfo(Elgin.JNI.E1.JResultPoint));
  TRegTypes.RegisterType('Elgin.JNI.E1.JResultPointCallback', TypeInfo(Elgin.JNI.E1.JResultPointCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JWriterException', TypeInfo(Elgin.JNI.E1.JWriterException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetectorResult', TypeInfo(Elgin.JNI.E1.JDetectorResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAztecDetectorResult', TypeInfo(Elgin.JNI.E1.JAztecDetectorResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAztecReader', TypeInfo(Elgin.JNI.E1.JAztecReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAztecWriter', TypeInfo(Elgin.JNI.E1.JAztecWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jaztec_decoder_Decoder', TypeInfo(Elgin.JNI.E1.Jaztec_decoder_Decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecoder_1', TypeInfo(Elgin.JNI.E1.JDecoder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecoder_Table', TypeInfo(Elgin.JNI.E1.JDecoder_Table));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jaztec_detector_Detector', TypeInfo(Elgin.JNI.E1.Jaztec_detector_Detector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetector_Point', TypeInfo(Elgin.JNI.E1.JDetector_Point));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAztecCode', TypeInfo(Elgin.JNI.E1.JAztecCode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JToken', TypeInfo(Elgin.JNI.E1.JToken));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBinaryShiftToken', TypeInfo(Elgin.JNI.E1.JBinaryShiftToken));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jaztec_encoder_Encoder', TypeInfo(Elgin.JNI.E1.Jaztec_encoder_Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jencoder_HighLevelEncoder', TypeInfo(Elgin.JNI.E1.Jencoder_HighLevelEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JHighLevelEncoder_1', TypeInfo(Elgin.JNI.E1.JHighLevelEncoder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSimpleToken', TypeInfo(Elgin.JNI.E1.JSimpleToken));
  TRegTypes.RegisterType('Elgin.JNI.E1.JState', TypeInfo(Elgin.JNI.E1.JState));
  TRegTypes.RegisterType('Elgin.JNI.E1.JResultParser', TypeInfo(Elgin.JNI.E1.JResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractDoCoMoResultParser', TypeInfo(Elgin.JNI.E1.JAbstractDoCoMoResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAddressBookAUResultParser', TypeInfo(Elgin.JNI.E1.JAddressBookAUResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAddressBookDoCoMoResultParser', TypeInfo(Elgin.JNI.E1.JAddressBookDoCoMoResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JParsedResult', TypeInfo(Elgin.JNI.E1.JParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAddressBookParsedResult', TypeInfo(Elgin.JNI.E1.JAddressBookParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBizcardResultParser', TypeInfo(Elgin.JNI.E1.JBizcardResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBookmarkDoCoMoResultParser', TypeInfo(Elgin.JNI.E1.JBookmarkDoCoMoResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCalendarParsedResult', TypeInfo(Elgin.JNI.E1.JCalendarParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEmailAddressParsedResult', TypeInfo(Elgin.JNI.E1.JEmailAddressParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEmailAddressResultParser', TypeInfo(Elgin.JNI.E1.JEmailAddressResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEmailDoCoMoResultParser', TypeInfo(Elgin.JNI.E1.JEmailDoCoMoResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JExpandedProductParsedResult', TypeInfo(Elgin.JNI.E1.JExpandedProductParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JExpandedProductResultParser', TypeInfo(Elgin.JNI.E1.JExpandedProductResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGeoParsedResult', TypeInfo(Elgin.JNI.E1.JGeoParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGeoResultParser', TypeInfo(Elgin.JNI.E1.JGeoResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JISBNParsedResult', TypeInfo(Elgin.JNI.E1.JISBNParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JISBNResultParser', TypeInfo(Elgin.JNI.E1.JISBNResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JParsedResultType', TypeInfo(Elgin.JNI.E1.JParsedResultType));
  TRegTypes.RegisterType('Elgin.JNI.E1.JProductParsedResult', TypeInfo(Elgin.JNI.E1.JProductParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JProductResultParser', TypeInfo(Elgin.JNI.E1.JProductResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSMSMMSResultParser', TypeInfo(Elgin.JNI.E1.JSMSMMSResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSMSParsedResult', TypeInfo(Elgin.JNI.E1.JSMSParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSMSTOMMSTOResultParser', TypeInfo(Elgin.JNI.E1.JSMSTOMMSTOResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSMTPResultParser', TypeInfo(Elgin.JNI.E1.JSMTPResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTelParsedResult', TypeInfo(Elgin.JNI.E1.JTelParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTelResultParser', TypeInfo(Elgin.JNI.E1.JTelResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTextParsedResult', TypeInfo(Elgin.JNI.E1.JTextParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JURIParsedResult', TypeInfo(Elgin.JNI.E1.JURIParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JURIResultParser', TypeInfo(Elgin.JNI.E1.JURIResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JURLTOResultParser', TypeInfo(Elgin.JNI.E1.JURLTOResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVCardResultParser', TypeInfo(Elgin.JNI.E1.JVCardResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVEventResultParser', TypeInfo(Elgin.JNI.E1.JVEventResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVINParsedResult', TypeInfo(Elgin.JNI.E1.JVINParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVINResultParser', TypeInfo(Elgin.JNI.E1.JVINResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JWifiParsedResult', TypeInfo(Elgin.JNI.E1.JWifiParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JWifiResultParser', TypeInfo(Elgin.JNI.E1.JWifiResultParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBitArray', TypeInfo(Elgin.JNI.E1.JBitArray));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBitMatrix', TypeInfo(Elgin.JNI.E1.JBitMatrix));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBitSource', TypeInfo(Elgin.JNI.E1.JBitSource));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCharacterSetECI', TypeInfo(Elgin.JNI.E1.JCharacterSetECI));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecoderResult', TypeInfo(Elgin.JNI.E1.JDecoderResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGridSampler', TypeInfo(Elgin.JNI.E1.JGridSampler));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDefaultGridSampler', TypeInfo(Elgin.JNI.E1.JDefaultGridSampler));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGlobalHistogramBinarizer', TypeInfo(Elgin.JNI.E1.JGlobalHistogramBinarizer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JHybridBinarizer', TypeInfo(Elgin.JNI.E1.JHybridBinarizer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPerspectiveTransform', TypeInfo(Elgin.JNI.E1.JPerspectiveTransform));
  TRegTypes.RegisterType('Elgin.JNI.E1.JStringUtils', TypeInfo(Elgin.JNI.E1.JStringUtils));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdetector_MathUtils', TypeInfo(Elgin.JNI.E1.Jdetector_MathUtils));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMonochromeRectangleDetector', TypeInfo(Elgin.JNI.E1.JMonochromeRectangleDetector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JWhiteRectangleDetector', TypeInfo(Elgin.JNI.E1.JWhiteRectangleDetector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGenericGF', TypeInfo(Elgin.JNI.E1.JGenericGF));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGenericGFPoly', TypeInfo(Elgin.JNI.E1.JGenericGFPoly));
  TRegTypes.RegisterType('Elgin.JNI.E1.JReedSolomonDecoder', TypeInfo(Elgin.JNI.E1.JReedSolomonDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JReedSolomonEncoder', TypeInfo(Elgin.JNI.E1.JReedSolomonEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JReedSolomonException', TypeInfo(Elgin.JNI.E1.JReedSolomonException));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMatrixReader', TypeInfo(Elgin.JNI.E1.JDataMatrixReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMatrixWriter', TypeInfo(Elgin.JNI.E1.JDataMatrixWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBitMatrixParser', TypeInfo(Elgin.JNI.E1.JBitMatrixParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataBlock', TypeInfo(Elgin.JNI.E1.JDataBlock));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser', TypeInfo(Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser_1', TypeInfo(Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser_Mode', TypeInfo(Elgin.JNI.E1.Jdecoder_DecodedBitStreamParser_Mode));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_Decoder', TypeInfo(Elgin.JNI.E1.Jdecoder_Decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_Version', TypeInfo(Elgin.JNI.E1.Jdecoder_Version));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVersion_1', TypeInfo(Elgin.JNI.E1.JVersion_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVersion_ECB', TypeInfo(Elgin.JNI.E1.JVersion_ECB));
  TRegTypes.RegisterType('Elgin.JNI.E1.JVersion_ECBlocks', TypeInfo(Elgin.JNI.E1.JVersion_ECBlocks));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdetector_Detector', TypeInfo(Elgin.JNI.E1.Jdetector_Detector));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jencoder_Encoder', TypeInfo(Elgin.JNI.E1.Jencoder_Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JASCIIEncoder', TypeInfo(Elgin.JNI.E1.JASCIIEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBase256Encoder', TypeInfo(Elgin.JNI.E1.JBase256Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JC40Encoder', TypeInfo(Elgin.JNI.E1.JC40Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSymbolInfo', TypeInfo(Elgin.JNI.E1.JSymbolInfo));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMatrixSymbolInfo144', TypeInfo(Elgin.JNI.E1.JDataMatrixSymbolInfo144));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDefaultPlacement', TypeInfo(Elgin.JNI.E1.JDefaultPlacement));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEdifactEncoder', TypeInfo(Elgin.JNI.E1.JEdifactEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEncoderContext', TypeInfo(Elgin.JNI.E1.JEncoderContext));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jencoder_ErrorCorrection', TypeInfo(Elgin.JNI.E1.Jencoder_ErrorCorrection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JHighLevelEncoder', TypeInfo(Elgin.JNI.E1.JHighLevelEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JSymbolShapeHint', TypeInfo(Elgin.JNI.E1.JSymbolShapeHint));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTextEncoder', TypeInfo(Elgin.JNI.E1.JTextEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JX12Encoder', TypeInfo(Elgin.JNI.E1.JX12Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMaxiCodeReader', TypeInfo(Elgin.JNI.E1.JMaxiCodeReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jmaxicode_decoder_BitMatrixParser', TypeInfo(Elgin.JNI.E1.Jmaxicode_decoder_BitMatrixParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jmaxicode_decoder_DecodedBitStreamParser', TypeInfo(Elgin.JNI.E1.Jmaxicode_decoder_DecodedBitStreamParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jmaxicode_decoder_Decoder', TypeInfo(Elgin.JNI.E1.Jmaxicode_decoder_Decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByQuadrantReader', TypeInfo(Elgin.JNI.E1.JByQuadrantReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultipleBarcodeReader', TypeInfo(Elgin.JNI.E1.JMultipleBarcodeReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGenericMultipleBarcodeReader', TypeInfo(Elgin.JNI.E1.JGenericMultipleBarcodeReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeReader', TypeInfo(Elgin.JNI.E1.JQRCodeReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeMultiReader', TypeInfo(Elgin.JNI.E1.JQRCodeMultiReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeMultiReader_1', TypeInfo(Elgin.JNI.E1.JQRCodeMultiReader_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeMultiReader_SAComparator', TypeInfo(Elgin.JNI.E1.JQRCodeMultiReader_SAComparator));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_detector_Detector', TypeInfo(Elgin.JNI.E1.Jqrcode_detector_Detector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiDetector', TypeInfo(Elgin.JNI.E1.JMultiDetector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinderPatternFinder', TypeInfo(Elgin.JNI.E1.JFinderPatternFinder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFinderPatternFinder', TypeInfo(Elgin.JNI.E1.JMultiFinderPatternFinder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFinderPatternFinder_1', TypeInfo(Elgin.JNI.E1.JMultiFinderPatternFinder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFinderPatternFinder_ModuleSizeComparator', TypeInfo(Elgin.JNI.E1.JMultiFinderPatternFinder_ModuleSizeComparator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOneDReader', TypeInfo(Elgin.JNI.E1.JOneDReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCodaBarReader', TypeInfo(Elgin.JNI.E1.JCodaBarReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JOneDimensionalCodeWriter', TypeInfo(Elgin.JNI.E1.JOneDimensionalCodeWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCodaBarWriter', TypeInfo(Elgin.JNI.E1.JCodaBarWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode128Reader', TypeInfo(Elgin.JNI.E1.JCode128Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode128Writer', TypeInfo(Elgin.JNI.E1.JCode128Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode128Writer_CType', TypeInfo(Elgin.JNI.E1.JCode128Writer_CType));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode39Reader', TypeInfo(Elgin.JNI.E1.JCode39Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode39Writer', TypeInfo(Elgin.JNI.E1.JCode39Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode93Reader', TypeInfo(Elgin.JNI.E1.JCode93Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCode93Writer', TypeInfo(Elgin.JNI.E1.JCode93Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEANReader', TypeInfo(Elgin.JNI.E1.JUPCEANReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEAN13Reader', TypeInfo(Elgin.JNI.E1.JEAN13Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEANWriter', TypeInfo(Elgin.JNI.E1.JUPCEANWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEAN13Writer', TypeInfo(Elgin.JNI.E1.JEAN13Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEAN8Reader', TypeInfo(Elgin.JNI.E1.JEAN8Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEAN8Writer', TypeInfo(Elgin.JNI.E1.JEAN8Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEANManufacturerOrgSupport', TypeInfo(Elgin.JNI.E1.JEANManufacturerOrgSupport));
  TRegTypes.RegisterType('Elgin.JNI.E1.JITFReader', TypeInfo(Elgin.JNI.E1.JITFReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JITFWriter', TypeInfo(Elgin.JNI.E1.JITFWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFormatOneDReader', TypeInfo(Elgin.JNI.E1.JMultiFormatOneDReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMultiFormatUPCEANReader', TypeInfo(Elgin.JNI.E1.JMultiFormatUPCEANReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCAReader', TypeInfo(Elgin.JNI.E1.JUPCAReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCAWriter', TypeInfo(Elgin.JNI.E1.JUPCAWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEANExtension2Support', TypeInfo(Elgin.JNI.E1.JUPCEANExtension2Support));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEANExtension5Support', TypeInfo(Elgin.JNI.E1.JUPCEANExtension5Support));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEANExtensionSupport', TypeInfo(Elgin.JNI.E1.JUPCEANExtensionSupport));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEReader', TypeInfo(Elgin.JNI.E1.JUPCEReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUPCEWriter', TypeInfo(Elgin.JNI.E1.JUPCEWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractRSSReader', TypeInfo(Elgin.JNI.E1.JAbstractRSSReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataCharacter', TypeInfo(Elgin.JNI.E1.JDataCharacter));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jrss_FinderPattern', TypeInfo(Elgin.JNI.E1.Jrss_FinderPattern));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jrss_Pair', TypeInfo(Elgin.JNI.E1.Jrss_Pair));
  TRegTypes.RegisterType('Elgin.JNI.E1.JRSS14Reader', TypeInfo(Elgin.JNI.E1.JRSS14Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JRSSUtils', TypeInfo(Elgin.JNI.E1.JRSSUtils));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBitArrayBuilder', TypeInfo(Elgin.JNI.E1.JBitArrayBuilder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JExpandedPair', TypeInfo(Elgin.JNI.E1.JExpandedPair));
  TRegTypes.RegisterType('Elgin.JNI.E1.JExpandedRow', TypeInfo(Elgin.JNI.E1.JExpandedRow));
  TRegTypes.RegisterType('Elgin.JNI.E1.JRSSExpandedReader', TypeInfo(Elgin.JNI.E1.JRSSExpandedReader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractExpandedDecoder', TypeInfo(Elgin.JNI.E1.JAbstractExpandedDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01decoder', TypeInfo(Elgin.JNI.E1.JAI01decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01weightDecoder', TypeInfo(Elgin.JNI.E1.JAI01weightDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI013x0xDecoder', TypeInfo(Elgin.JNI.E1.JAI013x0xDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI013103decoder', TypeInfo(Elgin.JNI.E1.JAI013103decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01320xDecoder', TypeInfo(Elgin.JNI.E1.JAI01320xDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01392xDecoder', TypeInfo(Elgin.JNI.E1.JAI01392xDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01393xDecoder', TypeInfo(Elgin.JNI.E1.JAI01393xDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI013x0x1xDecoder', TypeInfo(Elgin.JNI.E1.JAI013x0x1xDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAI01AndOtherAIs', TypeInfo(Elgin.JNI.E1.JAI01AndOtherAIs));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAnyAIDecoder', TypeInfo(Elgin.JNI.E1.JAnyAIDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBlockParsedResult', TypeInfo(Elgin.JNI.E1.JBlockParsedResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCurrentParsingState', TypeInfo(Elgin.JNI.E1.JCurrentParsingState));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCurrentParsingState_State', TypeInfo(Elgin.JNI.E1.JCurrentParsingState_State));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedObject', TypeInfo(Elgin.JNI.E1.JDecodedObject));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedChar', TypeInfo(Elgin.JNI.E1.JDecodedChar));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedInformation', TypeInfo(Elgin.JNI.E1.JDecodedInformation));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedNumeric', TypeInfo(Elgin.JNI.E1.JDecodedNumeric));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFieldParser', TypeInfo(Elgin.JNI.E1.JFieldParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JGeneralAppIdDecoder', TypeInfo(Elgin.JNI.E1.JGeneralAppIdDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417Common', TypeInfo(Elgin.JNI.E1.JPDF417Common));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417Reader', TypeInfo(Elgin.JNI.E1.JPDF417Reader));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417ResultMetadata', TypeInfo(Elgin.JNI.E1.JPDF417ResultMetadata));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417Writer', TypeInfo(Elgin.JNI.E1.JPDF417Writer));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBarcodeMetadata', TypeInfo(Elgin.JNI.E1.JBarcodeMetadata));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBarcodeValue', TypeInfo(Elgin.JNI.E1.JBarcodeValue));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBoundingBox', TypeInfo(Elgin.JNI.E1.JBoundingBox));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCodeword', TypeInfo(Elgin.JNI.E1.JCodeword));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedBitStreamParser', TypeInfo(Elgin.JNI.E1.JDecodedBitStreamParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedBitStreamParser_1', TypeInfo(Elgin.JNI.E1.JDecodedBitStreamParser_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDecodedBitStreamParser_Mode', TypeInfo(Elgin.JNI.E1.JDecodedBitStreamParser_Mode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetectionResult', TypeInfo(Elgin.JNI.E1.JDetectionResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetectionResultColumn', TypeInfo(Elgin.JNI.E1.JDetectionResultColumn));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetectionResultRowIndicatorColumn', TypeInfo(Elgin.JNI.E1.JDetectionResultRowIndicatorColumn));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417CodewordDecoder', TypeInfo(Elgin.JNI.E1.JPDF417CodewordDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417ScanningDecoder', TypeInfo(Elgin.JNI.E1.JPDF417ScanningDecoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JErrorCorrection', TypeInfo(Elgin.JNI.E1.JErrorCorrection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JModulusGF', TypeInfo(Elgin.JNI.E1.JModulusGF));
  TRegTypes.RegisterType('Elgin.JNI.E1.JModulusPoly', TypeInfo(Elgin.JNI.E1.JModulusPoly));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDetector', TypeInfo(Elgin.JNI.E1.JDetector));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417DetectorResult', TypeInfo(Elgin.JNI.E1.JPDF417DetectorResult));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBarcodeMatrix', TypeInfo(Elgin.JNI.E1.JBarcodeMatrix));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBarcodeRow', TypeInfo(Elgin.JNI.E1.JBarcodeRow));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCompaction', TypeInfo(Elgin.JNI.E1.JCompaction));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDimensions', TypeInfo(Elgin.JNI.E1.JDimensions));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417', TypeInfo(Elgin.JNI.E1.JPDF417));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417ErrorCorrection', TypeInfo(Elgin.JNI.E1.JPDF417ErrorCorrection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417HighLevelEncoder', TypeInfo(Elgin.JNI.E1.JPDF417HighLevelEncoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPDF417HighLevelEncoder_1', TypeInfo(Elgin.JNI.E1.JPDF417HighLevelEncoder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeWriter', TypeInfo(Elgin.JNI.E1.JQRCodeWriter));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_BitMatrixParser', TypeInfo(Elgin.JNI.E1.Jdecoder_BitMatrixParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_DataBlock', TypeInfo(Elgin.JNI.E1.Jdecoder_DataBlock));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask', TypeInfo(Elgin.JNI.E1.JDataMask));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_1', TypeInfo(Elgin.JNI.E1.JDataMask_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_2', TypeInfo(Elgin.JNI.E1.JDataMask_2));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_3', TypeInfo(Elgin.JNI.E1.JDataMask_3));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_4', TypeInfo(Elgin.JNI.E1.JDataMask_4));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_5', TypeInfo(Elgin.JNI.E1.JDataMask_5));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_6', TypeInfo(Elgin.JNI.E1.JDataMask_6));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_7', TypeInfo(Elgin.JNI.E1.JDataMask_7));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDataMask_8', TypeInfo(Elgin.JNI.E1.JDataMask_8));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_decoder_DecodedBitStreamParser', TypeInfo(Elgin.JNI.E1.Jqrcode_decoder_DecodedBitStreamParser));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_decoder_DecodedBitStreamParser_1', TypeInfo(Elgin.JNI.E1.Jqrcode_decoder_DecodedBitStreamParser_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_decoder_Decoder', TypeInfo(Elgin.JNI.E1.Jqrcode_decoder_Decoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JErrorCorrectionLevel', TypeInfo(Elgin.JNI.E1.JErrorCorrectionLevel));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFormatInformation', TypeInfo(Elgin.JNI.E1.JFormatInformation));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMode', TypeInfo(Elgin.JNI.E1.JMode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCodeDecoderMetaData', TypeInfo(Elgin.JNI.E1.JQRCodeDecoderMetaData));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_decoder_Version', TypeInfo(Elgin.JNI.E1.Jqrcode_decoder_Version));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_Version_ECB', TypeInfo(Elgin.JNI.E1.Jdecoder_Version_ECB));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jdecoder_Version_ECBlocks', TypeInfo(Elgin.JNI.E1.Jdecoder_Version_ECBlocks));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAlignmentPattern', TypeInfo(Elgin.JNI.E1.JAlignmentPattern));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAlignmentPatternFinder', TypeInfo(Elgin.JNI.E1.JAlignmentPatternFinder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinderPattern', TypeInfo(Elgin.JNI.E1.JFinderPattern));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinderPatternFinder_1', TypeInfo(Elgin.JNI.E1.JFinderPatternFinder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinderPatternFinder_EstimatedModuleComparator', TypeInfo(Elgin.JNI.E1.JFinderPatternFinder_EstimatedModuleComparator));
  TRegTypes.RegisterType('Elgin.JNI.E1.JFinderPatternInfo', TypeInfo(Elgin.JNI.E1.JFinderPatternInfo));
  TRegTypes.RegisterType('Elgin.JNI.E1.JBlockPair', TypeInfo(Elgin.JNI.E1.JBlockPair));
  TRegTypes.RegisterType('Elgin.JNI.E1.JByteMatrix', TypeInfo(Elgin.JNI.E1.JByteMatrix));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jqrcode_encoder_Encoder', TypeInfo(Elgin.JNI.E1.Jqrcode_encoder_Encoder));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEncoder_1', TypeInfo(Elgin.JNI.E1.JEncoder_1));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMaskUtil', TypeInfo(Elgin.JNI.E1.JMaskUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JMatrixUtil', TypeInfo(Elgin.JNI.E1.JMatrixUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JQRCode', TypeInfo(Elgin.JNI.E1.JQRCode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrintHtmlInterface', TypeInfo(Elgin.JNI.E1.JPrintHtmlInterface));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterBitmapUtil', TypeInfo(Elgin.JNI.E1.JPrinterBitmapUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterHtmlListener', TypeInfo(Elgin.JNI.E1.JPrinterHtmlListener));
  TRegTypes.RegisterType('Elgin.JNI.E1.JPrinterHtmlUtil', TypeInfo(Elgin.JNI.E1.JPrinterHtmlUtil));
  TRegTypes.RegisterType('Elgin.JNI.E1.Jhtmllibrary_a', TypeInfo(Elgin.JNI.E1.Jhtmllibrary_a));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCommSerialAPI', TypeInfo(Elgin.JNI.E1.JCommSerialAPI));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComportNative', TypeInfo(Elgin.JNI.E1.JComportNative));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterCallback', TypeInfo(Elgin.JNI.E1.JIPrinterCallback));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterCallback_Stub_Proxy', TypeInfo(Elgin.JNI.E1.JIPrinterCallback_Stub_Proxy));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterService', TypeInfo(Elgin.JNI.E1.JIPrinterService));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterService_Stub', TypeInfo(Elgin.JNI.E1.JIPrinterService_Stub));
  TRegTypes.RegisterType('Elgin.JNI.E1.JIPrinterService_Stub_Proxy', TypeInfo(Elgin.JNI.E1.JIPrinterService_Stub_Proxy));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAbstractQueue', TypeInfo(Elgin.JNI.E1.JAbstractQueue));
  TRegTypes.RegisterType('Elgin.JNI.E1.JArrayBlockingQueue', TypeInfo(Elgin.JNI.E1.JArrayBlockingQueue));
  TRegTypes.RegisterType('Elgin.JNI.E1.JNode', TypeInfo(Elgin.JNI.E1.JNode));
  TRegTypes.RegisterType('Elgin.JNI.E1.JAttr', TypeInfo(Elgin.JNI.E1.JAttr));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCharacterData', TypeInfo(Elgin.JNI.E1.JCharacterData));
  TRegTypes.RegisterType('Elgin.JNI.E1.JText', TypeInfo(Elgin.JNI.E1.JText));
  TRegTypes.RegisterType('Elgin.JNI.E1.JCDATASection', TypeInfo(Elgin.JNI.E1.JCDATASection));
  TRegTypes.RegisterType('Elgin.JNI.E1.JComment', TypeInfo(Elgin.JNI.E1.JComment));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDOMConfiguration', TypeInfo(Elgin.JNI.E1.JDOMConfiguration));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDOMImplementation', TypeInfo(Elgin.JNI.E1.JDOMImplementation));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDOMStringList', TypeInfo(Elgin.JNI.E1.JDOMStringList));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDocument', TypeInfo(Elgin.JNI.E1.JDocument));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDocumentFragment', TypeInfo(Elgin.JNI.E1.JDocumentFragment));
  TRegTypes.RegisterType('Elgin.JNI.E1.JDocumentType', TypeInfo(Elgin.JNI.E1.JDocumentType));
  TRegTypes.RegisterType('Elgin.JNI.E1.JElement', TypeInfo(Elgin.JNI.E1.JElement));
  TRegTypes.RegisterType('Elgin.JNI.E1.JEntityReference', TypeInfo(Elgin.JNI.E1.JEntityReference));
  TRegTypes.RegisterType('Elgin.JNI.E1.JNamedNodeMap', TypeInfo(Elgin.JNI.E1.JNamedNodeMap));
  TRegTypes.RegisterType('Elgin.JNI.E1.JProcessingInstruction', TypeInfo(Elgin.JNI.E1.JProcessingInstruction));
  TRegTypes.RegisterType('Elgin.JNI.E1.JTypeInfo', TypeInfo(Elgin.JNI.E1.JTypeInfo));
  TRegTypes.RegisterType('Elgin.JNI.E1.JUserDataHandler', TypeInfo(Elgin.JNI.E1.JUserDataHandler));
end;

initialization
  RegisterTypes;
end.

