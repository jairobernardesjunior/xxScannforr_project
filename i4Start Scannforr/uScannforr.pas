unit uScannforr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, UniProvider, SQLServerUniProvider, Data.DB, DBAccess,
  Uni, Vcl.DBCtrls, Data.DBXInterBase, Data.SqlExpr, MemDS, Vcl.Grids, strUtils,
  Vcl.DBGrids, PostgreSQLUniProvider, Vcl.ToolWin, Vcl.ComCtrls, shellapi,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBLookup, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.Series, ganttcolumns,
  ganttconsts, ganttrows, ganttsuite, VCLTee.TeeData, Soap.SOAPHTTPTrans,
  ganttuicomps, dateutils;

type
  TfrmScannforr = class(TForm)
    Menu: TMainMenu;
    Cadastro1: TMenuItem;
    Empresas1: TMenuItem;
    reasGerais1: TMenuItem;
    reas1: TMenuItem;
    Medies1: TMenuItem;
    Unidades1: TMenuItem;
    UnidadesRelacionadas1: TMenuItem;
    Medies2: TMenuItem;
    MediesCapa1: TMenuItem;
    MediesEscaneadas1: TMenuItem;
    imgPrincipal: TImage;
    pnEmpresas: TPanel;
    scannforr_connection: TUniConnection;
    qryEmpresas: TUniQuery;
    updEmpresas: TUniUpdateSQL;
    dsEmpresas: TUniDataSource;
    dbgEmpresas: TDBGrid;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    Sair1: TMenuItem;
    pnAreaGeral: TPanel;
    dbgAreaGeral: TDBGrid;
    qryArea_Geral: TUniQuery;
    updArea_Geral: TUniUpdateSQL;
    dsArea_Geral: TUniDataSource;
    OpenDialog1: TOpenDialog;
    qryUltima_Area_Geral: TUniQuery;
    dbgEmpresasArea: TDBGrid;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolBar2: TToolBar;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    qryGeral: TUniQuery;
    pnPiquete: TPanel;
    dbgAreas: TDBGrid;
    dbgAreasGeral: TDBGrid;
    qryAreas: TUniQuery;
    updAreas: TUniUpdateSQL;
    dsAreas: TUniDataSource;
    pnUnidades: TPanel;
    dbgUnidades: TDBGrid;
    ToolBar4: TToolBar;
    DBNavigator4: TDBNavigator;
    updUnidades: TUniUpdateSQL;
    dsUnidades: TUniDataSource;
    qryUnidades: TUniQuery;
    pnUnidadesProporcionais: TPanel;
    dbgUnidadesProporcionais: TDBGrid;
    ToolBar5: TToolBar;
    DBNavigator5: TDBNavigator;
    qryUnidades_proporcionais: TUniQuery;
    updUnidades_proporcionais: TUniUpdateSQL;
    dsUnidades_proporcionais: TUniDataSource;
    dbeDescricao_unidade_proporcional: TDBEdit;
    Label1: TLabel;
    qryUnidades2: TUniQuery;
    dsUnidades2: TUniDataSource;
    Label2: TLabel;
    Label3: TLabel;
    dbeQtde_proporcional: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbcUnidade_principal: TDBLookupComboBox;
    dbcUnidade_relacionada: TDBLookupComboBox;
    pnVariedades: TPanel;
    Label7: TLabel;
    dbgVariedades: TDBGrid;
    ToolBar6: TToolBar;
    DBNavigator6: TDBNavigator;
    dbeNome_variedade: TDBEdit;
    qryVariedades: TUniQuery;
    updVariedades: TUniUpdateSQL;
    dsVariedades: TUniDataSource;
    Label6: TLabel;
    dbcEmpresa_fornecedora: TDBLookupComboBox;
    qryEmpresa_fornecedora: TUniQuery;
    dsEmpresa_fornecedora: TUniDataSource;
    pnMedicoesCapa: TPanel;
    dbgMedicoesCapa: TDBGrid;
    ToolBar7: TToolBar;
    DBNavigator7: TDBNavigator;
    qryMedicoes_capa: TUniQuery;
    updMedicoes_capa: TUniUpdateSQL;
    dsMedicoes_capa: TUniDataSource;
    DBEnome_empresa: TDBEdit;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    pnMedicoesEscaneamentos: TPanel;
    dbgMedicoesEscaneamentos: TDBGrid;
    dbgEmpresasAreaGeral: TDBGrid;
    ToolBar8: TToolBar;
    btImpEscann: TButton;
    dbgMedicoes: TDBGrid;
    qryMedicoes_capa_scann: TUniQuery;
    dsMedicoes_capa_scann: TUniDataSource;
    dsMedicoes_escameamentos: TUniDataSource;
    qryMedicoes_escaneamentos: TUniQuery;
    qryEmpresa_scann: TUniQuery;
    dsEmpresa_scann: TUniDataSource;
    qryArea_geral_piquete: TUniQuery;
    dsArea_geral_piquete: TUniDataSource;
    qryArea_geral_medicoes: TUniQuery;
    dsArea_geral_medicoes: TUniDataSource;
    dbgAreaGeralMedicoes: TDBGrid;
    Sobre1: TMenuItem;
    Janelas1: TMenuItem;
    Sobre2: TMenuItem;
    pnScannforr: TPanel;
    pnGrEvoMedicoesEscaneamentos: TPanel;
    ctMedicoesEscaneamentos: TChart;
    Series1: TFastLineSeries;
    pnlalopix: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    edPixe1Long: TEdit;
    Label19: TLabel;
    edCoordenada2lat: TEdit;
    edCoordenada2long: TEdit;
    edPixe2Lat: TEdit;
    edPixe2Long: TEdit;
    edCoorPixLat: TEdit;
    edCoorPixLong: TEdit;
    edCoordenada1long: TEdit;
    edCoordenada1lat: TEdit;
    edPixe1Lat: TEdit;
    updUltima_Area_Geral: TUniUpdateSQL;
    btImpAltMaps: TButton;
    qryGeral2: TUniQuery;
    HTTPReqResp1: THTTPReqResp;
    Memo2: TMemo;
    pnImpGmaps: TPanel;
    edChaveAPI: TEdit;
    pnProcessa: TPanel;
    Image9: TImage;
    imgSalva: TImage;
    ToolBar3: TToolBar;
    DBNavigator3: TDBNavigator;
    btDemarcaPiquete: TGanttFlatButton;
    btGravaDemarcacao: TGanttFlatButton;
    btLimpa: TGanttFlatButton;
    dbePerc_considerado_planta: TDBEdit;
    Label21: TLabel;
    pnResultados: TPanel;
    pnCalibra: TPanel;
    ToolBar10: TToolBar;
    btCancela: TButton;
    btContinua: TButton;
    updMedicoes_capa_scann: TUniUpdateSQL;
    btPontosEscaneamento: TButton;
    pnAjuste: TPanel;
    ToolBar11: TToolBar;
    btCancelaAjuste: TButton;
    btAlteraAjuste: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    mkeYdesenho: TMaskEdit;
    mkeYajuste: TMaskEdit;
    mkeXdesenho: TMaskEdit;
    mkeXajuste: TMaskEdit;
    btAjustaPontosDesenho: TButton;
    btAjustaPontosDesenhoPiquete: TButton;
    updArea_Geral_Piquete: TUniUpdateSQL;
    dbgArea_geral_scann2: TDBGrid;
    qryArea_geral_scann: TUniQuery;
    dsArea_geral_scann: TUniDataSource;
    updArea_geral_scann: TUniUpdateSQL;
    mmRodape: TMemo;
    pnMassa: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    edMS: TDBEdit;
    edAltMinima: TDBEdit;
    pgResultado: TPageControl;
    TabSheet1: TTabSheet;
    lbVolumeAreaGeral: TLabel;
    ctAlturaMedia: TChart;
    Button3: TButton;
    FastLineSeries1: TBarSeries;
    ctVolumeMedio: TChart;
    Button4: TButton;
    FastLineSeries2: TBarSeries;
    ctMassaSecaForragem: TChart;
    Button5: TButton;
    BarSeries1: TBarSeries;
    ctMassaSecaCrescimento: TChart;
    Button6: TButton;
    BarSeries2: TBarSeries;
    TabSheet2: TTabSheet;
    lbDisponivel: TLabel;
    ctMassaSecaPastejoDisponivel: TChart;
    Button7: TButton;
    BarSeries3: TBarSeries;
    ctMassaSecaDisponivel: TChart;
    Button8: TButton;
    BarSeries4: TBarSeries;
    ctVolumeMedioPastejo: TChart;
    Button9: TButton;
    BarSeries5: TBarSeries;
    ctAlturaMediaPastejo: TChart;
    Button10: TButton;
    BarSeries6: TBarSeries;
    qryEmpresa_fornecedora2: TUniQuery;
    dsEmpresa_fornecedora2: TUniDataSource;
    Label27: TLabel;
    edAlturaMassaSeca: TDBEdit;
    Label28: TLabel;
    mmResultado: TMemo;
    DBGrid1: TDBGrid;
    qryMedicoes_capa_resultado: TUniQuery;
    dsMedicoes_capa_resultado: TUniDataSource;
    Label29: TLabel;
    Button11: TButton;
    Button12: TButton;
    TabSheet3: TTabSheet;
    ctAlturaEvolucao: TChart;
    BarSeries7: TBarSeries;
    updMedicoes_escaneamentos: TUniUpdateSQL;
    btcalcula: TGanttFlatButton;
    Button2: TGanttFlatButton;
    btgrava: TGanttFlatButton;
    Button13: TButton;
    btResultados: TGanttFlatButton;
    btGraficoEscaneamento: TGanttFlatButton;
    Panel1: TPanel;
    RichEdit1: TRichEdit;
    Label30: TLabel;
    lbParametros: TLabel;
    qryPiquetes_Scann: TUniQuery;
    dsPiquetes_scann: TUniDataSource;
    Label31: TLabel;
    dbgPiquetes: TDBGrid;
    cktodosPiquetes: TCheckBox;
    Panel2: TPanel;
    Image13: TImage;
    Label10: TLabel;
    edAlturaEquipamento: TDBEdit;
    Label11: TLabel;
    edAlturaPlanta: TDBEdit;
    Panel3: TPanel;
    lbEmpresas: TLabel;
    Image1: TImage;
    Panel4: TPanel;
    lbResultados: TLabel;
    Image12: TImage;
    Panel5: TPanel;
    lbAreaGeral: TLabel;
    Image2: TImage;
    Panel6: TPanel;
    lbMedicoesEscaneamentos: TLabel;
    Image8: TImage;
    Panel7: TPanel;
    Image6: TImage;
    lbVariedades: TLabel;
    Panel8: TPanel;
    Image5: TImage;
    lbUnidadesProporcionais: TLabel;
    Panel9: TPanel;
    Image4: TImage;
    lbUnidades: TLabel;
    Panel10: TPanel;
    Image11: TImage;
    Label18: TLabel;
    Panel11: TPanel;
    Image10: TImage;
    Label12: TLabel;
    Panel12: TPanel;
    Image3: TImage;
    lbPiquete: TLabel;
    Panel13: TPanel;
    Image7: TImage;
    Label9: TLabel;
    Label32: TLabel;
    mmBarra: TMemo;
    lbAjustaImagem: TLabel;
    pnbarra: TPanel;
    Image14: TImage;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    mmcalibra: TMemo;
    mmajusta: TMemo;
    mmDemarca: TMemo;
    ipos1: TMenuItem;
    tipoAnimais: TMenuItem;
    TipoEventos: TMenuItem;
    TipoSuplementos: TMenuItem;
    pnTipoEvento: TPanel;
    Label40: TLabel;
    Label59: TLabel;
    dbgTipoEvento: TDBGrid;
    ToolBar9: TToolBar;
    DBNavigator8: TDBNavigator;
    dbeDescricao: TDBEdit;
    dbcunidadee: TDBLookupComboBox;
    Panel15: TPanel;
    Image15: TImage;
    lbtipoEvento: TLabel;
    qrytipo_Evento: TUniQuery;
    updTipo_Evento: TUniUpdateSQL;
    dsTipo_Evento: TUniDataSource;
    qryTipo_Animal: TUniQuery;
    updTipo_Animal: TUniUpdateSQL;
    dsTipo_Animal: TUniDataSource;
    qryTipo_Suplemento: TUniQuery;
    updTipo_Suplemento: TUniUpdateSQL;
    dsTipo_Suplemento: TUniDataSource;
    pnTipoAnimal: TPanel;
    dbgTipoAnimal: TDBGrid;
    ToolBar12: TToolBar;
    DBNavigator9: TDBNavigator;
    Panel16: TPanel;
    Image16: TImage;
    lbTipoAnimal: TLabel;
    pnTipoSuplemento: TPanel;
    dbgTipoSuplemento: TDBGrid;
    ToolBar13: TToolBar;
    DBNavigator10: TDBNavigator;
    Panel17: TPanel;
    Image17: TImage;
    lbTipoSuplemento: TLabel;
    dcbentrada: TDBCheckBox;
    dcbsaida: TDBCheckBox;
    Label41: TLabel;
    dbeDescricaoTS: TDBEdit;
    Label58: TLabel;
    dbcunidades: TDBLookupComboBox;
    dbeIndiceSuplemento: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    dbepesovivo: TDBEdit;
    Label62: TLabel;
    dbeDescricaoTA: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    dbepercConsumo: TDBEdit;
    Label65: TLabel;
    Controle1: TMenuItem;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    qryPadrao_sistema: TUniQuery;
    qryVariedadesCombo: TUniQuery;
    dsVariedadesCombo: TUniDataSource;
    dbeNomeAreaGeral: TDBEdit;
    Label8: TLabel;
    Label20: TLabel;
    dbePathImagemAreaGeral: TDBEdit;
    dblVariedades: TDBLookupComboBox;
    Label22: TLabel;
    dbeNome_area: TDBEdit;
    dbeTamanho_area: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    dbeDescricao_medicao: TDBEdit;
    Label68: TLabel;
    Label69: TLabel;
    dbeOperador: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    mkeData: TMaskEdit;
    dbeHora_medicao: TDBEdit;
    dbeNome_unidade: TDBEdit;
    dbeSigla_unidade: TDBEdit;
    Label72: TLabel;
    Label73: TLabel;
    Button14: TButton;
    Label74: TLabel;
    dbeAltura_minima_pastejo: TDBEdit;
    Button15: TButton;
    Panel14: TPanel;
    Label76: TLabel;
    dbeMassa_seca_kg_m2_primavera: TDBEdit;
    Label78: TLabel;
    Label77: TLabel;
    dbeAltura_massa_seca_cm_primavera: TDBEdit;
    Panel18: TPanel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    dbeMassa_seca_kg_m2_inverno: TDBEdit;
    dbeAltura_massa_seca_cm_inverno: TDBEdit;
    Panel19: TPanel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    dbeMassa_seca_kg_m2_outono: TDBEdit;
    dbeAltura_massa_seca_cm_outono: TDBEdit;
    Panel20: TPanel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    dbeMassa_seca_kg_m2_verao: TDBEdit;
    dbeAltura_massa_seca_cm_verao: TDBEdit;
    dbekg_ms_ha_dia_primavera: TDBEdit;
    Label75: TLabel;
    dbekg_ms_ha_dia_verao: TDBEdit;
    Label93: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label80: TLabel;
    Label94: TLabel;
    dbekg_ms_ha_dia_outono: TDBEdit;
    dbekg_ms_ha_dia_inverno: TDBEdit;
    Label79: TLabel;
    Label81: TLabel;
    Label95: TLabel;
    dbeAltura_maxima_crescimento: TDBEdit;
    dbeConsidera_acamamento: TDBCheckBox;
    Forragens1: TMenuItem;
    Label96: TLabel;
    edAltMaxima: TDBEdit;
    mmCrescimentoForr: TMemo;
    btEliminaScan: TGanttFlatButton;
    Label97: TLabel;
    dbePercAniVivoDia: TDBEdit;
    Label98: TLabel;
    dbePesoMedioCabeca: TDBEdit;
    dbeDiasPastejo: TDBEdit;
    Label99: TLabel;
    mmdisponivel: TMemo;
    dsPiquetes_alturaMedia: TDataSource;
    dbgAlturaMediaMedida: TDBGrid;
    qryPiquetes_alturaMedia: TUniQuery;
    procedure Image1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure qryEmpresasAfterPost(DataSet: TDataSet);
    procedure qryEmpresasAfterDelete(DataSet: TDataSet);
    procedure reasGerais1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);

    procedure dbgAreaGeralDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qryArea_GeralBeforePost(DataSet: TDataSet);
    procedure qryArea_GeralAfterPost(DataSet: TDataSet);
    procedure qryArea_GeralAfterDelete(DataSet: TDataSet);
    procedure LeAreaGeral;
    procedure LeGravaUltimaAreaGeral;
    procedure CarregaImagemPrincipal;
    procedure lbAreaGeralMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbAreaGeralMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbAreaGeralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbEmpresasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbEmpresasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbEmpresasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure reas1Click(Sender: TObject);
    procedure qryAreasAfterDelete(DataSet: TDataSet);
    procedure qryAreasAfterPost(DataSet: TDataSet);
    procedure lbPiqueteMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbPiqueteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbPiqueteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbUnidadesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbUnidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbUnidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4Click(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure qryUnidadesAfterDelete(DataSet: TDataSet);
    procedure qryUnidadesAfterPost(DataSet: TDataSet);
    procedure lbUnidadesProporcionaisMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lbUnidadesProporcionaisMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lbUnidadesProporcionaisMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure qryUnidades_proporcionaisAfterDelete(DataSet: TDataSet);
    procedure qryUnidades_proporcionaisAfterPost(DataSet: TDataSet);
    procedure UnidadesRelacionadas1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure lbVariedadesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbVariedadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbVariedadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryVariedadesAfterDelete(DataSet: TDataSet);
    procedure qryVariedadesAfterPost(DataSet: TDataSet);
    procedure MediesCapa1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure qryMedicoes_capaAfterDelete(DataSet: TDataSet);
    procedure qryMedicoes_capaAfterPost(DataSet: TDataSet);
    procedure Label9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryEmpresasAfterInsert(DataSet: TDataSet);
    procedure MediesEscaneadas1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure ProcessaImportacaoMedicao;
    procedure IncluiCalibragemEscaneamento;
    procedure lbMedicoesEscaneamentosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbMedicoesEscaneamentosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbMedicoesEscaneamentosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Sobre2Click(Sender: TObject);
    procedure pnScannforrClick(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Janelas1Click(Sender: TObject);
    procedure btGraficoEscaneamentoClick(Sender: TObject);
    procedure Label12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10Click(Sender: TObject);
    procedure LimpaRela��oCoordenadasPixel;
    procedure imgPrincipalClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btcalculaClick(Sender: TObject);
    procedure btgravaClick(Sender: TObject);
    procedure btImpAltMapsClick(Sender: TObject);
    procedure LeGravaAltitudeTerreno;
    procedure Image11Click(Sender: TObject);
    procedure edChaveAPIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PreparaImportacaoGoogleMaps;
    procedure pnProcessaDblClick(Sender: TObject);
    procedure LeLimitesDemarcaPiquete;
    procedure imgPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btGravaDemarcacaoClick(Sender: TObject);
    procedure btDemarcaPiqueteClick(Sender: TObject);
    procedure btLimpaClick(Sender: TObject);
    procedure GravaXYtela;
    procedure dbgAreasDblClick(Sender: TObject);
    procedure ConfiguraCanvas;
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure btResultadosClick(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure qryUnidadesAfterEdit(DataSet: TDataSet);
    procedure btImpEscannClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btContinuaClick(Sender: TObject);
    procedure dbgEmpresasAreaGeralCellClick(Column: TColumn);
    procedure VerificaMudaImagemPrincipal;
    procedure dbgAreasGeralCellClick(Column: TColumn);
    procedure dbgAreaGeralMedicoesCellClick(Column: TColumn);
    procedure dbgAreaGeralMedicoesCellClickSegue;
    procedure dbgAreasGeralCellClickSegue;
    procedure dbgEmpresasAreaGeralCellClickSegue;
    procedure dbgEmpresasAreaCellClick(Column: TColumn);
    procedure dbgEmpresasAreaCellClickSegue;
    procedure dbgAreaGeralCellClick(Column: TColumn);
    procedure dbgAreaGeralCellClickSegue;
    procedure imgPrincipalDblClick(Sender: TObject);
    procedure btPontosEscaneamentoClick(Sender: TObject);
    procedure ProcessaPontosEscaneamento;
    procedure CalculaAlteraXpixYpixEscaneamento;
    procedure GeraGraficoEscaneamento;
    procedure lbAjustaImagemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbAjustaImagemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbAjustaImagemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btCancelaAjusteClick(Sender: TObject);
    procedure btAjustaPontosDesenhoClick(Sender: TObject);
    procedure btAlteraAjusteClick(Sender: TObject);
    procedure btAjustaPontosDesenhoPiqueteClick(Sender: TObject);
    procedure ApresentaResultados;
    procedure ChamaPergunta;
    procedure CapturaPath;
    procedure LeMemoMandaProcessar;
    procedure lbResultadosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbResultadosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbResultadosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PreparaTelas;
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure ApresentaResultadosMultiplos;
    procedure Button13Click(Sender: TObject);
    procedure lbParametrosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbParametrosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbParametrosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ContinuaProcessaPontosEscaneamento;
    procedure lbEmpresasMouseLeave(Sender: TObject);
    procedure lbAreaGeralMouseLeave(Sender: TObject);
    procedure lbVariedadesMouseLeave(Sender: TObject);
    procedure lbUnidadesProporcionaisMouseLeave(Sender: TObject);
    procedure lbUnidadesMouseLeave(Sender: TObject);
    procedure Label12MouseLeave(Sender: TObject);
    procedure lbPiqueteMouseLeave(Sender: TObject);
    procedure Label9MouseLeave(Sender: TObject);
    procedure lbParametrosMouseLeave(Sender: TObject);
    procedure lbMedicoesEscaneamentosMouseLeave(Sender: TObject);
    procedure lbResultadosMouseLeave(Sender: TObject);
    procedure lbAjustaImagemMouseLeave(Sender: TObject);
    procedure imgPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgPrincipalMouseLeave(Sender: TObject);
    procedure tipoAnimaisClick(Sender: TObject);
    procedure TipoEventosClick(Sender: TObject);
    procedure TipoSuplementosClick(Sender: TObject);
    procedure lbtipoEventoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbtipoEventoMouseLeave(Sender: TObject);
    procedure lbtipoEventoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbtipoEventoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image15Click(Sender: TObject);
    procedure lbTipoAnimalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbTipoAnimalMouseLeave(Sender: TObject);
    procedure lbTipoAnimalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbTipoAnimalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image17Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure lbTipoSuplementoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbTipoSuplementoMouseLeave(Sender: TObject);
    procedure lbTipoSuplementoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbTipoSuplementoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryUnidades_proporcionaisAfterEdit(DataSet: TDataSet);
    procedure qryUnidadesBeforeDelete(DataSet: TDataSet);
    procedure qryUnidades_proporcionaisBeforeDelete(DataSet: TDataSet);
    procedure qrytipo_EventoAfterDelete(DataSet: TDataSet);
    procedure qrytipo_EventoAfterEdit(DataSet: TDataSet);
    procedure qrytipo_EventoAfterPost(DataSet: TDataSet);
    procedure qrytipo_EventoBeforeDelete(DataSet: TDataSet);
    procedure qrytipo_EventoBeforePost(DataSet: TDataSet);
    procedure DBNavigator8Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryTipo_SuplementoAfterDelete(DataSet: TDataSet);
    procedure qryTipo_SuplementoAfterEdit(DataSet: TDataSet);
    procedure qryTipo_SuplementoAfterPost(DataSet: TDataSet);
    procedure qryTipo_SuplementoBeforeDelete(DataSet: TDataSet);
    procedure DBNavigator10Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryTipo_AnimalAfterDelete(DataSet: TDataSet);
    procedure qryTipo_AnimalAfterEdit(DataSet: TDataSet);
    procedure qryTipo_AnimalAfterPost(DataSet: TDataSet);
    procedure qryTipo_AnimalBeforeDelete(DataSet: TDataSet);
    procedure qryTipo_SuplementoBeforePost(DataSet: TDataSet);
    procedure Controle1Click(Sender: TObject);
    procedure dbePathImagemAreaGeralDblClick(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryEmpresasBeforePost(DataSet: TDataSet);
    procedure qryAreasBeforePost(DataSet: TDataSet);
    procedure DBNavigator7Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryMedicoes_capaBeforePost(DataSet: TDataSet);
    procedure dsMedicoes_capaDataChange(Sender: TObject; Field: TField);
    procedure dcbentradaClick(Sender: TObject);
    procedure dcbsaidaClick(Sender: TObject);
    procedure qryTipo_AnimalBeforePost(DataSet: TDataSet);
    procedure qryUnidadesBeforePost(DataSet: TDataSet);
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator5Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryUnidades_proporcionaisBeforePost(DataSet: TDataSet);
    procedure DBNavigator6Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryVariedadesBeforePost(DataSet: TDataSet);
    procedure qryVariedadesAfterEdit(DataSet: TDataSet);
    procedure qryVariedadesBeforeDelete(DataSet: TDataSet);
    procedure Button14Click(Sender: TObject);
    procedure RecuperaVariaveisForragem;
    procedure Button15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperaVariaveisEstacao;
    procedure Forragens1Click(Sender: TObject);
    procedure btEliminaScanClick(Sender: TObject);
    procedure apaga_altura_media_scan_tb;
    procedure verifica_existe_altura_media_scan_tb;
    procedure apaga_medicoes_escaneamentos_tb;
    procedure dbgMedicoesCellClick(Column: TColumn);
    procedure le_altura_media_medida;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmScannforr: TfrmScannforr;

implementation

uses uFuncoes;

var vMovePanel, vcalibragem : boolean;
    xi, yi, vdlaAnt, vdloAnt, valtitudeAnt, vdistanciaAnt, vIncluidos,
    vdla1, vdla2, vdlo1, vdlo2, vContador, vNaoIncluidas, vxleft, vytop,
    x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8,
    vEmpresaImagem, vAreaImagem, vMediaDistanciaCalibragem, vi : integer;
    vlinha, vPath_imagem_area_geral, vProximoProcesso, vpath : string;
    vTemErro, vPrimeiroClick, vDemarcou, vRecalcula, vgravaMediaAltura : boolean;

{$R *.dfm}

procedure TfrmScannforr.Button11Click(Sender: TObject);
begin

  mmResultado.Lines.Add(
    qryMedicoes_capa_resultado.FieldByName('seq_medicao').AsString +
    ' - ' +
    formatDateTime('dd/mm/yyyy', qryMedicoes_capa_resultado.
                        FieldByName('data_medicao').AsDateTime) +
    ' ' +
    qryMedicoes_capa_resultado.FieldByName('descricao_medicao').AsString
  );

  mmResultado.SelStart := Perform(EM_LINEINDEX, mmResultado.Lines.Count - 1, 0);
  mmResultado.Refresh;

end;

procedure TfrmScannforr.Button12Click(Sender: TObject);
begin

  if mmResultado.Lines.Count > 1 then
    begin
      mmResultado.Lines.Delete(mmResultado.Lines.Count-1);
      mmResultado.Refresh;
    end;

end;

procedure TfrmScannforr.Button13Click(Sender: TObject);
begin

  if qryArea_geral.State = dsEdit then
    begin
      pnlalopix.Visible := true;
      pnAreaGeral.Top := frmScannforr.Height - 170;
      pnAreaGeral.Left:= 0;
      edCoordenada1lat.SetFocus;
    end
  else
    begin
      showmessage('Para ativar a calibragem de tela � preciso colocar ' +
                  'o registro em modo de edi��o clicando na barra de navega��o');
    end;

end;

procedure TfrmScannforr.Button14Click(Sender: TObject);
begin

  qryMedicoes_capa.Open;

  if MessageDlg ('Recalcula posi��es da tela a partir das coordenadas medidas?'
                 , mtWarning,[mbYes, mbNo], 0) = mrYes then
  if MessageDlg ('***** Aten��o, o rec�lculo das posi��es da tela pode exigir ' +
                 'que seja feito um novo ajuste de tela para essa medi��o, ' +
                 'Continua?'
                 , mtWarning,[mbYes, mbNo], 0) = mrYes then
    CalculaAlteraXpixYpixEscaneamento;

end;

procedure TfrmScannforr.Button15Click(Sender: TObject);
begin

  if MessageDlg ('***** Aten��o, recupera os valores padr�o dos par�metros de ' +
                 'massa seca e altura m�nima para pastejo?'
                 , mtWarning,[mbYes, mbNo], 0) = mrYes then
    begin
      RecuperaVariaveisForragem;
      RecuperaVariaveisEstacao;
{
      edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2').AsString;
      edAlturaMassaSeca.Text :=
                   qryGeral2.FieldByName('altura_massa_seca_cm').AsString;
      edAltMinima.Text :=
                   qryGeral2.FieldByName('altura_minima_pastejo').AsString;
}
    end;

end;

procedure TfrmScannforr.Button1Click(Sender: TObject);
begin

  LeGravaUltimaAreaGeral;
  CarregaImagemPrincipal;
  imgSalva.Picture := imgPrincipal.Picture;

end;

procedure TfrmScannforr.Button2Click(Sender: TObject);
begin

  edpixe1lat.Text := '';
  edpixe2lat.Text := '';
  edpixe1long.Text := '';
  edpixe2long.Text := '';
  edcoorpixlat.Text := '';
  edcoorpixlong.Text := '';

end;

procedure TfrmScannforr.btCancelaAjusteClick(Sender: TObject);
begin

  pnAjuste.Visible := false;

end;

procedure TfrmScannforr.btCancelaClick(Sender: TObject);
begin

  pnCalibra.Visible := false;
  pnMassa.Visible := false;

  qryMedicoes_capa_scann.CancelUpdates;

end;

procedure TfrmScannforr.btContinuaClick(Sender: TObject);
begin

  if (length(trim(edAlturaEquipamento.Text)) = 0) or
     (strTOint(edAlturaEquipamento.Text) = 0) then
    begin
      showmessage('Altura do equipamento n�o informada');
      edAlturaEquipamento.SetFocus;
      qryMedicoes_capa_scann.CancelUpdates;
      exit;
    end;

  if (length(trim(edAlturaPlanta.Text)) = 0) or
     (strTOint(edAlturaPlanta.Text) = 0) then
    begin
      showmessage('Altura da planta n�o informada');
      edAlturaPlanta.SetFocus;
      qryMedicoes_capa_scann.CancelUpdates;
      exit;
    end;

  if (length(trim(dbeDiasPastejo.Text)) = 0) or
     (strTOint(dbeDiasPastejo.Text) = 0) then
    begin
      showmessage('Quantidade de dias que vai durar o pastejo na lota��o ');
      dbeDiasPastejo.SetFocus;
      qryMedicoes_capa_scann.CancelUpdates;
      exit;
    end;

  if (length(trim(dbepercAniVivoDia.Text)) = 0) or
     (strTOint(dbepercAniVivoDia.Text) = 0) then
    begin
      showmessage('% de oferta de massa seca por dia para cada 100kg de '+
                  'animal vivo n�o informado');
      dbepercAniVivoDia.SetFocus;
      qryMedicoes_capa_scann.CancelUpdates;
      exit;
    end;

  if (length(trim(dbePesoMedioCabeca.Text)) = 0) or
     (strTOint(dbePesoMedioCabeca.Text) = 0) then
    begin
      showmessage('Peso m�dio (kg) por cabe�a dos animais que ir�o compor a ' +
                  'lota��o n�o informado');
      dbePesoMedioCabeca.SetFocus;
      qryMedicoes_capa_scann.CancelUpdates;
      exit;
    end;

  if vProximoProcesso = 'resultados' then
  begin
    if (length(trim(edms.Text)) = 0) or
       (strTOcurr(edms.Text) = 0) then
      begin
        showmessage('Massa Seca em kg/m� n�o informada');
        edms.SetFocus;
        qryMedicoes_capa_scann.CancelUpdates;
        exit;
      end;

    if (length(trim(edAlturaMassaSeca.Text)) = 0) or
       (strTOint(edAlturaMassaSeca.Text) = 0) then
      begin
        showmessage('Altura da forragem de amostragem da massa seca n�o informada');
        edAlturaMassaSeca.SetFocus;
        qryMedicoes_capa_scann.CancelUpdates;
        exit;
      end;

    if (length(trim(edaltMinima.Text)) = 0) or
       (strTOint(edaltMinima.Text) = 0) then
      begin
        showmessage('Altura m�nima de pastejo n�o informada');
        edaltMinima.SetFocus;
        qryMedicoes_capa_scann.CancelUpdates;
        exit;
      end;

  end;

  qryMedicoes_capa.Open;
  qryMedicoes_capa_scann.ApplyUpdates;
  qryMedicoes_capa_scann.CommitUpdates;

  pnMassa.Visible := false;

  if vProximoProcesso = 'importa escaneamento' then
    ChamaPergunta;

  if vProximoProcesso = 'pontos escaneamento' then
    begin
      pnCalibra.Visible := false;
      frmScannForr.Refresh;
      ProcessaPontosEscaneamento;
    end;

  if vProximoProcesso = 'grafico escaneamento' then
    begin
      pnCalibra.Visible := false;
      frmScannForr.Refresh;
      GeraGraficoEscaneamento;
    end;

  if vProximoProcesso = 'resultados' then
    if mmResultado.Lines.Count > 1 then
      begin
        pnCalibra.Visible := false;
        frmScannForr.Refresh;
        ApresentaResultados;
        if vTemErro then
          exit;

        ApresentaResultadosMultiplos;
      end
    else

      begin
        pnCalibra.Visible := false;
        frmScannForr.Refresh;
        ApresentaResultados;
        if vTemErro then
          exit;

        ApresentaResultadosMultiplos;
      end;

  le_altura_media_medida;

end;

procedure TfrmScannforr.btResultadosClick(Sender: TObject);
begin

  verifica_existe_altura_media_scan_tb;

  if (qryGeral2.RecordCount = 0) and
     (qryMedicoes_escaneamentos.RecordCount = 0) then
    exit;

  if (length(trim(qryArea_geral_scann.FieldByName('relacao_dla_pixel').AsString)) = 0) or
     (qryArea_geral_scann.FieldByName('relacao_dla_pixel').AsCurrency = 0) then
    begin
      showmessage('rela��o do dla/pixel n�o informada, entre em �reas de Piquetes ' +
                  'para cadastrar esse dado');
      exit;
    end;

  if (length(trim(qryArea_geral_scann.FieldByName('relacao_dlo_pixel').AsString)) = 0) or
     (qryArea_geral_scann.FieldByName('relacao_dlo_pixel').AsCurrency = 0) then
    begin
      showmessage('rela��o do dlo/pixel n�o informada, entre em �reas de Piquetes ' +
                  'para cadastrar esse dado');
      exit;
    end;

  qryPiquetes_scann.Close;
  qryPiquetes_scann.Open;

  pnCalibra.top  := trunc((screen.Height - pnCalibra.Height) / 2);
  pnCalibra.left := trunc((screen.Width - pnCalibra.Width) / 2);
  pnCalibra.BringToFront;

  pnMassa.Visible := true;
  qryMedicoes_capa_scann.Edit;

  if qryMedicoes_capa_scann.FieldByName('massa_seca').AsCurrency <= 0 then
    begin
      RecuperaVariaveisForragem;
      RecuperaVariaveisEstacao;
{
      edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2').AsString;
      edAlturaMassaSeca.Text :=
                   qryGeral2.FieldByName('altura_massa_seca_cm').AsString;
      edAltMinima.Text :=
                   qryGeral2.FieldByName('altura_minima_pastejo').AsString;
}
    end;

  mmRodape.Clear;
  mmResultado.Clear;

  qryMedicoes_capa_resultado.Close;
  qryMedicoes_capa_resultado.Open;

  mmResultado.Lines.Add(
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsString +
    ' - ' +
    formatDateTime('dd/mm/yyyy', qryMedicoes_capa_scann.
                        FieldByName('data_medicao').AsDateTime) +
    ' ' +
    qryMedicoes_capa_scann.FieldByName('descricao_medicao').AsString
  );

  mmResultado.SelStart := Perform(EM_LINEINDEX, mmResultado.Lines.Count - 1, 0);

  pnCalibra.Visible := true;
  vProximoProcesso := 'resultados';

end;

procedure TfrmScannforr.RecuperaVariaveisForragem;
begin

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
' select *' +
' from variedades_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_variedade = :seq_variedade';

  qryGeral2.Params[0].AsInteger :=
        qryarea_geral_scann.FieldByName('seq_empresa_fornecedora').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryarea_geral_scann.FieldByName('seq_variedade').AsInteger;

  qryGeral2.Open;

end;

procedure TfrmScannforr.apaga_medicoes_escaneamentos_tb;
begin

  vTemErro := true;

  // apaga medi��es scaneadas
  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  '       delete from medicoes_escaneamentos_tb m' +
  '         where m.seq_empresa = :seq_empresa    ' +
  '           and m.seq_area_geral = :seq_area_geral ' +
  '           and m.seq_medicao = :seq_medicao ';

  qryGeral2.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  try
    qryGeral2.ExecSQL;
  except
    on E : Exception do
    begin
      ShowMessage('erro ao apagar as medi��es em medicoes_escaneamentos_tb : '+E.Message);
      exit;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmScannforr.verifica_existe_altura_media_scan_tb;
begin

  // verifica se existe a m�dia da altura apurada e gravada por �rea
  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  '       select am.seq_media_scan' +
  '          from medicoes_capa_tb mc, altura_media_scan_tb am ' +
  '         where mc.seq_empresa = :seq_empresa    ' +
  '           and mc.seq_area_geral = :seq_area_geral ' +
  '           and mc.seq_medicao = :seq_medicao ' +
  '           and am.seq_empresa = mc.seq_empresa' +
  '           and am.seq_area_geral = mc.seq_area_geral' +
  '           and am.seq_medicao = mc.seq_medicao ';

  qryGeral2.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  qryGeral2.ExecSQL;

end;

procedure TfrmScannforr.apaga_altura_media_scan_tb;
begin

  vTemErro := true;

  // apaga a m�dia da altura apurada e gravada por �rea
  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  '       delete from altura_media_scan_tb' +
  '         where seq_media_scan in (' +

  '       select am.seq_media_scan' +
  '          from medicoes_capa_tb mc, altura_media_scan_tb am ' +
  '         where mc.seq_empresa = :seq_empresa    ' +
  '           and mc.seq_area_geral = :seq_area_geral ' +
  '           and mc.seq_medicao = :seq_medicao ' +
  '           and am.seq_empresa = mc.seq_empresa' +
  '           and am.seq_area_geral = mc.seq_area_geral' +
  '           and am.seq_medicao = mc.seq_medicao) ';

  qryGeral2.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  try
    qryGeral2.ExecSQL;
  except
    on E : Exception do
    begin
      ShowMessage('erro ao apagar as m�dias de altura na altura_media_scan_tb : '+E.Message);
      exit;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmScannforr.ApresentaResultados;
var xperc, idxPlanta, xaltura_equipamento, xvolumePlanta,
    xvolumePlantaAreaGeral, xvolumePlantaPastejo,
    xvolumePlantaPastejoAreaGeral, xtamanhoAreaGeral, xMassaPastejoArea,
    xMassaPastejoCrescimento, xMassaPastejoAreaAreaGeral,
    xMassaPastejoExtratoArea, xMassaPastejoExtratoAreaAreaGeral,
    xMassaSecaArea, xMassaSecaAreaAreaGeral,
    xMassaPastejoCrescimentoAreaGeral, xmassa_seca, idxMassa : currency;
    xidxPlanta, xSelecionaPiqueteOuNao : string;
    i, xalturaPlantaAreaGeral, xalturaPlanta, xaltura_minima_pastejo,
    xalturaPlantaPastejoAreaGeral, xalturaPlantaPastejo,
    xqtdeAnimaisLotacao : integer;

begin

  vTemErro := true;

  if MediaDistanciaCalibragem(
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
    qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger
    ) = 999999 then
    begin
      exit;
    end;

  vMediaDistanciaCalibragem :=
      MediaDistanciaCalibragem(
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
        qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger);

  idxPlanta := idxPlantaf
               (qryMedicoes_capa_scann.FieldByName('altura_planta').AsInteger,
                qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                vMediaDistanciaCalibragem);

  xaltura_equipamento :=
         qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger;
  xaltura_minima_pastejo :=
         qryMedicoes_capa_scann.FieldByName('altura_minima_pastejo').AsInteger;
  xmassa_seca :=
         qryMedicoes_capa_scann.FieldByName('massa_seca').AsCurrency;

  xidxPlanta := currTOstr(idxPlanta);
  xidxPlanta := StringReplace(xidxPlanta, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  // verifica percentual de medi��es fora do piquete
  if qryMedicoes_escaneamentos.RecordCount > 0 then
    begin
      qryGeral.Close;
      qryGeral.SQL.Text :=
      ' select count(*) as semPiquete' +
      ' from medicoes_escaneamentos_tb' +
      ' where seq_empresa    = :seq_empresa' +
      '   and seq_area_geral = :seq_area_geral' +
      '   and seq_medicao    = :seq_medicao' +
      '   and seq_medicoes not in' +
      '       (select seq_medicoes' +
      '          from medicoes_escaneamentos_tb m, areas_limites_tb al,' +
      '               areas_tb a, area_geral_tb ag' +

{      '         where m.ytop = al.ytop ' +
      '           and m.xleft = al.xleft ' +
      '           and m.seq_empresa = :seq_empresa2   ' +}

      '         where m.seq_empresa = :seq_empresa2   ' +
      '           and m.seq_area_geral = :seq_area_geral2' +
      '           and m.seq_medicao = :seq_medicao2' +
      '           and m.ytop = al.ytop ' +
      '           and m.xleft = al.xleft ' +

      '           and ag.seq_empresa = m.seq_empresa' +
      '           and ag.seq_area_geral = m.seq_area_geral' +

      '           and a.seq_empresa = ag.seq_empresa' +
      '           and a.seq_area_geral = ag.seq_area_geral' +

      '           and al.seq_empresa = a.seq_empresa' +
      '           and al.seq_area_geral = a.seq_area_geral' +
      '           and al.seq_area = a.seq_area)';

      qryGeral.Params[0].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
      qryGeral.Params[3].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[4].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[5].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
      qryGeral.Open;

      if qryGeral.FieldByName('semPiquete').AsInteger > 0 then
        showmessage('Existe ' + qryGeral.FieldByName('semPiquete').AsString +
                    ' medi��es que ficaram fora de algum piquete');

      xperc := ((qryGeral.FieldByName('semPiquete').AsInteger /
                 qryMedicoes_escaneamentos.RecordCount) * 100);

      if xperc > 10.00 then
        begin
          showmessage(currTOstr(xperc) + '% das medi��es est�o fora de algum piquete, '+
                      'fa�a o ajuste dos piquetes ou ajuste dos pontos na tela devidamente '+
                      'ou tente gerar os pontos de tela novamente clicando no bot�o Gera' +
                      ' Pontos Tela');
          //exit;
        end;
    end;

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmscannforr.Refresh;

  if not cktodosPiquetes.Checked then
    begin
      xSelecionaPiqueteOuNao :=
          '           and a.seq_area = ' +
          qryPiquetes_scann.FieldByName('seq_area').AsString;
    end
  else
    xSelecionaPiqueteOuNao := '';

  //result := trunc((altura_equipamento - distancia) * idxPlanta);
  // calcula altura m�dia da forragem por piquete pelo escaneamento
  qryGeral.Close;
  qryGeral.SQL.Text :=
  '       select a.nome_area, max(a.seq_area) as seq_area, max(a.tamanho_area) as tamanhoArea,' +

  '              avg(m.altura_ajustada) as alturaPlanta' +

{  '              avg( (' + currTOstr(xaltura_equipamento) + ' - m.distancia) *' +
                       xidxplanta + ' ) as alturaPlanta' + }

  '          from medicoes_escaneamentos_tb m, areas_limites_tb al,' +
  '               areas_tb a, area_geral_tb ag' +

{  '         where m.ytop = al.ytop ' +
  '           and m.xleft = al.xleft ' +
  '           and m.seq_empresa = :seq_empresa    ' +}

  '         where m.seq_empresa = :seq_empresa    ' +
  '           and m.seq_area_geral = :seq_area_geral ' +
  '           and m.seq_medicao = :seq_medicao ' +
  '           and m.ytop = al.ytop ' +
  '           and m.xleft = al.xleft ' +

  '           and ag.seq_empresa = m.seq_empresa' +
  '           and ag.seq_area_geral = m.seq_area_geral' +

  '           and a.seq_empresa = ag.seq_empresa' +
  '           and a.seq_area_geral = ag.seq_area_geral' +

  xSelecionaPiqueteOuNao +

  '           and al.seq_empresa = a.seq_empresa' +
  '           and al.seq_area_geral = a.seq_area_geral' +
  '           and al.seq_area = a.seq_area' +

  '           and m.altura_ajustada > 0 ' +
  '           and m.altura_ajustada is not null ' +

//  '           and (' + currTOstr(xaltura_equipamento) + ' - m.distancia) > 0' +

  '       group by 1' +
  '       order by 1';

  qryGeral.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
  qryGeral.Open;

  vgravaMediaAltura := true;
  if qryGeral.RecordCount > 0 then
    begin

      verifica_existe_altura_media_scan_tb;

      if qryGeral2.RecordCount = 0 then
        if not cktodosPiquetes.Checked then
          begin
            showmessage('Na primeira vez que est� gerando os resultados '+
                        '� necess�rio que sejam processados todos os piquetes, '+
                        'portanto marque a caixa "processa todos os piquetes"');
            pnprocessa.Visible := false;
            exit;
          end;

      // apaga a m�dia da altura apurada e gravada por �rea
      qryGeral2.Close;
      qryGeral2.SQL.Text :=
      '       delete from altura_media_scan_tb' +
      '         where seq_media_scan in (' +

      '       select am.seq_media_scan' +
      '          from medicoes_capa_tb mc, altura_media_scan_tb am, ' +
      '               areas_tb a' +
      '         where mc.seq_empresa = :seq_empresa    ' +
      '           and mc.seq_area_geral = :seq_area_geral ' +
      '           and mc.seq_medicao = :seq_medicao ' +
      '           and am.seq_empresa = mc.seq_empresa' +
      '           and am.seq_area_geral = mc.seq_area_geral' +
      '           and am.seq_medicao = mc.seq_medicao ' +
      '           and a.seq_empresa = am.seq_empresa' +
      '           and a.seq_area_geral = am.seq_area_geral' +
      '           and a.seq_area = am.seq_area' +
      xSelecionaPiqueteOuNao +
      '                                  )';

      qryGeral2.Params[0].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral2.Params[1].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral2.Params[2].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

      try
        qryGeral2.ExecSQL;
      except
        on E : Exception do
        begin
          ShowMessage('erro ao apagar as m�dias de altura na altura_media_scan_tb'+
                      ' em resultados : '+E.Message);
          exit;
        end;
      end;

    end

  else
    begin
      // procura a m�dia da altura apurada e gravada por �rea
      qryGeral.Close;
      qryGeral.SQL.Text :=
      '       select a.nome_area, a.seq_area, a.tamanho_area as tamanhoArea,' +

      '              am.altura_media_forr_scan as alturaPlanta' +

      '          from medicoes_capa_tb mc, altura_media_scan_tb am, ' +
      '               areas_tb a' +
      '         where mc.seq_empresa = :seq_empresa    ' +
      '           and mc.seq_area_geral = :seq_area_geral ' +
      '           and mc.seq_medicao = :seq_medicao ' +
      '           and am.seq_empresa = mc.seq_empresa' +
      '           and am.seq_area_geral = mc.seq_area_geral' +
      '           and am.seq_medicao = mc.seq_medicao ' +
      '           and a.seq_empresa = am.seq_empresa' +
      '           and a.seq_area_geral = am.seq_area_geral' +
      '           and a.seq_area = am.seq_area' +

      xSelecionaPiqueteOuNao +

      '       order by a.nome_area';

      qryGeral.Params[0].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
      qryGeral.Open;

      vgravaMediaAltura := false;

    end;

  if qryGeral.RecordCount = 0 then
    begin
      pnProcessa.Visible := false;
      showmessage('N�o foi encontrada nenhuma medi��o');
      exit;
    end;

  // chama a tela de resultados
  pnResultados.top  :=
    trunc((screen.Height - pnResultados.Height) / 2);
  pnResultados.left :=
    trunc((screen.Width - pnResultados.Width) / 2);
  pnResultados.BringToFront;

  xalturaPlantaAreaGeral := 0;
  xalturaPlantaPastejoAreaGeral := 0;

  xvolumePlantaAreaGeral := 0;
  xvolumePlantaPastejoAreaGeral := 0;

  xMassaPastejoAreaAreaGeral := 0;
  xMassaPastejoExtratoAreaAreaGeral := 0;

  xMassaPastejoCrescimentoAreaGeral := 0;
  xMassaSecaAreaAreaGeral := 0;

  xtamanhoAreaGeral := 0;

  ctAlturaMedia.Series[0].Clear;
  ctVolumeMedio.Series[0].Clear;
  ctMassaSecaForragem.Series[0].Clear;
  ctMassaSecaCrescimento.Series[0].Clear;

  ctAlturaMediaPastejo.Series[0].Clear;
  ctVolumeMedioPastejo.Series[0].Clear;
  ctMassaSecaPastejoDisponivel.Series[0].Clear;
  ctMassaSecaDisponivel.Series[0].Clear;

  ctAlturaEvolucao.Series[0].Clear;
  mmdisponivel.Lines.Clear;

  for i:=1 to qryGeral.RecordCount do
    begin
      // Monta gr�fico altura planta *****
      ctAlturaMedia.Series[0].AddY(
        qryGeral.FieldByName('alturaPlanta').AsInteger,
        qryGeral.FieldByName('nome_area').AsString,
        clinfoBk
        );

      xalturaPlanta := qryGeral.FieldByName('alturaPlanta').AsInteger;
      xalturaPlantaAreaGeral := xalturaPlantaAreaGeral + xalturaPlanta;

      idxMassa := (xalturaPlanta.ToDouble) /
                  qryMedicoes_capa_scann.FieldByName('altura_massa_seca').AsCurrency;

      if qryMedicoes_escaneamentos.RecordCount > 0 then
        begin
          qryGeral2.Close;
          qryGeral2.SQL.Text :=
          ' insert into altura_media_scan_tb(' +
          '     seq_empresa, seq_area_geral, seq_area, seq_medicao,' +
          '     altura_media_forr_scan)' +
          ' values (' +
          '     :seq_empresa, :seq_area_geral, :seq_area, :seq_medicao,' +
          '     :altura_media_forr_scan)';

          qryGeral2.Params[0].AsInteger :=
                qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
          qryGeral2.Params[1].AsInteger :=
                qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
          qryGeral2.Params[2].AsInteger :=
                qryGeral.FieldByName('seq_area').AsInteger;
          qryGeral2.Params[3].AsInteger :=
                qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
          qryGeral2.Params[4].AsInteger :=
                qryGeral.FieldByName('alturaPlanta').AsInteger;

          try
            qryGeral2.ExecSQL;
          except
            on E : Exception do
            begin
              ShowMessage('erro ao incluir as m�dias de altura na altura_media_scan_tb : '+E.Message);
              exit;
            end;
          end;
        end;

      // Monta gr�fico volume planta *****
      xvolumePlanta :=
          (xalturaPlanta / 100) * qryGeral.FieldByName('tamanhoArea').AsCurrency;

      xvolumePlantaAreaGeral := xvolumePlantaAreaGeral + xvolumePlanta;

      ctVolumeMedio.Series[0].AddY(
        xvolumePlanta,
        qryGeral.FieldByName('nome_area').AsString,
        clinfoBk
        );

      xtamanhoAreaGeral := xtamanhoAreaGeral +
                           qryGeral.FieldByName('tamanhoArea').AsCurrency;


      // Monta gr�fico massa seca pastejo kg *****
      xMassaPastejoArea :=
          (xmassa_seca * idxMassa * qryGeral.FieldByName('tamanhoArea').AsCurrency);

      //xMassaPastejoArea := xMassaPastejoArea *
      //    ((xalturaPlanta - xaltura_minima_pastejo) / xalturaPlanta);

      xMassaPastejoAreaAreaGeral := xMassaPastejoAreaAreaGeral + xMassaPastejoArea;

      ctMassaSecaForragem.Series[0].AddY(
        xMassaPastejoArea,
        qryGeral.FieldByName('nome_area').AsString,
        clinfoBk
        );


      // Monta gr�fico massa seca crescimento kg por cm
      xMassaPastejoCrescimento :=
          (xmassa_seca * idxMassa * qryGeral.FieldByName('tamanhoArea').AsCurrency);

      xMassaPastejoCrescimento := xMassaPastejoCrescimento / xalturaPlanta;

      xMassaPastejoCrescimentoAreaGeral := xMassaPastejoCrescimentoAreaGeral +
                                           xMassaPastejoCrescimento;

      ctMassaSecaCrescimento.Series[0].AddY(
        xMassaPastejoCrescimento,
        qryGeral.FieldByName('nome_area').AsString,
        clinfoBk
        );


      // Monta gr�fico altura extrato planta pastejo
      xalturaPlantaPastejo := qryGeral.FieldByName('alturaPlanta').AsInteger -
                              xaltura_minima_pastejo;
      xalturaPlantaPastejoAreaGeral := xalturaPlantaPastejoAreaGeral +
                                       xalturaPlantaPastejo;

      if xaltura_minima_pastejo >= xalturaPlanta then
        begin
          ctAlturaMediaPastejo.Series[0].AddY(
            xalturaPlantaPastejo,
            'alt min Pastejo >= a alt da forragem',
            clinfoBk
            );
        end
      else
        begin
          ctAlturaMediaPastejo.Series[0].AddY(
            xalturaPlantaPastejo,
            qryGeral.FieldByName('nome_area').AsString,
            clinfoBk
            );
        end;


      // Monta gr�fico volume extrato planta pastejo
      xvolumePlantaPastejo :=
          (xalturaPlantaPastejo / 100) * qryGeral.FieldByName('tamanhoArea').AsCurrency;

      xvolumePlantaPastejoAreaGeral := xvolumePlantaPastejoAreaGeral +
                                       xvolumePlantaPastejo;

      if xaltura_minima_pastejo >= xalturaPlanta then
        begin
          ctVolumeMedioPastejo.Series[0].AddY(
            xvolumePlantaPastejo,
            'alt min Pastejo >= a alt da forragem',
            clinfoBk
            );
        end
      else
        begin
          ctVolumeMedioPastejo.Series[0].AddY(
            xvolumePlantaPastejo,
            qryGeral.FieldByName('nome_area').AsString,
            clinfoBk
            );
        end;


      // Monta gr�fico massa seca do extrato de pastejo dispon�vel kg
      xMassaPastejoExtratoArea :=
          (xmassa_seca * idxMassa * qryGeral.FieldByName('tamanhoArea').AsCurrency) ;

      xMassaPastejoExtratoArea := xMassaPastejoExtratoArea *
            ((xalturaPlanta - xaltura_minima_pastejo) / xalturaPlanta);

      xMassaPastejoExtratoAreaAreaGeral := xMassaPastejoExtratoAreaAreaGeral +
                                           xMassaPastejoExtratoArea;

      if xaltura_minima_pastejo >= xalturaPlanta then
        begin
          ctMassaSecaPastejoDisponivel.Series[0].AddY(
            xMassaPastejoExtratoArea,
            'alt min Pastejo >= a alt da forragem',
            clinfoBk
            );
        end
      else
        begin
          ctMassaSecaPastejoDisponivel.Series[0].AddY(
            xMassaPastejoExtratoArea,
            qryGeral.FieldByName('nome_area').AsString,
            clinfoBk
            );
        end;

      if xMassaPastejoExtratoArea <= 0 then
      begin
        mmdisponivel.Lines.Add(
          qryGeral.FieldByName('nome_area').AsString +
          ' - sem extrato de massa seca pastej�vel, est� zerada ou negativa, ' +
          'veja no gr�fico de massa seca pastej�vel dispon�vel'
        );
      end

      else
      begin
        xqtdeAnimaisLotacao :=
          trunc(
          (
          ((xMassaPastejoExtratoArea /
            qryGeral.FieldByName('tamanhoArea').AsCurrency ) * 10000) *  // divide para achar por ha
          100 *
          (qryGeral.FieldByName('tamanhoArea').AsCurrency / 10000) ) /

          (
          qryMedicoes_capa_scann.FieldByName('dias_pastejo').AsInteger *
          qryMedicoes_capa_scann.FieldByName('perc_ms_100kg_anivivo_dia').AsCurrency *
          qryMedicoes_capa_scann.FieldByName('peso_medio_cabeca_kg').AsCurrency )
          );

        mmdisponivel.Lines.Add(
          qryGeral.FieldByName('nome_area').AsString + ' - dias de pastejo: ' +
          qryMedicoes_capa_scann.FieldByName('dias_pastejo').AsString +
          ' dias - perc de consumo/dia de massa seca para cada 100kg de animal vivo: ' +
          qryMedicoes_capa_scann.FieldByName('perc_ms_100kg_anivivo_dia').AsString +
          '% - peso m�dio por cabe�a em kg: ' +
          qryMedicoes_capa_scann.FieldByName('peso_medio_cabeca_kg').AsString
        );

        mmdisponivel.Lines.Add(
          '     ***  lota��o: ' + xqtdeAnimaisLotacao.ToString + ' animais em ' +
          formatCurr('###,###,##0.00',
                (qryGeral.FieldByName('tamanhoArea').AsCurrency / 10000)) +
          ' ha - massa seca pastej�vel: ' +
          formatCurr('###,###,##0.00',
                (xMassaPastejoExtratoArea /
                  qryGeral.FieldByName('tamanhoArea').AsCurrency ) * 10000) +
          ' kg/ha - total de massa seca pastej�vel do piquete: ' +
          formatCurr('###,###,##0.00', xMassaPastejoExtratoArea) + ' kg'
        );
      end;

      mmdisponivel.Lines.Add('');

      // Monta gr�fico massa seca dispon�vel kg
      xMassaSecaArea :=
          (xmassa_seca * idxMassa) * qryGeral.FieldByName('tamanhoArea').AsCurrency;

      xMassaSecaAreaAreaGeral := xMassaSecaAreaAreaGeral + xMassaSecaArea;

      ctMassaSecaDisponivel.Series[0].AddY(
        xMassaSecaArea,
        qryGeral.FieldByName('nome_area').AsString,
        clinfoBk
        );


      qryGeral.Next;
    end;

  //xalturaPlantaAreaGeral := trunc((xvolumePlantaAreaGeral / xtamanhoAreaGeral) * 100);
  //xMassaPastejoCrescimentoAreaGeral :=
  //    xMassaPastejoAreaAreaGeral / (xalturaPlantaAreaGeral - xaltura_minima_pastejo);

  xalturaPlantaAreaGeral :=
      trunc (xalturaPlantaAreaGeral.ToDouble / qryGeral.RecordCount.ToDouble);
  xalturaPlantaPastejoAreaGeral :=
      trunc (xalturaPlantaPastejoAreaGeral.ToDouble / qryGeral.RecordCount.ToDouble);

  if cktodosPiquetes.Checked then
    begin
      lbResultados.Caption := qryArea_geral_scann.FieldByName('nome_area_geral').AsString;
      lbVolumeAreaGeral.Caption :=
        'Altura M�dia = ' +
        formatCurr('####', xalturaPlantaAreaGeral.ToDouble) +
        ' cm' +
        '     Volume M�dio = ' +
        formatCurr('###,###,##0.00', xvolumePlantaAreaGeral) +
        ' m�' +
        '     Massa Seca de Forragem = ' +
        formatCurr('###,###,##0.00', xMassaPastejoAreaAreaGeral) +
        ' kg' +
        '     Massa Seca de Crescimento = ' +
        formatCurr('###,###,##0.00', xMassaPastejoCrescimentoAreaGeral) +
        ' kg/cm';

      lbDisponivel.Caption :=
        'Altura M�dia de Pastejo = ' +
        formatCurr('####', xalturaPlantaPastejoAreaGeral.ToDouble) +
        ' cm' +
        '     Volume M�dio de Pastejo = ' +
        formatCurr('###,###,##0.00', xvolumePlantaPastejoAreaGeral) +
        ' m�' +
        '     Massa Seca de Pastejo = ' +
        formatCurr('###,###,##0.00', xMassaPastejoExtratoAreaAreaGeral) +
        ' Kg' +
        '     Massa Seca Total = ' +
        formatCurr('###,###,##0.00', xMassaSecaAreaAreaGeral) +
        ' Kg';
    end
  else
    begin
      lbResultados.Caption := ''; //qryPiquetes_scann.FieldByName('nome_area').AsString;
      lbVolumeAreaGeral.Caption := qryPiquetes_scann.FieldByName('nome_area').AsString;
      lbDisponivel.Caption := qryPiquetes_scann.FieldByName('nome_area').AsString;
    end;

  pnProcessa.Visible   := false;
  pgResultado.TabIndex := 0;
  pnResultados.Visible := true;

  vTemErro := false;

end;

procedure TfrmScannforr.ApresentaResultadosMultiplos;
var idxPlanta, xaltura_equipamento, xkg_ms_ha_dia : currency;
    xidxPlanta, xseq_medicoes, xSelecionaPiqueteOuNao : string;
    i, xalturaPlantaAreaGeral, xalturaPlantaAnt, xseq_area_ant,
    xdias : integer;
    xdata, xdataAnt : tdatetime;
    xcor1 : boolean;

begin

  if MediaDistanciaCalibragem(
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
    qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger
    ) = 999999 then
    begin
      exit;
    end;

  vMediaDistanciaCalibragem :=
      MediaDistanciaCalibragem(
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
        qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger);

  idxPlanta := idxPlantaf
               (qryMedicoes_capa_scann.FieldByName('altura_planta').AsInteger,
                qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                vMediaDistanciaCalibragem);

  xaltura_equipamento :=
         qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger;

  xidxPlanta := currTOstr(idxPlanta);
  xidxPlanta := StringReplace(xidxPlanta, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  xseq_medicoes := '';
  for i:=0 to mmresultado.Lines.Count - 1 do
    begin
      xseq_medicoes := xseq_medicoes +
        copy (mmresultado.Lines[i], 1, pos(' -', mmresultado.Lines[i]) -1) +
        ', ';
    end;

  xseq_medicoes := trim(xseq_medicoes);
  xseq_medicoes := copy(xseq_medicoes, 1, length(xseq_medicoes) -1);

  if not cktodosPiquetes.Checked then
    begin
      xSelecionaPiqueteOuNao :=
          '           and a.seq_area = ' +
          qryPiquetes_scann.FieldByName('seq_area').AsString;
    end
  else
    xSelecionaPiqueteOuNao := '';

  //result := trunc((altura_equipamento - distancia) * idxPlanta);
  // calcula altura m�dia da forragem por piquete
  qryGeral.Close;
  qryGeral.SQL.Text :=
  '       select mc.data_medicao, a.nome_area, a.seq_area,' +
  '              max(a.tamanho_area) as tamanhoArea,' +
  '              max(mc.massa_seca) as massa_seca,' +
  '              max(mc.altura_massa_seca) as altura_massa_seca,' +

  '              avg(m.altura_ajustada) as alturaPlanta' +

{  '              avg( (' + currTOstr(xaltura_equipamento) + ' - m.distancia) *' +
                       xidxplanta + ' ) as alturaPlanta' + }

  '          from medicoes_escaneamentos_tb m, areas_limites_tb al,' +
  '               areas_tb a, area_geral_tb ag, medicoes_capa_tb mc' +

  '         where mc.seq_empresa = :seq_empresa' +
  '           and mc.seq_area_geral = :seq_area_geral' +
  '           and mc.seq_medicao in (' + xseq_medicoes + ') ' + //= :seq_medicao ' +

  '           and m.seq_empresa = mc.seq_empresa    ' +
  '           and m.seq_area_geral = mc.seq_area_geral ' +
  '           and m.seq_medicao = mc.seq_medicao ' +
  '           and m.ytop = al.ytop ' +
  '           and m.xleft = al.xleft ' +

  '           and ag.seq_empresa = mc.seq_empresa' +
  '           and ag.seq_area_geral = mc.seq_area_geral' +

  '           and a.seq_empresa = ag.seq_empresa' +
  '           and a.seq_area_geral = ag.seq_area_geral' +

  xSelecionaPiqueteOuNao +

  '           and al.seq_empresa = a.seq_empresa' +
  '           and al.seq_area_geral = a.seq_area_geral' +
  '           and al.seq_area = a.seq_area' +

  '           and m.altura_ajustada > 0 ' +
  '           and m.altura_ajustada is not null ' +

//  '           and (' + currTOstr(xaltura_equipamento) + ' - m.distancia) > 0' +

  '       group by mc.data_medicao, a.nome_area, a.seq_area' +
  '       order by a.nome_area, mc.data_medicao';

  qryGeral.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Open;

  if qryGeral.RecordCount = 0 then
    begin
      qryGeral.Close;
      qryGeral.SQL.Text :=
      '       select mc.data_medicao, a.nome_area, a.seq_area,' +
      '              a.tamanho_area as tamanhoArea,' +
      '              mc.massa_seca as massa_seca,' +
      '              mc.altura_massa_seca as altura_massa_seca,' +

      '              m.altura_media_forr_scan as alturaPlanta' +

      '          from altura_media_scan_tb m, ' +
      '               areas_tb a, medicoes_capa_tb mc' +
      '         where mc.seq_empresa = :seq_empresa' +
      '           and mc.seq_area_geral = :seq_area_geral' +
      '           and mc.seq_medicao in (' + xseq_medicoes + ') ' + //= :seq_medicao ' +

      '           and m.seq_empresa = mc.seq_empresa    ' +
      '           and m.seq_area_geral = mc.seq_area_geral ' +
      '           and m.seq_medicao = mc.seq_medicao ' +
      '           and m.altura_media_forr_scan > 0 ' +
      '           and m.altura_media_forr_scan is not null ' +

      '           and a.seq_empresa = m.seq_empresa' +
      '           and a.seq_area_geral = m.seq_area_geral' +
      '           and a.seq_area = m.seq_area' +

      xSelecionaPiqueteOuNao +

      '       order by a.nome_area, mc.data_medicao';

      qryGeral.Params[0].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger :=
            qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Open;
    end;

  xdata := qryGeral.FieldByName('data_medicao').AsDateTime;
  xdataAnt := qryGeral.FieldByName('data_medicao').AsDateTime;
  ctAlturaEvolucao.Series[0].Clear;
  xalturaPlantaAnt := 999;
  mmCrescimentoForr.Lines.Clear;

  for i:=1 to qryGeral.RecordCount do
    begin

      if xdata = qryGeral.FieldByName('data_medicao').AsDateTime then
        if xcor1 then
          xcor1 := false
        else
          xcor1 := true;

      if xcor1 then
        begin
          // Monta gr�fico altura planta
          if (xalturaPlantaAnt <> 999) and
             (xseq_area_ant = qryGeral.FieldByName('seq_area').AsInteger) then
            begin
              if trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt)> 0 then
                ctAlturaEvolucao.Series[0].AddY(
                  trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt),
                  formatDateTime('dd/mm/yyyy', qryGeral.
                        FieldByName('data_medicao').AsDateTime) +
                  ' - ' +
                  'diferen�a',
                  clblue
                  )
              else
                ctAlturaEvolucao.Series[0].AddY(
                  trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt),
                  formatDateTime('dd/mm/yyyy', qryGeral.
                        FieldByName('data_medicao').AsDateTime) +
                  ' - ' +
                  'diferen�a',
                  clred
                  )
            end;

          if (xdataAnt <> qryGeral.FieldByName('data_medicao').AsDateTime) then
            if (xseq_area_ant <> qryGeral.FieldByName('seq_area').AsInteger) then
              mmCrescimentoForr.Lines.Add('')
            else
              begin
                xdias := daysbetween(
                         qryGeral.FieldByName('data_medicao').AsDateTime,
                         xdataAnt);

                xkg_ms_ha_dia :=
                    (
                    (
                    (qryGeral.FieldByName('alturaPlanta').AsInteger -
                     xalturaPlantaAnt)/xdias
                    ) /
                    qryGeral.FieldByName('altura_massa_seca').ascurrency
                    ) *
                    qryGeral.FieldByName('massa_seca').ascurrency *
                    10000;

                mmCrescimentoForr.Lines.Add(
                  qryGeral.FieldByName('nome_area').AsString + ' - de ' +
                  FormatDateTime('dd/mm/yyyy', xdataAnt) + ' at� ' +
                  qryGeral.FieldByName('data_medicao').AsString + ' = ' +
                  intTOstr(xdias) + ' dias - Crescimento da Forragem:   ' +
                  (qryGeral.FieldByName('alturaPlanta').AsInteger -
                   xalturaPlantaAnt).ToString + ' cm | ' +
                  formatCurr('###,##0.00',
                             (qryGeral.FieldByName('alturaPlanta').AsInteger -
                              xalturaPlantaAnt)/xdias) + ' cm/dia | ' +
                  formatCurr('###,##0.00', xkg_ms_ha_dia) + ' kg/ms/ha/dia'
                )
              end;

          xalturaPlantaAnt := qryGeral.FieldByName('alturaPlanta').AsInteger;
          xseq_area_ant := qryGeral.FieldByName('seq_area').AsInteger;

          ctAlturaEvolucao.Series[0].AddY(
            qryGeral.FieldByName('alturaPlanta').AsInteger,
            formatDateTime('dd/mm/yyyy', qryGeral.FieldByName('data_medicao').AsDateTime) +
            ' - ' +
            qryGeral.FieldByName('nome_area').AsString,
            cllime
            );
        end
      else
        begin
          // Monta gr�fico altura planta
          if (xalturaPlantaAnt <> 999) and
             (xseq_area_ant = qryGeral.FieldByName('seq_area').AsInteger) then
            begin
              if trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt)> 0 then
                ctAlturaEvolucao.Series[0].AddY(
                  trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt),
                  formatDateTime('dd/mm/yyyy', qryGeral.
                        FieldByName('data_medicao').AsDateTime) +
                  ' - ' +
                  'diferen�a',
                  clblue
                  )
              else
                ctAlturaEvolucao.Series[0].AddY(
                  trunc(qryGeral.FieldByName('alturaPlanta').AsInteger -
                       xalturaPlantaAnt),
                  formatDateTime('dd/mm/yyyy', qryGeral.
                        FieldByName('data_medicao').AsDateTime) +
                  ' - ' +
                  'diferen�a',
                  clred
                  )
            end;

          if (xdataAnt <> qryGeral.FieldByName('data_medicao').AsDateTime) then
            if (xseq_area_ant <> qryGeral.FieldByName('seq_area').AsInteger) then
              mmCrescimentoForr.Lines.Add('')
            else
              begin
                xdias := daysbetween(
                         qryGeral.FieldByName('data_medicao').AsDateTime,
                         xdataAnt);

                xkg_ms_ha_dia :=
                    (
                    (
                    (qryGeral.FieldByName('alturaPlanta').AsInteger -
                     xalturaPlantaAnt)/xdias
                    ) /
                    qryGeral.FieldByName('altura_massa_seca').ascurrency
                    ) *
                    qryGeral.FieldByName('massa_seca').ascurrency *
                    10000;

                mmCrescimentoForr.Lines.Add(
                  qryGeral.FieldByName('nome_area').AsString + ' - de ' +
                  FormatDateTime('dd/mm/yyyy', xdataAnt) + ' at� ' +
                  qryGeral.FieldByName('data_medicao').AsString + ' = ' +
                  intTOstr(xdias) + ' dias - Crescimento da Forragem:   ' +
                  (qryGeral.FieldByName('alturaPlanta').AsInteger -
                   xalturaPlantaAnt).ToString + ' cm | ' +
                  formatCurr('###,##0.00',
                             (qryGeral.FieldByName('alturaPlanta').AsInteger -
                              xalturaPlantaAnt)/xdias) + ' cm/dia | ' +
                  formatCurr('###,##0.00', xkg_ms_ha_dia) + ' kg/ms/ha/dia'
                )
              end;

          xalturaPlantaAnt := qryGeral.FieldByName('alturaPlanta').AsInteger;
          xseq_area_ant := qryGeral.FieldByName('seq_area').AsInteger;

          ctAlturaEvolucao.Series[0].AddY(
            qryGeral.FieldByName('alturaPlanta').AsInteger,
            formatDateTime('dd/mm/yyyy', qryGeral.FieldByName('data_medicao').AsDateTime) +
            ' - ' +
            qryGeral.FieldByName('nome_area').AsString,
            clyellow
            );
        end;

      xalturaPlantaAnt := qryGeral.FieldByName('alturaPlanta').AsInteger;
      xseq_area_ant := qryGeral.FieldByName('seq_area').AsInteger;
      xdataAnt := qryGeral.FieldByName('data_medicao').AsDateTime;

      qryGeral.Next;

    end;

  if mmResultado.Lines.Count > 1 then
    pgResultado.TabIndex := 2;

  pnResultados.Refresh;

end;

procedure TfrmScannforr.btGraficoEscaneamentoClick(Sender: TObject);
var i:integer;

begin
  if qryMedicoes_escaneamentos.RecordCount = 0 then
    exit;

  pnCalibra.top  := trunc((screen.Height - pnCalibra.Height) / 2);
  pnCalibra.left := trunc((screen.Width - pnCalibra.Width) / 2);
  pnCalibra.BringToFront;

  mmRodape.Clear;
  pnCalibra.Visible := true;
  vProximoProcesso := 'grafico escaneamento';

end;

procedure TfrmScannforr.GeraGraficoEscaneamento;
var i, ytop, xleft, alturaLida : integer;
    idxPlanta : currency;

begin

  try
    qryGeral.Close;
    qryGeral.SQL.Text :=
' select *' +
' from variedades_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_variedade = :seq_variedade';

    qryGeral.Params[0].AsInteger :=
      qryArea_Geral_scann.FieldByName('seq_empresa_fornecedora').AsInteger;
    qryGeral.Params[1].AsInteger :=
      qryArea_Geral_scann.FieldByName('seq_variedade').AsInteger;

    qryGeral.Open;

  except
    on E : Exception do
    begin
      ShowMessage('erro na leitura da variedade da �rea de piquetes : '+E.Message);
      exit;
    end;
  end;

  if qryGeral.RecordCount = 0 then
    begin
      showmessage('variedade da �rea de piquetes n�o encontrada - seq_empresa ' +
                  qryArea_Geral_scann.FieldByName('seq_empresa_fornecedora').AsString +
                  ' - seq_variedade ' +
                  qryArea_Geral_scann.FieldByName('seq_variedade').AsString);
      exit;
    end;

  try
    qryMedicoes_capa_scann.Edit;
    qryMedicoes_capa_scann.FieldByName('perc_considerado_planta').AsCurrency :=
      qryGeral.FieldByName('perc_considerado_planta').AsCurrency;
    qryMedicoes_capa_scann.FieldByName('seq_empresa_fornecedora').AsInteger :=
      qryGeral.FieldByName('seq_empresa').AsInteger;
    qryMedicoes_capa_scann.FieldByName('seq_variedade').AsInteger :=
      qryGeral.FieldByName('seq_variedade').AsInteger;

    qryMedicoes_capa_scann.ApplyUpdates;
    qryMedicoes_capa_scann.CommitUpdates;

  except
    on E : Exception do
    begin
      ShowMessage('erro update qryMedicoes_capa_scann dados variedade : '+E.Message);
      exit;
    end;
  end;

  pnGrEvoMedicoesEscaneamentos.top  :=
    trunc((screen.Height - pnGrEvoMedicoesEscaneamentos.Height) / 2);
  pnGrEvoMedicoesEscaneamentos.left :=
    trunc((screen.Width - pnGrEvoMedicoesEscaneamentos.Width) / 2);
  pnGrEvoMedicoesEscaneamentos.BringToFront;

  ctMedicoesEscaneamentos.SeriesList.ClearValues;

  if MediaDistanciaCalibragem(
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
    qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger
    ) = 999999 then
    begin
      exit;
    end;

  vMediaDistanciaCalibragem :=
      MediaDistanciaCalibragem(
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
        qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger);

  idxPlanta := idxPlantaf
               (qryMedicoes_capa_scann.FieldByName('altura_planta').AsInteger,
                qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                vMediaDistanciaCalibragem);

  qryMedicoes_escaneamentos.First;
  for i:=1 to qryMedicoes_escaneamentos.RecordCount do
    begin

      if qryMedicoes_escaneamentos.FieldByName('distancia').AsInteger <
         qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger then
        begin
          alturaLida := alturaLidaf
                        (qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                         qryMedicoes_escaneamentos.FieldByName('distancia').AsInteger,
                         idxPlanta);

          alturalida := trunc (alturalida *
            (qryMedicoes_capa_scann.FieldByName('perc_considerado_planta').AsCurrency
             / 100) + 0.55);

          if (alturalida <= qryMedicoes_capa_scann.
                                FieldByName('altura_equipamento').AsInteger) and
             (alturalida > 0) then
            ctMedicoesEscaneamentos.Series[0].AddY(alturaLida, i.ToString, clnone);
        end;

      qryMedicoes_escaneamentos.Next;
    end;

  pnGrEvoMedicoesEscaneamentos.Visible := true;
  qryMedicoes_escaneamentos.First;

end;

procedure TfrmScannforr.edChaveAPIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if length(trim(edChaveAPI.Text)) = 0 then
    exit;

  if key = 13 then
    PreparaImportacaoGoogleMaps;

end;

procedure TfrmScannforr.PreparaImportacaoGoogleMaps;
var i, xdlaAnt, xdloAnt : integer;

begin

  vContador := 0;
  xdlaAnt := 0;
  xdloAnt := 0;
  vTemErro := false;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' select dla, dlo, latitude, longitude' +
  ' from medicoes_escaneamentos_tb' +
  ' where seq_empresa    = :seq_empresa' +
  '   and seq_area_geral = :seq_area_geral' +
  '   and seq_medicao    = :seq_medicao' +
  '   and seq_medicoes not in' +
  '               (select m.seq_medicoes' +
  '                from medicoes_escaneamentos_tb m, lat_long_alt_tb l' +
  '                where m.dla = l.dla' +
  '                  and m.dlo = l.dlo' +
  '                  and m.seq_empresa    = :seq_empresa2' +
  '                  and m.seq_area_geral = :seq_area_geral2' +
  '                  and m.seq_medicao    = :seq_medicao2)' +
  ' order by 1, 2';

  qryGeral2.Params[0].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  qryGeral2.Params[3].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[4].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[5].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  qryGeral2.ExecSQL;

  if qryGeral2.RecordCount = 0 then
    begin
      showmessage('Todos as coordenadas com altitude do terreno ' +
                  'j� est�o no sistema, para essa medi��o');
      exit;
    end;

  if MessageDlg ('Deseja fazer a importa��o de altitudes do solo do Google Maps ' +
                 'para ' + qryGeral2.RecordCount.ToString + ' medi��es?'
                  , mtWarning,[mbYes, mbNo], 0) = mrNo then exit;

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmScannforr.Refresh;

  for i:=1 to qryGeral2.RecordCount do
    begin
      if (qryGeral2.FieldByName('dla').AsInteger <> xdlaAnt) or
         (qryGeral2.FieldByName('dlo').AsInteger <> xdloAnt) then
        LeGravaAltitudeTerreno;

      if vTemErro then
        break;

      xdlaAnt := qryGeral2.FieldByName('dla').AsInteger;
      xdloAnt := qryGeral2.FieldByName('dlo').AsInteger;

      qryGeral2.Next;
    end;

  pnProcessa.Visible := false;
  pnImpGmaps.Visible := false;
  showmessage('Foram incluidas ' + vContador.ToString + ' altitudes do Google Maps');

end;

procedure TfrmScannforr.LeGravaAltitudeTerreno;
var
   str : TStringStream;
   url, xretorno, xcasasDecimais : string;
   xaltitude_solo, xtestaNro : integer;

begin

  vTemErro := True;

  url := 'https://maps.googleapis.com/maps/api/elevation/json?locations=' +
         trim(qryGeral2.FieldByName('latitude').AsString) + ',' +
         trim(qryGeral2.FieldByName('longitude').AsString) +
         '&key=' +
         trim(edChaveAPI.Text);

  str := nil;
  HTTPReqResp1.URL := URL;
  str  := TStringStream.Create;

  try
    HTTPReqResp1.Execute('', str );
  except
    str.Free;
    exit;
  end;

  Memo2.Lines.Clear;
  Memo2.Lines.Add(str.DataString);

  if pos('REQUEST_DENIED', memo2.Text) <> 0 then
    begin
      showmessage('Erro na pesquisa da altitude no google maps = ' +
                  memo2.text);
      str.Free;
      exit
    end;

  if length(trim(memo2.Text)) = 0 then
    begin
      showmessage('Google maps n�o retornou altitude do solo');
      str.Free;
      exit
    end;

  xretorno := memo2.Text;
  xretorno := copy(xretorno,pos('"elevation" :', xretorno) + 14, 300);
  xcasasDecimais := xretorno;
  xretorno := copy(xretorno, 1, pos('.', xretorno) - 1);
  xcasasDecimais := trim(copy(xcasasDecimais, pos('.', xcasasDecimais) + 1, 2 ));

  if length(trim(xcasasDecimais)) = 0 then
    xcasasDecimais := '00'
  else
  if length(trim(xcasasDecimais)) = 1 then
    xcasasDecimais := xcasasDecimais + '0';

  try
    xtestaNro := strTOint(copy(xcasasDecimais, 1, 1));
  except
    xcasasDecimais := '00';
  end;

  try
    xtestaNro := strTOint(copy(xcasasDecimais, 2, 1));
  except
    xcasasDecimais := copy(xcasasDecimais, 1, 1) + '0';
  end;

  try
    xaltitude_solo := (xretorno + xcasasDecimais).ToInteger;
  except
    showmessage('Valor da altitude retornada do gooble maps est� inv�lido = ' +
                xretorno + ' ------ ' + memo2.Text);
    str.Free;
    exit;
  end;

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' insert into lat_long_alt_tb(' +
  '     dla, dlo, altitude_solo, latitude, longitude)' +
  ' values (:dla, :dlo, :altitude_solo, :latitude, :longitude)';

  qryGeral.Params[0].AsInteger :=
    qryGeral2.FieldByName('dla').AsInteger;

  qryGeral.Params[1].AsInteger :=
    qryGeral2.FieldByName('dlo').AsInteger;

  qryGeral.Params[2].AsInteger :=
    xaltitude_solo;

  qryGeral.Params[3].AsString :=
    qryGeral2.FieldByName('latitude').AsString;

  qryGeral.Params[4].AsString :=
    qryGeral2.FieldByName('longitude').AsString;

  try
    qryGeral.ExecSQL;
    vContador := vContador + 1;
  except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      str.Free;
      exit;
    end;
  end;

  str.Free;
  vTemErro := false;

end;

procedure TfrmScannforr.dbgAreaGeralCellClick(Column: TColumn);
begin

  pnlalopix.Visible := false;
  dbgAreaGeralCellClickSegue;

end;

procedure TfrmScannforr.dbgAreaGeralCellClickSegue;
begin

  if length(trim(qryArea_Geral.FieldByName('Path_imagem_area_geral').AsString)) = 0 then
    exit;

  vEmpresaImagem := qryEmpresa_fornecedora.FieldByName('seq_empresa').AsInteger;
  vAreaImagem := qryArea_Geral.FieldByName('seq_area_geral').AsInteger;
  vPath_imagem_area_geral :=
      qryArea_Geral.FieldByName('Path_imagem_area_geral').AsString;

  VerificaMudaImagemPrincipal;

end;

procedure TfrmScannforr.dbgAreaGeralDblClick(Sender: TObject);
var path : string;

begin

  exit;

  path := reverseString(vpath);
  path := copy(path, pos('\', path), 300);
  path := reverseString(vpath);

  OpenDialog1.Title := 'Selecione o caminho do arquivo de Imagem';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
  OpenDialog1.InitialDir := path; //ExtractFileDir(application.ExeName);

  if OpenDialog1.Execute then
    begin
      qryArea_Geral.FieldByName('path_imagem_area_geral').AsString := OpenDialog1.FileName;
      vpath := OpenDialog1.FileName;
      if length(trim(OpenDialog1.FileName)) > 0 then
        imgPrincipal.Picture.LoadFromFile(OpenDialog1.FileName);

      imgSalva.Picture := imgPrincipal.Picture;
    end;

end;

procedure TfrmScannforr.dbgAreaGeralMedicoesCellClick(Column: TColumn);
begin

  dbgAreaGeralMedicoesCellClickSegue;

end;

procedure TfrmScannforr.dbgAreaGeralMedicoesCellClickSegue;
begin

  if length(trim(qryArea_Geral_medicoes.FieldByName('Path_imagem_area_geral').AsString)) = 0 then
    exit;

  vEmpresaImagem := qryArea_Geral_medicoes.FieldByName('seq_empresa').AsInteger;
  vAreaImagem := qryArea_Geral_medicoes.FieldByName('seq_area_geral').AsInteger;
  vPath_imagem_area_geral :=
      qryArea_Geral_medicoes.FieldByName('Path_imagem_area_geral').AsString;

  VerificaMudaImagemPrincipal;

end;

procedure TfrmScannforr.dbgAreasDblClick(Sender: TObject);
begin

  LeLimitesDemarcaPiquete;

end;

procedure TfrmScannforr.dbgAreasGeralCellClick(Column: TColumn);
begin

  dbgAreasGeralCellClickSegue;

end;

procedure TfrmScannforr.dbgAreasGeralCellClickSegue;
begin

  if length(trim(qryArea_Geral_piquete.FieldByName('Path_imagem_area_geral').AsString)) = 0 then
    exit;

  vEmpresaImagem := qryArea_Geral_piquete.FieldByName('seq_empresa').AsInteger;
  vAreaImagem := qryArea_Geral_piquete.FieldByName('seq_area_geral').AsInteger;
  vPath_imagem_area_geral :=
      qryArea_Geral_piquete.FieldByName('Path_imagem_area_geral').AsString;

  VerificaMudaImagemPrincipal;

end;

procedure TfrmScannforr.dbgEmpresasAreaCellClick(Column: TColumn);
begin

  pnlalopix.Visible := false;
  dbgEmpresasAreaCellClickSegue;

end;

procedure TfrmScannforr.dbgEmpresasAreaCellClickSegue;
begin

  if length(trim(qryArea_Geral.FieldByName('Path_imagem_area_geral').AsString)) = 0 then
    exit;

  vEmpresaImagem := qryEmpresa_fornecedora.FieldByName('seq_empresa').AsInteger;
  vAreaImagem := qryArea_Geral.FieldByName('seq_area_geral').AsInteger;
  vPath_imagem_area_geral :=
      qryArea_Geral.FieldByName('Path_imagem_area_geral').AsString;

  VerificaMudaImagemPrincipal;

end;

procedure TfrmScannforr.dbgEmpresasAreaGeralCellClick(Column: TColumn);
begin

  dbgEmpresasAreaGeralCellClickSegue;

end;

procedure TfrmScannforr.dbgEmpresasAreaGeralCellClickSegue;
begin

  if length(trim(qryArea_Geral_Scann.FieldByName('Path_imagem_area_geral').AsString)) = 0 then
    exit;

  vEmpresaImagem := qryArea_Geral_Scann.FieldByName('seq_empresa').AsInteger;
  vAreaImagem := qryArea_Geral_Scann.FieldByName('seq_area_geral').AsInteger;
  vPath_imagem_area_geral :=
      qryArea_Geral_Scann.FieldByName('Path_imagem_area_geral').AsString;

  VerificaMudaImagemPrincipal;

end;

procedure TfrmScannforr.dbgMedicoesCellClick(Column: TColumn);
begin

  le_altura_media_medida;

end;

procedure TfrmScannforr.le_altura_media_medida;
begin

  qryPiquetes_alturaMedia.Close;

  if qryMedicoes_capa_scann.RecordCount = 0 then
    exit;

  qryPiquetes_alturaMedia.SQL.Text :=

'  select *' +
'  from altura_media_scan_tb at, areas_tb a, medicoes_capa_tb m' +
'  where m.seq_empresa = :seq_empresa' +
'    and m.seq_area_geral = :seq_area_geral' +
'    and m.seq_medicao = :seq_medicao' +
'    and at.seq_empresa = m.seq_empresa' +
'    and at.seq_medicao = m.seq_medicao' +
'    and a.seq_empresa = at.seq_empresa' +
'    and a.seq_area_geral = at.seq_area_geral' +
'    and a.seq_area = at.seq_area';

  qryPiquetes_alturaMedia.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryPiquetes_alturaMedia.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryPiquetes_alturaMedia.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  qryPiquetes_alturaMedia.Open;

end;

procedure TfrmScannforr.DBNavigator10Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricaoTS.SetFocus;

end;

procedure TfrmScannforr.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeNome_Empresa.SetFocus;

end;

procedure TfrmScannforr.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeNomeAreaGeral.SetFocus;

end;

procedure TfrmScannforr.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if qryAreas.State <> dsEdit then
    begin
      btdemarcaPiquete.Color := clWhite;
      Screen.Cursor := crDefault;
    end;

  if button = nbInsert then
    dbeNome_area.SetFocus;

end;

procedure TfrmScannforr.DBNavigator4Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeNome_unidade.SetFocus;

end;

procedure TfrmScannforr.DBNavigator5Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricao_unidade_proporcional.SetFocus;

end;

procedure TfrmScannforr.DBNavigator6Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeNome_variedade.SetFocus;

end;

procedure TfrmScannforr.DBNavigator7Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    begin
      dbeDescricao_medicao.SetFocus;
      mkeData.Text := '';
    end;

end;

procedure TfrmScannforr.DBNavigator8Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricao.SetFocus;

end;

procedure TfrmScannforr.DBNavigator9Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricaoTA.SetFocus;

end;

procedure TfrmScannforr.dcbentradaClick(Sender: TObject);
begin

  if dcbEntrada.Checked then
    dcbsaida.Checked := false;

end;

procedure TfrmScannforr.dcbsaidaClick(Sender: TObject);
begin

  if dcbsaida.Checked then
    dcbentrada.Checked := false;

end;

procedure TfrmScannforr.dsMedicoes_capaDataChange(Sender: TObject;
  Field: TField);
begin

  if length(qryMedicoes_capa.FieldByName('data_medicao').AsString) > 0 then
    mkeData.Text :=
      formatDateTime('dd/mm/yyy',
                   qryMedicoes_capa.FieldByName('data_medicao').AsDateTime);

end;

procedure TfrmScannforr.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  PostMessage(FindWindow(nil, 'Controlforr'), WM_CLOSE,0,0);

end;

procedure TfrmScannforr.FormCreate(Sender: TObject);
begin

  dbgEmpresas.Columns[0].Width := 389;

  dbgAreaGeral.Columns[0].Width := 280;

  dbgAreasGeral.Columns[0].Width := 335;
  dbgAreasGeral.Columns[1].Width := 335;

  dbgAreas.Columns[0].Width := 488;

  dbgEmpresasArea.Columns[0].Width := 389;

  dbgUnidades.Columns[1].Width := 400;

  dbgUnidadesProporcionais.Columns[1].Width := 472;

  dbgVariedades.Columns[1].Width := 388;

  dbgMedicoesCapa.Columns[0].Width := 496;

  dbgEmpresasAreaGeral.Columns[0].Width := 235;

  dbgArea_geral_scann2.Columns[0].Width := 235;

  //dbgMedicoes.Columns[0].Width := 350;

  dbgAreaGeralMedicoes.Columns[0].Width := 423;
  dbgAreaGeralMedicoes.Columns[1].Width := 423;

  dbgMedicoesEscaneamentos.Columns[0].Width := 80;

  dbgPiquetes.Columns[0].Width := 465;

  dbgTipoEvento.Columns[1].Width := 400;

  dbgTipoSuplemento.Columns[1].Width := 487;

  dbgTipoAnimal.Columns[1].Width := 487;

  dbgAlturaMediaMedida.Columns[0].Width := 400;

  pgResultado.TabIndex := 0;

  mmRodape.Clear;

  qryPadrao_sistema.Open;
  qryEmpresas.Open;
  CarregaImagemPrincipal;
  ConfiguraCanvas;
  imgSalva.Picture := imgPrincipal.Picture;

  mkeydesenho.Hint :=
    ' posicione o cursor nesse' + #13 +
    ' campo e d� um duplo clique' + #13 +
    ' no ponto da imagem da tela' + #13 +
    ' de onde se quer mover o' + #13 +
    ' desenho na vertical';

  mkexdesenho.Hint :=
    ' posicione o cursor nesse' + #13 +
    ' campo e d� um duplo clique' + #13 +
    ' no ponto da imagem da tela' + #13 +
    ' de onde se quer mover o' + #13 +
    ' desenho na horizontal';

  mkeyajuste.Hint :=
    ' posicione o cursor nesse' + #13 +
    ' campo e d� um duplo clique' + #13 +
    ' no ponto da imagem da tela' + #13 +
    ' para onde se quer mover o' + #13 +
    ' desenho na vertical';

  mkexajuste.Hint :=
    ' posicione o cursor nesse' + #13 +
    ' campo e d� um duplo clique' + #13 +
    ' no ponto da imagem da tela' + #13 +
    ' para onde se quer mover o' + #13 +
    ' desenho na horizontal';

  Application.HintHidePause := 10000;

end;

procedure TfrmScannforr.Forragens1Click(Sender: TObject);
begin

  pnVariedades.top  := trunc((screen.Height - pnVariedades.Height) / 2);
  pnVariedades.left := trunc((screen.Width - pnVariedades.Width) / 2);
  pnVariedades.BringToFront;

  qryUnidades.Close;
  qryUnidades.Open;

  qryUnidades2.Close;
  qryUnidades2.Open;

  qryEmpresa_fornecedora2.Close;
  qryEmpresa_fornecedora2.SQL.Text :=
    ' select * '+
    ' from empresas_tb '+
    ' where fornecedor = :true '+
    ' order by nome_empresa';

  qryEmpresa_fornecedora2.Params[0].AsString := 'true';
  qryEmpresa_fornecedora2.Open;

  qryVariedades.Close;
  qryVariedades.Open;

  pnVariedades.Visible := true;

end;

procedure TfrmScannforr.btDemarcaPiqueteClick(Sender: TObject);
begin

  if vDemarcou then
    exit;

  imgPrincipal.Picture := imgSalva.Picture;
  frmScannforr.Refresh;
  LeLimitesDemarcaPiquete;
  if qryGeral.RecordCount > 0 then
    exit;

  if btDemarcaPiquete.Color = clred then
    exit;

  if (qryAreas.State <> dsedit) then
    begin
      showmessage('Para ativar a demarca��o de piquete � preciso colocar ' +
                  'o registro em modo de edi��o clicando na barra de navega��o');
      exit;
    end;

  Screen.Cursor := crDrag;
  btDemarcaPiquete.Color := clred;
  vPrimeiroClick := true;

  pnPiquete.Top := 0;
  pnPiquete.Left:= 0;

  ConfiguraCanvas;

end;

procedure TfrmScannforr.btEliminaScanClick(Sender: TObject);
begin

  if qryMedicoes_escaneamentos.RecordCount = 0 then
    exit;

  verifica_existe_altura_media_scan_tb;

  if qryGeral2.RecordCount = 0 then
    begin
      if MessageDlg ('Os resultados ainda n�o foram gerados, Tem certeza que '+
                     'deseja eliminar os lan�amentos escaneados?'
                     , mtWarning,[mbYes, mbNo], 0) = mrNo then
        exit;
    end
  else
    begin
      if MessageDlg ('Deseja eliminar os lan�amentos escaneados?'
                     , mtWarning,[mbYes, mbNo], 0) = mrNo then
        exit;
    end;

  apaga_medicoes_escaneamentos_tb;
  qryMedicoes_escaneamentos.Close;
  qryMedicoes_escaneamentos.Open;

end;

procedure TfrmScannforr.btGravaDemarcacaoClick(Sender: TObject);
var loopx, loopy : boolean;
    x, y :integer;

begin

  if not vDemarcou then
    exit;

  if MessageDlg ('Confirma grava��o de demarca��es?'
                  , mtWarning,[mbYes, mbNo], 0) = mrNo then exit;

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmScannforr.Refresh;

  try
    qryAreas.Edit;
    qryAreas.FieldByName('x1').AsInteger := x1;
    qryAreas.FieldByName('x2').AsInteger := x2;
    qryAreas.FieldByName('x3').AsInteger := x3;
    qryAreas.FieldByName('x4').AsInteger := x4;
    qryAreas.FieldByName('x5').AsInteger := x5;
    qryAreas.FieldByName('x6').AsInteger := x6;
    qryAreas.FieldByName('x7').AsInteger := x7;
    qryAreas.FieldByName('x8').AsInteger := x8;

    qryAreas.FieldByName('y1').AsInteger := y1;
    qryAreas.FieldByName('y2').AsInteger := y2;
    qryAreas.FieldByName('y3').AsInteger := y3;
    qryAreas.FieldByName('y4').AsInteger := y4;
    qryAreas.FieldByName('y5').AsInteger := y5;
    qryAreas.FieldByName('y6').AsInteger := y6;
    qryAreas.FieldByName('y7').AsInteger := y7;
    qryAreas.FieldByName('y8').AsInteger := y8;

    qryAreas.ApplyUpdates;
    qryAreas.CommitUpdates;
  except
    on E : Exception do
      begin
        ShowMessage('Erro ao atualizar demarca��es em piquetes(Areas_tb) - '+E.Message);
        qryAreas.CancelUpdates;
        exit;
      end;
  end;

  vcontador := 0;
  vNaoIncluidas := 0;
  loopx := true;
  loopy := true;
  x := 0;

  while loopx do
    begin
      if (x=imgPrincipal.Width) and (y=imgPrincipal.Height) then
        begin
          if ColorToString(imgPrincipal.Canvas.Pixels[X,Y]) = 'clYellow' then
            begin
              vxleft := x;
              vytop  := y;
              GravaXYtela;
            end;
          break;
        end;

      y := 0;
      while loopy do
      begin

        if (y=imgPrincipal.Height) then
          begin
            if ColorToString(imgPrincipal.Canvas.Pixels[X,Y]) = 'clYellow' then
              begin
                vxleft := x;
                vytop  := y;
                GravaXYtela;
              end;
            break;
          end;

        if ColorToString(imgPrincipal.Canvas.Pixels[X,Y]) = 'clYellow' then
          begin
            vxleft := x;
            vytop  := y;
            GravaXYtela;
          end;

        if y < imgPrincipal.Height then
          y := y + 1;

      end;

      if x < imgPrincipal.Width then
        x := x + 1;

    end;

  pnProcessa.Visible := false;

  showmessage('Foram incluidas ' + vContador.ToString + ' coordenadas xy da tela e ' +
              vNaoIncluidas.ToString + ' n�o inclu�das');
  Screen.Cursor := crDefault;
  vDemarcou := false;
  imgPrincipal.Picture := imgSalva.Picture;
  btdemarcaPiquete.Color := clWhite;
  qryareas.CancelUpdates;
  vPrimeiroClick := false;

end;

procedure TfrmScannforr.GravaXYtela;
var i:integer;

begin

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into areas_limites_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ytop, xleft)' +
  ' values (:seq_empresa, :seq_area_geral, :seq_area, :ytop, :xleft)';

  qryGeral2.Params[0].AsInteger :=
    qryareas.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
    qryareas.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
    qryareas.FieldByName('seq_area').AsInteger;
  qryGeral2.Params[3].AsInteger := vytop;
  qryGeral2.Params[4].AsInteger := vxleft;


  try
    qryGeral2.ExecSQL;
    vContador := vContador + 1;
  except
    vNaoIncluidas := vNaoIncluidas + 1;
  end;

end;

procedure TfrmScannforr.LeLimitesDemarcaPiquete;
var i, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8 : integer;

begin

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmScannforr.Refresh;

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' select *' +
  ' from areas_tb a, areas_limites_tb al' +
  ' where a.seq_empresa    = :seq_empresa' +
  '   and a.seq_area_geral = :seq_area_geral' +
  '   and a.seq_area       = :seq_area' +

  '   and al.seq_empresa    = a.seq_empresa' +
  '   and al.seq_area_geral = a.seq_area_geral' +
  '   and al.seq_area       = a.seq_area';

  qryGeral.Params[0].AsInteger :=
    qryareas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsInteger :=
    qryareas.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Params[2].AsInteger :=
    qryareas.FieldByName('seq_area').AsInteger;

  qryGeral.ExecSQL;

  pnProcessa.Visible := false;
  frmScannforr.Refresh;

  if qryGeral.RecordCount = 0 then
    exit;

  ConfiguraCanvas;

  x1:=qryAreas.FieldByName('x1').AsInteger;
  x2:=qryAreas.FieldByName('x2').AsInteger;
  x3:=qryAreas.FieldByName('x3').AsInteger;
  x4:=qryAreas.FieldByName('x4').AsInteger;
  x5:=qryAreas.FieldByName('x5').AsInteger;
  x6:=qryAreas.FieldByName('x6').AsInteger;
  x7:=qryAreas.FieldByName('x7').AsInteger;
  x8:=qryAreas.FieldByName('x8').AsInteger;

  y1:=qryAreas.FieldByName('y1').AsInteger;
  y2:=qryAreas.FieldByName('y2').AsInteger;
  y3:=qryAreas.FieldByName('y3').AsInteger;
  y4:=qryAreas.FieldByName('y4').AsInteger;
  y5:=qryAreas.FieldByName('y5').AsInteger;
  y6:=qryAreas.FieldByName('y6').AsInteger;
  y7:=qryAreas.FieldByName('y7').AsInteger;
  y8:=qryAreas.FieldByName('y8').AsInteger;

  if x8 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6), point(x7,y7), point(x8,y8)])
  else
  if x7 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6), point(x7,y7)])
  else
  if x6 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6)])
  else
  if x5 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5)])
  else
  if x4 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4)])
  else
  if x3 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3)])
  else
  if x2 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2)])
  else
  if x1 > 0 then
      imgPrincipal.Canvas.Polygon([point(x1,y1)]);

  pnPiquete.Top := 0;
  pnPiquete.Left:= 0;

end;

procedure TfrmScannforr.btAjustaPontosDesenhoClick(Sender: TObject);
begin

  pnAjuste.top  := trunc((screen.Height - pnAjuste.Height) / 2);
  pnAjuste.left := trunc((screen.Width - pnAjuste.Width) / 2);
  pnAjuste.BringToFront;

  pnMedicoesEscaneamentos.Top := frmScannforr.Height - 150;
  pnMedicoesEscaneamentos.Left:= 0;

  mkeydesenho.Text := '';
  mkexdesenho.Text := '';
  mkeyajuste.Text := '';
  mkexajuste.Text := '';
  pnAjuste.Visible := true;

end;

procedure TfrmScannforr.btAjustaPontosDesenhoPiqueteClick(Sender: TObject);
begin

  pnAjuste.top  := trunc((screen.Height - pnAjuste.Height) / 2);
  pnAjuste.left := trunc((screen.Width - pnAjuste.Width) / 2);
  pnAjuste.BringToFront;

  pnPiquete.Top := frmScannforr.Height - 150;
  pnPiquete.Left:= 0;

  mkeydesenho.Text := '';
  mkexdesenho.Text := '';
  mkeyajuste.Text := '';
  mkexajuste.Text := '';

  pnAjuste.Visible := true;
  mkeydesenho.SetFocus;

end;

procedure TfrmScannforr.btAlteraAjusteClick(Sender: TObject);
var ydif, xdif, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8 : integer;

begin
  if not pnMedicoesEscaneamentos.Visible and
     not pnPiquete.Visible then
    exit;

  if pnMedicoesEscaneamentos.Visible and pnPiquete.Visible then
    begin
      showmessage('As janelas de Medi��es Escaneamentos e de Piquetes n�o ' +
                  'podem estar abertas ao mesmo tempo nesse processo');
      exit;
    end;

  if length(trim(mkeYdesenho.Text)) = 0 then
    begin
      showmessage('Ydesenho n�o informado');
      mkeYdesenho.SetFocus;
      exit;
    end;

  if length(trim(mkeYajuste.Text)) = 0 then
    begin
      showmessage('Yajuste n�o informado');
      mkeYajuste.SetFocus;
      exit;
    end;

  if length(trim(mkeXdesenho.Text)) = 0 then
    begin
      showmessage('Xdesenho n�o informado');
      mkeXdesenho.SetFocus;
      exit;
    end;

  if length(trim(mkeXajuste.Text)) = 0 then
    begin
      showmessage('Xajuste n�o informado');
      mkeXajuste.SetFocus;
      exit;
    end;

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmScannforr.Refresh;

  ydif := strTOint(trim(mkeYajuste.Text)) - strTOint(trim(mkeYdesenho.Text));
  xdif := strTOint(trim(mkeXajuste.Text)) - strTOint(trim(mkeXdesenho.Text));

  if pnMedicoesEscaneamentos.Visible then
    begin

      qryGeral.Close;
      qryGeral.SQL.Text :=
      ' update Area_geral_tb' +
      '    set ydesenho  = ' + trim(mkeYdesenho.Text) + ',' +
      '        xdesenho  = ' + trim(mkeXdesenho.Text) + ',' +
      '        yajuste   = ' + trim(mkeYajuste.Text) + ',' +
      '        xajuste   = ' + trim(mkeXajuste.Text) +
      ' where seq_empresa = :seq_empresa' +
      '   and seq_area_geral = :seq_area_geral';

      qryGeral.Params[0].AsInteger := qryArea_Geral_scann.
                                            FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger := qryArea_Geral_scann.
                                            FieldByName('seq_area_geral').AsInteger;
      qryGeral.ExecSQL;

      if (strTOint(trim(mkeYdesenho.Text)) = 0) and
         (strTOint(trim(mkeXdesenho.Text)) = 0) and
         (strTOint(trim(mkeYajuste.Text)) = 0)  and
         (strTOint(trim(mkeXajuste.Text)) = 0) then
        begin

          qryGeral.Close;
          qryGeral.SQL.Text :=
          ' update medicoes_escaneamentos_tb' +
          '    set ytop  = 0,' +
          '        xleft = 0' +
          ' where seq_empresa = :seq_empresa' +
          '   and seq_area_geral = :seq_area_geral' +
          '   and seq_medicao = :seq_medicao';

          qryGeral.Params[0].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_empresa').AsInteger;
          qryGeral.Params[1].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_area_geral').AsInteger;
          qryGeral.Params[2].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_medicao').AsInteger;
          qryGeral.ExecSQL;
          qryMedicoes_escaneamentos.Close;
          qryMedicoes_escaneamentos.Open;
          CalculaAlteraXpixYpixEscaneamento;

        end

      else
        begin

          qryGeral.Close;
          qryGeral.SQL.Text :=
          ' update medicoes_escaneamentos_tb' +
          '    set ytop  = ' + ydif.ToString + ' + ytop,' +
          '        xleft = ' + Xdif.ToString + ' + xleft' +
          ' where seq_empresa = :seq_empresa' +
          '   and seq_area_geral = :seq_area_geral' +
          '   and seq_medicao = :seq_medicao';

          qryGeral.Params[0].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_empresa').AsInteger;
          qryGeral.Params[1].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_area_geral').AsInteger;
          qryGeral.Params[2].AsInteger := qryMedicoes_capa_scann.
                                                FieldByName('seq_medicao').AsInteger;
          qryGeral.ExecSQL;

        end;

    end;

  if pnPiquete.Visible then
    begin
      x1 := qryareas.FieldByName('x1').AsInteger;
      x2 := qryareas.FieldByName('x2').AsInteger;
      x3 := qryareas.FieldByName('x3').AsInteger;
      x4 := qryareas.FieldByName('x4').AsInteger;
      x5 := qryareas.FieldByName('x5').AsInteger;
      x6 := qryareas.FieldByName('x6').AsInteger;
      x7 := qryareas.FieldByName('x7').AsInteger;
      x8 := qryareas.FieldByName('x8').AsInteger;

      y1 := qryareas.FieldByName('y1').AsInteger;
      y2 := qryareas.FieldByName('y2').AsInteger;
      y3 := qryareas.FieldByName('y3').AsInteger;
      y4 := qryareas.FieldByName('y4').AsInteger;
      y5 := qryareas.FieldByName('y5').AsInteger;
      y6 := qryareas.FieldByName('y6').AsInteger;
      y7 := qryareas.FieldByName('y7').AsInteger;
      y8 := qryareas.FieldByName('y8').AsInteger;

      if x1 > 0 then
        x1 := xdif + x1;
      if x2 > 0 then
        x2 := xdif + x2;
      if x3 > 0 then
        x3 := xdif + x3;
      if x4 > 0 then
        x4 := xdif + x4;
      if x5 > 0 then
        x5 := xdif + x5;
      if x6 > 0 then
        x6 := xdif + x6;
      if x7 > 0 then
        x7 := xdif + x7;
      if x8 > 0 then
        x8 := xdif + x8;

      if y1 > 0 then
        y1 := ydif + y1;
      if y2 > 0 then
        y2 := ydif + y2;
      if y3 > 0 then
        y3 := ydif + y3;
      if y4 > 0 then
        y4 := ydif + y4;
      if y5 > 0 then
        y5 := ydif + y5;
      if y6 > 0 then
        y6 := ydif + y6;
      if y7 > 0 then
        y7 := ydif + y7;
      if y8 > 0 then
        y8 := ydif + y8;

      qryGeral.Close;
      qryGeral.SQL.Text :=

      ' update Areas_tb' +
      '    set ydesenhop  = ' + trim(mkeYdesenho.Text) + ',' +
      '        xdesenhop  = ' + trim(mkeXdesenho.Text) + ',' +
      '        yajustep   = ' + trim(mkeYajuste.Text) + ',' +
      '        xajustep   = ' + trim(mkeXajuste.Text) + ',' +
      '              y1   = ' + y1.tostring + ', ' +
      '              y2   = ' + y2.tostring + ', ' +
      '              y3   = ' + y3.tostring + ', ' +
      '              y4   = ' + y4.tostring + ', ' +
      '              y5   = ' + y5.tostring + ', ' +
      '              y6   = ' + y6.tostring + ', ' +
      '              y7   = ' + y7.tostring + ', ' +
      '              y8   = ' + y8.tostring + ', ' +

      '              x1   = ' + x1.tostring + ', ' +
      '              x2   = ' + x2.tostring + ', ' +
      '              x3   = ' + x3.tostring + ', ' +
      '              x4   = ' + x4.tostring + ', ' +
      '              x5   = ' + x5.tostring + ', ' +
      '              x6   = ' + x6.tostring + ', ' +
      '              x7   = ' + x7.tostring + ', ' +
      '              x8   = ' + x8.tostring +

      ' where seq_empresa = :seq_empresa' +
      '   and seq_area_geral = :seq_area_geral' +
      '   and seq_area = :seq_area';

      qryGeral.Params[0].AsInteger := qryAreas.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger := qryAreas.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger := qryAreas.FieldByName('seq_area').AsInteger;
      qryGeral.ExecSQL;


      qryGeral.Close;
      qryGeral.SQL.Text :=
      ' update Areas_limites_tb' +
      '    set ytop  = ' + ydif.ToString + ' + ytop,' +
      '        xleft = ' + Xdif.ToString + ' + xleft' +
      ' where seq_empresa = :seq_empresa' +
      '   and seq_area_geral = :seq_area_geral' +
      '   and seq_area = :seq_area';

      qryGeral.Params[0].AsInteger := qryAreas.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger := qryAreas.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger := qryAreas.FieldByName('seq_area').AsInteger;
      qryGeral.ExecSQL;
    end;

  //pnAjuste.Visible := false;
  imgPrincipal.Picture := imgSalva.Picture;

  if pnMedicoesEscaneamentos.Visible then
    begin
      qryMedicoes_escaneamentos.Close;
      qryMedicoes_escaneamentos.Open;
      ContinuaProcessaPontosEscaneamento;
    end
  else
    begin
      qryAreas.Close;
      qryAreas.Open;
      LeLimitesDemarcaPiquete;
    end;

  pnProcessa.Visible := false;
  frmScannforr.Refresh;
  showmessage('Ajuste de imagem gravado com sucesso!');

end;

procedure TfrmScannforr.btcalculaClick(Sender: TObject);
var xTestaNro : integer;
    xedcoorPixLat, xedcoorPixLong : integer;
    v1, v2, va1 : currency;

begin

  if converteLatLongMetros(edCoordenada1Lat.Text) = 999999 then
    begin
      edCoordenada1Lat.SetFocus;
      exit;
    end;

  if converteLatLongMetros(edCoordenada2Lat.Text) = 999999 then
    begin
      edCoordenada2Lat.SetFocus;
      exit;
    end;

  if converteLatLongMetros(edCoordenada1Long.Text) = 999999 then
    begin
      edCoordenada1Long.SetFocus;
      exit;
    end;

  if converteLatLongMetros(edCoordenada2Long.Text) = 999999 then
    begin
      edCoordenada2Long.SetFocus;
      exit;
    end;


  if length(trim(edPixe1Lat.Text)) = 0 then
    begin
      showmessage('pixel1 da latitude n�o informado');
      edCoordenada1Lat.SetFocus;
      exit;
    end;

  if length(trim(edPixe2Lat.Text)) = 0 then
    begin
      showmessage('pixel2 da latitude n�o informado');
      edCoordenada2Lat.SetFocus;
      exit;
    end;

  if length(trim(edPixe1Long.Text)) = 0 then
    begin
      showmessage('pixel1 da longitude n�o informado');
      edCoordenada1Long.SetFocus;
      exit;
    end;

  if length(trim(edPixe2Long.Text)) = 0 then
    begin
      showmessage('pixel2 da longitude n�o informado');
      edCoordenada2Long.SetFocus;
      exit;
    end;

  vdla1 := converteLatLongMetros(edCoordenada1Lat.Text);
  vdla2 := converteLatLongMetros(edCoordenada2Lat.Text);
  vdlo1 := converteLatLongMetros(edCoordenada1Long.Text);
  vdlo2 := converteLatLongMetros(edCoordenada2Long.Text);

  v1 := (converteLatLongMetros(edCoordenada1Lat.Text) -
         converteLatLongMetros(edCoordenada2Lat.Text));
  v2 := (strTOint(edPixe1Lat.Text) - strTOint(edPixe2Lat.Text));

  va1:= v1/v2;
  if va1 < 0 then
    va1 := va1 * -1;
  edcoorPixLat.Text := currTOstr(va1);

  v1 := (converteLatLongMetros(edCoordenada1Long.Text) -
         converteLatLongMetros(edCoordenada2Long.Text));
  v2 := (strTOint(edPixe1Long.Text) - strTOint(edPixe2Long.Text));

  va1:= v1/v2;
  if va1 < 0 then
    va1 := va1 * -1;
  edcoorPixLong.Text := currTOstr(va1);

end;

procedure TfrmScannforr.btgravaClick(Sender: TObject);
begin

  if length(trim(edCoorPixLat.Text)) = 0 then
    begin
      showmessage('Rela��o coordenada/pixel n�o calculada');
      exit;
    end;

  if length(trim(edCoorPixLong.Text)) = 0 then
    begin
      showmessage('Rela��o coordenada/pixel n�o calculada');
      exit;
    end;

  if qryArea_geral.State <> dsEdit then
    begin
      showmessage('O registro a ser alterado com os valores de dla/pixel e dlo/pixel, '+
                  'n�o est� editado');
      exit;
    end;

  qryArea_geral.FieldByName('relacao_dla_pixel').AsCurrency := strTOcurr(edCoorPixLat.Text);
  qryArea_geral.FieldByName('relacao_dlo_pixel').AsCurrency := strTOcurr(edCoorPixLong.Text);

  qryArea_geral.FieldByName('ydla1').AsCurrency := vdla1;
  qryArea_geral.FieldByName('ydla2').AsCurrency := vdla2;
  qryArea_geral.FieldByName('xdlo1').AsCurrency := vdlo1;
  qryArea_geral.FieldByName('xdlo2').AsCurrency := vdlo2;

  qryArea_geral.FieldByName('ypix1').AsCurrency := strTOint(edPixe1Lat.Text);
  qryArea_geral.FieldByName('ypix2').AsCurrency := strTOint(edPixe2Lat.Text);
  qryArea_geral.FieldByName('xpix1').AsCurrency := strTOint(edPixe1Long.Text);
  qryArea_geral.FieldByName('xpix2').AsCurrency := strTOint(edPixe2Long.Text);

  qryArea_geral.FieldByName('latitude1').AsString := edCoordenada1Lat.Text;
  qryArea_geral.FieldByName('latitude2').AsString := edCoordenada2Lat.Text;
  qryArea_geral.FieldByName('longitude1').AsString := edCoordenada1Long.Text;
  qryArea_geral.FieldByName('longitude2').AsString := edCoordenada2Long.Text;

  qryArea_geral.ApplyUpdates;
  qryArea_geral.CommitUpdates;

  showmessage('Rela��o coordenada/pixel alterada com sucesso');

end;

procedure TfrmScannforr.ChamaPergunta;
var path : string;
begin

  if mmRodape.Lines.Count = 0 then
    begin
      CapturaPath;
    end;

  if MessageDlg ('Deseja escolher mais um arquivo de medi��o?'
                  , mtWarning,[mbYes, mbNo], 0) = mrYes then
    begin
      CapturaPath;
      frmScannForr.Refresh;
      exit;
    end

  else
    if mmRodape.Lines.Count = 0 then
      begin
        showmessage('Falta escolher o arquivo de medi��o');
        exit;
      end

    else
      pnCalibra.Visible := false;
      frmScannForr.Refresh;
      LeMemoMandaProcessar;
      if vTemErro then
        begin
          showmessage('Erro no conte�do do arquivo: ' + vpath);
          pnCalibra.Visible := true;
          frmScannForr.Refresh;
        end
      else
        begin
          qryMedicoes_escaneamentos.Close;
          qryMedicoes_escaneamentos.Open;

          showmessage('Foram incluidas ' + vIncluidos.ToString +
                      ' linhas de escaneamentos e calibragens');

          showmessage('****** ATEN��O! � necess�rio executar Gera Pontos Tela ' +
                      'para gerar as coordenadas xy referente �s coordenadas geogr�ficas ' +
                      'escaneadas.');
        end;

end;

procedure TfrmScannforr.CapturaPath;
var path : string;

begin

  path := reverseString(vpath);
  path := copy(path, pos('\', path), 300);
  path := reverseString(vpath);

  vTemErro := true;

  OpenDialog1.Title := 'Selecione o caminho do arquivo de Medi��o';
  OpenDialog1.DefaultExt := '*.txt';
  OpenDialog1.Filter := 'Arquivos (.txt)|*.txt';
  OpenDialog1.InitialDir := path; //ExtractFileDir(application.ExeName);

  if OpenDialog1.Execute then
    begin
      path := OpenDialog1.FileName;
    end
  else
    exit;

  if FileExists(path) then
  else
  begin
    showmessage('O arquivo ' + path + ' n�o existe');
    exit;
  end;

  vpath := path;
  mmRodape.Lines.Add(path);
  vTemErro := false;

end;

procedure TfrmScannforr.LeMemoMandaProcessar;
begin

  vIncluidos := 0;

  for vi:=0 to mmRodape.Lines.Count - 1 do
    begin
      vpath := mmRodape.Lines[vi];
      ProcessaImportacaoMedicao;

      if vTemErro then
        break;
    end;

end;

procedure TfrmScannforr.ProcessaImportacaoMedicao;
var path : string;
    Arq : TextFile;
    setup, calibragem, fimCalibragem, linhasCalibragem,
    linhasEscaneamento, linhasSemOrigem : integer;

begin

  vTemErro := true;

  setup := 0;
  calibragem := 0;
  fimCalibragem := 0;
  linhasCalibragem := 0;
  linhasEscaneamento := 0;
  linhasSemOrigem := 0;

  path := vpath;

  AssignFile (arq, path);
  Reset (arq);
  ReadLn (arq, vlinha);

  // conta linhas calibragem e escaneamento
  while not Eof (arq)
  do begin
    if copy(vlinha,1,5) = 'SETUP' then
    begin
      setup := setup + 1;
      ReadLn (arq, vlinha);

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        linhasSemOrigem := linhasSemOrigem + 1;
    end;

    if copy(vlinha,1,10) = 'CALIBRAGEM' then
    begin
      calibragem := calibragem + 1;
      ReadLn (arq, vlinha);

      while (not Eof (arq)) and (copy(vlinha,1,1) = '*') do
      begin
        linhasCalibragem := linhasCalibragem + 1;
        ReadLn (arq, vlinha);
      end;

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        linhasCalibragem := linhasCalibragem + 1;
    end;

    if copy(vlinha,1,14) = 'FIM CALIBRAGEM' then
    begin
      fimCalibragem := fimCalibragem + 1;
      ReadLn (arq, vlinha);

      while (not Eof (arq)) and (copy(vlinha,1,1) = '*') do
      begin
        linhasEscaneamento := linhasEscaneamento + 1;
        ReadLn (arq, vlinha);
      end;

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        linhasEscaneamento := linhasEscaneamento + 1;
    end;

    while (not Eof (arq)) and (copy(vlinha,1,1) = '*') do
    begin
      linhasSemOrigem := linhasSemOrigem + 1;
      ReadLn (arq, vlinha);

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        linhasSemOrigem := linhasSemOrigem + 1;
    end;

    if (Eof (arq)) then
    begin
      if copy(vlinha,1,5) = 'SETUP' then
        setup := setup + 1;
      if copy(vlinha,1,10) = 'CALIBRAGEM' then
        calibragem := calibragem + 1;
      if copy(vlinha,1,14) = 'FIM CALIBRAGEM' then
        fimCalibragem := fimCalibragem + 1;
    end;
  end;


  // verifica integridade do arquivo calibragem e escaneamento
  if linhasSemOrigem > 0 then
  begin
    showmessage('Existem ' + linhasSemOrigem.ToString +
                ' linhas n�o identificadas nem como calibragem nem como escaneamento');
    exit;
  end;

  if (calibragem = 0) or (fimCalibragem = 0) or (linhasCalibragem = 0) then
  begin
    showmessage('A calibragem n�o foi feita');
    exit;
  end;

  if (calibragem > fimCalibragem) then
  begin
    showmessage('Existe calibragem que n�o foi encerrada');
    exit;
  end;

  if (calibragem < fimCalibragem) then
  begin
    showmessage('Existe calibragem que n�o foi iniciada');
    exit;
  end;

  if (linhasEscaneamento = 0) then
  begin
    showmessage('O escaneamento n�o foi feito');
    exit;
  end;

  if setup > 1 then
  begin
    if MessageDlg ('***** ATEN��O - O equipamento foi reiniciado ' + setup.ToString +
                   ' vezes - CONTINUA A IMPORTA��O?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
      begin
        vTemErro := false;
        exit;
      end;
  end;

  if (calibragem > 1) then
  begin
    if MessageDlg ('***** ATEN��O - A calibragem foi feita ' + calibragem.ToString +
                   ' vezes - CONTINUA A IMPORTA��O?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
      begin
        vTemErro := false;
        exit;
      end;
  end;

  // apaga linhas calibragem e escaneamento
  if qryMedicoes_escaneamentos.RecordCount = 0 then
    begin
      pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
      pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
      pnProcessa.BringToFront;
      pnProcessa.Visible := true;
      frmScannforr.Refresh;
    end

  else
    begin
      if vi = 0 then
      if MessageDlg ('***** ATEN��O - Os dados de escaneamento dessa Medi��o: "'+
                     qryMedicoes_capa_scann.FieldByName('descricao_medicao').AsString +
                     '" j� foram incluidos e ser�o apagados, PODE APAG�-LOS?'
                      , mtWarning,[mbYes, mbNo], 0) = mrNo then
        begin
          vTemErro := false;
          exit;
        end;

      if vi = 0 then
      if MessageDlg ('***** ATEN��O - Se voc� n�o tiver o arquivo de escaneamento ' +
                     ' n�o conseguir� recuperar esses dados, DESEJA CONTINUAR?'
                      , mtWarning,[mbYes, mbNo], 0) = mrNo then
        begin
          vTemErro := false;
          exit;
        end;

      pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
      pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
      pnProcessa.BringToFront;
      pnProcessa.Visible := true;
      frmScannforr.Refresh;

      qryGeral.Close;
      qryGeral.SQL.Text :=
      ' delete' +
      ' from medicoes_escaneamentos_tb' +
      ' where seq_empresa = :seq_empresa' +
      '   and seq_area_geral = :seq_area_geral' +
      '   and seq_medicao = :seq_medicao';

      qryGeral.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

      qryGeral.ExecSQL;

      qryMedicoes_escaneamentos.Close;
      qryMedicoes_escaneamentos.Open;

    end;

  apaga_altura_media_scan_tb;

  // insert linhas calibragem e escaneamento

  vdlaAnt := 0;
  vdloAnt := 0;
  valtitudeAnt := 0;
  vdistanciaAnt := 0;
  //vIncluidos := 0;

  Reset (arq);
  ReadLn (arq, vlinha);

  while not Eof (arq)
  do begin
    if copy(vlinha,1,5) = 'SETUP' then
    begin
      ReadLn (arq, vlinha);
    end;

    if copy(vlinha,1,10) = 'CALIBRAGEM' then
    begin
      ReadLn (arq, vlinha);

      while (not Eof (arq)) and (copy(vlinha,1,1) = '*') do
      begin
        vCalibragem := true;
        IncluiCalibragemEscaneamento;
        ReadLn (arq, vlinha);
      end;

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        IncluiCalibragemEscaneamento;
    end;

    if copy(vlinha,1,14) = 'FIM CALIBRAGEM' then
    begin
      ReadLn (arq, vlinha);

      while (not Eof (arq)) and (copy(vlinha,1,1) = '*') do
      begin
        vCalibragem := false;
        IncluiCalibragemEscaneamento;
        ReadLn (arq, vlinha);
      end;

      if (Eof (arq)) and (copy(vlinha,1,1) = '*') then
        IncluiCalibragemEscaneamento;
    end;

  end;

  pnProcessa.Visible := false;
{
  showmessage('Foram incluidas ' + vIncluidos.ToString + ' linhas de escaneamentos ' +
              'e calibragens');
  qryMedicoes_escaneamentos.Close;
  qryMedicoes_escaneamentos.Open;
}
  vTemErro := false;

end;

procedure TfrmScannforr.btLimpaClick(Sender: TObject);
begin

  if vDemarcou then
    begin
      vDemarcou := false;
      imgPrincipal.Picture := imgSalva.Picture;
      vPrimeiroClick := true;
      ConfiguraCanvas;
      exit;
    end;

  imgPrincipal.Picture := imgSalva.Picture;
  frmScannforr.Refresh;
  LeLimitesDemarcaPiquete;
  if qryGeral.RecordCount = 0 then
    exit;

  if MessageDlg ('Apaga o desenho no banco de dados para esse piquete? --> ' +
                 qryAreas.FieldByName('nome_area').AsString
                  , mtWarning,[mbYes, mbNo], 0) = mrNo then exit;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' delete ' +
  ' from areas_limites_tb a' +
  ' where a.seq_empresa    = :seq_empresa' +
  '   and a.seq_area_geral = :seq_area_geral' +
  '   and a.seq_area       = :seq_area';

  qryGeral2.Params[0].AsInteger :=
    qryareas.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
    qryareas.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
    qryareas.FieldByName('seq_area').AsInteger;

  qryGeral2.ExecSQL;

  try
    qryAreas.Edit;
    qryAreas.FieldByName('x1').AsInteger := 0;
    qryAreas.FieldByName('x2').AsInteger := 0;
    qryAreas.FieldByName('x3').AsInteger := 0;
    qryAreas.FieldByName('x4').AsInteger := 0;
    qryAreas.FieldByName('x5').AsInteger := 0;
    qryAreas.FieldByName('x6').AsInteger := 0;
    qryAreas.FieldByName('x7').AsInteger := 0;
    qryAreas.FieldByName('x8').AsInteger := 0;

    qryAreas.FieldByName('y1').AsInteger := 0;
    qryAreas.FieldByName('y2').AsInteger := 0;
    qryAreas.FieldByName('y3').AsInteger := 0;
    qryAreas.FieldByName('y4').AsInteger := 0;
    qryAreas.FieldByName('y5').AsInteger := 0;
    qryAreas.FieldByName('y6').AsInteger := 0;
    qryAreas.FieldByName('y7').AsInteger := 0;
    qryAreas.FieldByName('y8').AsInteger := 0;

    qryAreas.FieldByName('ydesenhop').AsInteger := 0;
    qryAreas.FieldByName('yajustep').AsInteger := 0;
    qryAreas.FieldByName('xdesenhop').AsInteger := 0;
    qryAreas.FieldByName('xajustep').AsInteger := 0;

    qryAreas.ApplyUpdates;
    qryAreas.CommitUpdates;
  except
    on E : Exception do
      begin
        ShowMessage('Erro ao atualizar demarca��es em piquetes(limpa - Areas_tb) - '+E.Message);
        qryAreas.CancelUpdates;
        exit;
      end;
  end;

  vDemarcou := false;
  imgPrincipal.Picture := imgSalva.Picture;
  vPrimeiroClick := true;
  btdemarcaPiquete.Color := clWhite;
  qryareas.CancelUpdates;

end;

procedure TfrmScannforr.CalculaAlteraXpixYpixEscaneamento;
var i, xpix2, ypix2, ydla2, xdlo2, xpixMed, ypixMed, ydlaMed, xdloMed,
    distanciay, distanciax, xdif, ydif : integer;
    idx, idy : currency;

begin
  vTemErro := true;

  qryMedicoes_escaneamentos.First;

  idy := qryArea_geral_scann.FieldByName('relacao_dla_pixel').AsCurrency;
  idx := qryArea_geral_scann.FieldByName('relacao_dlo_pixel').AsCurrency;
  ypix2 := qryArea_geral_scann.FieldByName('ypix2').AsInteger;
  xpix2 := qryArea_geral_scann.FieldByName('xpix2').AsInteger;
  ydla2 := qryArea_geral_scann.FieldByName('ydla2').AsInteger;
  xdlo2 := qryArea_geral_scann.FieldByName('xdlo2').AsInteger;

  ydif := qryArea_geral_scann.FieldByName('yajuste').AsInteger -
          qryArea_geral_scann.FieldByName('ydesenho').AsInteger;
  xdif := qryArea_geral_scann.FieldByName('xajuste').AsInteger -
          qryArea_geral_scann.FieldByName('xdesenho').AsInteger;

  for i:= 1 to qryMedicoes_escaneamentos.RecordCount do
    begin
      ydlaMed := qryMedicoes_escaneamentos.FieldByName('dla').AsInteger;
      xdloMed := qryMedicoes_escaneamentos.FieldByName('dlo').AsInteger;

      if ydla2<0 then
        ydla2 := ydla2 *-1;
      if xdlo2<0 then
        xdlo2 := xdlo2 *-1;

      if ydlaMed<0 then
        ydlaMed := ydlaMed *-1;
      if xdloMed<0 then
        xdloMed := xdloMed *-1;

      distanciay := trunc( ((ydla2 - ydlaMed) / idy)+0.55 );
      distanciax := trunc( ((xdlo2 - xdloMed) / idx)+0.55 );

      ypixMed := ypix2 - distanciay + ydif;
      xpixMed := xpix2 + distanciax + xdif;

      try
        qryMedicoes_escaneamentos.Edit;
        qryMedicoes_escaneamentos.FieldByName('ytop').AsInteger := ypixMed;// + ydif;
        qryMedicoes_escaneamentos.FieldByName('xleft').AsInteger := xpixMed;// + xdif;
        qryMedicoes_escaneamentos.ApplyUpdates;
        qryMedicoes_escaneamentos.CommitUpdates;
      except
        on E : Exception do
          begin
            ShowMessage('Erro ao atualizar uma linha do escaneamento - '+E.Message);
            qryMedicoes_escaneamentos.CancelUpdates;
            exit;
          end;
      end;

      qryMedicoes_escaneamentos.Next;
    end;

  qryMedicoes_escaneamentos.First;
  vTemErro := false;
end;

procedure TfrmScannforr.ProcessaPontosEscaneamento;
var i, ytop, xleft, alturaLida, alturaLidaOriginal, xconta : integer;
    idxPlanta, idxPlantaOriginal, xperc : currency;

begin

  if MediaDistanciaCalibragem(
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
    qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger
    ) = 999999 then
    begin
      exit;
    end;

  vMediaDistanciaCalibragem :=
      MediaDistanciaCalibragem(
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger,
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger,
        qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger);

  qryMedicoes_escaneamentos.First;
  if length(trim(qryMedicoes_escaneamentos.FieldByName('ytop').AsString)) > 0 then
    begin
      {
      if MessageDlg ('Recalcula posi��es da tela a partir das coordenadas medidas?'
                     , mtWarning,[mbYes, mbNo], 0) = mrYes then
      if MessageDlg ('***** Aten��o, o rec�lculo das posi��es da tela pode exigir ' +
                     'que seja feito um novo ajuste de tela para essa medi��o, ' +
                     'Continua?'
                     , mtWarning,[mbYes, mbNo], 0) = mrYes then
        begin
          CalculaAlteraXpixYpixEscaneamento;
          vrecalcula := true;
          if vTemErro then
            exit;
        end;
      }
    end
  else
    begin
      CalculaAlteraXpixYpixEscaneamento;
      vrecalcula := false;
      if vTemErro then
        exit;
    end;

  ContinuaProcessaPontosEscaneamento;

end;

procedure TfrmScannforr.ContinuaProcessaPontosEscaneamento;
var i, ytop, xleft, alturaLida, alturaLidaOriginal, xconta : integer;
    idxPlanta, idxPlantaOriginal, xperc : currency;

begin

  try
    qryGeral.Close;
    qryGeral.SQL.Text :=
' select *' +
' from variedades_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_variedade = :seq_variedade';

    qryGeral.Params[0].AsInteger :=
      qryArea_Geral_scann.FieldByName('seq_empresa_fornecedora').AsInteger;
    qryGeral.Params[1].AsInteger :=
      qryArea_Geral_scann.FieldByName('seq_variedade').AsInteger;

    qryGeral.Open;

  except
    on E : Exception do
    begin
      ShowMessage('erro na leitura da variedade da �rea de piquetes : '+E.Message);
      exit;
    end;
  end;

  if qryGeral.RecordCount = 0 then
    begin
      showmessage('variedade da �rea de piquetes n�o encontrada - seq_empresa ' +
                  qryArea_Geral_scann.FieldByName('seq_empresa_fornecedora').AsString +
                  ' - seq_variedade ' +
                  qryArea_Geral_scann.FieldByName('seq_variedade').AsString);
      exit;
    end;

  try
    qryMedicoes_capa_scann.Edit;
    qryMedicoes_capa_scann.FieldByName('perc_considerado_planta').AsCurrency :=
      qryGeral.FieldByName('perc_considerado_planta').AsCurrency;
    qryMedicoes_capa_scann.FieldByName('seq_empresa_fornecedora').AsInteger :=
      qryGeral.FieldByName('seq_empresa').AsInteger;
    qryMedicoes_capa_scann.FieldByName('seq_variedade').AsInteger :=
      qryGeral.FieldByName('seq_variedade').AsInteger;

    qryMedicoes_capa_scann.ApplyUpdates;
    qryMedicoes_capa_scann.CommitUpdates;

  except
    on E : Exception do
    begin
      ShowMessage('erro update qryMedicoes_capa_scann dados variedade : '+E.Message);
      exit;
    end;
  end;

  idxPlanta :=  idxPlantaf
                (qryMedicoes_capa_scann.FieldByName('altura_planta').AsInteger,
                 qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                 vMediaDistanciaCalibragem);

  idxPlantaOriginal :=  idxPlantafOriginal
                (qryMedicoes_capa_scann.FieldByName('altura_planta').AsInteger,
                 qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                 vMediaDistanciaCalibragem);

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmscannforr.Refresh;

  configuraCanvas;
  imgPrincipal.Canvas.Pen.Color := clLime;
  imgPrincipal.Canvas.Brush.Color := clLime;
  qryMedicoes_escaneamentos.First;
  for i:=1 to qryMedicoes_escaneamentos.RecordCount do
    begin

      if qryMedicoes_escaneamentos.FieldByName('distancia').AsInteger <
         qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger then
        begin

          alturaLida := alturaLidaf
                        (qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                         qryMedicoes_escaneamentos.FieldByName('distancia').AsInteger,
                         idxPlanta);

          alturaLidaOriginal := alturaLidaf
                        (qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger,
                         qryMedicoes_escaneamentos.FieldByName('distancia').AsInteger,
                         idxPlantaOriginal);

          ytop := qryMedicoes_escaneamentos.FieldByName('ytop').AsInteger;
          xleft:= qryMedicoes_escaneamentos.FieldByName('xleft').AsInteger;

          if alturalida < 0 then
            alturalida := 0;
          if alturalidaoriginal < 0 then
            alturalidaoriginal := 0;

          alturalida := trunc (alturalida *
            (qryMedicoes_capa_scann.FieldByName('perc_considerado_planta').AsCurrency
             / 100) + 0.55);

          alturalidaoriginal := trunc (alturalidaoriginal *
            (qryMedicoes_capa_scann.FieldByName('perc_considerado_planta').AsCurrency
             / 100) + 0.55);

          //if alturaLida > 0 then
            if alturaLida <=
               qryMedicoes_capa_scann.FieldByName('altura_equipamento').AsInteger then
              begin
                imgPrincipal.Canvas.MoveTo(xleft, ytop);
                imgPrincipal.Canvas.LineTo(xleft, ytop - trunc(alturaLida * 0.20));

                //if vrecalcula then
                begin
                  qryMedicoes_escaneamentos.Edit;
                  qryMedicoes_escaneamentos.
                          FieldByName('altura_ajustada').AsInteger := alturalida;
                  qryMedicoes_escaneamentos.
                          FieldByName('altura').AsInteger := alturalidaOriginal;
                  qryMedicoes_escaneamentos.ApplyUpdates;
                  qryMedicoes_escaneamentos.CommitUpdates;
                end;

              end
            else
              begin
                qryMedicoes_escaneamentos.Edit;
                qryMedicoes_escaneamentos.
                        FieldByName('altura_ajustada').AsInteger := 0;
                qryMedicoes_escaneamentos.
                        FieldByName('altura').AsInteger := 0;
                qryMedicoes_escaneamentos.ApplyUpdates;
                qryMedicoes_escaneamentos.CommitUpdates;
              end;


            end;

      qryMedicoes_escaneamentos.Next;
    end;

  qryMedicoes_escaneamentos.RefreshRecord;
  qryMedicoes_escaneamentos.First;

  // verifica percentual de medi��es fora do piquete
  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' select count(*) as semPiquete' +
  ' from medicoes_escaneamentos_tb' +
  ' where seq_empresa    = :seq_empresa' +
  '   and seq_area_geral = :seq_area_geral' +
  '   and seq_medicao    = :seq_medicao' +
  '   and seq_medicoes not in' +
  '       (select seq_medicoes' +
  '          from medicoes_escaneamentos_tb m, areas_limites_tb al,' +
  '               areas_tb a, area_geral_tb ag' +

{  '         where m.ytop = al.ytop ' +
  '           and m.xleft = al.xleft ' +
  '           and m.seq_empresa = :seq_empresa2   ' + }

  '         where m.seq_empresa = :seq_empresa2   ' +
  '           and m.seq_area_geral = :seq_area_geral2' +
  '           and m.seq_medicao = :seq_medicao2' +
  '           and m.ytop = al.ytop ' +
  '           and m.xleft = al.xleft ' +

  '           and ag.seq_empresa = m.seq_empresa' +
  '           and ag.seq_area_geral = m.seq_area_geral' +

  '           and a.seq_empresa = ag.seq_empresa' +
  '           and a.seq_area_geral = ag.seq_area_geral' +

  '           and al.seq_empresa = a.seq_empresa' +
  '           and al.seq_area_geral = a.seq_area_geral' +
  '           and al.seq_area = a.seq_area)';

  qryGeral.Params[0].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Params[2].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
  qryGeral.Params[3].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[4].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Params[5].AsInteger :=
        qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;
  qryGeral.Open;

  pnProcessa.Visible := false;
  frmscannforr.Refresh;

  if qryGeral.FieldByName('semPiquete').AsInteger > 0 then
    showmessage('Existe ' + qryGeral.FieldByName('semPiquete').AsString +
                ' medi��es que ficaram fora de algum piquete');

  xperc := ((qryGeral.FieldByName('semPiquete').AsInteger /
             qryMedicoes_escaneamentos.RecordCount) * 100);

  if xperc > 10.00 then
    begin
      showmessage(currTOstr(xperc) + '% das medi��es est�o fora de algum piquete, '+
                  'fa�a o ajuste dos piquetes ou ajuste dos pontos na tela devidamente '+
                  'ou tente gerar os pontos de tela novamente clicando no bot�o Gera' +
                  ' Pontos Tela');
      //exit;
    end;

  pnMedicoesEscaneamentos.Top := frmScannforr.Height - 150;
  pnMedicoesEscaneamentos.Left:= 0;

end;

procedure TfrmScannforr.Controle1Click(Sender: TObject);
var app : string;
    xhandle : thandle;

begin

  if FindWindow(nil, 'Controlforr4iS') > 0 then
    begin
      xhandle := FindWindow(nil, 'Controlforr4iS');
      SetForegroundWindow(xhandle);
      exit;
    end;

  PostMessage(FindWindow(nil, 'Controlforr'), WM_CLOSE,0,0);
  app := 'controlforr.exe';
  ShellExecute(handle,'open',PChar(app), '','',SW_SHOWNORMAL);

end;

procedure TfrmScannforr.dbePathImagemAreaGeralDblClick(Sender: TObject);
var path : string;

begin

  path := reverseString(vpath);
  path := copy(path, pos('\', path), 300);
  path := reverseString(vpath);

  OpenDialog1.Title := 'Selecione o caminho do arquivo de Imagem';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
  OpenDialog1.InitialDir := path; //ExtractFileDir(application.ExeName);

  if OpenDialog1.Execute then
    begin
      qryArea_Geral.FieldByName('path_imagem_area_geral').AsString := OpenDialog1.FileName;
      vpath := OpenDialog1.FileName;
      if length(trim(OpenDialog1.FileName)) > 0 then
        imgPrincipal.Picture.LoadFromFile(OpenDialog1.FileName);

      imgSalva.Picture := imgPrincipal.Picture;
    end;

end;

procedure TfrmScannforr.btPontosEscaneamentoClick(Sender: TObject);
begin

  if qryMedicoes_escaneamentos.RecordCount = 0 then
    exit;

  if (length(trim(qryArea_geral_scann.FieldByName('relacao_dla_pixel').AsString)) = 0) or
     (qryArea_geral_scann.FieldByName('relacao_dla_pixel').AsCurrency = 0) then
    begin
      showmessage('rela��o do dla/pixel n�o informada, entre em �reas de Piquetes ' +
                  'para cadastrar esse dado');
      exit;
    end;

  if (length(trim(qryArea_geral_scann.FieldByName('relacao_dlo_pixel').AsString)) = 0) or
     (qryArea_geral_scann.FieldByName('relacao_dlo_pixel').AsCurrency = 0) then
    begin
      showmessage('rela��o do dlo/pixel n�o informada, entre em �reas de Piquetes ' +
                  'para cadastrar esse dado');
      exit;
    end;

  pnCalibra.top  := trunc((screen.Height - pnCalibra.Height) / 2);
  pnCalibra.left := trunc((screen.Width - pnCalibra.Width) / 2);
  pnCalibra.BringToFront;
  qryMedicoes_capa_scann.Edit;

  mmRodape.Clear;
  pnCalibra.Visible := true;
  vProximoProcesso := 'pontos escaneamento';

end;

procedure TfrmScannforr.ConfiguraCanvas;
begin

  imgPrincipal.Canvas.Pen.Width := 2;
  imgPrincipal.Canvas.Pen.Style := psSolid;
  imgPrincipal.Canvas.Pen.Color := clYellow;
  imgPrincipal.Canvas.Brush.Color := clYellow;

end;

procedure TfrmScannforr.IncluiCalibragemEscaneamento;
var xdata, xhora, xlinha, xlatitude, xlongitude, xvrAuxiliar : string;
    xaltitude, xdistancia, xsinalLat, xsinalLong, xvalorLat, xvalorLong : integer;

begin

  xlinha := copy(vlinha, 2, 300);
  xlatitude := copy(xlinha, 1, pos('*',xlinha) - 1);

  xlinha := copy(xlinha, pos('*',xlinha) + 1, 300);
  xlongitude := copy(xlinha, 1, pos('*',xlinha) - 1);

  xlinha := copy(xlinha, pos('*',xlinha) + 1, 300);
  xvrAuxiliar := copy(xlinha, 1, pos('*',xlinha) - 1);
  xvrAuxiliar := StringReplace(xvrAuxiliar, '.', '', [rfReplaceAll]);
  xaltitude := strTOint(xvrAuxiliar);
  if xaltitude > 1000000 then
    exit;

  xlinha := copy(xlinha, pos('*',xlinha) + 1, 300);
  xdata := copy(xlinha, 1, pos('*',xlinha) - 1);

  xlinha := copy(xlinha, pos('*',xlinha) + 1, 300);
  xhora := copy(xlinha, 1, pos('*',xlinha) - 1);

  xlinha := copy(xlinha, pos('*',xlinha) + 1, 300);
  xdistancia := strTOint(trim(copy(xlinha, 1, 300)));

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' insert into medicoes_escaneamentos_tb(' +
  '     seq_empresa, seq_area_geral, seq_medicao,' +
  '     seq_data, seq_hora, altitude, distancia, dla,' +
  '     dlo, calibragem, latitude, longitude, data, hora, difdla, difdlo,' +
  '     difaltitude, difdistancia)' +

  ' values (:seq_empresa, :seq_area_geral, :seq_medicao,' +
  '        :seq_data, :seq_hora, :altitude, :distancia, :dla,' +
  '        :dlo, :calibragem, :latitude, :longitude, :data, :hora,' +
  '        :difdla, :difdlo, :difaltitude, :difdistancia)';

  qryGeral.Params[0].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_empresa').AsInteger;

  qryGeral.Params[1].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_area_geral').AsInteger;

  qryGeral.Params[2].AsInteger :=
    qryMedicoes_capa_scann.FieldByName('seq_medicao').AsInteger;

  qryGeral.Params[3].AsInteger :=
      strTOint(
      copy(xdata, 7, 4) + copy(xdata, 4, 2) + copy(xdata, 1, 2)
      );

  qryGeral.Params[4].AsInteger :=
      strTOint(
      copy(xhora, 1, 2) + copy(xhora, 4, 2) + copy(xhora, 7, 2) +
      formatDateTime('zzz', now)
      );

  qryGeral.Params[5].AsInteger := xaltitude;
  qryGeral.Params[6].AsInteger := xdistancia;

  if converteLatLongMetros(xlatitude) = 999999 then
    exit;
  xvalorLat := converteLatLongMetros(xlatitude);
  qryGeral.Params[7].AsInteger := xvalorLat;

  if converteLatLongMetros(xlongitude) = 999999 then
    exit;
  xvalorLong := converteLatLongMetros(xlongitude);
  qryGeral.Params[8].AsInteger := xvalorLong;

  qryGeral.Params[9].AsBoolean := vCalibragem;
  qryGeral.Params[10].AsString := xlatitude;
  qryGeral.Params[11].AsString := xlongitude;
  qryGeral.Params[12].AsString := xdata;
  qryGeral.Params[13].AsString := xhora;

  if vdlaAnt = 0 then
    vdlaAnt := xvalorLat;
  if vdloAnt = 0 then
    vdloAnt := xvalorLong;
  if valtitudeAnt = 0 then
    valtitudeAnt := xaltitude;
  if vdistanciaAnt = 0 then
    vdistanciaAnt := xdistancia;

  qryGeral.Params[14].AsInteger := xvalorLat - vdlaAnt;
  qryGeral.Params[15].AsInteger := xvalorLong - vdloAnt;
  qryGeral.Params[16].AsInteger := xaltitude - valtitudeAnt;
  qryGeral.Params[17].AsInteger := xdistancia - vdistanciaAnt;

  vdlaAnt := xvalorLat;
  vdloAnt := xvalorLong;
  valtitudeAnt := xaltitude;
  vdistanciaAnt := xdistancia;

  try
    qryGeral.ExecSQL;
  except
    on E : Exception do
      begin
        ShowMessage('Erro ao inserir uma linha do escaneamento - '+E.Message);
        close;
      end;
  end;

  vIncluidos := vIncluidos + 1;

end;

procedure TfrmScannforr.PreparaTelas;
begin

  qryEmpresas.Close;
  qryEmpresas.Open;


  qryEmpresa_fornecedora.Close;
  qryEmpresa_fornecedora.SQL.Text :=
    ' select * '+
    ' from empresas_tb '+
    ' where fornecedor = :false '+
    ' order by nome_empresa';
  qryEmpresa_fornecedora.Params[0].AsString := 'false';
  qryEmpresa_fornecedora.Open;

  qryArea_geral.Close;
  qryArea_geral.Open;

  dbgEmpresasAreaCellClickSegue;

  LimpaRela��oCoordenadasPixel;
  pnlalopix.Visible := false;


  qryArea_geral_piquete.Close;
  qryArea_geral_piquete.Open;

  qryAreas.Close;
  qryAreas.Open;

  qryUnidades.Close;
  qryUnidades.Open;

  dbgAreasGeralCellClickSegue;

  imgSalva.Picture := imgPrincipal.Picture;


  qryUnidades.Close;
  qryUnidades.Open;


  qryUnidades.Close;
  qryUnidades.Open;
  qryUnidades2.Close;
  qryUnidades2.Open;
  qryUnidades_Proporcionais.Close;
  qryUnidades_Proporcionais.Open;


  qryUnidades.Close;
  qryUnidades.Open;

  qryUnidades2.Close;
  qryUnidades2.Open;

  qryEmpresa_fornecedora2.Close;
  qryEmpresa_fornecedora2.SQL.Text :=
    ' select * '+
    ' from empresas_tb '+
    ' where fornecedor = :true '+
    ' order by nome_empresa';

  qryEmpresa_fornecedora2.Params[0].AsString := 'true';
  qryEmpresa_fornecedora2.Open;

  qryVariedades.Close;
  qryVariedades.Open;


  qryArea_Geral_medicoes.Close;
  qryArea_Geral_medicoes.Open;
  qryMedicoes_Capa.Close;
  qryMedicoes_Capa.Open;

  dbgAreaGeralMedicoesCellClickSegue;


  qryMedicoes_Capa_scann.Close;
  qryMedicoes_Capa_scann.Open;

  qryEmpresa_scann.Close;
  qryEmpresa_scann.Open;

  qryArea_geral_scann.Close;
  qryArea_geral_scann.Open;

  qryMedicoes_escaneamentos.Close;
  qryMedicoes_escaneamentos.Open;

  dbgEmpresasAreaGeralCellClickSegue;
  imgSalva.Picture := imgPrincipal.Picture;

end;

procedure TfrmScannforr.Janelas1Click(Sender: TObject);
begin

  if pnEmpresas.Visible then
    begin
      pnEmpresas.Visible := false;
      pnAreaGeral.Visible := false;
      pnPiquete.Visible := false;

      pnunidades.Visible := false;
      pnUnidadesProporcionais.Visible := false;
      pnVariedades.Visible := false;

      pnMedicoesCapa.Visible := false;
      pnMedicoesEscaneamentos.Visible := false;

      pnTipoEvento.Visible := false;
      pnTipoAnimal.Visible := false;
      pnTipoSuplemento.Visible := false;
      exit;
    end;

  PreparaTelas;

  pnEmpresas.top  := 0;
  pnEmpresas.left := 0;
  pnEmpresas.BringToFront;
  pnEmpresas.Visible := true;

  pnAreaGeral.top  := 32;
  pnAreaGeral.left := 32;
  pnAreaGeral.BringToFront;
  pnAreaGeral.Visible := true;

  pnPiquete.top  := 64;
  pnPiquete.left := 64;
  pnPiquete.BringToFront;
  pnPiquete.Visible := true;


  pnMedicoesCapa.top  := 96;
  pnMedicoesCapa.left := 96;
  pnMedicoesCapa.BringToFront;
  pnMedicoesCapa.Visible := true;

  pnMedicoesEscaneamentos.top  := 128;
  pnMedicoesEscaneamentos.left := 128;
  pnMedicoesEscaneamentos.BringToFront;
  pnMedicoesEscaneamentos.Visible := true;


  pnunidades.top  := 160;
  pnunidades.left := 160;
  pnunidades.BringToFront;
  pnunidades.Visible := true;

  pnUnidadesProporcionais.top  := 192;
  pnUnidadesProporcionais.left := 192;
  pnUnidadesProporcionais.BringToFront;
  pnUnidadesProporcionais.Visible := true;

  pnVariedades.top  := 224;
  pnVariedades.left := 224;
  pnVariedades.BringToFront;
  pnVariedades.Visible := true;

  exit;

  pntipoAnimal.top  := 256;
  pntipoAnimal.left := 256;
  pntipoAnimal.BringToFront;
  pntipoAnimal.Visible := true;

  pntipoEvento.top  := 288;
  pntipoEvento.left := 288;
  pntipoEvento.BringToFront;
  pntipoEvento.Visible := true;

  pntipoSuplemento.top  := 320;
  pntipoSuplemento.left := 320;
  pntipoSuplemento.BringToFront;
  pntipoSuplemento.Visible := true;

end;

procedure TfrmScannforr.CarregaImagemPrincipal;
begin

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' select *' +
  ' from area_geral_tb';
  qryGeral.ExecSQL;

  qryUltima_Area_Geral.Close;
  qryUltima_Area_Geral.Open;

  if qryUltima_Area_Geral.RecordCount > 0 then
    begin

      if qryGeral.RecordCount > 0 then
        begin
          qryGeral.Locate('seq_area_geral',
            qryUltima_Area_Geral.FieldByName('seq_area_geral').AsInteger,[]);

          if length(trim(qryGeral.FieldByName('path_imagem_area_geral').AsString)) > 0 then
            imgPrincipal.Picture.LoadFromFile(
              qryGeral.FieldByName('path_imagem_area_geral').AsString);
            imgSalva.Picture := imgPrincipal.Picture;
        end;

    end;

end;

procedure TfrmScannforr.VerificaMudaImagemPrincipal;
begin

  if (vEmpresaImagem <> qryUltima_Area_Geral.FieldByName('seq_empresa').AsInteger) or
     (vAreaImagem <> qryUltima_Area_Geral.FieldByName('seq_area_geral').AsInteger) then
     begin

       imgPrincipal.Picture.LoadFromFile(vPath_imagem_area_geral);
       imgSalva.Picture := imgPrincipal.Picture;

       try
         qryUltima_Area_Geral.Edit;
         qryUltima_Area_Geral.FieldByName('seq_empresa').AsInteger := vEmpresaImagem;
         qryUltima_Area_Geral.FieldByName('seq_area_geral').AsInteger := vAreaImagem;
         qryUltima_Area_Geral.ApplyUpdates;
         qryUltima_Area_Geral.CommitUpdates;
        except
          on E : Exception do
          begin
            ShowMessage('Erro ao alterar a ultima_area_geral'+E.Message);
            qryUltima_Area_Geral.CancelUpdates;
            exit;
          end;
        end;

     end;

end;

procedure TfrmScannforr.LeGravaUltimaAreaGeral;
begin

  if qryEmpresas.Active then
  else
    qryEmpresas.Open;

  if qryArea_Geral.RecordCount = 0 then
  else
     begin

        qryUltima_Area_Geral.Close;
        qryUltima_Area_Geral.Open;

        if qryUltima_area_geral.RecordCount = 0 then
          begin
            qryGeral.close;
            qryGeral.SQL.Text :=

            ' insert into ultima_area_geral_tb (seq_empresa, seq_area_geral)' +
            ' values (:seq_empresa, :seq_area_geral) ';

            qryGeral.Params[0].AsInteger :=
                  qryarea_geral.FieldByName('seq_empresa').AsInteger;
            qryGeral.Params[1].AsInteger :=
                  qryarea_geral.FieldByName('seq_area_geral').AsInteger;
            qryGeral.ExecSQL;

            qryUltima_Area_Geral.Close;
            qryUltima_Area_Geral.Open;
          end

        else
          begin
            try
              qryUltima_Area_Geral.Edit;
              qryUltima_area_geral.FieldByName('seq_empresa').AsInteger :=
                    qryarea_geral.FieldByName('seq_empresa').AsInteger;
              qryUltima_area_geral.FieldByName('seq_area_geral').AsInteger :=
                    qryarea_geral.FieldByName('seq_area_geral').AsInteger;

              qryUltima_area_geral.ApplyUpdates;
              qryUltima_area_geral.CommitUpdates;
            except
              on E : Exception do
              begin
                ShowMessage('Erro ao alterar2 a ultima_area_geral'+E.Message);
                qryUltima_Area_Geral.CancelUpdates;
                exit;
              end;
            end;

          end;
     end;

end;

procedure TfrmScannforr.LeAreaGeral;
begin

  if qryEmpresas.RecordCount = 0 then
    exit;

  qryArea_Geral.Close;
  qryArea_geral.SQL.Text :=

  ' select * ' +
  ' from area_geral_tb' +
  ' where seq_empresa = :seq_empresa' +
  ' order by nome_area_geral ';

  qryArea_Geral.Params[0].AsInteger :=
        qryEmpresas.FieldByName('seq_empresa').AsInteger;

  qryArea_Geral.Open;

end;

procedure TfrmScannforr.Image10Click(Sender: TObject);
begin

  pnGrEvoMedicoesEscaneamentos.Visible := false;

end;

procedure TfrmScannforr.Image11Click(Sender: TObject);
begin

  pnImpGmaps.Visible := false;

end;

procedure TfrmScannforr.Image12Click(Sender: TObject);
begin

  pnResultados.Visible := false;

end;

procedure TfrmScannforr.Image15Click(Sender: TObject);
begin

  pnTipoEvento.Visible := false;

end;

procedure TfrmScannforr.Image16Click(Sender: TObject);
begin

  pnTipoAnimal.Visible := false;

end;

procedure TfrmScannforr.Image17Click(Sender: TObject);
begin

  pnTipoSuplemento.Visible := false;

end;

procedure TfrmScannforr.Image1Click(Sender: TObject);
begin

  pnEmpresas.Visible := false;

end;

procedure TfrmScannforr.Image2Click(Sender: TObject);
begin

  pnAreaGeral.Visible := false;
  pnlalopix.Visible := false;
  LimpaRela��oCoordenadasPixel;

end;

procedure TfrmScannforr.Image3Click(Sender: TObject);
begin

  Screen.Cursor := crDefault;
  vDemarcou := false;
  imgPrincipal.Picture := imgSalva.Picture;
  btdemarcaPiquete.Color := clWhite;

  if qryareas.State = dsEdit then
    qryareas.CancelUpdates;

  vPrimeiroClick := false;
  pnPiquete.Visible := false;

end;

procedure TfrmScannforr.Image4Click(Sender: TObject);
begin

  pnUnidades.Visible := false;

end;

procedure TfrmScannforr.Image5Click(Sender: TObject);
begin

  pnUnidadesProporcionais.Visible := false;

end;

procedure TfrmScannforr.Image6Click(Sender: TObject);
begin

  pnVariedades.Visible := false;

end;

procedure TfrmScannforr.Image7Click(Sender: TObject);
begin

  pnMedicoesCapa.Visible := false;

end;

procedure TfrmScannforr.Image8Click(Sender: TObject);
begin

  pnMedicoesEscaneamentos.Visible := false;
  imgPrincipal.Picture := imgSalva.Picture;

end;

procedure TfrmScannforr.Image9Click(Sender: TObject);
begin

  pnScannforr.Visible := false;

end;

procedure TfrmScannforr.imgPrincipalClick(Sender: TObject);
begin

  if (pnlalopix.Visible) and (qryArea_geral.State = dsEdit) then
    begin
      if edcoordenada1lat.Focused then
        edpixe1lat.Text := mouse.CursorPos.y.ToString;
      if edcoordenada2lat.Focused then
        edpixe2lat.Text := mouse.CursorPos.y.ToString;
      if edcoordenada1long.Focused then
        edpixe1long.Text := mouse.CursorPos.x.ToString;
      if edcoordenada2long.Focused then
        edpixe2long.Text := mouse.CursorPos.x.ToString;
    end
  else
    if qryArea_geral.State = dsEdit then
      begin
        pnlalopix.Visible := true;
        pnAreaGeral.Top := frmScannforr.Height - 170;
        pnAreaGeral.Left:= 0;
      end;

end;

procedure TfrmScannforr.imgPrincipalDblClick(Sender: TObject);
begin

  if pnAjuste.Visible then
  else
    exit;

  if mkeydesenho.Focused then
    begin
      mkeydesenho.Text := mouse.CursorPos.Y.ToString;
      exit;
    end;

  if mkeyajuste.Focused then
    begin
      mkeyajuste.Text := mouse.CursorPos.Y.ToString;
      exit;
    end;

  if mkexdesenho.Focused then
    begin
      mkexdesenho.Text := mouse.CursorPos.x.ToString;
      exit;
    end;

  if mkexajuste.Focused then
    begin
      mkexajuste.Text := mouse.CursorPos.x.ToString;
      exit;
    end;

end;

procedure TfrmScannforr.imgPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if btDemarcaPiquete.Color <> clred then
    exit;

  if vPrimeiroClick then
    begin
      vPrimeiroClick := false;
      x1 := 0;
      x2 := 0;
      x3 := 0;
      x4 := 0;
      x5 := 0;
      x6 := 0;
      x7 := 0;
      x8 := 0;

      y1 := 0;
      y2 := 0;
      y3 := 0;
      y4 := 0;
      y5 := 0;
      y6 := 0;
      y7 := 0;
      y8 := 0;
    end;

  if x1 = 0 then
    begin
      x1 := x;
      y1 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1)]);
      vDemarcou := true;
      exit;
    end;

   if x2 = 0 then
    begin
      x2 := x;
      y2 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2)]);
      exit;
    end;

  if x3 = 0 then
    begin
      x3 := x;
      y3 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3)]);
      exit;
    end;

  if x4 = 0 then
    begin
      x4 := x;
      y4 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4)]);
      exit;
    end;

  if x5 = 0 then
    begin
      x5 := x;
      y5 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5)]);
      exit;
    end;

  if x6 = 0 then
    begin
      x6 := x;
      y6 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6)]);
      exit;
    end;

  if x7 = 0 then
    begin
      x7 := x;
      y7 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6), point(x7,y7)]);
      exit;
    end;

  if x8 = 0 then
    begin
      x8 := x;
      y8 := y;
      imgPrincipal.Canvas.Polygon([point(x1,y1), point(x2,y2), point(x3,y3), point(x4,y4),
                                   point(x5,y5), point(x6,y6), point(x7,y7), point(x8,y8)]);
      exit;
    end;

end;

procedure TfrmScannforr.imgPrincipalMouseLeave(Sender: TObject);
begin

  mmcalibra.Visible := false;
  mmajusta.Visible := false;
  mmdemarca.Visible := false;

end;

procedure TfrmScannforr.imgPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if pnlalopix.Visible then
    begin
      mmcalibra.Top := mouse.CursorPos.Y;
      mmcalibra.Left:= mouse.CursorPos.X;
      mmcalibra.BringToFront;
      mmcalibra.Visible := true;
    end
  else
  if pnajuste.Visible then
    begin
      mmajusta.Top := mouse.CursorPos.Y;
      mmajusta.Left:= mouse.CursorPos.X;
      mmajusta.BringToFront;
      mmajusta.Visible := true;
    end
  else
  if (pnpiquete.Visible and
     (btDemarcaPiquete.Color = clred)) then
    begin
      mmdemarca.Top := mouse.CursorPos.Y;
      mmdemarca.Left:= mouse.CursorPos.X;
      mmdemarca.BringToFront;
      mmdemarca.Visible := true;
    end;

end;

procedure TfrmScannforr.lbMedicoesEscaneamentosMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnMedicoesEscaneamentos.BringToFront;

end;

procedure TfrmScannforr.lbMedicoesEscaneamentosMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;

end;

procedure TfrmScannforr.lbMedicoesEscaneamentosMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if vMovePanel then
    begin
      pnMedicoesEscaneamentos.Left := x - xi + pnMedicoesEscaneamentos.Left;
      pnMedicoesEscaneamentos.Top  := y - yi + pnMedicoesEscaneamentos.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

end;

procedure TfrmScannforr.lbMedicoesEscaneamentosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.Label12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnGrEvoMedicoesEscaneamentos.BringToFront;

end;

procedure TfrmScannforr.Label12MouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;

end;

procedure TfrmScannforr.Label12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if vMovePanel then
    begin
      pnGrEvoMedicoesEscaneamentos.Left := x - xi + pnGrEvoMedicoesEscaneamentos.Left;
      pnGrEvoMedicoesEscaneamentos.Top  := y - yi + pnGrEvoMedicoesEscaneamentos.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

end;

procedure TfrmScannforr.Label12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbAjustaImagemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnAjuste.BringToFront;

end;

procedure TfrmScannforr.lbAjustaImagemMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;

end;

procedure TfrmScannforr.lbAjustaImagemMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if vMovePanel then
    begin
      pnAjuste.Left := x - xi + pnAjuste.Left;
      pnAjuste.Top  := y - yi + pnAjuste.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

end;

procedure TfrmScannforr.lbAjustaImagemMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.Label9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnMedicoesCapa.BringToFront;

end;

procedure TfrmScannforr.Label9MouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if vMovePanel then
    begin
      pnMedicoesCapa.Left := x - xi + pnMedicoesCapa.Left;
      pnMedicoesCapa.Top  := y - yi + pnMedicoesCapa.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.Label9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbEmpresasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnEmpresas.BringToFront;

end;

procedure TfrmScannforr.lbEmpresasMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbEmpresasMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if vMovePanel then
    begin
      pnEmpresas.Left := x - xi + pnEmpresas.Left;
      pnEmpresas.Top  := y - yi + pnEmpresas.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbEmpresasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbParametrosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnCalibra.BringToFront;

end;

procedure TfrmScannforr.lbParametrosMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;

end;

procedure TfrmScannforr.lbParametrosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnCalibra.Left := x - xi + pnCalibra.Left;
      pnCalibra.Top  := y - yi + pnCalibra.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

end;

procedure TfrmScannforr.lbParametrosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbPiqueteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnPiquete.BringToFront;

end;

procedure TfrmScannforr.lbPiqueteMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbPiqueteMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnPiquete.Left := x - xi + pnPiquete.Left;
      pnPiquete.Top  := y - yi + pnPiquete.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbPiqueteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbResultadosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnResultados.BringToFront;

end;

procedure TfrmScannforr.lbResultadosMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;

end;

procedure TfrmScannforr.lbResultadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnResultados.Left := x - xi + pnResultados.Left;
      pnResultados.Top  := y - yi + pnResultados.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

end;

procedure TfrmScannforr.lbResultadosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbTipoAnimalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnTipoAnimal.BringToFront;

end;

procedure TfrmScannforr.lbTipoAnimalMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbTipoAnimalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnTipoAnimal.Left := x - xi + pnTipoAnimal.Left;
      pnTipoAnimal.Top  := y - yi + pnTipoAnimal.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbTipoAnimalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbtipoEventoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnTipoEvento.BringToFront;

end;

procedure TfrmScannforr.lbtipoEventoMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbtipoEventoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnTipoEvento.Left := x - xi + pnTipoEvento.Left;
      pnTipoEvento.Top  := y - yi + pnTipoEvento.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbtipoEventoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbTipoSuplementoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnTipoSuplemento.BringToFront;

end;

procedure TfrmScannforr.lbTipoSuplementoMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbTipoSuplementoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnTipoSuplemento.Left := x - xi + pnTipoSuplemento.Left;
      pnTipoSuplemento.Top  := y - yi + pnTipoSuplemento.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbTipoSuplementoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbUnidadesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnUnidades.BringToFront;

end;

procedure TfrmScannforr.lbUnidadesMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbUnidadesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnUnidades.Left := x - xi + pnUnidades.Left;
      pnUnidades.Top  := y - yi + pnUnidades.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbUnidadesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbUnidadesProporcionaisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnUnidadesProporcionais.BringToFront;

end;

procedure TfrmScannforr.lbUnidadesProporcionaisMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbUnidadesProporcionaisMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnUnidadesProporcionais.Left := x - xi + pnUnidadesProporcionais.Left;
      pnUnidadesProporcionais.Top  := y - yi + pnUnidadesProporcionais.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbUnidadesProporcionaisMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbVariedadesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnVariedades.BringToFront;

end;

procedure TfrmScannforr.lbVariedadesMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbVariedadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnVariedades.Left := x - xi + pnVariedades.Left;
      pnVariedades.Top  := y - yi + pnVariedades.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbVariedadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.lbAreaGeralMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := true;
  xi := x;
  yi := y;

  pnAreaGeral.BringToFront;

end;

procedure TfrmScannforr.lbAreaGeralMouseLeave(Sender: TObject);
begin

  mmbarra.Visible := false;
  pnbarra.Visible := false;

end;

procedure TfrmScannforr.lbAreaGeralMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

  if vMovePanel then
    begin
      pnAreaGeral.Left := x - xi + pnAreaGeral.Left;
      pnAreaGeral.Top  := y - yi + pnAreaGeral.Top;
    end;

  mmbarra.Top := mouse.CursorPos.Y;
  mmbarra.Left:= mouse.CursorPos.X;
  mmbarra.BringToFront;
  mmbarra.Visible := true;

  pnbarra.Top := mmbarra.Top + mmbarra.Height + 5;
  pnbarra.Left := mmbarra.Left;
  pnbarra.BringToFront;
  pnbarra.Visible := true;

end;

procedure TfrmScannforr.lbAreaGeralMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  vMovePanel := false;

end;

procedure TfrmScannforr.qryAreasAfterDelete(DataSet: TDataSet);
begin

  qryAreas.ApplyUpdates;
  qryAreas.CommitUpdates;

end;

procedure TfrmScannforr.qryAreasAfterPost(DataSet: TDataSet);
begin

  qryAreas.ApplyUpdates;
  qryAreas.CommitUpdates;

end;

procedure TfrmScannforr.qryAreasBeforePost(DataSet: TDataSet);
begin

  if length(dbeNome_area.Text) = 0 then
    begin
      showmessage('informe o nome do piquete');
      dbeNome_area.SetFocus;
      abort;
    end;

  if length(dbeTamanho_area.Text) = 0 then
    begin
      showmessage('informe o tamanho do piquete em m�');
      dbeTamanho_area.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.qryArea_GeralAfterDelete(DataSet: TDataSet);
begin

  qryArea_geral.ApplyUpdates;
  qryArea_geral.CommitUpdates;

end;

procedure TfrmScannforr.qryArea_GeralAfterPost(DataSet: TDataSet);
begin

  qryArea_geral.ApplyUpdates;
  qryArea_geral.CommitUpdates;

end;

procedure TfrmScannforr.qryArea_GeralBeforePost(DataSet: TDataSet);
begin

  if length(dbeNomeAreaGeral.Text) = 0 then
    begin
      showmessage('informe o nome da �rea de piquetes');
      dbeNomeAreaGeral.SetFocus;
      abort;
    end;

  if length(dbePathImagemAreaGeral.Text) = 0 then
    begin
      showmessage('informe o caminho onde est� a imagem da �rea de piquetes');
      dbePathImagemAreaGeral.SetFocus;
      abort;
    end;

  if length(dblVariedades.Text) = 0 then
    begin
      showmessage('informe a variedade da forragem utilizada nessa �rea');
      abort;
    end;

  qryArea_geral.FieldByName('seq_empresa').AsInteger :=
      qryEmpresa_Fornecedora.FieldByName('seq_empresa').AsInteger;

  qryArea_geral.FieldByName('seq_empresa_fornecedora').AsInteger :=
      qryVariedadesCombo.FieldByName('seq_empresa').AsInteger;

end;

procedure TfrmScannforr.qryEmpresasAfterDelete(DataSet: TDataSet);
begin

  qryEmpresas.ApplyUpdates;
  qryEmpresas.CommitUpdates;

end;

procedure TfrmScannforr.qryEmpresasAfterInsert(DataSet: TDataSet);
begin

  qryEmpresas.FieldByName('fornecedor').AsBoolean := false;

end;

procedure TfrmScannforr.qryEmpresasAfterPost(DataSet: TDataSet);
begin

  qryEmpresas.ApplyUpdates;
  qryEmpresas.CommitUpdates;

end;

procedure TfrmScannforr.qryEmpresasBeforePost(DataSet: TDataSet);
begin

  if length(dbeNome_empresa.Text) = 0 then
    begin
      showmessage('informe o nome do local');
      dbeNome_empresa.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.qryMedicoes_capaAfterDelete(DataSet: TDataSet);
begin

  qryMedicoes_capa.ApplyUpdates;
  qryMedicoes_capa.CommitUpdates;

end;

procedure TfrmScannforr.qryMedicoes_capaAfterPost(DataSet: TDataSet);
begin

  qryMedicoes_capa.ApplyUpdates;
  qryMedicoes_capa.CommitUpdates;

end;

procedure TfrmScannforr.qryMedicoes_capaBeforePost(DataSet: TDataSet);
begin

  if length(dbeDescricao_medicao.Text) = 0 then
    begin
      showmessage('informe a descri��o da medi��o');
      dbeDescricao_medicao.SetFocus;
      abort;
    end;

  if length(dbeOperador.Text) = 0 then
    begin
      showmessage('informe o operador da medi��o');
      dbeOperador.SetFocus;
      abort;
    end;

  try
    qryMedicoes_capa.FieldByName('data_medicao').AsString := mkedata.Text;

  except
    begin
      showmessage('data da medi��o inv�lida');
      mkeData.SetFocus;
      abort;
    end;

  end;

end;

procedure TfrmScannforr.qryTipo_AnimalAfterDelete(DataSet: TDataSet);
begin

  qryTipo_animal.ApplyUpdates;
  qryTipo_animal.CommitUpdates;

end;

procedure TfrmScannforr.qryTipo_AnimalAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_animal.FieldByName('tipo_animal_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de animal � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_animal.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qryTipo_AnimalAfterPost(DataSet: TDataSet);
begin

  qryTipo_animal.ApplyUpdates;
  qryTipo_animal.CommitUpdates;

end;

procedure TfrmScannforr.qryTipo_AnimalBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_animal.FieldByName('tipo_animal_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de animal � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmScannforr.qryTipo_AnimalBeforePost(DataSet: TDataSet);
begin

  if length(dbeDescricaota.Text) = 0 then
    begin
      showmessage('informe a descri��o do tipo de animal');
      dbeDescricaota.SetFocus;
      abort;
    end;

  if length(dbepesovivo.Text) = 0 then
    begin
      showmessage('informe o peso vivo do tipo de animal, por cabe�a');
      dbepesovivo.SetFocus;
      abort;
    end;

  if strToCurr(dbepesovivo.Text) <= 0 then
    begin
      showmessage('informe o peso vivo do tipo de animal, por cabe�a');
      dbepesovivo.SetFocus;
      abort;
    end;

  if length(dbePercConsumo.Text) = 0 then
    begin
      showmessage('informe o percentual de consumo do tipo de animal, por cabe�a');
      dbePercConsumo.SetFocus;
      abort;
    end;

  if strToCurr(dbePercConsumo.Text) <= 0 then
    begin
      showmessage('informe o percentual de consumo do tipo de animal, por cabe�a');
      dbePercConsumo.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.qrytipo_EventoAfterDelete(DataSet: TDataSet);
begin

  qryTipo_Evento.ApplyUpdates;
  qryTipo_Evento.CommitUpdates;

end;

procedure TfrmScannforr.qrytipo_EventoAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_evento.FieldByName('tipo_evento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de evento � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_evento.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qrytipo_EventoAfterPost(DataSet: TDataSet);
begin

  qryTipo_evento.ApplyUpdates;
  qryTipo_evento.CommitUpdates;

end;

procedure TfrmScannforr.qrytipo_EventoBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_evento.FieldByName('tipo_evento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de evento � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmScannforr.qrytipo_EventoBeforePost(DataSet: TDataSet);
begin

  if length(dbeDescricao.Text) = 0 then
    begin
      showmessage('informe a descri��o do tipo de evento');
      dbeDescricao.SetFocus;
      abort;
    end;

  if length(dbcunidadee.Text) = 0 then
    begin
      showmessage('informe a unidade do tipo de evento');
      abort;
    end;

  if dcbEntrada.Checked and dcbSaida.Checked then
    begin
      showmessage('informe entrada ou sa�da para o tipo de evento');
      abort;
    end;

  if not dcbEntrada.Checked and not dcbSaida.Checked then
    begin
      showmessage('informe entrada ou sa�da para o tipo de evento');
      abort;
    end;

  if dcbentrada.Checked then
    qryTipo_evento.FieldByName('entrada').AsBoolean := true
  else
    qryTipo_evento.FieldByName('entrada').AsBoolean := false;

  if dcbsaida.Checked then
    qryTipo_evento.FieldByName('saida').AsBoolean := true
  else
    qryTipo_evento.FieldByName('saida').AsBoolean := false;

end;

procedure TfrmScannforr.qryTipo_SuplementoAfterDelete(DataSet: TDataSet);
begin

  qryTipo_suplemento.ApplyUpdates;
  qryTipo_suplemento.CommitUpdates;

end;

procedure TfrmScannforr.qryTipo_SuplementoAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_suplemento.FieldByName('tipo_suplemento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de suplemento � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_suplemento.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qryTipo_SuplementoAfterPost(DataSet: TDataSet);
begin

  qryTipo_suplemento.ApplyUpdates;
  qryTipo_suplemento.CommitUpdates;

end;

procedure TfrmScannforr.qryTipo_SuplementoBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_suplemento.FieldByName('tipo_suplemento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de suplemento � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmScannforr.qryTipo_SuplementoBeforePost(DataSet: TDataSet);
begin

  if length(dbeDescricaots.Text) = 0 then
    begin
      showmessage('informe a descri��o do tipo de suplemento');
      dbeDescricaots.SetFocus;
      abort;
    end;

  if length(dbcunidades.Text) = 0 then
    begin
      showmessage('informe a unidade do tipo de suplemento');
      abort;
    end;

  if (length(dbeindicesuplemento.Text) = 0) or
     (strTOcurr(dbeindicesuplemento.Text) <= 0) then
    begin
      showmessage('Informe o �ndice do tipo de suplemento');
      dbeindicesuplemento.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.qryUnidadesAfterDelete(DataSet: TDataSet);
begin

  qryUnidades.ApplyUpdates;
  qryUnidades.CommitUpdates;

end;

procedure TfrmScannforr.qryUnidadesAfterEdit(DataSet: TDataSet);
begin

  if qryUnidades.FieldByName('unidade_padrao').AsBoolean then
    begin
      showmessage('Essa unidade � padr�o do sistema, n�o pode ser alterada nem apagada');
      qryUnidades.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qryUnidadesAfterPost(DataSet: TDataSet);
begin

  qryUnidades.ApplyUpdates;
  qryUnidades.CommitUpdates;

end;

procedure TfrmScannforr.qryUnidadesBeforeDelete(DataSet: TDataSet);
begin

  if qryUnidades.FieldByName('unidade_padrao').AsBoolean then
    begin
      showmessage('Essa unidade � padr�o do sistema, n�o pode ser alterada nem apagada');
      abort;
    end;

end;

procedure TfrmScannforr.qryUnidadesBeforePost(DataSet: TDataSet);
begin

  if length(dbeNome_unidade.Text) = 0 then
    begin
      showmessage('informe o nome da unidade');
      dbeNome_unidade.SetFocus;
      abort;
    end;

  if length(dbeSigla_unidade.Text) = 0 then
    begin
      showmessage('informe a Sigla da unidade');
      dbeSigla_unidade.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.qryUnidades_proporcionaisAfterDelete(DataSet: TDataSet);
begin

  qryUnidades_proporcionais.ApplyUpdates;
  qryUnidades_proporcionais.CommitUpdates;

end;

procedure TfrmScannforr.qryUnidades_proporcionaisAfterEdit(DataSet: TDataSet);
begin

  if qryUnidades_proporcionais.FieldByName('relacao_padrao').AsBoolean then
    begin
      showmessage('Essa rela��o de unidade � padr�o do sistema, n�o pode ser alterada nem apagada');
      qryUnidades_proporcionais.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qryUnidades_proporcionaisAfterPost(DataSet: TDataSet);
begin

  qryUnidades_proporcionais.ApplyUpdates;
  qryUnidades_proporcionais.CommitUpdates;

end;

procedure TfrmScannforr.qryUnidades_proporcionaisBeforeDelete(
  DataSet: TDataSet);
begin

  if qryUnidades_proporcionais.FieldByName('relacao_padrao').AsBoolean then
    begin
      showmessage('Essa rela��o de unidade � padr�o do sistema, n�o pode ser alterada nem apagada');
      abort;
    end;

end;

procedure TfrmScannforr.qryUnidades_proporcionaisBeforePost(DataSet: TDataSet);
begin

  if length(dbeDescricao_unidade_proporcional.Text) = 0 then
    begin
      showmessage('informe a descri��o da unidade proporcional');
      dbeDescricao_unidade_proporcional.SetFocus;
      abort;
    end;

  if length(dbcUnidade_principal.Text) = 0 then
    begin
      showmessage('informe a unidade principal');
      abort;
    end;

  if length(dbeqtde_proporcional.Text) = 0 then
    begin
      showmessage('informe a quantidade proporcional');
      dbeqtde_proporcional.SetFocus;
      abort;
    end;

  if strTOcurr(dbeqtde_proporcional.Text) = 0 then
    begin
      showmessage('informe a quantidade proporcional');
      dbeqtde_proporcional.SetFocus;
      abort;
    end;

  if length(dbcUnidade_relacionada.Text) = 0 then
    begin
      showmessage('informe a unidade relacionada');
      abort;
    end;

end;

procedure TfrmScannforr.qryVariedadesAfterDelete(DataSet: TDataSet);
begin

  qryVariedades.ApplyUpdates;
  qryVariedades.CommitUpdates;

end;

procedure TfrmScannforr.qryVariedadesAfterEdit(DataSet: TDataSet);
begin

  if qryVariedades.FieldByName('variedade_padrao').AsBoolean then
    begin
      showmessage('Essa variedade � padr�o do sistema, n�o pode ser alterada nem apagada');
      qryVariedades.CancelUpdates;
    end;

end;

procedure TfrmScannforr.qryVariedadesAfterPost(DataSet: TDataSet);
begin

  qryVariedades.ApplyUpdates;
  qryVariedades.CommitUpdates;

end;

procedure TfrmScannforr.qryVariedadesBeforeDelete(DataSet: TDataSet);
begin

  if qryVariedades.FieldByName('variedade_padrao').AsBoolean then
    begin
      showmessage('Essa variedade � padr�o do sistema, n�o pode ser alterada nem apagada');
      abort;
    end;

end;

procedure TfrmScannforr.qryVariedadesBeforePost(DataSet: TDataSet);
begin

  if length(dbcEmpresa_fornecedora.Text) = 0 then
    begin
      showmessage('informe a empresa fornecedora da variedade');
      abort;
    end;

  if length(dbeNome_variedade.Text) = 0 then
    begin
      showmessage('informe o nome da variedade');
      dbeNome_variedade.SetFocus;
      abort;
    end;

  if length(dbePerc_considerado_planta.Text) = 0 then
    begin
      showmessage('informe o percentual a ser considerado da altura da planta');
      dbePerc_considerado_planta.SetFocus;
      abort;
    end;
  if strTOcurr(dbePerc_considerado_planta.Text) = 0 then
    begin
      showmessage('informe o percentual a ser considerado da altura da planta');
      dbePerc_considerado_planta.SetFocus;
      abort;
    end;

  if length(dbeAltura_minima_pastejo.Text) = 0 then
    begin
      showmessage('informe a altura m�nima poss�vel para o pastejo em cm, sem casa decimal');
      dbeAltura_minima_pastejo.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_minima_pastejo.Text) = 0 then
    begin
      showmessage('informe a altura m�nima poss�vel para o pastejo em cm, sem casa decimal');
      dbeAltura_minima_pastejo.SetFocus;
      abort;
    end;

  if length(dbeAltura_maxima_crescimento.Text) = 0 then
    begin
      showmessage('informe a altura m�xima de crescimento vi�vel para a planta');
      dbeAltura_maxima_crescimento.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_maxima_crescimento.Text) = 0 then
    begin
      showmessage('informe a altura m�xima de crescimento vi�vel para a planta');
      dbeAltura_maxima_crescimento.SetFocus;
      abort;
    end;


  if length(dbeMassa_seca_kg_m2_primavera.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_primavera.SetFocus;
      abort;
    end;
  if strTOcurr(dbeMassa_seca_kg_m2_primavera.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_primavera.SetFocus;
      abort;
    end;

  if length(dbeMassa_seca_kg_m2_verao.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_verao.SetFocus;
      abort;
    end;
  if strTOcurr(dbeMassa_seca_kg_m2_verao.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_verao.SetFocus;
      abort;
    end;

  if length(dbeMassa_seca_kg_m2_outono.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_outono.SetFocus;
      abort;
    end;
  if strTOcurr(dbeMassa_seca_kg_m2_outono.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_outono.SetFocus;
      abort;
    end;

  if length(dbeMassa_seca_kg_m2_inverno.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_inverno.SetFocus;
      abort;
    end;
  if strTOcurr(dbeMassa_seca_kg_m2_inverno.Text) = 0 then
    begin
      showmessage('informe a massa seca coletada em kg por m�');
      dbeMassa_seca_kg_m2_inverno.SetFocus;
      abort;
    end;


  if length(dbeAltura_massa_seca_cm_primavera.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_primavera.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_massa_seca_cm_primavera.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_primavera.SetFocus;
      abort;
    end;

  if length(dbeAltura_massa_seca_cm_verao.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_verao.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_massa_seca_cm_verao.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_verao.SetFocus;
      abort;
    end;

  if length(dbeAltura_massa_seca_cm_outono.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_outono.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_massa_seca_cm_outono.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_outono.SetFocus;
      abort;
    end;

  if length(dbeAltura_massa_seca_cm_inverno.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_inverno.SetFocus;
      abort;
    end;
  if strTOint(dbeAltura_massa_seca_cm_inverno.Text) = 0 then
    begin
      showmessage('informe a altura da forragem coletada para a massa seca em cm, sem casa decimal');
      dbeAltura_massa_seca_cm_inverno.SetFocus;
      abort;
    end;


  if length(dbekg_ms_ha_dia_primavera.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_primavera.SetFocus;
      abort;
    end;
  if strTOcurr(dbekg_ms_ha_dia_primavera.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_primavera.SetFocus;
      abort;
    end;

  if length(dbekg_ms_ha_dia_verao.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_verao.SetFocus;
      abort;
    end;
  if strTOcurr(dbekg_ms_ha_dia_verao.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_verao.SetFocus;
      abort;
    end;

  if length(dbekg_ms_ha_dia_outono.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_outono.SetFocus;
      abort;
    end;
  if strTOcurr(dbekg_ms_ha_dia_outono.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_outono.SetFocus;
      abort;
    end;

  if length(dbekg_ms_ha_dia_inverno.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_inverno.SetFocus;
      abort;
    end;
  if strTOcurr(dbekg_ms_ha_dia_inverno.Text) = 0 then
    begin
      showmessage('informe o crescimento da forragem por dia em kg/ms/ha/dia');
      dbekg_ms_ha_dia_inverno.SetFocus;
      abort;
    end;

end;

procedure TfrmScannforr.reas1Click(Sender: TObject);
begin

  pnPiquete.top  := trunc((screen.Height - pnPiquete.Height) / 2);
  pnPiquete.left := trunc((screen.Width - pnPiquete.Width) / 2);
  pnPiquete.BringToFront;

  qryArea_geral_piquete.Close;
  qryArea_geral_piquete.Open;

  qryAreas.Close;
  qryAreas.Open;

  qryUnidades.Close;
  qryUnidades.Open;

  dbgAreasGeralCellClickSegue;

  imgSalva.Picture := imgPrincipal.Picture;
  pnPiquete.Visible := true;

end;

procedure TfrmScannforr.reasGerais1Click(Sender: TObject);
begin

  pnAreaGeral.top  := trunc((screen.Height - pnAreaGeral.Height) / 2);
  pnAreaGeral.left := trunc((screen.Width - pnAreaGeral.Width) / 2);
  pnAreaGeral.BringToFront;

  qryEmpresa_fornecedora.Close;
  qryEmpresa_fornecedora.SQL.Text :=
    ' select * '+
    ' from empresas_tb '+
    ' where fornecedor = :false '+
    ' order by nome_empresa';
  qryEmpresa_fornecedora.Params[0].AsString := 'false';
  qryEmpresa_fornecedora.Open;

  qryVariedadesCombo.Close;
  qryVariedadesCombo.Open;

  qryArea_geral.Close;
  qryArea_geral.Open;

  dbgEmpresasAreaCellClickSegue;

  LimpaRela��oCoordenadasPixel;
  pnlalopix.Visible := false;

  pnAreaGeral.Visible := true;

end;

procedure TfrmScannforr.LimpaRela��oCoordenadasPixel;
begin

  edcoordenada1lat.Text := '';
  edcoordenada2lat.Text := '';
  edcoordenada1long.Text := '';
  edcoordenada2long.Text := '';
  edpixe1lat.Text := '';
  edpixe2lat.Text := '';
  edpixe1long.Text := '';
  edpixe2long.Text := '';
  edcoorpixlat.Text := '';
  edcoorpixlong.Text := '';

end;

procedure TfrmScannforr.Sair1Click(Sender: TObject);
begin

  if MessageDlg ('***** ATEN��O - Deseja sair da aplica��o? Salve seus dados.'
                 , mtWarning,[mbYes, mbNo], 0) = mrNo then exit;

  Close;

end;

procedure TfrmScannforr.Sobre2Click(Sender: TObject);
begin

  pnScannforr.top  := trunc((screen.Height - pnScannforr.Height) / 2);
  pnScannforr.left := trunc((screen.Width - pnScannforr.Width) / 2);
  pnScannforr.BringToFront;

  pnScannforr.Visible := true;

end;

procedure TfrmScannforr.tipoAnimaisClick(Sender: TObject);
begin

  pntipoAnimal.top  := trunc((screen.Height - pntipoAnimal.Height) / 2);
  pntipoAnimal.left := trunc((screen.Width - pntipoAnimal.Width) / 2);
  pntipoAnimal.BringToFront;

  qrytipo_Animal.Close;
  qrytipo_Animal.Open;

  pntipoAnimal.Visible := true;

end;

procedure TfrmScannforr.TipoEventosClick(Sender: TObject);
begin

  pntipoEvento.top  := trunc((screen.Height - pntipoEvento.Height) / 2);
  pntipoEvento.left := trunc((screen.Width - pntipoEvento.Width) / 2);
  pntipoEvento.BringToFront;

  qryUnidades2.Close;
  qryUnidades2.Open;

  qrytipo_Evento.Close;
  qrytipo_Evento.Open;

  pntipoEvento.Visible := true;

end;

procedure TfrmScannforr.TipoSuplementosClick(Sender: TObject);
begin

  pntipoSuplemento.top  := trunc((screen.Height - pntipoSuplemento.Height) / 2);
  pntipoSuplemento.left := trunc((screen.Width - pntipoSuplemento.Width) / 2);
  pntipoSuplemento.BringToFront;

  qryUnidades2.Close;
  qryUnidades2.Open;

  qrytipo_Suplemento.Close;
  qrytipo_Suplemento.Open;

  pntipoSuplemento.Visible := true;

end;

procedure TfrmScannforr.Empresas1Click(Sender: TObject);
begin

  pnEmpresas.top  := trunc((screen.Height - pnEmpresas.Height) / 2);
  pnEmpresas.left := trunc((screen.Width - pnEmpresas.Width) / 2);
  pnEmpresas.BringToFront;

  qryEmpresas.Close;
  qryEmpresas.Open;

  pnEmpresas.Visible := true;

end;

procedure TfrmScannforr.Unidades1Click(Sender: TObject);
begin

  pnUnidades.top  := trunc((screen.Height - pnUnidades.Height) / 2);
  pnUnidades.left := trunc((screen.Width - pnUnidades.Width) / 2);
  pnUnidades.BringToFront;

  qryUnidades.Close;
  qryUnidades.Open;

  pnUnidades.Visible := true;

end;

procedure TfrmScannforr.UnidadesRelacionadas1Click(Sender: TObject);
begin

  pnUnidadesProporcionais.top  := trunc((screen.Height - pnUnidadesProporcionais.Height) / 2);
  pnUnidadesProporcionais.left := trunc((screen.Width - pnUnidadesProporcionais.Width) / 2);
  pnUnidadesProporcionais.BringToFront;

  qryUnidades.Close;
  qryUnidades.Open;
  qryUnidades2.Close;
  qryUnidades2.Open;
  qryUnidades_Proporcionais.Close;
  qryUnidades_Proporcionais.Open;

  pnUnidadesProporcionais.Visible := true;

end;

procedure TfrmScannforr.MediesCapa1Click(Sender: TObject);
begin

  pnMedicoesCapa.top  := trunc((screen.Height - pnMedicoesCapa.Height) / 2);
  pnMedicoesCapa.left := trunc((screen.Width - pnMedicoesCapa.Width) / 2);
  pnMedicoesCapa.BringToFront;

  qryArea_Geral_medicoes.Close;
  qryArea_Geral_medicoes.Open;
  qryMedicoes_Capa.Close;
  qryMedicoes_Capa.Open;

  dbgAreaGeralMedicoesCellClickSegue;

  pnMedicoesCapa.Visible := true;

end;

procedure TfrmScannforr.MediesEscaneadas1Click(Sender: TObject);
begin

  pnMedicoesEscaneamentos.top  := trunc((screen.Height - pnMedicoesEscaneamentos.Height) / 2);
  pnMedicoesEscaneamentos.left := trunc((screen.Width - pnMedicoesEscaneamentos.Width) / 2);
  pnMedicoesEscaneamentos.BringToFront;

  qryEmpresa_scann.Close;
  qryEmpresa_scann.Open;

  qryArea_geral_scann.Close;
  qryArea_geral_scann.Open;

  qryMedicoes_Capa_scann.Close;
  qryMedicoes_Capa_scann.Open;

  qryMedicoes_escaneamentos.Close;
  qryMedicoes_escaneamentos.Open;

  dbgEmpresasAreaGeralCellClickSegue;
  imgSalva.Picture := imgPrincipal.Picture;
  pnMedicoesEscaneamentos.Visible := true;

  le_altura_media_medida;

end;

procedure TfrmScannforr.btImpAltMapsClick(Sender: TObject);
var i : integer;

begin

  pnImpGmaps.top  := trunc((screen.Height - pnImpGmaps.Height) / 2);
  pnImpGmaps.left := trunc((screen.Width - pnImpGmaps.Width) / 2);
  pnImpGmaps.BringToFront;

  pnImpGmaps.Visible := true;
  edChaveAPI.SetFocus;

end;

procedure TfrmScannforr.btImpEscannClick(Sender: TObject);
begin

  verifica_existe_altura_media_scan_tb;

  if qryGeral2.RecordCount > 0 then
    begin
      if MessageDlg ('Os resultados j� foram gerados, Tem certeza que '+
                     'deseja continuar e eliminar os lan�amentos escaneados '+
                     'com essa nova importa��o?'
                     , mtWarning,[mbYes, mbNo], 0) = mrNo then
        exit;
    end;

  pnCalibra.top  := trunc((screen.Height - pnCalibra.Height) / 2);
  pnCalibra.left := trunc((screen.Width - pnCalibra.Width) / 2);
  pnCalibra.BringToFront;
  qryMedicoes_capa_scann.Edit;

  mmRodape.Clear;
  pnCalibra.Visible := true;
  vProximoProcesso := 'importa escaneamento';

end;

procedure TfrmScannforr.Memo1Click(Sender: TObject);
begin

  pnScannforr.Visible := false;

end;

procedure TfrmScannforr.pnProcessaDblClick(Sender: TObject);
begin

  pnProcessa.Visible := false;

end;

procedure TfrmScannforr.pnScannforrClick(Sender: TObject);
begin

  pnScannforr.Visible := false;

end;

procedure TfrmScannforr.RecuperaVariaveisEstacao;
var xprimavera, xverao, xoutono, xinverno, xdata_medicao : integer;

begin

  xdata_medicao := strTOint( formatDateTime('mmdd',
                   qryMedicoes_capa_scann.FieldByName('data_medicao').AsDateTime) );

  edAltMaxima.Text :=
               qryGeral2.FieldByName('altura_maxima_crescimento').AsString;

  if qrypadrao_sistema.FieldByName('hemisferio_sul').AsBoolean then
    begin
      xprimavera := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_primavera_hms').AsDateTime) );
      xverao     := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_verao_hms').AsDateTime) );
      xoutono    := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_outono_hms').AsDateTime) );
      xinverno   := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_inverno_hms').AsDateTime) );

      if (xdata_medicao >= xprimavera) and
         (xdata_medicao <  xverao) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_primavera').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_primavera').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      if (xdata_medicao >= xoutono) and
         (xdata_medicao <  xinverno) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_outono').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_outono').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      if (xdata_medicao >= xinverno) and
         (xdata_medicao <  xprimavera) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_inverno').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_inverno').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      // � ver�o
      edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_verao').AsString;
      edAlturaMassaSeca.Text :=
                   qryGeral2.FieldByName('altura_massa_seca_cm_verao').AsString;
      edAltMinima.Text :=
                   qryGeral2.FieldByName('altura_minima_pastejo').AsString;
      exit;

    end

  else
    begin
      xprimavera := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_primavera_hmn').AsDateTime) );
      xverao     := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_verao_hmn').AsDateTime) );
      xoutono    := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_outono_hmn').AsDateTime) );
      xinverno   := strTOint(
                    formatDateTime('mmdd',
                    qrypadrao_sistema.FieldByName('data_inverno_hmn').AsDateTime) );

      if (xdata_medicao >= xprimavera) and
         (xdata_medicao <  xverao) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_primavera').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_primavera').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      if (xdata_medicao >= xverao) and
         (xdata_medicao <  xoutono) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_verao').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_verao').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      if (xdata_medicao >= xoutono) and
         (xdata_medicao <  xinverno) then
        begin
          edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_outono').AsString;
          edAlturaMassaSeca.Text :=
                       qryGeral2.FieldByName('altura_massa_seca_cm_outono').AsString;
          edAltMinima.Text :=
                       qryGeral2.FieldByName('altura_minima_pastejo').AsString;
          exit;
        end;

      // � inverno
      edMS.Text := qryGeral2.FieldByName('massa_seca_kg_m2_inverno').AsString;
      edAlturaMassaSeca.Text :=
                   qryGeral2.FieldByName('altura_massa_seca_cm_inverno').AsString;
      edAltMinima.Text :=
                   qryGeral2.FieldByName('altura_minima_pastejo').AsString;
      exit;

    end;

end;

end.
