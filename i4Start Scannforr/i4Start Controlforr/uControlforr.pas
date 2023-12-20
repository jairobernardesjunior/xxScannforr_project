unit uControlforr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Buttons,
  Vcl.Imaging.pngimage, ganttuicomps, Vcl.DBCtrls, Vcl.ToolWin, Vcl.Imaging.jpeg,
  UniProvider, PostgreSQLUniProvider, dateutils, strUtils;

type
  TfrmControlforr = class(TForm)
    Panel2: TPanel;
    qryEventos: TUniQuery;
    updEventos: TUniUpdateSQL;
    dsEventos: TUniDataSource;
    qryAreas: TUniQuery;
    dsAreas: TUniDataSource;
    lbLocal: TLabel;
    qrytipo_Eventocb: TUniQuery;
    dsTipo_eventocb: TUniDataSource;
    dsMovto_animais: TUniDataSource;
    updMovto_animais: TUniUpdateSQL;
    qryMovto_animais: TUniQuery;
    dsTipo_animalcb: TUniDataSource;
    qryTipo_animalcb: TUniQuery;
    pcSuperior: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    dbgPiquetes: TDBGrid;
    pcControle: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbgEventos: TDBGrid;
    btpesquisarEvento: TGanttFlatButton;
    dbeDescricao_evento: TDBEdit;
    dbeQtde: TDBEdit;
    dbeValor: TDBEdit;
    dbeData_evento: TDBEdit;
    btnovoeve: TGanttFlatButton;
    btgravaeve: TGanttFlatButton;
    btcancelaeve: TGanttFlatButton;
    dbltipoEvento: TDBLookupComboBox;
    cbEventocancelado: TDBCheckBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbgMovtoSuplementos: TDBGrid;
    btPesquisarSup: TGanttFlatButton;
    dbeDescricao_movto_suplemento: TDBEdit;
    dbeQtdeSup: TDBEdit;
    dbeValorSup: TDBEdit;
    dbeDataSup: TDBEdit;
    btnovosup: TGanttFlatButton;
    btGravaSup: TGanttFlatButton;
    btcancelaSup: TGanttFlatButton;
    dblTipoSuplemento: TDBLookupComboBox;
    cbMovtoSupCancelado: TDBCheckBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    lbAreaGeral: TLabel;
    lbPiquete: TLabel;
    qryMovto_suplementos: TUniQuery;
    updMovto_suplementos: TUniUpdateSQL;
    dsMovto_suplementos: TUniDataSource;
    dsTipo_suplementocb: TUniDataSource;
    qryTipo_suplementocb: TUniQuery;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dbgMovtoAnimais: TDBGrid;
    btPesquisarAni: TGanttFlatButton;
    dbeDescricao_movto_animais: TDBEdit;
    dbeQtdeAnimais: TDBEdit;
    dbePesoAnimais: TDBEdit;
    dbeConsumoAnimais: TDBEdit;
    btnovoani: TGanttFlatButton;
    btgravaani: TGanttFlatButton;
    btcancelaAni: TGanttFlatButton;
    dblTipoAnimal: TDBLookupComboBox;
    cbmovtoanicancelado: TDBCheckBox;
    cbfemea: TDBCheckBox;
    cbcastrado: TDBCheckBox;
    cbEntrada: TDBCheckBox;
    cbsaida: TDBCheckBox;
    Label19: TLabel;
    dbeDataAni: TDBEdit;
    cbnormal: TDBCheckBox;
    qryEventosCiclo: TUniQuery;
    dsEventosCiclo: TUniDataSource;
    qryEventosMonta: TUniQuery;
    qryMedicoesMonta: TUniQuery;
    qryAnimaisMonta: TUniQuery;
    TabSheet5: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    pnTipoSuplemento: TPanel;
    Label41: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    dbgTipoSuplemento: TDBGrid;
    ToolBar13: TToolBar;
    DBNavigator10: TDBNavigator;
    Panel17: TPanel;
    lbTipoSuplemento: TLabel;
    dbeDescricaoTS: TDBEdit;
    dbcunidades: TDBLookupComboBox;
    dbeIndiceSuplemento: TDBEdit;
    pnTipoAnimal: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    dbgTipoAnimal: TDBGrid;
    ToolBar12: TToolBar;
    DBNavigator9: TDBNavigator;
    Panel16: TPanel;
    lbTipoAnimal: TLabel;
    dbepesoVivo: TDBEdit;
    dbeDescricaoTA: TDBEdit;
    dbepercConsumo: TDBEdit;
    pnTipoEvento: TPanel;
    Label40: TLabel;
    Label59: TLabel;
    dbgTipoEvento: TDBGrid;
    ToolBar9: TToolBar;
    DBNavigator8: TDBNavigator;
    dbeDescricao: TDBEdit;
    dbcUnidadee: TDBLookupComboBox;
    Panel15: TPanel;
    lbtipoEvento: TLabel;
    dcbentrada: TDBCheckBox;
    dcbsaida: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    qrytipo_Evento: TUniQuery;
    updTipo_Evento: TUniUpdateSQL;
    dsTipo_Evento: TUniDataSource;
    qryTipo_Animal: TUniQuery;
    updTipo_Animal: TUniUpdateSQL;
    dsTipo_Animal: TUniDataSource;
    qryTipo_Suplemento: TUniQuery;
    updTipo_Suplemento: TUniUpdateSQL;
    dsTipo_Suplemento: TUniDataSource;
    pnMontaLTempo: TPanel;
    lbDescricaoEvento: TLabel;
    Panel5: TPanel;
    Label20: TLabel;
    mkeDtCiclo: TMaskEdit;
    GanttFlatButton12: TGanttFlatButton;
    dbgEventosCiclos: TDBGrid;
    ToolBar1: TToolBar;
    GanttFlatButton13: TGanttFlatButton;
    Panel7: TPanel;
    lbMontaLTempo: TLabel;
    Image2: TImage;
    cbTodosPiquetes: TCheckBox;
    Memo1: TMemo;
    qryConsumo_raca: TUniQuery;
    TabSheet10: TTabSheet;
    pnCrescimentoConsumo: TPanel;
    Panel12: TPanel;
    lbCiclo2: TLabel;
    GanttFlatButton15: TGanttFlatButton;
    scannforr_connection: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    qryGeral: TUniQuery;
    qryGeral2: TUniQuery;
    qryUnidades2: TUniQuery;
    dsUnidades2: TUniDataSource;
    qryPadrao_sistema: TUniQuery;
    pnControle: TPanel;
    lbdata1: TLabel;
    lbtipo1: TLabel;
    img1: TImage;
    lbdata2: TLabel;
    lbtipo2: TLabel;
    img2: TImage;
    lbdata3: TLabel;
    lbtipo3: TLabel;
    img3: TImage;
    lbdata4: TLabel;
    lbtipo4: TLabel;
    img4: TImage;
    lbdata5: TLabel;
    lbtipo5: TLabel;
    img5: TImage;
    lbdata6: TLabel;
    lbtipo6: TLabel;
    img6: TImage;
    lbdata7: TLabel;
    lbtipo7: TLabel;
    img7: TImage;
    lbdata8: TLabel;
    lbtipo8: TLabel;
    img8: TImage;
    lbdata9: TLabel;
    lbtipo9: TLabel;
    img9: TImage;
    lbdata10: TLabel;
    lbtipo10: TLabel;
    img10: TImage;
    lbdata11: TLabel;
    lbtipo11: TLabel;
    img11: TImage;
    lbdata12: TLabel;
    lbtipo12: TLabel;
    img12: TImage;
    lbdata13: TLabel;
    lbtipo13: TLabel;
    img13: TImage;
    lbdata14: TLabel;
    lbtipo14: TLabel;
    img14: TImage;
    lbdata15: TLabel;
    lbtipo15: TLabel;
    img15: TImage;
    lbdata16: TLabel;
    lbtipo16: TLabel;
    img16: TImage;
    lbdata17: TLabel;
    lbtipo17: TLabel;
    img17: TImage;
    lbdata18: TLabel;
    lbtipo18: TLabel;
    img18: TImage;
    lbdata19: TLabel;
    lbtipo19: TLabel;
    img19: TImage;
    lbdata20: TLabel;
    lbtipo20: TLabel;
    img20: TImage;
    lbdata21: TLabel;
    lbtipo21: TLabel;
    img21: TImage;
    lbdata22: TLabel;
    lbtipo22: TLabel;
    img22: TImage;
    Panel6: TPanel;
    mm1: TMemo;
    mmdias1: TMemo;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label23: TLabel;
    lbCiclo: TLabel;
    imgSuplemento: TImage;
    imgMedicao: TImage;
    imgAnimal: TImage;
    imgEvento: TImage;
    GanttFlatButton14: TGanttFlatButton;
    mkeDataInicioMonta: TMaskEdit;
    Button1: TButton;
    mmdias2: TMemo;
    mm2: TMemo;
    mmdias3: TMemo;
    mm3: TMemo;
    mmdias4: TMemo;
    mm4: TMemo;
    mmdias5: TMemo;
    mm5: TMemo;
    mmdias6: TMemo;
    mm6: TMemo;
    mmdias7: TMemo;
    mm7: TMemo;
    mmdias8: TMemo;
    mm8: TMemo;
    mmdias9: TMemo;
    mm9: TMemo;
    mmdias10: TMemo;
    mm10: TMemo;
    mmdias11: TMemo;
    mm11: TMemo;
    mmdias12: TMemo;
    mm12: TMemo;
    mmdias13: TMemo;
    mm13: TMemo;
    mmdias14: TMemo;
    mm14: TMemo;
    mmdias15: TMemo;
    mm15: TMemo;
    mmdias16: TMemo;
    mm16: TMemo;
    mmdias17: TMemo;
    mm17: TMemo;
    mmdias18: TMemo;
    mm18: TMemo;
    mmdias19: TMemo;
    mm19: TMemo;
    mmdias20: TMemo;
    mm20: TMemo;
    mmdias21: TMemo;
    mm21: TMemo;
    mmdias22: TMemo;
    mm22: TMemo;
    Label24: TLabel;
    dbeGanhoDePesoDiakg: TDBEdit;
    Label25: TLabel;
    dbeTganhoDepesoDiakg: TDBEdit;
    TabSheet11: TTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    dsPadrao_sistema: TUniDataSource;
    updPadrao_sistema: TUniUpdateSQL;
    Label27: TLabel;
    DBEdit2: TDBEdit;
    Label28: TLabel;
    DBEdit3: TDBEdit;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    dbePercPerdaAcamamento: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    dbeDiasEstimadoCrescimento: TDBEdit;
    qryTipo_animal_change: TUniQuery;
    updTipo_animal_change: TUniUpdateSQL;
    qryLinhaTempo: TUniQuery;
    qryCrescimentoForragem: TUniQuery;
    dbeQtdeDiasUsado: TDBEdit;
    Label32: TLabel;
    btPrimeiro: TBitBtn;
    btAnterior: TBitBtn;
    btProximo: TBitBtn;
    btUltimo: TBitBtn;
    btUltimoForr: TBitBtn;
    btProximoForr: TBitBtn;
    btAnteriorForr: TBitBtn;
    btPrimeiroforr: TBitBtn;
    Button2: TButton;
    mkeDataInicioMonta2: TMaskEdit;
    Label21: TLabel;
    pnProcessa: TPanel;
    qryConsumoSuplemento: TUniQuery;
    qryRetiradaEvento: TUniQuery;
    qryConsumoPeso: TUniQuery;
    qryForragemMedida: TUniQuery;
    pcCrescimento: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    imgCrescimentoConsumo: TImage;
    imgSaldoForragem: TImage;
    imgConsumoPeso: TImage;
    Panel11: TPanel;
    lbarea_ltf: TLabel;
    lbarea_lt: TLabel;
    Panel18: TPanel;
    Label22: TLabel;
    Panel19: TPanel;
    Label33: TLabel;
    Panel20: TPanel;
    Label34: TLabel;
    Panel21: TPanel;
    Label35: TLabel;
    Panel22: TPanel;
    Label36: TLabel;
    Panel23: TPanel;
    Label37: TLabel;
    Panel24: TPanel;
    Label38: TLabel;
    Panel26: TPanel;
    Label42: TLabel;
    Panel25: TPanel;
    Label39: TLabel;
    qryPesagemAnimal: TUniQuery;
    Panel27: TPanel;
    Label43: TLabel;
    mmAux: TMemo;
    Button3: TButton;
    Button4: TButton;
    pnTransfereAnimaisPiquete: TPanel;
    qryPiquetes: TUniQuery;
    btTransfereAnimaisPiquete: TGanttFlatButton;
    Label44: TLabel;
    DBText1: TDBText;
    Panel28: TPanel;
    Panel29: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    ToolBar10: TToolBar;
    btCancela: TButton;
    btContinua: TButton;
    mkeDataSaida: TMaskEdit;
    mkedataEntrada: TMaskEdit;
    mkeQtdeSaida: TMaskEdit;
    mkePesoSaida: TMaskEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    dsPiquetes: TUniDataSource;
    dsTipo_animal_change: TUniDataSource;
    Label50: TLabel;
    dbgPiquetes_transfere: TDBGrid;
    dbgTipo_animal_transfere: TDBGrid;
    lbpiquete_Transfere: TLabel;
    lbTipo_animal_transfere: TLabel;
    edperc_consumo_mspvdia: TEdit;
    edganho_depeso_diakg: TEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    edpeso_vivo_emkg: TEdit;
    GanttFlatButton1: TGanttFlatButton;
    GanttFlatButton2: TGanttFlatButton;
    mkeDtAnimais: TMaskEdit;
    mkeDtInclusaoAni: TMaskEdit;
    mkeDtSuplemento: TMaskEdit;
    mkedtInclusaosup: TMaskEdit;
    mkedtEvento: TMaskEdit;
    mkedtInclusao: TMaskEdit;
    cbEventoRealizado: TDBCheckBox;
    cbMovtoSupRealizado: TDBCheckBox;
    cbmovtoanirealizado: TDBCheckBox;
    Button5: TButton;
    Label54: TLabel;
    dbeqtdeMesesLinhaTempo: TDBEdit;
    Label55: TLabel;
    dbePesoLimiteCabeca: TDBEdit;
    Label57: TLabel;
    mminfo: TPanel;
    lb12: TLabel;
    lb11: TLabel;
    lb10: TLabel;
    lb9: TLabel;
    lb8: TLabel;
    lb7: TLabel;
    lb6: TLabel;
    lb5: TLabel;
    lb4: TLabel;
    lb3: TLabel;
    lb2: TLabel;
    lb1: TLabel;
    btdiminui: TBitBtn;
    btaumenta: TBitBtn;
    btrestaura: TBitBtn;
    Label56: TLabel;
    dbePercLimiteAlturaEntrada: TDBEdit;
    mmNote: TMemo;
    tsGraficos: TTabSheet;
    imggr1: TImage;
    imggr4: TImage;
    imggr2: TImage;
    imggr5: TImage;
    imggr3: TImage;
    imggr6: TImage;
    Button6: TButton;
    lbg1: TLabel;
    lbg2: TLabel;
    lbg3: TLabel;
    lbg4: TLabel;
    lbg5: TLabel;
    lbg6: TLabel;
    Button7: TButton;
    pnNomeArquivoGrafico: TPanel;
    edNomeArquivoGrafico: TEdit;
    pngrafico: TPanel;
    imgSalva: TImage;
    Button8: TButton;
    OpenDialog1: TOpenDialog;
    lbgrafico: TLabel;
    TabSheet15: TTabSheet;
    imggr1c: TImage;
    imggr2c: TImage;
    lbg1c: TLabel;
    lbg2c: TLabel;
    Panel30: TPanel;
    Label65: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure MoveNomes;
    procedure dbgPiquetesCellClick(Column: TColumn);
    procedure btpesquisarEventoClick(Sender: TObject);
    procedure PesquisaEventos;
    procedure dbgEventosTitleClick(Column: TColumn);
    procedure btnovoeveClick(Sender: TObject);
    procedure btcancelaeveClick(Sender: TObject);
    procedure btgravaeveClick(Sender: TObject);
    procedure cbEventocanceladoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnovosupClick(Sender: TObject);
    procedure btGravaSupClick(Sender: TObject);
    procedure btcancelaSupClick(Sender: TObject);
    procedure btPesquisarSupClick(Sender: TObject);
    procedure pesquisaMovtoSuplemento;
    procedure cbMovtoSupCanceladoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgMovtoSuplementosTitleClick(Column: TColumn);
    procedure cbEntradaClick(Sender: TObject);
    procedure cbsaidaClick(Sender: TObject);
    procedure cbfemeaClick(Sender: TObject);
    procedure cbcastradoClick(Sender: TObject);
    procedure cbnormalClick(Sender: TObject);
    procedure btPesquisarAniClick(Sender: TObject);
    procedure pesquisaMovtoAnimais;
    procedure btnovoaniClick(Sender: TObject);
    procedure btgravaaniClick(Sender: TObject);
    procedure btcancelaAniClick(Sender: TObject);
    procedure dbgMovtoAnimaisTitleClick(Column: TColumn);
    procedure dblTipoAnimalClick(Sender: TObject);
    procedure cbmovtoanicanceladoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pcControleChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgEventosCiclosCellClick(Column: TColumn);
    procedure GanttFlatButton12Click(Sender: TObject);
    procedure pcSuperiorChange(Sender: TObject);
    procedure LeEventosCiclo;
    procedure GanttFlatButton13Click(Sender: TObject);
    procedure dcbentradaClick(Sender: TObject);
    procedure dcbsaidaClick(Sender: TObject);
    procedure DBNavigator8Click(Sender: TObject; Button: TNavigateBtn);
    procedure qrytipo_EventoAfterDelete(DataSet: TDataSet);
    procedure qrytipo_EventoAfterEdit(DataSet: TDataSet);
    procedure qrytipo_EventoAfterPost(DataSet: TDataSet);
    procedure qrytipo_EventoBeforeDelete(DataSet: TDataSet);
    procedure qrytipo_EventoBeforePost(DataSet: TDataSet);
    procedure DBNavigator10Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryTipo_AnimalAfterDelete(DataSet: TDataSet);
    procedure qryTipo_AnimalAfterEdit(DataSet: TDataSet);
    procedure qryTipo_AnimalAfterPost(DataSet: TDataSet);
    procedure qryTipo_AnimalBeforeDelete(DataSet: TDataSet);
    procedure qryTipo_SuplementoAfterDelete(DataSet: TDataSet);
    procedure qryTipo_SuplementoAfterEdit(DataSet: TDataSet);
    procedure qryTipo_SuplementoAfterPost(DataSet: TDataSet);
    procedure qryTipo_SuplementoBeforeDelete(DataSet: TDataSet);
    procedure qryTipo_SuplementoBeforePost(DataSet: TDataSet);
    procedure DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
    procedure qryTipo_AnimalBeforePost(DataSet: TDataSet);
    procedure GanttFlatButton14Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LeDadosLinhaTempo;
    procedure ProcessaDadosLinhaTempo;
    procedure InicializaVariaveisAnimais;
    procedure ApagaLinhaTempo;
    procedure ProcessaAnimais;
    procedure IncluiAnimais;
    procedure IncluiMedicoes;
    procedure ProcessaEventos;
    procedure incluiEventos;
    procedure ProcessaSuplementos;
    procedure IncluiSuplementos;
    procedure TabSheet11Exit(Sender: TObject);
    procedure dbePercPerdaAcamamentoExit(Sender: TObject);
    procedure dbeDiasEstimadoCrescimentoExit(Sender: TObject);
    procedure qryPadrao_sistemaBeforePost(DataSet: TDataSet);
    procedure Calcula_seq_sem_raca;
    procedure CarregaTabelaConsumoEmbrapa;
    procedure CarregaTabelaConsumoSemRaca;
    procedure GuardaDadosTabela;
    procedure CompoeConsumoPeso;
    procedure CompoeConsumoPesoDia;
    procedure GuardaDados_Embrapa;
    procedure GuardaDados_SemRaca;
    procedure CalculaPesoConsumo_embrapa;
    procedure CalculaPesoConsumo_semRaca;
    procedure VerificaMudaNivelPeso_embrapa;
    procedure VerificaMudaNivelPeso_semRaca;
    procedure GravaPosi��oDiariaAnimais_embrapa;
    procedure GravaPosi��oDiariaAnimais_semRaca;
    procedure ProcessaForragem;
    procedure CompoeCrescimentoForragem;
    procedure RecuperaVariaveisEstacao;
    procedure IncluiCrescimentoForragem;
    procedure ApuraDadosLinhaDoTempo;
    procedure MontaDadosLinhaDoTempo;
    procedure ConstroiLinhaDoTempo;
    procedure CompoeMemoLinhaDoTempo;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure monta_mm1;
    procedure monta_mm2;
    procedure monta_mm3;
    procedure monta_mm4;
    procedure monta_mm5;
    procedure monta_mm6;
    procedure monta_mm7;
    procedure monta_mm8;
    procedure monta_mm9;
    procedure monta_mm10;
    procedure monta_mm11;
    procedure monta_mm12;
    procedure monta_mm13;
    procedure monta_mm14;
    procedure monta_mm15;
    procedure monta_mm16;
    procedure monta_mm17;
    procedure monta_mm18;
    procedure monta_mm19;
    procedure monta_mm20;
    procedure monta_mm21;
    procedure monta_mm22;

    procedure ApuraDadosCrescimentoConsumo;
    procedure MontaDadosCrescimentoConsumo;
    procedure ConstroiCrescimentoConsumo;
    procedure ProcessaPlantaMedida;
    procedure ProcessaConsumoSuplemento;
    procedure ProcessaConsumoAnimal;
    procedure ProcessaRetiradaForragem;
    procedure ProcessaSaldoForragem;
    procedure ProcessaConsumoPeso;
    procedure LimpaVariaveisMontaDadosCrescimentoConsumo;
    procedure Button2Click(Sender: TObject);
    procedure btPrimeiroforrClick(Sender: TObject);
    procedure btAnteriorForrClick(Sender: TObject);
    procedure btProximoForrClick(Sender: TObject);
    procedure btUltimoForrClick(Sender: TObject);
    procedure mmAuxClick(Sender: TObject);
    procedure mm1Click(Sender: TObject);
    procedure Exibe_mmaux;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ReadOnlyCamposEventos;
    procedure ReadOnlyCamposSuplementos;
    procedure ReadOnlyCamposAnimais;
    procedure mm2Click(Sender: TObject);
    procedure mm3Click(Sender: TObject);
    procedure mm4Click(Sender: TObject);
    procedure mm5Click(Sender: TObject);
    procedure mm6Click(Sender: TObject);
    procedure mm7Click(Sender: TObject);
    procedure mm8Click(Sender: TObject);
    procedure mm9Click(Sender: TObject);
    procedure mm10Click(Sender: TObject);
    procedure mm11Click(Sender: TObject);
    procedure mm12Click(Sender: TObject);
    procedure mm13Click(Sender: TObject);
    procedure mm14Click(Sender: TObject);
    procedure mm15Click(Sender: TObject);
    procedure mm16Click(Sender: TObject);
    procedure mm17Click(Sender: TObject);
    procedure mm18Click(Sender: TObject);
    procedure mm19Click(Sender: TObject);
    procedure mm20Click(Sender: TObject);
    procedure mm21Click(Sender: TObject);
    procedure mm22Click(Sender: TObject);
    procedure btTransfereAnimaisPiqueteClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btContinuaClick(Sender: TObject);
    procedure dbgPiquetes_transfereCellClick(Column: TColumn);
    procedure dbgTipo_animal_transfereCellClick(Column: TColumn);
    procedure GanttFlatButton1Click(Sender: TObject);
    procedure GanttFlatButton2Click(Sender: TObject);
    procedure mkeDtInclusaoAniChange(Sender: TObject);
    procedure mkedtInclusaosupChange(Sender: TObject);
    procedure mkedtInclusaoChange(Sender: TObject);
    procedure mkedtEventoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkedtInclusaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkeDtSuplementoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkedtInclusaosupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkeDtAnimaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkeDtInclusaoAniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ResumoAnimais;
    procedure ResumoSuplementos;
    procedure ResumoEventos;
    procedure ResumoMedicoes;
    procedure PosicionaFirst;
    procedure cbEventoRealizadoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbMovtoSupRealizadoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbmovtoanirealizadoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure AnaliticoAnimais;
    procedure AnaliticoSuplementos;
    procedure AnaliticoEventos;
    procedure dbeqtdeMesesLinhaTempoExit(Sender: TObject);
    procedure dbePesoLimiteCabecaExit(Sender: TObject);
    procedure imgConsumoPesoClick(Sender: TObject);
    procedure imgCrescimentoConsumoClick(Sender: TObject);
    procedure imgSaldoForragemClick(Sender: TObject);
    procedure mminfoClick(Sender: TObject);
    procedure montaMMinfo;
    procedure MontaTelaGraficaCrescimento;
    procedure ControlaMontaTelaGraficaCrescimento;
    procedure btaumentaClick(Sender: TObject);
    procedure btdiminuiClick(Sender: TObject);
    procedure btrestauraClick(Sender: TObject);
    procedure CompoeConsumoPesoCompletaEmbrapa;
    procedure CompoeConsumoPesoCampletaSemRaca;
    procedure dbePercLimiteAlturaEntradaExit(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure pnNomeArquivoGraficoClick(Sender: TObject);
    procedure edNomeArquivoGraficoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgSalvaClick(Sender: TObject);
    procedure imggr1Click(Sender: TObject);
    procedure imggr2Click(Sender: TObject);
    procedure imggr3Click(Sender: TObject);
    procedure imggr5Click(Sender: TObject);
    procedure imggr6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure imggr1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr4Click(Sender: TObject);
    procedure imggr1cMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imggr2cMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlforr: TfrmControlforr;

implementation

uses ufuncoes;
var vsortData, vsortInclusao, vsortDescricao, vinativo, vcresc, ventrada,
    vsaida, vfemea, vcastrado, vnormal, vTemErro, vrealizado : boolean;

    vDataFimCiclo, vDataFimLinhaTempo, vDataInicioCiclo, vnome_areaAnt,
    vcorDemo, vdiretorioGraficos : string;

    vqryPesagemAnimal_Eof, vqryConsumoPeso_Eof, vjaTemNotaEntrada,
    vjaTemNotaSaida, vjaTemPercLimiteAltEntrada : boolean;

    vseq_areaAnt, vCastFemNormal, vid_raca, vseq_raca , vseq_sem_raca,
    vseq_empresaAnt, vseq_area_geralAnt, valtura_massa_seca_cm, valt_massa_seca_medicao,
    vseq_unica, vposicaox, vordemAnt, vposicaoy0, vmedia_planta_medicao, vposicaoy_positiva,
    vposicaoy_negativa, vsaldoAnimais, vseq_movto_animais_posicao,
    vseq_unica_idx, vrecordcount, vlinha_idx, vseq_unica_idxUltima,
    valt_massa_seca_medicao_unica, vQtdeAnimalAnt_semRaca, vgrafico : integer;

    vdataAnt, vdataLimite, vdataScala, vdataInicio, vhoraAnt : tdatetime;
    vmassa_seca_kg_m2, vkg_ms_ha_dia, vkg_ms_ha_dia_acumulado,
    vmassa_seca_medicao, vsaldo_forragem, vValorTotal, vpercCorrige, vpercCorrige2,
    vpercCorrige3, vUltimaAlturaMedia, vsaldo_forragem_saida, vsaldo_forragem_entrada,
    vConsumoAnimal, vidxCorrige, vmassa_seca_medicao_unica, vsaldo_forragem_crescimento
     : currency;


    vi : integer;

    vqtde_tela : array[1..6] of integer;

    vdatax : array[1..1100] of string;
    varea_m2 : array[1..1100] of currency;
    vforragemMedida_cm : array[1..1100] of currency;
    vforragemcresce_cm : array[1..1100] of currency;
    vforragemConsumo_cm : array[1..1100] of currency;
    vforragemAcamamento_cm : array[1..1100] of currency;
    vforragemRetirada_cm : array[1..1100] of currency;
    vforragemSuplemento_cm : array[1..1100] of currency;
    vforragemSaldo_cm : array[1..1100] of currency;
    //
    vforragemAlturaEntrada_cm : array[1..1100] of integer;
    vforragemAlturaSaida_cm : array[1..1100] of integer;
    vpeso_calculado_cm : array[1..1100] of integer;
    vpeso_medido_cm : array[1..1100] of integer;
    vqtde_cabeca : array[1..1100] of integer;
    //
    vforragemMedida_kg : array[1..1100] of currency;
    vforragemcresce_kg : array[1..1100] of currency;
    vforragemConsumo_kg : array[1..1100] of currency;
    vforragemAcamamento_kg : array[1..1100] of currency;
    vforragemRetirada_kg : array[1..1100] of currency;
    vforragemSuplemento_kg : array[1..1100] of currency;
    vforragemSaldo_kg : array[1..1100] of currency;
    vpeso_calculado_kg : array[1..1100] of currency;
    vpeso_medido_kg : array[1..1100] of currency;
    vpeso_vivo_inicial_total_kg : array[1..1100] of currency;
    //
    vmedida_forr_ymto : array[1..1100] of integer;
    vmedida_forr_ylto : array[1..1100] of integer;
    vcrescimento_forr_ymto : array[1..1100] of integer;
    vcrescimento_forr_ylto : array[1..1100] of integer;
    vconsumida_forr_ymto : array[1..1100] of integer;
    vconsumida_forr_ylto : array[1..1100] of integer;
    vpeso_animal_ymto : array[1..1100] of integer;
    vpeso_animal_ylto : array[1..1100] of integer;
    vpeso_animal_medido_ymto : array[1..1100] of integer;
    vpeso_animal_medido_ylto : array[1..1100] of integer;
    vsaldo_forr_ymto : array[1..1100] of integer;
    vsaldo_forr_ylto : array[1..1100] of integer;
    vretirada_forr_ymto : array[1..1100] of integer;
    vretirada_forr_ylto : array[1..1100] of integer;
    vacamamento_forr_ymto : array[1..1100] of integer;
    vacamamento_forr_ylto : array[1..1100] of integer;
    vsuplemento_forr_ymto : array[1..1100] of integer;
    vsuplemento_forr_ylto : array[1..1100] of integer;
    //
    vtemNotificacao : array[1..1100] of boolean;

    vPesoVivo_Embrapa : array[1..6, 1..16] of integer;
    vqtdeIdx_embrapa : array[1..6, 1..16] of currency;

    vPeso_Vivo_semRaca : array[1..20] of currency;
    vPerc_Consumo_mspvdia_semRaca : array[1..20] of currency;
    vGanho_DePeso_diakg_semRaca : array[1..20] of currency;


    vQtdeAnimalAtual_Embrapa : array[1..6, 1..3, 1..15] of integer;
    vPesoVivoGanhoDiario_Embrapa : array[1..6, 1..3, 1..15] of currency;
    vPesoVivoGanhoAcumulado_Embrapa : array[1..6, 1..3, 1..15] of currency;
    vConsumoDiario_Embrapa : array[1..6, 1..3, 1..15] of currency;
    vConsumoAcumulado_Embrapa : array[1..6, 1..3, 1..15] of currency;
    vseq_tipo_animal_embrapa : array[1..6, 1..3, 1..15] of integer;
    vDescricaoTipo_embrapa : array[1..6, 1..3, 1..15] of string;
    vData_embrapa : array[1..6, 1..3, 1..15] of tdatetime;
    vGravou_embrapa : array[1..6, 1..3, 1..15] of boolean;

    vQtdeAnimalAtual_semRaca : array[1..20] of integer;
    vPesoVivoGanhoAcumulado_semRaca : array[1..20] of currency;
    vConsumoDiario_semRaca : array[1..20] of currency;
    vConsumoAcumulado_semRaca : array[1..20] of currency;
    vseq_tipo_animal_semRaca : array[1..20] of integer;
    vDescricaoTipo_semRaca : array[1..20] of string;
    vData_semRaca : array[1..20] of tdatetime;
    vGravou_semRaca : array[1..20] of boolean;

    vDiaSemana : array[1..7] of string;

{$R *.dfm}

var xSelectedIndex : integer;

procedure TfrmControlforr.btAnteriorClick(Sender: TObject);
var i : integer;

begin

  if qryLinhaTempo.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  for I := 1 to 21 do
    begin
      if qryLinhaTempo.Bof then
        begin
          qryLinhaTempo.First;
          break;
        end;

      qryLinhaTempo.Prior;
    end;

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

end;

procedure TfrmControlforr.btpesquisarEventoClick(Sender: TObject);
var xtestadata : tdatetime;

begin

  if mkeDtEvento.Text = '00/00/0000' then
    begin
      try
        xtestadata := strTOdateTime(mkeDtInclusao.Text);

      except
        begin
          showmessage('data inv�lida');
          mkeDtInclusao.SetFocus;
          exit;
        end;
      end;
    end

  else
    begin
      try
        xtestadata := strTOdateTime(mkeDtEvento.Text);

      except
        begin
          showmessage('data inv�lida');
          mkeDtEvento.SetFocus;
          exit;
        end;
      end;
    end;

  PesquisaEventos;

end;

procedure TfrmControlforr.btPrimeiroClick(Sender: TObject);
var vloopContinuo : boolean;

begin

  if qryLinhaTempo.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  qryLinhaTempo.First;

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

end;

procedure TfrmControlforr.btProximoClick(Sender: TObject);
begin

  if qryLinhaTempo.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  if qryLinhaTempo.Eof then
    begin
      showmessage('fim do movimento do ciclo');
      exit;
    end;

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

end;

procedure TfrmControlforr.btTransfereAnimaisPiqueteClick(Sender: TObject);
var i, xqtde : integer;
    status : string;

begin

  if qryMovto_animais.RecordCount = 0 then
    exit;

  if qryMovto_animais.FieldByName('saida').AsBoolean then
    begin
      showmessage('esse movimento � de sa�da, escolha um movimento de entrada');
      exit;
    end;

  if qryMovto_animais.FieldByName('cancelado').AsBoolean then
    begin
      showmessage('esse movimento est� inativo');
      exit;
    end;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryMovto_animais.FieldByName('seq_empresa').AsInteger,
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger,
        qryMovto_animais.FieldByName('seq_area').AsInteger,
        qryMovto_animais.FieldByName('data_movto_animais').AsString);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para esse movimento, ' +
                  'n�o � permitido fazer sa�da nem transfer�ncia');
      exit;
    end;

  vDataInicioCiclo := dataInicioCiclo(
        qryMovto_animais.FieldByName('seq_empresa').AsInteger,
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger,
        qryMovto_animais.FieldByName('seq_area').AsInteger,
        qryMovto_animais.FieldByName('data_movto_animais').AsString);
  if (copy(vDataInicioCiclo, 1, 5) = '!@#$%') then
    begin
      showmessage('n�o foi encontrado a data de in�cio do ciclo');
      exit;
    end;

  if qryMovto_animais.FieldByName('femea').AsBoolean then
    status := ' and femea = true'
  else
  if qryMovto_animais.FieldByName('castrado').AsBoolean then
    status := ' and castrado = true'
  else
    status := ' and normal = true';

  qryGeral.Close;
  qryGeral.SQL.Text :=

' Select *' +
' from movto_animais_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_area_geral = :seq_area_geral' +
'   and seq_area = :seq_area' +
'   and data_movto_animais >= :dti' +
'   and data_movto_animais < :dtf' +
'   and seq_movto_animais_origem = :seq_movto_animais_origem' +
'   and saida = true' +
'   and cancelado <> true ' +
status;

  qryGeral.Params[0].AsInteger :=
        qryMovto_animais.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsInteger :=
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger;
  qryGeral.Params[2].AsInteger :=
        qryMovto_animais.FieldByName('seq_area').AsInteger;

  qryGeral.Params[3].AsString := vDataInicioCiclo;
  qryGeral.Params[4].AsString := vDataFimCiclo;
  qryGeral.Params[5].AsInteger :=
        qryMovto_Animais.FieldByName('seq_movto_animais').AsInteger;

  qryGeral.Open;

  xqtde := 0;
  if qryGeral.RecordCount = 0 then
  else
    for I := 1 to qryGeral.RecordCount do
      begin
        xqtde := xqtde + qryGeral.FieldByName('qtde_animais').AsInteger;
        qryGeral.Next;
      end;

  vsaldoAnimais := qryMovto_Animais.FieldByName('qtde_animais').AsInteger - xqtde;
  if vsaldoAnimais = 0 then
    begin
      showmessage('j� foram feitas todas as sa�das de animais para essa entrada');
      exit;
    end
  else
  if vsaldoAnimais < 0 then
    begin
      showmessage('***** Aten��o existem mais sa�das do que a qtde dessa entrada' +
                  ' - sa�das: ' + xqtde.ToString + ' - entradas: ' +
                  qryMovto_Animais.FieldByName('qtde_animais').AsString + ' - ' +
                  'alguns movimentos de sa�da precisam ser inativados e ou refeitos');
      exit;
    end;

  mkedataSaida.Text := formatDateTime('dd/mm/yyyy', now);
  mkeqtdeSaida.Text := vsaldoAnimais.ToString;
  mkepesoSaida.Text := qryMovto_Animais.FieldByName('peso_vivo_emkg').AsString;

  mkeDataEntrada.Text := '00/00/0000';

  qryPiquetes.Close;
  qryPiquetes.Open;

  qryTipo_animal.Close;
  qryTipo_animal.Open;

  pnTransfereAnimaisPiquete.top  := trunc((frmControlForr.Height - pnTransfereAnimaisPiquete.Height) / 2);
  pnTransfereAnimaisPiquete.left := trunc((frmControlForr.Width - pnTransfereAnimaisPiquete.Width) / 2);
  pnTransfereAnimaisPiquete.BringToFront;

  pnTransfereAnimaisPiquete.Visible := true;

end;

procedure TfrmControlforr.btUltimoClick(Sender: TObject);
var i : integer;

begin

  if qryLinhaTempo.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  qryLinhaTempo.Last;

  for I := 1 to 21 do
    begin
      if qryLinhaTempo.Bof then
        begin
          qryLinhaTempo.First;
          break;
        end;

      qryLinhaTempo.Prior;
    end;

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

end;

procedure TfrmControlforr.Button1Click(Sender: TObject);
var vloopContinuo : boolean;
    vdataTeste : tdatetime;

begin

  try
    vdataTeste := strTOdateTime(mkeDataInicioMonta.text);
  except
    showmessage('data inv�lida');
    mkeDataInicioMonta.SetFocus;
    exit;
  end;

  if (vdataInicioCiclo = '') or
     (vdataFimCiclo = '') then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  if (strTOdateTime(mkeDataInicioMonta.text) < strTOdateTime(vDataInicioCiclo)) or
     (strTOdateTime(mkeDataInicioMonta.text) >= strTOdateTime(vDataFimCiclo))    then
    begin
      showmessage('data para montar linha do tempo menor que o in�cio do ciclo ou ' +
                  '>= que o fim do ciclo');
      mkeDataInicioMonta.SetFocus;
      exit;
    end;

  if qryLinhaTempo.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  qryLinhaTempo.First;
  vloopContinuo := true;

  while vloopContinuo do
    begin
      if qryLinhaTempo.Eof then
        break;

      if strTOdateTime(mkeDataInicioMonta.text) <=
         qryLinhaTempo.FieldByName('data').AsDateTime then
        break;

      qryLinhaTempo.Next;
    end;

  if qryLinhaTempo.Eof then
    begin
      showmessage('n�o foi encontrada nenhuma data de movimenta��o maior ou igual a ' +
                  mkeDataInicioMonta.text);
      exit;
    end;

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

end;

procedure TfrmControlforr.Button2Click(Sender: TObject);
var vloopContinuo : boolean;
    vdataTeste : tdateTime;

begin

  try
    vdataTeste := strTOdateTime(mkeDataInicioMonta2.text);
  except
    showmessage('data inv�lida');
    mkeDataInicioMonta2.SetFocus;
    exit;
  end;

  if (vdataInicioCiclo = '') or
     (vdataFimCiclo = '') then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  if (strTOdateTime(mkeDataInicioMonta2.text) < strTOdateTime(vDataInicioCiclo)) or
     (strTOdateTime(mkeDataInicioMonta2.text) >= strTOdateTime(vDataFimCiclo))    then
    begin
      showmessage('data para montar linha do tempo menor que o in�cio do ciclo ou ' +
                  '>= que o fim do ciclo');
      mkeDataInicioMonta2.SetFocus;
      exit;
    end;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  qryCrescimentoForragem.First;
  vloopContinuo := true;

  while vloopContinuo do
    begin
      if qryCrescimentoForragem.Eof then
        break;

      if strTOdateTime(mkeDataInicioMonta2.text) <=
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryCrescimentoForragem.Next;
    end;

  if qryCrescimentoForragem.Eof then
    begin
      showmessage('n�o foi encontrada nenhuma data de movimenta��o maior ou igual a ' +
                  mkeDataInicioMonta2.text);
      exit;
    end;

  LimpaVariaveisMontaDadosCrescimentoConsumo;
  MontaDadosCrescimentoConsumo;

end;

procedure TfrmControlforr.Button3Click(Sender: TObject);
begin

  if qryLinhaTempo.RecordCount > 0 then
  else
    begin
      showmessage('fa�a uma montagem da linha do tempo');
      exit;
    end;

  vValorTotal := 0;

  mmaux.Color := clinfobk;
  mmaux.Font.Color := clblack;

  mmaux.Lines.Clear;
  mmaux.Lines.Add('');
  mmaux.Lines.Add(' RESUMO DO CICLO');
  mmaux.Lines.Add('');

  ResumoAnimais;
  ResumoSuplementos;
  ResumoEventos;
  //ResumoMedicoes;

  Exibe_mmaux;

end;

procedure TfrmControlforr.ResumoMedicoes;
var xseq_areaAnt, i : integer;

begin

  mmaux.Lines.Add(' MEDI��ES');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select nome_area, seq_area, data, descricao, media_planta  ' +
' from linha_dotempo_tb' +
' where ordem = 9' +
' order by 1, 2, 3';

  qryGeral.Open;

  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

  for i := 1 to qryGeral.RecordCount do
    begin
      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
        begin
          mmaux.Lines.Add('');
        end;

      mmaux.Lines.Add('      Altura M�dia da Forragem: ' +
                      formatCurr('###,###,##0',
                                 qryGeral.FieldByName('media_planta').AsCurrency) +
                      'cm - ' +
                      trim(qryGeral.FieldByName('data').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('descricao').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('nome_area').AsString));

      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
      mmaux.Lines.Add('-------------------------------------------------' +
                      '-------------------------------------------------' +
                      '-------------------------------------------------');
      mmaux.Lines.Add('');
    end;

end;

procedure TfrmControlforr.ResumoEventos;
var xseq_areaAnt, i : integer;
    xPrevistoRealizado : string;
    xsaldoValorPiquete, xsaldoValorTotal, xsaldoPrevisto, xsaldoRealizado,
    xsaldoPrevistoTotal, xsaldoRealizadoTotal : currency;

begin

  mmaux.Lines.Add(' EVENTOS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, e.seq_area, t.descricao_tipo_evento as descricao_tipo,' +
'        t.seq_tipo_evento as seq_tipo, realizado as realizado,' +
'        sum(e.qtde_evento) as qtde, sum(e.valor_evento) as valor ' +
' from eventos_tb e, areas_tb a, tipo_evento_tb t' +
' where e.seq_empresa = :seq_empresa' +
'   and e.data_evento >= :dti' +
'   and e.data_evento < :dtf' +
'   and e.cancelado <> true' +
'   and (e.qtde_evento > 0 or e.valor_evento > 0)' +
'   and t.seq_tipo_evento = e.seq_tipo_evento' +
'   and a.seq_empresa = e.seq_empresa' +
'   and a.seq_area_geral = e.seq_area_geral' +
'   and a.seq_area = e.seq_area' +
' group by 1, 2, 3, 4, 5' +
' order by 1, 2, 3, 4, 5';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoValorPiquete := 0;
  xsaldoValorTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin
      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
        begin
          mmaux.Lines.Add(' VALOR PREVISTO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoPrevisto));

          mmaux.Lines.Add(' VALOR REALIZADO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoRealizado));

          mmaux.Lines.Add(' VALOR DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xsaldoValorPiquete));

          mmaux.Lines.Add('');
          mmaux.Lines.Add('');
          xsaldoValorPiquete := 0;
          xsaldoPrevisto := 0;
          xsaldoRealizado := 0;
        end;

      mmaux.Lines.Add(
                      '    ' + xprevistoRealizado + ' - Valor: ' +
                      formatCurr('###,###,##0.00',
                                  qryGeral.FieldByName('valor').AsCurrency) +
                      ' - Qtde: ' +
                      formatCurr('###,###,##0.00',
                                 qryGeral.FieldByName('qtde').AsCurrency) +
                      ' - ' +
                      trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('nome_area').AsString));

      xSaldoValorPiquete := xSaldoValorPiquete +
                            qryGeral.FieldByName('valor').AsCurrency;
      xSaldoValorTotal := xSaldoValorTotal +
                          qryGeral.FieldByName('valor').AsCurrency;
      vValorTotal := vValorTotal +
                     qryGeral.FieldByName('valor').AsCurrency;

      if qryGeral.FieldByName('realizado').AsBoolean then
        begin
          xsaldoRealizado := xsaldoRealizado +
                             qryGeral.FieldByName('valor').AsInteger;
          xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                  qryGeral.FieldByName('valor').AsInteger;
        end
      else
        begin
          xsaldoPrevisto := xsaldoPrevisto +
                            qryGeral.FieldByName('valor').AsInteger;
          xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                 qryGeral.FieldByName('valor').AsInteger;
        end;

      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR PREVISTO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoPrevistoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR REALIZADO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoRealizadoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xsaldoValorPiquete));

      mmaux.Lines.Add('');
      mmaux.Lines.Add('       VALOR TOTAL DE EVENTOS INVESTIDOS = ' +
                      formatCurr('###,###,##0.00', xsaldoValorTotal));

    end;

  mmaux.Lines.Add('');
  mmaux.Lines.Add('             VALOR TOTAL INVESTIDO NO CICLO = ' +
                  formatCurr('###,###,##0.00', vValorTotal));

  mmaux.Lines.Add('-------------------------------------------------' +
                  '-------------------------------------------------' +
                  '-------------------------------------------------');
  mmaux.Lines.Add('');

end;

procedure TfrmControlforr.ResumoSuplementos;
var xseq_areaAnt, i : integer;
    xPrevistoRealizado : string;

    xsaldoValorPiquete, xsaldoValorTotal, xsaldoPrevisto, xsaldoRealizado,
    xsaldoPrevistoTotal, xsaldoRealizadoTotal : currency;

begin

  mmaux.Lines.Add(' SUPLEMENTOS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, m.seq_area, t.descricao_tipo_suplemento as descricao_tipo,' +
'        t.seq_tipo_suplemento as seq_tipo, realizado as realizado,' +
'        sum(m.qtde_suplemento) as qtde, sum(m.valor_suplemento_emreais) as valor ' +
' from movto_suplementos_tb m, areas_tb a, tipo_suplemento_tb t' +
' where m.seq_empresa = :seq_empresa' +
'   and m.data_movto_suplemento >= :dti' +
'   and m.data_movto_suplemento < :dtf' +
'   and m.cancelado <> true' +
'   and (m.qtde_suplemento > 0 or m.valor_suplemento_emreais > 0)' +
'   and t.seq_tipo_suplemento = m.seq_tipo_suplemento' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +
' group by 1, 2, 3, 4, 5' +
' order by 1, 2, 3, 4, 5';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoValorPiquete := 0;
  xsaldoValorTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin

      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
        begin
          mmaux.Lines.Add(' VALOR PREVISTO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoPrevisto));

          mmaux.Lines.Add(' VALOR REALIZADO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoRealizado));

          mmaux.Lines.Add(' VALOR DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xsaldoValorPiquete));

          mmaux.Lines.Add('');
          mmaux.Lines.Add('');
          xsaldoValorPiquete := 0;
          xsaldoPrevisto := 0;
          xsaldoRealizado := 0;
        end;

      mmaux.Lines.Add(
                      '    ' + xprevistoRealizado + ' - Valor: ' +
                      formatCurr('###,###,##0.00',
                                  qryGeral.FieldByName('valor').AsCurrency) +
                      ' - Qtde: ' +
                      formatCurr('###,###,##0.00',
                                 qryGeral.FieldByName('qtde').AsCurrency) +
                      ' - ' +
                      trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('nome_area').AsString));

      xSaldoValorPiquete := xSaldoValorPiquete +
                            qryGeral.FieldByName('valor').AsCurrency;
      xSaldoValorTotal := xSaldoValorTotal +
                          qryGeral.FieldByName('valor').AsCurrency;
      vValorTotal := vValorTotal +
                     qryGeral.FieldByName('valor').AsCurrency;

      if qryGeral.FieldByName('realizado').AsBoolean then
        begin
          xsaldoRealizado := xsaldoRealizado +
                             qryGeral.FieldByName('valor').AsInteger;
          xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                  qryGeral.FieldByName('valor').AsInteger;
        end
      else
        begin
          xsaldoPrevisto := xsaldoPrevisto +
                            qryGeral.FieldByName('valor').AsInteger;
          xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                 qryGeral.FieldByName('valor').AsInteger;
        end;

      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR PREVISTO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoPrevistoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR REALIZADO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoRealizadoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xsaldoValorPiquete));

      mmaux.Lines.Add('');
      mmaux.Lines.Add('       VALOR TOTAL DE SUPLEMENTOS INVESTIDOS = ' +
                      formatCurr('###,###,##0.00', xsaldoValorTotal));
    end;

  mmaux.Lines.Add('-------------------------------------------------' +
                  '-------------------------------------------------' +
                  '-------------------------------------------------');
  mmaux.Lines.Add('');

end;

procedure TfrmControlforr.ResumoAnimais;
var xseq_tipoAnt, xseq_areaAnt, xSaldoQtde, xSaldoQtdePiquete,
    xsaldoTotal, xsaldoPrevisto, xsaldoRealizado, i, xsaldoPrevistoTotal,
    xsaldoRealizadoTotal : integer;
    xPrevistoRealizado : string;

begin

  mmaux.Lines.Add(' ANIMAIS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, a.seq_area, t.descricao_tipo_animal as descricao_tipo,' +
'        t.seq_tipo_animal as seq_tipo,' +
'        1 as entradaSaida, realizado as realizado,' +
'        sum(m.qtde_animais) as qtde ' +
' from movto_animais_tb m, areas_tb a, tipo_animal_tb t' +
' where m.seq_empresa = :seq_empresa' +
'   and m.data_movto_animais >= :dti' +
'   and m.data_movto_animais < :dtf' +
'   and m.entrada = true' +
'   and m.cancelado <> true' +
'   and t.seq_tipo_animal = m.seq_tipo_animal' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +
' group by 1, 2, 3, 4, 5, 6' +

' union all' +

' select a.nome_area, a.seq_area, t.descricao_tipo_animal as descricao_tipo,' +
'        t.seq_tipo_animal as seq_tipo,' +
'        2 as entradaSaida, realizado as realizado,' +
'        sum(m.qtde_animais) as qtde ' +
' from movto_animais_tb m, areas_tb a, tipo_animal_tb t' +
' where m.seq_empresa = :seq_empresa2' +
'   and m.data_movto_animais >= :dti2' +
'   and m.data_movto_animais < :dtf2' +
'   and m.saida = true' +
'   and m.cancelado <> true' +
'   and t.seq_tipo_animal = m.seq_tipo_animal' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +
' group by 1, 2, 3, 4, 5, 6' +

' order by 1, 2, 3, 4, 5, 6';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Params[3].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[4].AsString := vdataInicioCiclo;
  qryGeral.Params[5].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_tipoAnt := qryGeral.FieldByName('seq_tipo').AsInteger;
  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoQtde := 0;
  xSaldoQtdePiquete := 0;
  xsaldoTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin

      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) or
         (xseq_tipoAnt <> qryGeral.FieldByName('seq_tipo').AsInteger) then
        begin

{          if xsaldoQtde >= 0 then
            mmaux.Lines.Add('       Saldo de Animais = ' + xsaldoQtde.ToString)
          else
            begin
              mmaux.Lines.Add('###### Saldo de Animais Negativo = ' + xsaldoQtde.ToString);
              mmAux.Color := clyellow;
            end;

          mmaux.Lines.Add(''); }
          xSaldoQtde := 0;

          if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
            begin
              mmaux.Lines.Add('');
              if xSaldoPrevisto >= 0 then
                mmaux.Lines.Add(' SALDO PREVISTO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoPrevisto.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO PREVISTO DE ANIMAIS NEGATIVO NO PIQUETE = ' +
                                  xSaldoPrevisto.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              if xSaldoRealizado >= 0 then
                mmaux.Lines.Add(' SALDO REALIZADO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoRealizado.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO REALIZADO DE ANIMAIS NEGATIVO NO PIQUETE = ' +
                                  xSaldoRealizado.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              if xSaldoQtdePiquete >= 0 then
                mmaux.Lines.Add(' SALDO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoQtdePiquete.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO DE ANIMAIS NO PIQUETE NEGATIVO = ' +
                                  xSaldoQtdePiquete.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              mmaux.Lines.Add('');
              xSaldoQtdePiquete := 0;
              xsaldoPrevisto := 0;
              xsaldoRealizado := 0;
            end;

        end;

      if qryGeral.FieldByName('entradaSaida').AsInteger = 1 then
        begin
          mmaux.Lines.Add('    ' + xprevistoRealizado + ' - Entrada: ' +
                          qryGeral.FieldByName('qtde').AsString +
                          ' - ' +
                          trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                          ' - '  + trim(qryGeral.FieldByName('nome_area').AsString));

          xSaldoQtde := xSaldoQtde +
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoQtdePiquete := xSaldoQtdePiquete +
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoTotal := xSaldoTotal +
                        qryGeral.FieldByName('qtde').AsInteger;

          if qryGeral.FieldByName('realizado').AsBoolean then
            begin
              xsaldoRealizado := xsaldoRealizado +
                                 qryGeral.FieldByName('qtde').AsInteger;
              xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                      qryGeral.FieldByName('qtde').AsInteger;
            end
          else
            begin
              xsaldoPrevisto := xsaldoPrevisto +
                                qryGeral.FieldByName('qtde').AsInteger;
              xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                     qryGeral.FieldByName('qtde').AsInteger;
            end;

        end

      else
        begin
          mmaux.Lines.Add('    ' + xprevistoRealizado + ' - Sa�da: ' +
                          qryGeral.FieldByName('qtde').AsString +
                          ' - ' +
                          trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                          ' - '  + trim(qryGeral.FieldByName('nome_area').AsString));

          xSaldoQtde := xSaldoQtde -
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoQtdePiquete := xSaldoQtdePiquete -
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoTotal := xSaldoTotal -
                        qryGeral.FieldByName('qtde').AsInteger;

          if qryGeral.FieldByName('realizado').AsBoolean then
            begin
              xsaldoRealizado := xsaldoRealizado -
                                 qryGeral.FieldByName('qtde').AsInteger;
              xsaldoRealizadoTotal := xsaldoRealizadoTotal -
                                      qryGeral.FieldByName('qtde').AsInteger;
            end
          else
            begin
              xsaldoPrevisto := xsaldoPrevisto -
                                qryGeral.FieldByName('qtde').AsInteger;
              xsaldoPrevistoTotal := xsaldoPrevistoTotal -
                                     qryGeral.FieldByName('qtde').AsInteger;
            end;

        end;

      xseq_tipoAnt := qryGeral.FieldByName('seq_tipo').AsInteger;
      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
{      if xsaldoQtde >= 0 then
        mmaux.Lines.Add('       Saldo de Animais = ' + xsaldoQtde.ToString)
      else
        begin
          mmaux.Lines.Add('###### Saldo de Animais Negativo = ' + xsaldoQtde.ToString);
          mmAux.Color := clyellow;
        end; }

      mmaux.Lines.Add('');

      if xSaldoPrevistoTotal >= 0 then
        mmaux.Lines.Add(' SALDO PREVISTO DE ANIMAIS = ' +
                        xSaldoPrevistoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO PREVISTO DE ANIMAIS NEGATIVO = ' +
                          xSaldoPrevistoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoRealizadoTotal >= 0 then
        mmaux.Lines.Add(' SALDO REALIZADO DE ANIMAIS = ' +
                        xSaldoRealizadoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO REALIZADO DE ANIMAIS NEGATIVO = ' +
                          xSaldoRealizadoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoQtdePiquete >= 0 then
        mmaux.Lines.Add(' SALDO DE ANIMAIS NO PIQUETE = ' +
                        xSaldoQtdePiquete.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO DE ANIMAIS NO PIQUETE NEGATIVO = ' +
                          xSaldoQtdePiquete.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoTotal >= 0 then
        mmaux.Lines.Add('       SALDO TOTAL GERAL DE ANIMAIS = ' +
                        xSaldoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO TOTAL GERAL DE ANIMAIS NEGATIVO = ' +
                          xSaldoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('-------------------------------------------------' +
                      '-------------------------------------------------' +
                      '-------------------------------------------------');
      mmaux.Lines.Add('');
    end;

end;

procedure TfrmControlforr.Button4Click(Sender: TObject);
begin

  if qryLinhaTempo.RecordCount > 0 then
  else
    begin
      showmessage('fa�a uma montagem da linha do tempo');
      exit;
    end;

  vValorTotal := 0;

  mmaux.Color := clinfobk;
  mmaux.Font.Color := clblack;

  mmaux.Lines.Clear;
  mmaux.Lines.Add('');
  mmaux.Lines.Add(' RESUMO ATUAL DO CICLO');
  mmaux.Lines.Add('');

  Exibe_mmaux;

end;

procedure TfrmControlforr.Button5Click(Sender: TObject);
begin

  if qryLinhaTempo.RecordCount > 0 then
  else
    begin
      showmessage('fa�a uma montagem da linha do tempo');
      exit;
    end;

  vValorTotal := 0;

  mmaux.Color := clinfobk;
  mmaux.Font.Color := clblack;

  mmaux.Lines.Clear;
  mmaux.Lines.Add('');
  mmaux.Lines.Add(' APURA��O ANAL�TICA DO CICLO');
  mmaux.Lines.Add('');

  AnaliticoAnimais;
  AnaliticoSuplementos;
  AnaliticoEventos;
  //ResumoMedicoes;

  Exibe_mmaux;

end;

procedure TfrmControlforr.Button6Click(Sender: TObject);
begin

  //imgsalva.Picture.Assign(CapturaTela);

  pnNomeArquivoGrafico.top  := trunc((screen.Height - pnNomeArquivoGrafico.Height) / 2);
  pnNomeArquivoGrafico.left := trunc((screen.Width - pnNomeArquivoGrafico.Width) / 2);
  pnNomeArquivoGrafico.BringToFront;
  pnNomeArquivoGrafico.Visible := true;
  ednomeArquivoGrafico.SetFocus;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.Button8Click(Sender: TObject);
begin

  if MessageDlg ('***** ATEN��O - Deseja limpar a tela de gr�ficos'
                , mtWarning,[mbYes, mbNo], 0) = mrNo then
    exit;

  imggr1.Picture.Graphic := nil;
  imggr2.Picture.Graphic := nil;
  imggr3.Picture.Graphic := nil;
  imggr4.Picture.Graphic := nil;
  imggr5.Picture.Graphic := nil;
  imggr6.Picture.Graphic := nil;

  lbg1.Caption := '*****';
  lbg2.Caption := '*****';
  lbg3.Caption := '*****';
  lbg4.Caption := '*****';
  lbg5.Caption := '*****';
  lbg6.Caption := '*****';

end;

procedure TfrmControlforr.AnaliticoEventos;
var xseq_areaAnt, i : integer;
    xPrevistoRealizado : string;
    xsaldoValorPiquete, xsaldoValorTotal, xsaldoPrevisto, xsaldoRealizado,
    xsaldoPrevistoTotal, xsaldoRealizadoTotal : currency;

begin

  mmaux.Lines.Add(' EVENTOS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, e.seq_area, e.data_evento as data, t.descricao_tipo_evento as descricao_tipo,' +
'        t.seq_tipo_evento as seq_tipo, realizado as realizado,' +
'        e.qtde_evento as qtde, e.valor_evento as valor ' +
' from eventos_tb e, areas_tb a, tipo_evento_tb t' +
' where e.seq_empresa = :seq_empresa' +
'   and e.data_evento >= :dti' +
'   and e.data_evento < :dtf' +
'   and e.cancelado <> true' +
'   and (e.qtde_evento > 0 or e.valor_evento > 0)' +
'   and t.seq_tipo_evento = e.seq_tipo_evento' +
'   and a.seq_empresa = e.seq_empresa' +
'   and a.seq_area_geral = e.seq_area_geral' +
'   and a.seq_area = e.seq_area' +
' order by 1, 2, 3, 4, 5, 6';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoValorPiquete := 0;
  xsaldoValorTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin
      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
        begin
          mmaux.Lines.Add(' VALOR PREVISTO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoPrevisto));

          mmaux.Lines.Add(' VALOR REALIZADO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoRealizado));

          mmaux.Lines.Add(' VALOR DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xsaldoValorPiquete));

          mmaux.Lines.Add('');
          mmaux.Lines.Add('');
          xsaldoValorPiquete := 0;
          xsaldoPrevisto := 0;
          xsaldoRealizado := 0;
        end;

      mmaux.Lines.Add(
                      '    ' +
                      qryGeral.FieldByName('data').AsString + ' - ' +
                      xprevistoRealizado + ' - Valor: ' +
                      formatCurr('###,###,##0.00',
                                  qryGeral.FieldByName('valor').AsCurrency) +
                      ' - Qtde: ' +
                      formatCurr('###,###,##0.00',
                                 qryGeral.FieldByName('qtde').AsCurrency) +
                      ' - ' +
                      trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('nome_area').AsString));

      xSaldoValorPiquete := xSaldoValorPiquete +
                            qryGeral.FieldByName('valor').AsCurrency;
      xSaldoValorTotal := xSaldoValorTotal +
                          qryGeral.FieldByName('valor').AsCurrency;
      vValorTotal := vValorTotal +
                     qryGeral.FieldByName('valor').AsCurrency;

      if qryGeral.FieldByName('realizado').AsBoolean then
        begin
          xsaldoRealizado := xsaldoRealizado +
                             qryGeral.FieldByName('valor').AsInteger;
          xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                  qryGeral.FieldByName('valor').AsInteger;
        end
      else
        begin
          xsaldoPrevisto := xsaldoPrevisto +
                            qryGeral.FieldByName('valor').AsInteger;
          xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                 qryGeral.FieldByName('valor').AsInteger;
        end;

      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR PREVISTO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoPrevistoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR REALIZADO DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoRealizadoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR DE EVENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xsaldoValorPiquete));

      mmaux.Lines.Add('');
      mmaux.Lines.Add('       VALOR TOTAL DE EVENTOS INVESTIDOS = ' +
                      formatCurr('###,###,##0.00', xsaldoValorTotal));

    end;

  mmaux.Lines.Add('');
  mmaux.Lines.Add('             VALOR TOTAL INVESTIDO NO CICLO = ' +
                  formatCurr('###,###,##0.00', vValorTotal));

  mmaux.Lines.Add('-------------------------------------------------' +
                  '-------------------------------------------------' +
                  '-------------------------------------------------');
  mmaux.Lines.Add('');

end;

procedure TfrmControlforr.AnaliticoSuplementos;
var xseq_areaAnt, i : integer;
    xPrevistoRealizado : string;

    xsaldoValorPiquete, xsaldoValorTotal, xsaldoPrevisto, xsaldoRealizado,
    xsaldoPrevistoTotal, xsaldoRealizadoTotal : currency;

begin

  mmaux.Lines.Add(' SUPLEMENTOS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, m.seq_area, m.data_movto_suplemento as data, ' +
'        t.descricao_tipo_suplemento as descricao_tipo,' +
'        t.seq_tipo_suplemento as seq_tipo, realizado as realizado,' +
'        m.qtde_suplemento as qtde, m.valor_suplemento_emreais as valor ' +
' from movto_suplementos_tb m, areas_tb a, tipo_suplemento_tb t' +
' where m.seq_empresa = :seq_empresa' +
'   and m.data_movto_suplemento >= :dti' +
'   and m.data_movto_suplemento < :dtf' +
'   and m.cancelado <> true' +
'   and (m.qtde_suplemento > 0 or m.valor_suplemento_emreais > 0)' +
'   and t.seq_tipo_suplemento = m.seq_tipo_suplemento' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +
' order by 1, 2, 3, 4, 5, 6';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoValorPiquete := 0;
  xsaldoValorTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin

      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
        begin
          mmaux.Lines.Add(' VALOR PREVISTO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoPrevisto));

          mmaux.Lines.Add(' VALOR REALIZADO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xSaldoRealizado));

          mmaux.Lines.Add(' VALOR DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                          formatCurr('###,###,##0.00', xsaldoValorPiquete));

          mmaux.Lines.Add('');
          mmaux.Lines.Add('');
          xsaldoValorPiquete := 0;
          xsaldoPrevisto := 0;
          xsaldoRealizado := 0;
        end;

      mmaux.Lines.Add(
                      '    ' +
                      qryGeral.FieldByName('data').AsString + ' - ' +
                      xprevistoRealizado + ' - Valor: ' +
                      formatCurr('###,###,##0.00',
                                  qryGeral.FieldByName('valor').AsCurrency) +
                      ' - Qtde: ' +
                      formatCurr('###,###,##0.00',
                                 qryGeral.FieldByName('qtde').AsCurrency) +
                      ' - ' +
                      trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                      ' - ' +
                      trim(qryGeral.FieldByName('nome_area').AsString));

      xSaldoValorPiquete := xSaldoValorPiquete +
                            qryGeral.FieldByName('valor').AsCurrency;
      xSaldoValorTotal := xSaldoValorTotal +
                          qryGeral.FieldByName('valor').AsCurrency;
      vValorTotal := vValorTotal +
                     qryGeral.FieldByName('valor').AsCurrency;

      if qryGeral.FieldByName('realizado').AsBoolean then
        begin
          xsaldoRealizado := xsaldoRealizado +
                             qryGeral.FieldByName('valor').AsInteger;
          xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                  qryGeral.FieldByName('valor').AsInteger;
        end
      else
        begin
          xsaldoPrevisto := xsaldoPrevisto +
                            qryGeral.FieldByName('valor').AsInteger;
          xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                 qryGeral.FieldByName('valor').AsInteger;
        end;

      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR PREVISTO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoPrevistoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR REALIZADO DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xSaldoRealizadoTotal));

      mmaux.Lines.Add('');
      mmaux.Lines.Add(' VALOR DE SUPLEMENTOS INVESTIDOS NO PIQUETE = ' +
                      formatCurr('###,###,##0.00', xsaldoValorPiquete));

      mmaux.Lines.Add('');
      mmaux.Lines.Add('       VALOR TOTAL DE SUPLEMENTOS INVESTIDOS = ' +
                      formatCurr('###,###,##0.00', xsaldoValorTotal));
    end;

  mmaux.Lines.Add('-------------------------------------------------' +
                  '-------------------------------------------------' +
                  '-------------------------------------------------');
  mmaux.Lines.Add('');

end;

procedure TfrmControlforr.AnaliticoAnimais;
var xseq_tipoAnt, xseq_areaAnt, xSaldoQtde, xSaldoQtdePiquete,
    xsaldoTotal, xsaldoPrevisto, xsaldoRealizado, i, xsaldoPrevistoTotal,
    xsaldoRealizadoTotal : integer;
    xPrevistoRealizado : string;

begin

  mmaux.Lines.Add(' ANIMAIS');
  mmaux.Lines.Add('');

  qryGeral.Close;
  qryGeral.SQL.Text :=
' select a.nome_area, a.seq_area, m.data_movto_animais as data, ' +
'        t.descricao_tipo_animal as descricao_tipo,' +
'        t.seq_tipo_animal as seq_tipo,' +
'        1 as entradaSaida, realizado as realizado,' +
'        m.qtde_animais as qtde ' +
' from movto_animais_tb m, areas_tb a, tipo_animal_tb t' +
' where m.seq_empresa = :seq_empresa' +
'   and m.data_movto_animais >= :dti' +
'   and m.data_movto_animais < :dtf' +
'   and m.entrada = true' +
'   and m.cancelado <> true' +
'   and t.seq_tipo_animal = m.seq_tipo_animal' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +

' union all' +

' select a.nome_area, a.seq_area, m.data_movto_animais as data, ' +
'        t.descricao_tipo_animal as descricao_tipo,' +
'        t.seq_tipo_animal as seq_tipo,' +
'        2 as entradaSaida, realizado as realizado,' +
'        m.qtde_animais as qtde ' +
' from movto_animais_tb m, areas_tb a, tipo_animal_tb t' +
' where m.seq_empresa = :seq_empresa2' +
'   and m.data_movto_animais >= :dti2' +
'   and m.data_movto_animais < :dtf2' +
'   and m.saida = true' +
'   and m.cancelado <> true' +
'   and t.seq_tipo_animal = m.seq_tipo_animal' +
'   and a.seq_empresa = m.seq_empresa' +
'   and a.seq_area_geral = m.seq_area_geral' +
'   and a.seq_area = m.seq_area' +

' order by 1, 2, 3, 4, 5, 6, 7';

  qryGeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[1].AsString := vdataInicioCiclo;
  qryGeral.Params[2].AsString := vdataFimCiclo;

  qryGeral.Params[3].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryGeral.Params[4].AsString := vdataInicioCiclo;
  qryGeral.Params[5].AsString := vdataFimCiclo;

  qryGeral.Open;

  xseq_tipoAnt := qryGeral.FieldByName('seq_tipo').AsInteger;
  xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;
  xSaldoQtde := 0;
  xSaldoQtdePiquete := 0;
  xsaldoTotal := 0;
  xsaldoPrevisto := 0;
  xsaldoRealizado := 0;
  xsaldoPrevistoTotal := 0;
  xsaldoRealizadoTotal := 0;

  for i := 1 to qryGeral.RecordCount do
    begin

      if qryGeral.FieldByName('realizado').AsBoolean then
        xprevistoRealizado := 'Realizado'
      else
        xprevistoRealizado := 'Previsto';

      if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) or
         (xseq_tipoAnt <> qryGeral.FieldByName('seq_tipo').AsInteger) then
        begin

{          if xsaldoQtde >= 0 then
            mmaux.Lines.Add('       Saldo de Animais = ' + xsaldoQtde.ToString)
          else
            begin
              mmaux.Lines.Add('###### Saldo de Animais Negativo = ' + xsaldoQtde.ToString);
              mmAux.Color := clyellow;
            end;

          mmaux.Lines.Add(''); }
          xSaldoQtde := 0;

          if (xseq_areaAnt <> qryGeral.FieldByName('seq_area').AsInteger) then
            begin
              mmaux.Lines.Add('');
              if xSaldoPrevisto >= 0 then
                mmaux.Lines.Add(' SALDO PREVISTO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoPrevisto.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO PREVISTO DE ANIMAIS NEGATIVO NO PIQUETE = ' +
                                  xSaldoPrevisto.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              if xSaldoRealizado >= 0 then
                mmaux.Lines.Add(' SALDO REALIZADO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoRealizado.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO REALIZADO DE ANIMAIS NEGATIVO NO PIQUETE = ' +
                                  xSaldoRealizado.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              if xSaldoQtdePiquete >= 0 then
                mmaux.Lines.Add(' SALDO DE ANIMAIS NO PIQUETE = ' +
                                xSaldoQtdePiquete.ToString)
              else
                begin
                  mmaux.Lines.Add('###### SALDO DE ANIMAIS NO PIQUETE NEGATIVO = ' +
                                  xSaldoQtdePiquete.ToString);
                  mmAux.Color := clyellow;
                end;

              mmaux.Lines.Add('');
              mmaux.Lines.Add('');
              xSaldoQtdePiquete := 0;
              xsaldoPrevisto := 0;
              xsaldoRealizado := 0;
            end;

        end;

      if qryGeral.FieldByName('entradaSaida').AsInteger = 1 then
        begin
          mmaux.Lines.Add('    ' +
                          qryGeral.FieldByName('data').AsString + ' - ' +
                          xprevistoRealizado + ' - Entrada: ' +
                          qryGeral.FieldByName('qtde').AsString +
                          ' - ' +
                          trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                          ' - '  + trim(qryGeral.FieldByName('nome_area').AsString));

          xSaldoQtde := xSaldoQtde +
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoQtdePiquete := xSaldoQtdePiquete +
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoTotal := xSaldoTotal +
                        qryGeral.FieldByName('qtde').AsInteger;

          if qryGeral.FieldByName('realizado').AsBoolean then
            begin
              xsaldoRealizado := xsaldoRealizado +
                                 qryGeral.FieldByName('qtde').AsInteger;
              xsaldoRealizadoTotal := xsaldoRealizadoTotal +
                                      qryGeral.FieldByName('qtde').AsInteger;
            end
          else
            begin
              xsaldoPrevisto := xsaldoPrevisto +
                                qryGeral.FieldByName('qtde').AsInteger;
              xsaldoPrevistoTotal := xsaldoPrevistoTotal +
                                     qryGeral.FieldByName('qtde').AsInteger;
            end;

        end

      else
        begin
          mmaux.Lines.Add('    ' +
                          qryGeral.FieldByName('data').AsString + ' - ' +
                          xprevistoRealizado + ' - Sa�da: ' +
                          qryGeral.FieldByName('qtde').AsString +
                          ' - ' +
                          trim(qryGeral.FieldByName('descricao_tipo').AsString) +
                          ' - '  + trim(qryGeral.FieldByName('nome_area').AsString));

          xSaldoQtde := xSaldoQtde -
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoQtdePiquete := xSaldoQtdePiquete -
                        qryGeral.FieldByName('qtde').AsInteger;
          xSaldoTotal := xSaldoTotal -
                        qryGeral.FieldByName('qtde').AsInteger;

          if qryGeral.FieldByName('realizado').AsBoolean then
            begin
              xsaldoRealizado := xsaldoRealizado -
                                 qryGeral.FieldByName('qtde').AsInteger;
              xsaldoRealizadoTotal := xsaldoRealizadoTotal -
                                      qryGeral.FieldByName('qtde').AsInteger;
            end
          else
            begin
              xsaldoPrevisto := xsaldoPrevisto -
                                qryGeral.FieldByName('qtde').AsInteger;
              xsaldoPrevistoTotal := xsaldoPrevistoTotal -
                                     qryGeral.FieldByName('qtde').AsInteger;
            end;

        end;

      xseq_tipoAnt := qryGeral.FieldByName('seq_tipo').AsInteger;
      xseq_areaAnt := qryGeral.FieldByName('seq_area').AsInteger;

      qryGeral.Next;
    end;

  if qryGeral.RecordCount > 0 then
    begin
{      if xsaldoQtde >= 0 then
        mmaux.Lines.Add('       Saldo de Animais = ' + xsaldoQtde.ToString)
      else
        begin
          mmaux.Lines.Add('###### Saldo de Animais Negativo = ' + xsaldoQtde.ToString);
          mmAux.Color := clyellow;
        end; }

      mmaux.Lines.Add('');

      if xSaldoPrevistoTotal >= 0 then
        mmaux.Lines.Add(' SALDO PREVISTO DE ANIMAIS = ' +
                        xSaldoPrevistoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO PREVISTO DE ANIMAIS NEGATIVO = ' +
                          xSaldoPrevistoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoRealizadoTotal >= 0 then
        mmaux.Lines.Add(' SALDO REALIZADO DE ANIMAIS = ' +
                        xSaldoRealizadoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO REALIZADO DE ANIMAIS NEGATIVO = ' +
                          xSaldoRealizadoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoQtdePiquete >= 0 then
        mmaux.Lines.Add(' SALDO DE ANIMAIS NO PIQUETE = ' +
                        xSaldoQtdePiquete.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO DE ANIMAIS NO PIQUETE NEGATIVO = ' +
                          xSaldoQtdePiquete.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('');

      if xSaldoTotal >= 0 then
        mmaux.Lines.Add('       SALDO TOTAL GERAL DE ANIMAIS = ' +
                        xSaldoTotal.ToString)
      else
        begin
          mmaux.Lines.Add('###### SALDO TOTAL GERAL DE ANIMAIS NEGATIVO = ' +
                          xSaldoTotal.ToString);
          mmAux.Color := clyellow;
        end;

      mmaux.Lines.Add('-------------------------------------------------' +
                      '-------------------------------------------------' +
                      '-------------------------------------------------');
      mmaux.Lines.Add('');
    end;

end;

procedure TfrmControlforr.PesquisaEventos;
var xfiltroData, xorderby : string;

begin

  if mkeDtEvento.Text <> '00/00/0000' then
    xfiltroData := ' and data_evento >= :dt'
  else
  if mkeDtInclusao.Text <> '00/00/0000' then
    xfiltroData := ' and data_inclusao >= :dt'
  else
    begin
      showmessage('informe uma data para pesquisa');
      mkeDtEvento.SetFocus;
      exit;
    end;

  if vsortData then
    if vcresc then
      xorderby := ' order by data_evento asc, seq_evento'
    else
      xorderby := ' order by data_evento desc, seq_evento'
  else
  if vsortInclusao then
    if vcresc then
      xorderby := ' order by data_inclusao asc, seq_evento'
    else
      xorderby := ' order by data_inclusao desc, seq_evento'
  else
  if vsortDescricao then
    if vcresc then
      xorderby := ' order by descricao_evento asc, seq_evento'
    else
      xorderby := ' order by descricao_evento desc, seq_evento'
  else
  if vinativo then
    begin
      xorderby := ' order by data_evento asc, seq_evento';
      xfiltroData := xfiltroData + ' and cancelado = :cancelado ';
    end
  else
  if vrealizado then
    begin
      xorderby := ' order by data_evento asc, seq_evento';
      xfiltroData := xfiltroData + ' and realizado = :realizado ';
    end
  else
    xorderby := ' order by data_evento asc, seq_evento';


  qryEventos.Close;
  qryEventos.SQL.Clear;
  qryEventos.SQL.Text :=

' Select *' +
' from eventos_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_area_geral = :seq_area_geral' +
'   and seq_area = :seq_area' +
xfiltroData +
xorderby;

  qryEventos.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventos.Params[1].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventos.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;

  if mkeDtEvento.Text <> '00/00/0000' then
    qryEventos.Params[3].AsString := mkeDtEvento.Text
  else
    qryEventos.Params[3].AsString := mkeDtInclusao.Text;

  if vinativo then
    if vcresc then
      begin
        qryEventos.Params[4].AsBoolean := true;
      end
    else
      begin
        qryEventos.Params[4].AsBoolean := false;
      end;

  if vrealizado then
    if vcresc then
      begin
        qryEventos.Params[4].AsBoolean := true;
      end
    else
      begin
        qryEventos.Params[4].AsBoolean := false;
      end;

  qryEventos.Open;

end;

procedure TfrmControlforr.cbcastradoClick(Sender: TObject);
begin

  if cbcastrado.Checked then
    begin
      cbfemea.Checked := false;
      cbnormal.Checked := false;
    end;

end;

procedure TfrmControlforr.cbEntradaClick(Sender: TObject);
begin

  if cbEntrada.Checked then
    cbsaida.Checked := false;

end;

procedure TfrmControlforr.cbEventocanceladoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xcancelado : boolean;

begin

  if qryeventos.State = dsinsert then
    exit;

  if qryeventos.FieldByName('seq_tipo_evento').AsInteger =
     qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger then
    begin
      // PROCURA DATA DE INICIO DO CICLO
      vDataInicioCiclo := dataInicioCiclo(
            qryeventos.FieldByName('seq_empresa').AsInteger,
            qryeventos.FieldByName('seq_area_geral').AsInteger,
            qryeventos.FieldByName('seq_area').AsInteger,
            '31/12/3000');
      if (copy(vDataInicioCiclo, 1, 5) <> '!@#$%') and
         (strTOdateTime(vDataInicioCiclo) >
          qryEventos.FieldByName('data_evento').AsDateTime) then
        begin
          showmessage('o ciclo j� est� fechado para esse in�cio de ciclo, ' +
                      ' n�o � permitido ativar/desativar');
          qryeventos.CancelUpdates;
          exit;
        end;
    end
  else
    begin
      // PROCURA DATA DE FIM DO CICLO
      vDataFimCiclo := dataFimCiclo(
            qryeventos.FieldByName('seq_empresa').AsInteger,
            qryeventos.FieldByName('seq_area_geral').AsInteger,
            qryeventos.FieldByName('seq_area').AsInteger,
            qryeventos.FieldByName('data_evento').AsString);
      if vDataFimCiclo <> '31/12/3000' then
        begin
          showmessage('o ciclo j� est� fechado para esse evento, ' +
                      'n�o � permitido ativar/desativar');
          qryeventos.CancelUpdates;
          exit;
        end;
    end;

  if not cbEventoCancelado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja ativar esse evento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryeventos.CancelUpdates;
                      exit;
                    end;
      qryeventos.CancelUpdates;
      qryeventos.Edit;
      cbEventoCancelado.Checked := false;
      qryeventos.FieldByName('cancelado').AsBoolean := false;
      qryeventos.ApplyUpdates;
      qryeventos.CommitUpdates;

      xcancelado := false;
    end
  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja inativar esse evento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryeventos.CancelUpdates;
                      exit;
                    end;
      qryeventos.CancelUpdates;
      qryeventos.Edit;
      cbEventoCancelado.Checked := true;
      qryeventos.FieldByName('cancelado').AsBoolean := true;
      qryeventos.ApplyUpdates;
      qryeventos.CommitUpdates;

      xcancelado := true;
    end;

  if qryeventos.FieldByName('seq_tipo_evento').AsInteger =
     qrypadrao_sistema.
        FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger then
    begin
      qryGeral2.Close;
      qryGeral2.SQL.Text :=
    ' update eventos_tb' +
    ' set cancelado = :cancelado' +
    ' where seq_empresa = :seq_empresa' +
    '   and seq_area_geral = :seq_area_geral' +
    '   and seq_area <> :seq_area' +
    '   and seq_tipo_evento = :seq_tipo_evento' +
    '   and data_evento = :data_evento' +
    '   and data_inclusao = :data_inclusao';

      qryGeral2.Params[0].AsBoolean := xcancelado;
      qryGeral2.Params[1].AsInteger :=
            qryeventos.FieldByName('seq_empresa').AsInteger;
      qryGeral2.Params[2].AsInteger :=
            qryeventos.FieldByName('seq_area_geral').AsInteger;
      qryGeral2.Params[3].AsInteger :=
            qryeventos.FieldByName('seq_area').AsInteger;

      qryGeral2.Params[4].AsInteger :=
            qrypadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger;

      qryGeral2.Params[5].AsString :=
            qryeventos.FieldByName('data_evento').AsString;
      qryGeral2.Params[6].AsString :=
            qryeventos.FieldByName('data_inclusao').AsString;

      qryGeral2.ExecSQL;
    end;

  //showmessage('evento atualizado!');

end;

procedure TfrmControlforr.cbfemeaClick(Sender: TObject);
begin

  if cbfemea.Checked then
    begin
      cbcastrado.Checked := false;
      cbnormal.Checked := false;
    end;

end;

procedure TfrmControlforr.cbMovtoSupCanceladoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if qryMovto_suplementos.State = dsinsert then
    exit;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryMovto_suplementos.FieldByName('seq_empresa').AsInteger,
        qryMovto_suplementos.FieldByName('seq_area_geral').AsInteger,
        qryMovto_suplementos.FieldByName('seq_area').AsInteger,
        qryMovto_suplementos.FieldByName('data_movto_suplemento').AsString);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para esse movimento, ' +
                  'n�o � permitido ativar/desativar');
      qryMovto_suplementos.CancelUpdates;
      exit;
    end;

  if not cbMovtoSupCancelado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja ativar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_suplementos.CancelUpdates;
                      exit;
                    end;
      qryMovto_suplementos.CancelUpdates;
      qryMovto_suplementos.Edit;
      cbMovtoSupCancelado.Checked := false;
      qryMovto_suplementos.FieldByName('cancelado').AsBoolean := false;
      qryMovto_suplementos.ApplyUpdates;
      qryMovto_suplementos.CommitUpdates;
    end
  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja inativar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_suplementos.CancelUpdates;
                      exit;
                    end;
      qryMovto_suplementos.CancelUpdates;
      qryMovto_suplementos.Edit;
      cbMovtoSupCancelado.Checked := true;
      qryMovto_suplementos.FieldByName('cancelado').AsBoolean := true;
      qryMovto_suplementos.ApplyUpdates;
      qryMovto_suplementos.CommitUpdates;
    end;

  //showmessage('movimento atualizado!');

end;

procedure TfrmControlforr.cbnormalClick(Sender: TObject);
begin

  if cbnormal.Checked then
    begin
      cbcastrado.Checked := false;
      cbfemea.Checked := false;
    end;

end;

procedure TfrmControlforr.cbMovtoSupRealizadoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if qryMovto_suplementos.State = dsinsert then
    exit;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryMovto_suplementos.FieldByName('seq_empresa').AsInteger,
        qryMovto_suplementos.FieldByName('seq_area_geral').AsInteger,
        qryMovto_suplementos.FieldByName('seq_area').AsInteger,
        qryMovto_suplementos.FieldByName('data_movto_suplemento').AsString);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para esse movimento, ' +
                  'n�o � permitido ativar/desativar');
      qryMovto_suplementos.CancelUpdates;
      exit;
    end;

  if not cbMovtoSuprealizado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_suplementos.CancelUpdates;
                      exit;
                    end;
      qryMovto_suplementos.CancelUpdates;
      qryMovto_suplementos.Edit;
      cbMovtoSuprealizado.Checked := false;
      qryMovto_suplementos.FieldByName('realizado').AsBoolean := false;
      qryMovto_suplementos.ApplyUpdates;
      qryMovto_suplementos.CommitUpdates;
    end
  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_suplementos.CancelUpdates;
                      exit;
                    end;
      qryMovto_suplementos.CancelUpdates;
      qryMovto_suplementos.Edit;
      cbMovtoSuprealizado.Checked := true;
      qryMovto_suplementos.FieldByName('realizado').AsBoolean := true;
      qryMovto_suplementos.ApplyUpdates;
      qryMovto_suplementos.CommitUpdates;
    end;

  //showmessage('movimento atualizado!');

end;

procedure TfrmControlforr.cbsaidaClick(Sender: TObject);
begin

  if cbsaida.Checked then
    cbentrada.Checked := false;

end;

procedure TfrmControlforr.cbmovtoanicanceladoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  if qryMovto_animais.State = dsinsert then
    exit;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryMovto_animais.FieldByName('seq_empresa').AsInteger,
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger,
        qryMovto_animais.FieldByName('seq_area').AsInteger,
        qryMovto_animais.FieldByName('data_movto_animais').AsString);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para esse movimento, ' +
                  'n�o � permitido ativar/desativar');
      qryMovto_animais.CancelUpdates;
      exit;
    end;

  if cbMovtoaniCancelado.Checked then
    begin

      qryGeral.Close;
      qryGeral.SQL.Text :=

    ' Select *' +
    ' from movto_animais_tb' +
    ' where seq_empresa = :seq_empresa' +
    '   and data_movto_animais >= :dti' +
    '   and seq_movto_animais_origem = :seq_movto_animais' +
    '   and cancelado <> true ';

      qryGeral.Params[0].AsInteger :=
            qryMovto_animais.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsString :=
            qryMovto_Animais.FieldByName('data_movto_animais').AsString;
      qryGeral.Params[2].AsInteger :=
            qryMovto_Animais.FieldByName('seq_movto_animais').AsInteger;

      qryGeral.Open;

      if qryGeral.RecordCount > 0 then
        begin
          qryMovto_animais.CancelUpdates;
          showmessage('existe(m) sa�da(s) e/ou transfer�ncia(s) ativas para essa '+
                      'entrada');
          exit;
        end;

    end;

  if not cbMovtoaniCancelado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja ativar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_animais.CancelUpdates;
                      exit;
                    end;
      qryMovto_animais.CancelUpdates;
      qryMovto_animais.Edit;
      cbMovtoaniCancelado.Checked := false;
      qryMovto_animais.FieldByName('cancelado').AsBoolean := false;
      qryMovto_animais.ApplyUpdates;
      qryMovto_animais.CommitUpdates;
    end
  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja inativar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_animais.CancelUpdates;
                      exit;
                    end;
      qryMovto_animais.CancelUpdates;
      qryMovto_animais.Edit;
      cbMovtoaniCancelado.Checked := true;
      qryMovto_animais.FieldByName('cancelado').AsBoolean := true;
      qryMovto_animais.ApplyUpdates;
      qryMovto_animais.CommitUpdates;
    end;

  //showmessage('movimento atualizado!');

end;

procedure TfrmControlforr.cbmovtoanirealizadoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if qryMovto_animais.State = dsinsert then
    exit;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryMovto_animais.FieldByName('seq_empresa').AsInteger,
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger,
        qryMovto_animais.FieldByName('seq_area').AsInteger,
        qryMovto_animais.FieldByName('data_movto_animais').AsString);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para esse movimento, ' +
                  'n�o � permitido marcar/desmarcar');
      qryMovto_animais.CancelUpdates;
      exit;
    end;

  if cbMovtoanirealizado.Checked then
    begin

      qryGeral.Close;
      qryGeral.SQL.Text :=

    ' Select *' +
    ' from movto_animais_tb' +
    ' where seq_empresa = :seq_empresa' +
    '   and data_movto_animais >= :dti' +
    '   and seq_movto_animais_origem = :seq_movto_animais' +
    '   and realizado <> true ';

      qryGeral.Params[0].AsInteger :=
            qryMovto_animais.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsString :=
            qryMovto_Animais.FieldByName('data_movto_animais').AsString;
      qryGeral.Params[2].AsInteger :=
            qryMovto_Animais.FieldByName('seq_movto_animais').AsInteger;

      qryGeral.Open;

      if qryGeral.RecordCount > 0 then
        begin
          qryMovto_animais.CancelUpdates;
          showmessage('existe(m) sa�da(s) e/ou transfer�ncia(s) ativas para essa '+
                      'entrada');
          exit;
        end;

    end;

  if not cbMovtoanirealizado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_animais.CancelUpdates;
                      exit;
                    end;
      qryMovto_animais.CancelUpdates;
      qryMovto_animais.Edit;
      cbMovtoanirealizado.Checked := false;
      qryMovto_animais.FieldByName('realizado').AsBoolean := false;
      qryMovto_animais.ApplyUpdates;
      qryMovto_animais.CommitUpdates;
    end
  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse movimento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryMovto_animais.CancelUpdates;
                      exit;
                    end;
      qryMovto_animais.CancelUpdates;
      qryMovto_animais.Edit;
      cbMovtoanirealizado.Checked := true;
      qryMovto_animais.FieldByName('realizado').AsBoolean := true;
      qryMovto_animais.ApplyUpdates;
      qryMovto_animais.CommitUpdates;
    end;

  //showmessage('movimento atualizado!');

end;

procedure TfrmControlforr.dbeDiasEstimadoCrescimentoExit(Sender: TObject);
begin

  if MessageDlg ('Altera o valor desse campo?',
                 mtWarning,[mbYes, mbNo], 0) = mrNo then
    begin
      qryPadrao_sistema.CancelUpdates;
      exit;
    end;

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.dbePercLimiteAlturaEntradaExit(Sender: TObject);
begin

  if MessageDlg ('Altera o valor desse campo?',
                 mtWarning,[mbYes, mbNo], 0) = mrNo then
    begin
      qryPadrao_sistema.CancelUpdates;
      exit;
    end;

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.dbePercPerdaAcamamentoExit(Sender: TObject);
begin

  if MessageDlg ('Altera o valor desse campo?',
                 mtWarning,[mbYes, mbNo], 0) = mrNo then
    begin
      qryPadrao_sistema.CancelUpdates;
      exit;
    end;

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.dbePesoLimiteCabecaExit(Sender: TObject);
begin

  if MessageDlg ('Altera o valor desse campo?',
                 mtWarning,[mbYes, mbNo], 0) = mrNo then
    begin
      qryPadrao_sistema.CancelUpdates;
      exit;
    end;

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.dbeqtdeMesesLinhaTempoExit(Sender: TObject);
begin

  if MessageDlg ('Altera o valor desse campo?',
                 mtWarning,[mbYes, mbNo], 0) = mrNo then
    begin
      qryPadrao_sistema.CancelUpdates;
      exit;
    end;

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.dbgEventosCiclosCellClick(Column: TColumn);
begin

  if qryEventosCiclo.RecordCount > 0 then
    begin
      lbDescricaoEvento.Caption :=
        qryEventosCiclo.FieldByName('descricao_evento').AsString;
    end;

end;

procedure TfrmControlforr.dbgEventosTitleClick(Column: TColumn);
begin

  if vcresc then
    vcresc := false
  else
    vcresc := true;

  vsortData := false;
  vsortInclusao := false;
  vsortDescricao := false;
  vinativo := false;
  vrealizado := false;

  if column.FieldName = 'data_evento' then
    begin
      vsortData := true;
      PesquisaEventos;
      exit;
    end;

  if column.FieldName = 'data_inclusao' then
    begin
      vsortInclusao := true;
      PesquisaEventos;
      exit;
    end;

  if column.FieldName = 'descricao_evento' then
    begin
      vsortDescricao := true;
      PesquisaEventos;
      exit;
    end;

  if column.FieldName = 'cancelado' then
    begin
      vinativo := true;
      PesquisaEventos;
      exit;
    end;

  if column.FieldName = 'realizado' then
    begin
      vrealizado := true;
      PesquisaEventos;
      exit;
    end;

end;

procedure TfrmControlforr.dbgPiquetesCellClick(Column: TColumn);
begin

  xSelectedIndex := dbgpiquetes.SelectedIndex;
  MoveNomes;

  PesquisaEventos;
  pesquisaMovtoSuplemento;
  pesquisaMovtoAnimais;
  LeEventosCiclo;

end;

procedure TfrmControlforr.dbgPiquetes_transfereCellClick(Column: TColumn);
begin

  lbpiquete_transfere.Caption := qrypiquetes.FieldByName('nome_area').AsString;

end;

procedure TfrmControlforr.dbgTipo_animal_transfereCellClick(Column: TColumn);
begin

  lbtipo_animal_transfere.Caption :=
    qrytipo_animal.FieldByName('descricao_tipo_animal').AsString;

  edpeso_vivo_emkg.Text :=
      qryTipo_Animal.FieldByName('peso_vivo_emkg').AsString;
  edperc_consumo_mspvdia.Text :=
      qryTipo_Animal.FieldByName('perc_consumo_mspvdia').AsString;
  edganho_depeso_diakg.Text :=
      qryTipo_Animal.FieldByName('ganho_depeso_diakg').AsString;

end;

procedure TfrmControlforr.dblTipoAnimalClick(Sender: TObject);
begin

  if qryMovto_animais.State = dsinsert then
    begin
      if qryTipo_Animalcb.FieldByName('id_raca').AsInteger > 0 then
        begin
          qryMovto_Animais.FieldByName('peso_vivo_emkg').AsCurrency :=
              qryTipo_Animalcb.FieldByName('peso_vivo_emkg').AsCurrency;
          qryMovto_Animais.FieldByName('perc_consumo_mspvdia').AsCurrency := 0;
          qryMovto_Animais.FieldByName('ganho_depeso_diakg').AsCurrency := 0;
        end
      else
        begin
          qryMovto_Animais.FieldByName('peso_vivo_emkg').AsCurrency :=
              qryTipo_Animalcb.FieldByName('peso_vivo_emkg').AsCurrency;
          qryMovto_Animais.FieldByName('perc_consumo_mspvdia').AsCurrency :=
              qryTipo_Animalcb.FieldByName('perc_consumo_mspvdia').AsCurrency;
          qryMovto_Animais.FieldByName('ganho_depeso_diakg').AsCurrency :=
              qryTipo_Animalcb.FieldByName('ganho_depeso_diakg').AsCurrency;
        end;
    end;

end;

procedure TfrmControlforr.DBNavigator10Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricaoTS.SetFocus;

end;

procedure TfrmControlforr.DBNavigator8Click(Sender: TObject; Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricao.SetFocus;

end;

procedure TfrmControlforr.DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
begin

  if button = nbInsert then
    dbeDescricaoTA.SetFocus;

end;

procedure TfrmControlforr.dcbentradaClick(Sender: TObject);
begin

  if dcbEntrada.Checked then
    dcbsaida.Checked := false;

end;

procedure TfrmControlforr.dcbsaidaClick(Sender: TObject);
begin

  if dcbsaida.Checked then
    dcbentrada.Checked := false;

end;

procedure TfrmControlforr.edNomeArquivoGraficoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var xdata : string;
begin

  xdata := formatDateTime('dd_mm_yyyy hh_mm_ss', now) +  ' ';

  if key = 13 then
    begin
      if length(ednomeArquivoGrafico.Text) = 0 then
        begin
          showmessage('informe o nome do arquivo para salvar o gr�fico');
          ednomeArquivoGrafico.SetFocus;
          exit;
        end;

      if pcCrescimento.TabIndex = 0 then
        imgSalva.Picture := imgCrescimentoConsumo.Picture
      else
      if pcCrescimento.TabIndex = 1 then
        imgSalva.Picture := imgSaldoForragem.Picture
      else
        imgSalva.Picture := imgConsumoPeso.Picture;

      imgsalva.Picture.SaveToFile(
                vdiretorioGraficos +
                //xdata +
                trim(ednomeArquivoGrafico.Text + '.bmp'));
      pnNomeArquivoGrafico.Visible := false;

      if lbg1.Caption = '*****' then
        begin
          lbg1.Caption := ednomeArquivoGrafico.Text;
          imggr1.Picture := imgsalva.Picture;
          exit;
        end;

      if lbg2.Caption = '*****' then
        begin
          lbg2.Caption := ednomeArquivoGrafico.Text;
          imggr2.Picture := imgsalva.Picture;
          exit;
        end;

      if lbg3.Caption = '*****' then
        begin
          lbg3.Caption := ednomeArquivoGrafico.Text;
          imggr3.Picture := imgsalva.Picture;
          exit;
        end;

      if lbg4.Caption = '*****' then
        begin
          lbg4.Caption := ednomeArquivoGrafico.Text;
          imggr4.Picture := imgsalva.Picture;
          exit;
        end;

      if lbg5.Caption = '*****' then
        begin
          lbg5.Caption := ednomeArquivoGrafico.Text;
          imggr5.Picture := imgsalva.Picture;
          exit;
        end;

      if lbg6.Caption = '*****' then
        begin
          lbg6.Caption := ednomeArquivoGrafico.Text;
          imggr6.Picture := imgsalva.Picture;
          exit;
        end;

    end;

end;

procedure TfrmControlforr.dbgMovtoAnimaisTitleClick(Column: TColumn);
begin

  if vcresc then
    vcresc := false
  else
    vcresc := true;

  vsortDescricao := false;
  vsortInclusao := false;
  vsortData := false;
  vinativo := false;
  vrealizado := false;
  ventrada := false;
  vsaida := false;
  vfemea := false;
  vcastrado := false;
  vnormal := false;

  if column.FieldName = 'entrada' then
    begin
      ventrada := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'saida' then
    begin
      vsaida := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'data_movto_animais' then
    begin
      vsortData := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'data_inclusao' then
    begin
      vsortInclusao := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'descricao_movto_animais' then
    begin
      vsortDescricao := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'cancelado' then
    begin
      vinativo := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'realizado' then
    begin
      vrealizado := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'femea' then
    begin
      vfemea := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'castrado' then
    begin
      vcastrado := true;
      pesquisaMovtoAnimais;
      exit;
    end;

  if column.FieldName = 'normal' then
    begin
      vnormal := true;
      pesquisaMovtoAnimais;
      exit;
    end;

end;

procedure TfrmControlforr.dbgMovtoSuplementosTitleClick(Column: TColumn);
begin

  if vcresc then
    vcresc := false
  else
    vcresc := true;

  vsortData := false;
  vsortInclusao := false;
  vsortDescricao := false;
  vinativo := false;
  vrealizado := false;

  if column.FieldName = 'data_movto_suplemento' then
    begin
      vsortData := true;
      pesquisaMovtoSuplemento;
      exit;
    end;

  if column.FieldName = 'data_inclusao' then
    begin
      vsortInclusao := true;
      pesquisaMovtoSuplemento;
      exit;
    end;

  if column.FieldName = 'descricao_movto_suplemento' then
    begin
      vsortDescricao := true;
      pesquisaMovtoSuplemento;
      exit;
    end;

  if column.FieldName = 'cancelado' then
    begin
      vinativo := true;
      pesquisaMovtoSuplemento;
      exit;
    end;

  if column.FieldName = 'realizado' then
    begin
      vrealizado := true;
      pesquisaMovtoSuplemento;
      exit;
    end;

end;

procedure TfrmControlforr.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   qryAreas.Close;
   qryEventos.Close;
   qryMovto_animais.Close;
   qryMovto_suplementos.Close;
   qryTipo_animalcb.Close;
   qryTipo_suplementocb.Close;
   qryTipo_eventocb.Close;

   qryAnimaisMonta.Close;
   qryEventosCiclo.close;
   qryEventosMonta.Close;

   qryMedicoesMonta.Close;
   qryTipo_animal.Close;
   qryTipo_suplemento.Close;
   qryTipo_evento.Close;

end;

procedure TfrmControlforr.CarregaTabelaConsumoEmbrapa;
var i : integer;

begin

  vtemerro := true;

  qryConsumo_raca.Close;;
  qryConsumo_raca.Open;

  if qryConsumo_raca.RecordCount = 0 then
    begin
      showmessage('a tabela consumo_raca_tb est� vazia, a linha do tempo n�o funcionar� '+
                  'corretamente!');
      exit;
    end;

  //vqtdeIdx_embrapa[qryConsumo_raca.FieldByName('id_raca').AsInteger, 16] := 1;

  for i := 1 to qryConsumo_raca.RecordCount do
    begin

      vPesoVivo_Embrapa[qryConsumo_raca.FieldByName('id_raca').AsInteger,
                   qryConsumo_raca.FieldByName('seq_raca').AsInteger] :=
                       qryConsumo_raca.FieldByName('peso_animal_kg').AsInteger;

      vqtdeIdx_embrapa[qryConsumo_raca.FieldByName('id_raca').AsInteger,
                qryConsumo_raca.FieldByName('seq_raca').AsInteger] :=
                    (qryConsumo_raca.FieldByName('qtde08idx').AsCurrency +
                     qryConsumo_raca.FieldByName('qtde09idx').AsCurrency)/2;

      vqtdeIdx_embrapa[qryConsumo_raca.FieldByName('id_raca').AsInteger, 16] := 1;

      qryConsumo_raca.Next;

    end;

  vtemerro := false;

end;

procedure TfrmControlforr.CarregaTabelaConsumoSemRaca;
var i : integer;

begin

  vtemerro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
' select *' +
' from tipo_animal_tb' +
' where id_raca is null or id_raca = 0';

  qryGeral2.Open;

  if qryGeral2.RecordCount > 20 then
    begin
      showmessage('tipos de animais cadastrados maior que 20, tente usar at� 20 tipos');
      exit;
    end;

  for i := 1 to qryGeral2.RecordCount do
    begin

      vPeso_Vivo_semRaca[qryGeral2.FieldByName('seq_sem_raca').AsInteger] :=
                         qryGeral2.FieldByName('Peso_Vivo_emkg').AsCurrency;

      vPerc_Consumo_mspvdia_semRaca[qryGeral2.FieldByName('seq_sem_raca').AsInteger] :=
                                    qryGeral2.FieldByName('Perc_Consumo_mspvdia').AsCurrency;

      vGanho_DePeso_diakg_semRaca[qryGeral2.FieldByName('seq_sem_raca').AsInteger] :=
                                  qryGeral2.FieldByName('Ganho_DePeso_diakg').AsCurrency;

      qryGeral2.Next;

    end;

  vtemerro := false;

end;

procedure TfrmControlforr.FormCreate(Sender: TObject);
begin

  vdiretorioGraficos :=
      ExtractFileDir(GetCurrentDir) + '\GraficosLinhaTempo\';

  if not DirectoryExists(vdiretorioGraficos) then
     CreateDir(vdiretorioGraficos);

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' delete from linha_dotempo_tb ';
  qryGeral.ExecSQL;

  lbarea_lt.Caption := 'Piquete';
  lbarea_ltf.Caption := 'Piquete';

  frmControlforr.Height := 532;
  frmControlforr.Width  := 903;
  frmControlforr.WindowState := wsnormal;

  frmControlforr.top  := trunc((screen.Height - frmControlforr.Height) / 2);
  frmControlforr.left := trunc((screen.Width - frmControlforr.Width) / 2);

  frmControlforr.pcControle.TabIndex := 0;

  mkeDtInclusao.Text := '00/00/0000';
  mkeDtEvento.Text := '01' + formatDateTime('/mm/yyyy', now);

  mkeDtInclusaoSup.Text := '00/00/0000';
  mkeDtSuplemento.Text := '01' + formatDateTime('/mm/yyyy', now);

  mkeDtInclusaoAni.Text := '00/00/0000';
  mkeDtAnimais.Text := '01' + formatDateTime('/mm/yyyy', now);

  qryPadrao_sistema.Close;
  qryPadrao_sistema.Open;

  qryAreas.Close;
  qryAreas.Open;

  qrytipo_eventocb.Close;
  qrytipo_eventocb.Open;

  qrytipo_suplementocb.Close;
  qrytipo_suplementocb.Open;

  qrytipo_animalcb.Close;
  qrytipo_animalcb.Open;

  mkeDtCiclo.Text := DataInicioCiclo(
        qryAreas.FieldByName('seq_empresa').AsInteger,
        qryAreas.FieldByName('seq_area_geral').AsInteger,
        qryAreas.FieldByName('seq_area').AsInteger,
        '31/12/3000');

  if (copy(mkeDtCiclo.Text, 1, 5) = '!@#$%') then
    mkeDtCiclo.Text := '01' + formatDateTime('/mm/yyyy', now);

  mkeDtEvento.Text := mkeDtCiclo.Text;
  mkeDtSuplemento.Text := mkeDtCiclo.Text;
  mkeDtAnimais.Text := mkeDtCiclo.Text;

  PesquisaEventos;
  pesquisaMovtoSuplemento;
  pesquisaMovtoAnimais;

  MoveNomes;
  ApagaLinhaTempo;

  dbgPiquetes.Columns[0].Width := 280;
  dbgPiquetes.Columns[1].Width := 280;
  dbgPiquetes.Columns[2].Width := 280;

  dbgPiquetes_transfere.Columns[0].Width := 300;
  dbgTipo_animal_transfere.Columns[0].Width := 300;

  pcControle.TabIndex := 0;
  pcSuperior.TabIndex := 0;
  pcCrescimento.TabIndex := 0;

  vDiaSemana[1] := 'Domingo';
  vDiaSemana[2] := 'Segunda';
  vDiaSemana[3] := 'Ter�a';
  vDiaSemana[4] := 'Quarta';
  vDiaSemana[5] := 'Quinta';
  vDiaSemana[6] := 'Sexta';
  vDiaSemana[7] := 'S�bado';

  vdataInicioCiclo := '';
  vdataFimCiclo := '';
  vseq_movto_animais_posicao := 0;

  imgCrescimentoConsumo.Picture.Graphic := nil;
  imgSaldoForragem.Picture.Graphic := nil;
  imgConsumoPeso.Picture.Graphic := nil;

  lbg1.Caption := '*****';
  lbg2.Caption := '*****';
  lbg3.Caption := '*****';
  lbg4.Caption := '*****';
  lbg5.Caption := '*****';
  lbg6.Caption := '*****';

  Application.HintHidePause := 10000;

end;

procedure TfrmControlforr.btgravaaniClick(Sender: TObject);
var xdataConfere : tdatetime;

begin

  if qryMovto_animais.State <> dsinsert then
    begin
      showmessage('� permitido somente inclus�o de movimentos de animais');
      qryMovto_animais.CancelUpdates;
      exit;
    end;

  if length(dbeDescricao_movto_animais.Text) = 0 then
    begin
      showmessage('informe a descri��o do movimento de animais');
      dbeDescricao_movto_animais.SetFocus;
      abort;
    end;

  if length(dblTipoAnimal.Text) = 0 then
    begin
      showmessage('informe o tipo de animal do movimento');
      exit;
    end;

  if length(dbeQtdeAnimais.Text) = 0 then
    dbeQtdeAnimais.Text := '0';
  if length(dbePesoAnimais.Text) = 0 then
    dbePesoAnimais.Text := '0';
  if length(dbeConsumoAnimais.Text) = 0 then
    dbeConsumoAnimais.Text := '0';
  if length(dbeGanhoDepesoDiakg.Text) = 0 then
    dbeGanhoDepesoDiakg.Text := '0';

  if ( (length(dbeQtdeAnimais.Text) = 0) or (strTocurr(dbeQtdeAnimais.Text) <= 0) ) then
    begin
      showmessage('informe a quantidade de animais do movimento');
      dbeQtdeAnimais.SetFocus;
      exit;
    end;

  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency <= 0 then
  if ( (length(dbePesoAnimais.Text) = 0) or (strTocurr(dbePesoAnimais.Text) <= 0) ) then
    begin
      showmessage('informe o peso vivo por animal em kg');
      dbePesoAnimais.SetFocus;
      exit;
    end;

  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency <= 0 then
  if ( (length(dbeConsumoAnimais.Text) = 0) or (strTocurr(dbeConsumoAnimais.Text) <= 0) ) then
    begin
      showmessage('informe o percentual de consumo por peso vivo, por dia do animal');
      dbeConsumoAnimais.SetFocus;
      exit;
    end;

  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency <= 0 then
  if ( (length(dbeGanhoDepesoDiakg.Text) = 0) or (strTocurr(dbeGanhoDepesoDiakg.Text) <= 0) ) then
    begin
      showmessage('informe o ganho m�dio de peso por dia do animal');
      dbeGanhoDepesoDiakg.SetFocus;
      exit;
    end;

{  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency > 0 then
  if strTocurr(dbePesoAnimais.Text) > 0 then
    begin
      showmessage('peso vivo por animal em kg tem deve ficar zerado para esse tipo de animal');
      dbePesoAnimais.SetFocus;
      exit;
    end; }

  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency > 0 then
  if strTocurr(dbeConsumoAnimais.Text) > 0 then
    begin
      showmessage('percentual de consumo por peso vivo tem de ficar zerado para esse tipo de animal');
      dbeConsumoAnimais.SetFocus;
      exit;
    end;

  if qryTipo_Animalcb.FieldByName('id_raca').AsCurrency > 0 then
  if strTocurr(dbeGanhoDepesoDiakg.Text) > 0 then
    begin
      showmessage('ganho m�dio de peso por dia tem de ficar zerado para esse tipo de animal');
      dbeGanhoDepesoDiakg.SetFocus;
      exit;
    end;

  if (cbsaida.Checked) then
    begin
      showmessage('O movimento de sa�da de animais deve ser feito na Transfer�ncia' +
                  ' de Piquete, bot�o Transf Animais');
      exit;
    end;

  if (not cbentrada.Checked) and
     (not cbsaida.Checked) then
    begin
      showmessage('clique em entrada ou saida para o movimento');
      exit;
    end;

  if (not cbfemea.Checked) and
     (not cbcastrado.Checked) and
     (not cbnormal.Checked) then
    begin
      showmessage('clique em f�mea ou castrado ou normal para o animal');
      exit;
    end;

  try
    xdataConfere := strTOdateTime(dbedataAni.Text);
  except
    showmessage('data inv�lida');
    dbeDataAni.SetFocus;
    exit;
  end;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryAreas.FieldByName('seq_empresa').AsInteger,
        qryAreas.FieldByName('seq_area_geral').AsInteger,
        qryAreas.FieldByName('seq_area').AsInteger,
        dbeDataAni.Text);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para essa data de movimento');
      dbeDataAni.SetFocus;
      exit;
    end;

  qryMovto_animais.FieldByName('seq_empresa').AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryMovto_animais.FieldByName('seq_area_geral').AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryMovto_animais.FieldByName('seq_area').AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryMovto_animais.FieldByName('data_inclusao').AsString := formatDateTime('dd/mm/yyyy', now);
  qryMovto_animais.FieldByName('cancelado').AsBoolean := false;
  qryMovto_animais.FieldByName('realizado').AsBoolean := false;

  if not cbentrada.Checked then
    qryMovto_animais.FieldByName('entrada').AsBoolean := false;
  if not cbsaida.Checked then
    qryMovto_animais.FieldByName('saida').AsBoolean := false;
  if not cbfemea.Checked then
    qryMovto_animais.FieldByName('femea').AsBoolean := false;
  if not cbcastrado.Checked then
    qryMovto_animais.FieldByName('castrado').AsBoolean := false;
  if not cbnormal.Checked then
    qryMovto_animais.FieldByName('normal').AsBoolean := false;

  if strTOcurr(dbePesoAnimais.Text) = 0 then
    qryMovto_animais.FieldByName('peso_vivo_emkg').AsCurrency :=
    qryTipo_animalcb.FieldByName('peso_vivo_emkg').AsCurrency;

  qryMovto_animais.FieldByName('descricao_movto_animais').asstring :=
    trim(dbeDescricao_movto_animais.Text) + ' - ' + trim(dblTipoAnimal.Text);

  try
    qryMovto_animais.ApplyUpdates;
    qryMovto_animais.CommitUpdates;
  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento animais : '+E.Message);
      qryMovto_animais.CancelUpdates;
      abort;
    end;
  end;

  ReadOnlyCamposAnimais;

  btnovoani.Enabled := true;
  btTransfereAnimaisPiquete.Enabled := true;
  btgravaani.Enabled := false;
  btcancelaani.Enabled := false;
  cbMovtoaniCancelado.Enabled := true;
  cbMovtoaniRealizado.Enabled := true;

  pesquisaMovtoAnimais;

  showmessage('Movimento incluido!');

end;

procedure TfrmControlforr.ReadOnlyCamposAnimais;
begin

  dbeDescricao_movto_animais.ReadOnly := true;
  dblTipoAnimal.ReadOnly := true;
  dbeQtdeAnimais.ReadOnly := true;
  //dbePesoAnimais.ReadOnly := true;
  //dbeConsumoAnimais.ReadOnly := true;
  //dbeGanhoDePesoDiakg.ReadOnly := true;
  dbeDataAni.ReadOnly := true;

  cbentrada.ReadOnly := true;
  cbsaida.ReadOnly := true;
  cbfemea.ReadOnly := true;
  cbcastrado.ReadOnly := true;
  cbnormal.ReadOnly := true;

end;

procedure TfrmControlforr.btcancelaAniClick(Sender: TObject);
begin

  qryMovto_animais.CancelUpdates;
  ReadOnlyCamposAnimais;

  btnovoani.Enabled := true;
  btTransfereAnimaisPiquete.Enabled := true;
  btgravaani.Enabled := false;
  btcancelaani.Enabled := false;
  cbMovtoaniCancelado.Enabled := true;
  cbMovtoaniRealizado.Enabled := true;

end;

procedure TfrmControlforr.btCancelaClick(Sender: TObject);
begin

  pnTransfereAnimaisPiquete.Visible := false;

  mkedataEntrada.Text := '00/00/0000';
  lbpiquete_transfere.Caption := '...';
  lbtipo_animal_transfere.Caption := '...';

  edpeso_vivo_emkg.Text := '';
  edperc_consumo_mspvdia.Text := '';
  edganho_depeso_diakg.Text := '';

  pesquisaMovtoAnimais;

end;

procedure TfrmControlforr.GanttFlatButton12Click(Sender: TObject);
begin

  LeEventosCiclo;

end;

procedure TfrmControlforr.LeDadosLinhaTempo;
var xevento, xsuplemento, xanimal, xmedicao, xnada : string;
    xseq_areaT : Integer;

begin

  xevento := '''Evento''';
  xsuplemento := '''Suplemento''';
  xanimal := '''Animal''';
  xmedicao := '''Medi��o''';
  xnada := '''nada''';

  xseq_areat := 0;
  if cbtodosPiquetes.Checked then
    xseq_areat := 99999;

// busca dados union
  qryEventosMonta.Close;
  qryEventosMonta.SQL.Text :=

' select 3 as ordem, e.data_evento as data,' +
'     e.seq_empresa as seq_empresa, e.seq_area_geral as seq_area_geral,' +
'     e.seq_area as seq_area,' +
'     t.seq_tipo_evento as seq_tipo, ' + xevento +
'     as tipo, e.descricao_evento as descricao,' +
'     e.valor_evento as valor, e.qtde_evento as qtde, t.entrada as entrada,' +
'     t.saida as saida, t.descricao_tipo_evento as descricao_tipo,' +
'     a.nome_area as nome_area,' +

'     0 as peso_vivo, 0 as perc_consumo, ' +
'     0 as ganho_depeso_diakg,' +
'     false as femea, false as castrado, ' +
'     false as normal, 0 as id_raca, 0 as seq_raca, 0 as seq_sem_raca, ' +

      xnada + ' as operador, 0 as alt_equi,' +
'     0 as alt_planta, 0 as massa_seca,' +
'     0 as alt_min_pastejo,' +  // altura de sa�da
'     0 as alt_massa_seca, 0 as qtde_dias_usado, ' +
'     t.seq_unidade as seq_unidade, u.sigla_unidade as sigla_unidade, ' +
'     0 as relacao_mskg_sukg, e.realizado as realizado' +

' from eventos_tb e, tipo_evento_tb t, areas_tb a, unidades_tb u' +
' where e.data_evento >= :data_evento' +
'   and e.data_evento < :data_evento_fim' +
'   and e.seq_empresa = :seq_empresa' +
'   and e.seq_area_geral = :seq_area_geral' +
'   and (e.seq_area = :seq_area or :seq_areaTE = 99999)' +
'   and e.seq_tipo_evento <> :seq_tipo_evento' +
'   and e.cancelado <> true' +
'   and t.seq_tipo_evento = e.seq_tipo_evento' +
'   and u.seq_unidade = t.seq_unidade' +
'   and a.seq_empresa = e.seq_empresa' +
'   and a.seq_area_geral = e.seq_area_geral' +
'   and a.seq_area = e.seq_area' +

' union all' +

' select 4 as ordem, e.data_movto_suplemento as data,' +
'     e.seq_empresa as seq_empresa, e.seq_area_geral as seq_area_geral,' +
'     e.seq_area as seq_area,' +
'     t.seq_tipo_suplemento as seq_tipo,  ' + xsuplemento +
'     as tipo, e.descricao_movto_suplemento as descricao,' +
'     e.valor_suplemento_emreais as valor, e.qtde_suplemento as qtde, ' +
'     false as entrada, false as saida, ' +
'     t.descricao_tipo_suplemento as descricao_tipo, ' +
'     a.nome_area as nome_area,' +

'     0 as peso_vivo, 0 as perc_consumo, ' +
'     0 as ganho_depeso_diakg,' +
'     false as femea, false as castrado, ' +
'     false as normal, 0 as id_raca, 0 as seq_raca, 0 as seq_sem_raca, ' +

      xnada + ' as operador, 0 as alt_equi,' +
'     0 as alt_planta, 0 as massa_seca,' +
'     0 as alt_min_pastejo,' +  // altura de sa�da
'     0 as alt_massa_seca, e.qtde_dias_usado as qtde_dias_usado,' +
'     t.seq_unidade as seq_unidade, u.sigla_unidade as sigla_unidade, ' +
'     t.relacao_mskg_sukg as relacao_mskg_sukg, e.realizado as realizado' +

' from movto_suplementos_tb e, tipo_suplemento_tb t, areas_tb a, unidades_tb u' +
' where e.data_movto_suplemento >= :data_movto_suplemento' +
'   and e.data_movto_suplemento < :data_movto_suplemento_fim' +
'   and e.seq_empresa = :seq_empresa2' +
'   and e.seq_area_geral = :seq_area_geral2' +
'   and (e.seq_area = :seq_area2 or :seq_areaTS = 99999)' +
'   and e.cancelado <> true' +
'   and t.seq_tipo_suplemento = e.seq_tipo_suplemento' +
'   and u.seq_unidade = t.seq_unidade' +
'   and a.seq_empresa = e.seq_empresa' +
'   and a.seq_area_geral = e.seq_area_geral' +
'   and a.seq_area = e.seq_area' +

' union all' +

' select 2 as ordem, e.data_movto_animais as data,' +
'     e.seq_empresa as seq_empresa, e.seq_area_geral as seq_area_geral,' +
'     e.seq_area as seq_area,' +
'     t.seq_tipo_animal as seq_tipo,  ' + xanimal +
'     as tipo, e.descricao_movto_animais as descricao,' +
'     0 as valor, e.qtde_animais as qtde, ' +
'     e.entrada as entrada, e.saida as saida, ' +
'     t.descricao_tipo_animal as descricao_tipo, ' +
'     a.nome_area as nome_area,' +

'     e.peso_vivo_emkg as peso_vivo, e.perc_consumo_mspvdia as perc_consumo, ' +
'     e.ganho_depeso_diakg as ganho_depeso_diakg,' +
'     e.femea as femea, e.castrado as castrado, e.normal as normal, t.id_raca as id_raca, ' +
'     t.seq_raca as seq_raca, t.seq_sem_raca as seq_sem_raca,' +

      xnada + ' as operador, 0 as alt_equi,' +
'     0 as alt_planta, 0 as massa_seca,' +
'     0 as alt_min_pastejo,' +  // altura de sa�da
'     0 as alt_massa_seca, 0 as qtde_dias_usado, 0 as seq_unidade, ' +
      xnada + ' as sigla_unidade, 0 as relacao_mskg_sukg, e.realizado as realizado' +

' from movto_animais_tb e, tipo_animal_tb t, areas_tb a' +
' where e.data_movto_animais >= :data_movto_animais' +
'   and e.data_movto_animais < :data_movto_animais_fim' +
'   and e.seq_empresa = :seq_empresa3' +
'   and e.seq_area_geral = :seq_area_geral3' +
'   and (e.seq_area = :seq_area3 or :seq_areaTA = 99999)' +
'   and e.cancelado <> true' +
'   and t.seq_tipo_animal = e.seq_tipo_animal' +
'   and a.seq_empresa = e.seq_empresa' +
'   and a.seq_area_geral = e.seq_area_geral' +
'   and a.seq_area = e.seq_area' +

' order by 1, 2';

  qryEventosMonta.Params[0].AsString :=
      qryEventosCiclo.FieldByName('data_evento').AsString;
  qryEventosMonta.Params[1].AsString := vDataFimCiclo;
  qryEventosMonta.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventosMonta.Params[3].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventosMonta.Params[4].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryEventosMonta.Params[5].AsInteger := xseq_areaT;
  qryEventosMonta.Params[6].AsInteger :=
        qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger;

  qryEventosMonta.Params[7].AsString :=
      qryEventosCiclo.FieldByName('data_evento').AsString;
  qryEventosMonta.Params[8].AsString := vDataFimCiclo;
  qryEventosMonta.Params[9].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventosMonta.Params[10].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventosMonta.Params[11].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryEventosMonta.Params[12].AsInteger := xseq_areaT;

  qryEventosMonta.Params[13].AsString :=
      qryEventosCiclo.FieldByName('data_evento').AsString;
  qryEventosMonta.Params[14].AsString := vDataFimCiclo;
  qryEventosMonta.Params[15].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventosMonta.Params[16].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventosMonta.Params[17].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryEventosMonta.Params[18].AsInteger := xseq_areaT;

  qryEventosMonta.Open;

end;

procedure TfrmControlforr.GanttFlatButton13Click(Sender: TObject);
var xdata_evento_fimx, xevento, xsuplemento, xanimal, xmedicao, xnada : string;
  i, xseq_areaT : Integer;

begin

  if qryEventosCiclo.RecordCount = 0 then
    exit;

  xmedicao := '''Medi��o''';
  xseq_areat := 0;
  if cbtodosPiquetes.Checked then
    xseq_areat := 99999;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryAreas.FieldByName('seq_empresa').AsInteger,
        qryAreas.FieldByName('seq_area_geral').AsInteger,
        qryAreas.FieldByName('seq_area').AsInteger,
        qryEventosCiclo.FieldByName('data_evento').AsString);

  vDataInicioCiclo := qryEventosCiclo.FieldByName('data_evento').AsString;
  vDataFimLinhaTempo := vDataFimCiclo;
  if vDataFimLinhaTempo = '31/12/3000' then
    vDataFimLinhaTempo :=
        formatDateTime('dd/mm/yyyy', incMonth(strTOdate(vDataInicioCiclo),
                       qryPadrao_sistema.FieldByName('qtde_meses_linhatempo').AsInteger
                       ));

  pnProcessa.top  := trunc((screen.Height - pnProcessa.Height) / 2);
  pnProcessa.left := trunc((screen.Width - pnProcessa.Width) / 2);
  pnProcessa.BringToFront;
  pnProcessa.Visible := true;
  frmcontrolforr.Refresh;


  //vhoraAnt := now; //@@@@@


  // CALCULA A M�DIA DA ALTURA DA FORRAGEM E PESQUISA VARI�VEIS NECESS�RIAS
  qryMedicoesMonta.Close;
  qryMedicoesMonta.SQL.Text :=
  '       select' +
  '              a.seq_area, mc.data_medicao as data, ' + xmedicao + ' as tipo, ' +
  '              9 as ordem, ' +
  '              a.seq_empresa as seq_empresa, a.seq_area_geral as seq_area_geral,'+
  '              mc.descricao_medicao as descricao,' +
  '              a.nome_area as nome_area, a.tamanho_area as tamanho_Area,' +
  '     mc.operador_medicao as operador, mc.altura_equipamento as alt_equi,' +
  '     mc.altura_planta as alt_planta, mc.massa_seca as massa_seca,' +
  '     mc.altura_minima_pastejo as alt_min_pastejo,' +  // altura de sa�da
  '     mc.altura_maxima_crescimento as altura_maxima_crescimento,' +  // altura de entrada
  '     mc.altura_massa_seca as alt_massa_seca,' +

  '              m.altura_media_forr_scan as media_planta' +

  '          from medicoes_capa_tb mc,' +
  '               altura_media_scan_tb m,' +
  '               areas_tb a' +

          ' where mc.data_medicao >= :data_medicao' +
          '   and mc.data_medicao <= :data_medicao_fim' +
          '   and mc.seq_empresa = :seq_empresa' +
          '   and mc.seq_area_geral = :seq_area_geral' +

  '           and m.seq_empresa = mc.seq_empresa    ' +
  '           and m.seq_area_geral = mc.seq_area_geral ' +
  '           and m.seq_medicao = mc.seq_medicao ' +
  '           and m.altura_media_forr_scan > 0 ' +
  '           and m.altura_media_forr_scan is not null ' +

          '   and a.seq_empresa = m.seq_empresa' +
          '   and a.seq_area_geral = m.seq_area_geral' +
          '   and a.seq_area = m.seq_area' +

  '       order by 2, 1';


{  '       select' +
  '              a.seq_area, mc.data_medicao as data, ' + xmedicao + ' as tipo, ' +
  '              9 as ordem, ' +
  '              max(a.seq_empresa) as seq_empresa, max(a.seq_area_geral) as seq_area_geral,'+
  '              max(mc.descricao_medicao) as descricao,' +
  '              max(a.nome_area) as nome_area, max(a.tamanho_area) as tamanho_Area,' +
  '     max(mc.operador_medicao) as operador, max(mc.altura_equipamento) as alt_equi,' +
  '     max(mc.altura_planta) as alt_planta, max(mc.massa_seca) as massa_seca,' +
  '     max(mc.altura_minima_pastejo) as alt_min_pastejo,' +
  '     max(mc.altura_maxima_crescimento) as altura_maxima_crescimento,' +
  '     max(mc.altura_massa_seca) as alt_massa_seca,' +

  '              avg(m.altura_ajustada) as media_planta' +

  '          from medicoes_capa_tb mc,' +
  '               medicoes_escaneamentos_tb m, areas_limites_tb al,' +
  '               areas_tb a' +

          ' where mc.data_medicao >= :data_medicao' +
          '   and mc.data_medicao <= :data_medicao_fim' +
          '   and mc.seq_empresa = :seq_empresa' +
          '   and mc.seq_area_geral = :seq_area_geral' +

  '           and m.seq_empresa = mc.seq_empresa    ' +
  '           and m.seq_area_geral = mc.seq_area_geral ' +
  '           and m.seq_medicao = mc.seq_medicao ' +
  '           and m.altura_ajustada > 0 ' +
  '           and m.altura_ajustada is not null ' +

  '           and al.seq_empresa = m.seq_empresa' +
  '           and al.seq_area_geral = m.seq_area_geral' +
          '   and (al.seq_area = :seq_area or :seq_areaTM = 99999)' +
          '   and al.ytop = m.ytop' +
          '   and al.xleft = m.xleft' +

          '   and a.seq_empresa = al.seq_empresa' +
          '   and a.seq_area_geral = al.seq_area_geral' +
          '   and a.seq_area = al.seq_area' +

  '       group by 1, 2, 3, 4' +
  '       order by 2, 1';}


  qryMedicoesMonta.Params[0].AsString :=
      qryEventosCiclo.FieldByName('data_evento').AsString;
  qryMedicoesMonta.Params[1].AsString := vDataFimCiclo;
  qryMedicoesMonta.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryMedicoesMonta.Params[3].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  {qryMedicoesMonta.Params[4].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryMedicoesMonta.Params[5].AsInteger := xseq_areaT;}

  qryMedicoesMonta.Open;


  //showmessage('@@@@@qryMedicoesMonta.Open; ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@


  // VERIFICA SE EXISTE MEDI��O PARA O CICLO
  if qryMedicoesMonta.RecordCount = 0 then
    begin
      pnProcessa.Visible := false;

      showmessage('n�o existe medi��o para esse ciclo, verifique se' +
                  ' foi gerado os pontos x e y para todas as medi��es desse' +
                  ' per�odo, se n�o, gere os pontos na tela (bot�o Gera Pontos Tela)');
      exit;
    end;

  // VERIFICA SE OS PARAMETROS PARA O C�LCULO DE ALTURA E MASSA DA PLANTA FORAM INFORMADOS
  for I := 1 to qryMedicoesMonta.RecordCount do
    begin
      if (qryMedicoesMonta.FieldByName('alt_equi').AsInteger <=0) or
         (qryMedicoesMonta.FieldByName('alt_planta').AsInteger <=0) or
         (qryMedicoesMonta.FieldByName('alt_equi').AsInteger = null) or
         (qryMedicoesMonta.FieldByName('alt_planta').AsInteger = null) then
        begin
          pnProcessa.Visible := false;

          showmessage(
          ' para a �rea: ' +
          qryMedicoesMonta.FieldByName('nome_area').AsString +
          ' - para a medi��o: ' +
          qryMedicoesMonta.FieldByName('descricao').AsString +
          ' - para a data: ' +
          qryMedicoesMonta.FieldByName('data').AsString +
                      ' - est� faltando altura do equipamento ou altura da planta, ' +
                      'v� em scanner/medi��es escaneamentos e gere os ' +
                      'pontos na tela para solucionar esse problema (bot�o Gera Pontos Tela)');
          abort;
        end;

      if (qryMedicoesMonta.FieldByName('massa_seca').AsCurrency <=0) or
         (qryMedicoesMonta.FieldByName('alt_min_pastejo').AsInteger <=0) or
         (qryMedicoesMonta.FieldByName('alt_massa_seca').AsInteger <=0) or
         (qryMedicoesMonta.FieldByName('massa_seca').AsCurrency = null) or
         (qryMedicoesMonta.FieldByName('alt_min_pastejo').AsInteger = null) or
         (qryMedicoesMonta.FieldByName('alt_massa_seca').AsInteger = null) then
        begin
          pnProcessa.Visible := false;

          showmessage(
          ' para a �rea: ' +
          qryMedicoesMonta.FieldByName('nome_area').AsString +
          ' - para a medi��o: ' +
          qryMedicoesMonta.FieldByName('descricao').AsString +
          ' - para a data: ' +
          qryMedicoesMonta.FieldByName('data').AsString +
                      ' - est� faltando peso da massa seca ou altura m�nima ' +
                      'de pastejo ou altura da massa seca, v� em ' +
                      'scanner/medi��es escaneamentos e gere o gr�fico de ' +
                      'resultados para solucionar esse problema (bot�o Resultados)');
          abort;
        end;

      qryMedicoesMonta.Next;
    end;

  //showmessage('@@@@@qryMedicoesMonta.Next; ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  // EXECUTA A MONTAGEM DE DADOS DA LINHA DO TEMPO
  LeDadosLinhaTempo;

  //showmessage('@@@@@LeDadosLinhaTempo; ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  //if qryEventosMonta.RecordCount > 0 then
    begin
      ProcessaDadosLinhaTempo;
      if vTemErro then
        exit;

      lbCiclo.Caption := lbDescricaoEvento.Caption + ' - ' + vdataInicioCiclo +
                         ' a ' + vdataFimCiclo;
      lbCiclo2.Caption := lbCiclo.Caption;
      pnMontaLTempo.visible := false;

      mkeDataInicioMonta.Text := vDataInicioCiclo;
      mkeDataInicioMonta2.Text := vDataInicioCiclo;
      exit;
    end;
  //else
    begin

      lbCiclo.Caption := '.....';
      lbCiclo2.Caption := '.....';
      mkeDataInicioMonta.Text := '';
      mkeDataInicioMonta2.Text := '';
      vDataFimCiclo := '';

      pnProcessa.Visible := false;

      showmessage('n�o foi encontrado nenhuma medi��o ou movimento de evento, '+
                  'suplemento ou animais para esse ciclo');

      exit;
    end;

  for I := 1 to qryEventosMonta.RecordCount do
    begin

      memo1.Lines.Add(qryEventosMonta.FieldByName('ordem').AsString + '-ordem ' +
      qryEventosMonta.FieldByName('seq_tipo').AsString + '-seq_tipo ' +
      qryEventosMonta.FieldByName('tipo').AsString + '-tipo ' +
      qryEventosMonta.FieldByName('data').AsString + '-data ' +
      qryEventosMonta.FieldByName('descricao').AsString + '-descri��o ');

    {
      memo1.Lines.Add(qryEventosMonta.FieldByName('ordem').AsString + '-ordem ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('seq_tipo').AsString + '-seq_tipo ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('tipo').AsString + '-tipo ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('data').AsString + '-data ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('descricao').AsString + '-descri��o ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('valor').AsString + '-valor ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('qtde').AsString + '-qtde ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('entrada').AsString + '-entrada ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('saida').AsString + '-saida ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('descricao_tipo').AsString + '-descricao_tipo ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('peso_vivo').AsString + '-peso_vivo     ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('perc_consumo').AsString + '-perc_consumo     ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('femea').AsString + '-femea ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('castrado').AsString + '-castrado ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('normal').AsString + '-normal ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('id_raca').AsString + '-id_raca ');

      memo1.Lines.Add(qryEventosMonta.FieldByName('operador').AsString + '-operador ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('alt_equi').AsString + '-alt_equi ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('alt_planta').AsString + '-alt_planta ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('massa_seca').AsString + '-massa_seca ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('alt_min_pastejo').AsString + '-alt_min_pastejo ');
      memo1.Lines.Add(qryEventosMonta.FieldByName('alt_massa_seca').AsString + '-alt_massa_seca ');
      memo1.Lines.Add('*****');
    }

      qryEventosMonta.Next;

    end;

  frmControlforr.Refresh;

end;

procedure TfrmControlforr.ProcessaDadosLinhaTempo;
var
  i: Integer;

begin
  vTemErro := true;

  qryGeral.Close;
  qryGeral.SQL.Text :=
  ' delete from linha_dotempo_tb ';
  qryGeral.ExecSQL;

  //showmessage('@@@@@delete from linha_dotempo_tb ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  qryEventosMonta.First;
  vseq_unica := 0;

  for i := 1 to qryEventosMonta.RecordCount do
    begin
      if qryEventosMonta.FieldByName('ordem').AsInteger = 2 then
        begin
        IncluiAnimais;
        end

      else
      if qryEventosMonta.FieldByName('ordem').AsInteger = 3 then
        begin
        IncluiEventos;
        end

      else
      if qryEventosMonta.FieldByName('ordem').AsInteger = 4 then
        begin
        IncluiSuplementos;
        end;

      if vtemErro then
        abort;

      qryEventosMonta.Next;
    end;

  //showmessage('@@@@@IncluiAnimaisEventosSuplementos ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  IncluiMedicoes;
  if vtemErro then
    exit;

  //showmessage('@@@@@IncluiMedicoes ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  ProcessaAnimais;
  if vtemErro then
    exit;

  //showmessage('@@@@@ProcessaAnimais ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  ProcessaForragem;
  if vtemErro then
    exit;

  //showmessage('@@@@@ProcessaForragem ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  ApuraDadosLinhaDoTempo;

  //showmessage('@@@@@ApuraDadosLinhaDoTempo ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  vseq_areaAnt := 0;
  MontaDadosLinhaDoTempo;

  //showmessage('@@@@@MontaDadosLinhaDoTempo ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  ApuraDadosCrescimentoConsumo;

  //showmessage('@@@@@ApuraDadosCrescimentoConsumo ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('n�o foi encontrado nenhum registro para a montagem ' +
                  'da linha do tempo do crescimento e consumo de forragem');
      exit;
    end;

  LimpaVariaveisMontaDadosCrescimentoConsumo;

  //showmessage('@@@@@LimpaVariaveisMontaDadosCrescimentoConsumo ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  vseq_unica := 216;
  PosicionaFirst;

  vrecordcount := 1;
  vlinha_idx := 1;
  MontaDadosCrescimentoConsumo;

  //showmessage('@@@@@MontaDadosCrescimentoConsumo ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  vseq_unica_idx := 1;
  ControlaMontaTelaGraficaCrescimento;

  //showmessage('@@@@@ControlaMontaTelaGraficaCrescimento ' + formatDateTime('hh:mm:ss', vhoraAnt) + ' - ' + formatDateTime('hh:mm:ss', now));
  //vhoraAnt := now; //@@@@@

  pnProcessa.Visible := false;
  frmcontrolforr.Refresh;

  vTemErro := false;

end;

procedure TfrmControlforr.PosicionaFirst;
begin

  qryCrescimentoForragem.First;
  qryForragemMedida.First;
  qryConsumoSuplemento.First;
  qryConsumoPeso.First;
  qryRetiradaEvento.First;
  qryPesagemAnimal.First;

end;

procedure TfrmControlforr.LimpaVariaveisMontaDadosCrescimentoConsumo;
var i : integer;

begin

  for I := 1 to 1100 do
    begin
      vdatax[i] := '';
      varea_m2[i] := 0;
      vforragemMedida_cm[i] := 0;
      vforragemcresce_cm[i] := 0;
      vforragemConsumo_cm[i] := 0;
      vforragemAcamamento_cm[i] := 0;
      vforragemRetirada_cm[i] := 0;
      vforragemSuplemento_cm[i] := 0;
      vforragemAlturaEntrada_cm[i] := 0;
      vforragemAlturaSaida_cm[i] := 0;
      vforragemSaldo_cm[i] := 0;
      vpeso_calculado_cm[i] := 0;
      vpeso_medido_cm[i] := 0;
      vqtde_cabeca[i] := 0;
      //
      vforragemMedida_kg[i] := 0;
      vforragemcresce_kg[i] := 0;
      vforragemConsumo_kg[i] := 0;
      vforragemAcamamento_kg[i] := 0;
      vforragemRetirada_kg[i] := 0;
      vforragemSuplemento_kg[i] := 0;
      vforragemSaldo_kg[i] := 0;
      vpeso_calculado_kg[i] := 0;
      vpeso_medido_kg[i] := 0;
      vpeso_vivo_inicial_total_kg[i] := 0;
      //
      vmedida_forr_ymto[i] := 0;
      vmedida_forr_ylto[i] := 0;
      vcrescimento_forr_ymto[i] := 0;
      vcrescimento_forr_ylto[i] := 0;
      vconsumida_forr_ymto[i] := 0;
      vconsumida_forr_ylto[i] := 0;
      vpeso_animal_ymto[i] := 0;
      vpeso_animal_ylto[i] := 0;
      vpeso_animal_medido_ymto[i] := 0;
      vpeso_animal_medido_ylto[i] := 0;
      vsaldo_forr_ymto[i] := 0;
      vsaldo_forr_ylto[i] := 0;
      vretirada_forr_ymto[i] := 0;
      vretirada_forr_ylto[i] := 0;
      vacamamento_forr_ymto[i] := 0;
      vacamamento_forr_ylto[i] := 0;
      vsuplemento_forr_ymto[i] := 0;
      vsuplemento_forr_ylto[i] := 0;
      //
      vtemNotificacao[i] := false;
    end;

  vMedia_planta_medicao := 0;
  vMassa_seca_medicao := 0;
  vAlt_massa_seca_medicao := 0;

  vSaldo_forragem := 0;
  vSaldo_forragem_saida := 0;
  vSaldo_forragem_entrada := 0;
  vconsumoAnimal := 0;

  vpercCorrige  := 1;
  vpercCorrige2 := 1;
  vpercCorrige3 := 1;

  vidxCorrige := 1;
  vUltimaAlturaMedia := 0;

  vqryPesagemAnimal_eof := false;
  vjatemNotaEntrada := false;
  vjatemNotaSaida := false;
  vjaTemPercLimiteAltEntrada := false;

end;

procedure TfrmControlforr.ControlaMontaTelaGraficaCrescimento;
var i, xlimite, xpartida : integer;
begin

  imgCrescimentoConsumo.Picture.Graphic := nil;
  imgSaldoForragem.Picture.Graphic := nil;
  imgConsumoPeso.Picture.Graphic := nil;

  imgCrescimentoConsumo.Canvas.Pen.Width := 4;
  imgCrescimentoConsumo.Canvas.Pen.Style := psSolid;
  imgSaldoForragem.Canvas.Pen.Width := 4;
  imgSaldoForragem.Canvas.Pen.Style := psSolid;
  imgConsumoPeso.Canvas.Pen.Width := 4;
  imgConsumoPeso.Canvas.Pen.Style := psSolid;

  vposicaox := 0;

  xlimite := vseq_unica + vseq_unica_idx -1;
  if xlimite > 1100 then
    exit;

  xpartida := vseq_unica_idx;
  vseq_unica_idxUltima := 0;

  for i := xpartida to (xlimite) do
    begin

      if vcrescimento_forr_ymto[i] = 0 then
        break;

      vlinha_idx := i;
      MontaTelaGraficaCrescimento;
      vseq_unica_idx := vseq_unica_idx +1;
      vseq_unica_idxUltima := vseq_unica_idxUltima +1;
    end;

end;

procedure TfrmControlforr.MontaTelaGraficaCrescimento;
begin

  vposicaox := vposicaox + 6;

  if formatDateTime('dd/mm/yyyy', strTOdateTime(vdatax[vlinha_idx])) =
     formatDateTime('dd/mm/yyyy', now)then
    begin
      imgCrescimentoConsumo.Canvas.Pen.Width := 8;
      imgSaldoForragem.Canvas.Pen.Width := 8;
      imgConsumoPeso.Canvas.Pen.Width := 8;

      imgCrescimentoConsumo.Canvas.Pen.Color := clGradientInactiveCaption;
      imgCrescimentoConsumo.Canvas.Brush.Color := clGradientInactiveCaption;
      imgSaldoForragem.Canvas.Pen.Color := clGradientInactiveCaption;
      imgSaldoForragem.Canvas.Brush.Color := clGradientInactiveCaption;
      imgConsumoPeso.Canvas.Pen.Color := clGradientInactiveCaption;
      imgConsumoPeso.Canvas.Brush.Color := clGradientInactiveCaption;

      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, 0);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox, 400);
      imgSaldoForragem.Canvas.MoveTo(vposicaox, 0);
      imgSaldoForragem.Canvas.LineTo(vposicaox, 400);
      imgConsumoPeso.Canvas.MoveTo(vposicaox, 0);
      imgConsumoPeso.Canvas.LineTo(vposicaox, 400);

      imgCrescimentoConsumo.Canvas.Pen.Width := 4;
      imgSaldoForragem.Canvas.Pen.Width := 4;
      imgConsumoPeso.Canvas.Pen.Width := 4;
    end;

  if vtemNotificacao[vlinha_idx] then
    begin
      imgCrescimentoConsumo.Canvas.Pen.Color := clsilver;
      imgCrescimentoConsumo.Canvas.Brush.Color := clsilver;
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, 0);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox, 400);

      imgSaldoForragem.Canvas.Pen.Color := clsilver;
      imgSaldoForragem.Canvas.Brush.Color := clsilver;
      imgSaldoForragem.Canvas.MoveTo(vposicaox, 0);
      imgSaldoForragem.Canvas.LineTo(vposicaox, 400);

      imgConsumoPeso.Canvas.Pen.Color := clsilver;
      imgConsumoPeso.Canvas.Brush.Color := clsilver;
      imgConsumoPeso.Canvas.MoveTo(vposicaox, 0);
      imgConsumoPeso.Canvas.LineTo(vposicaox, 400);
    end;

  imgCrescimentoConsumo.Canvas.Pen.Color := cllime;
  imgCrescimentoConsumo.Canvas.Brush.Color := cllime;
  imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vmedida_forr_ymto[vlinha_idx]);
  imgCrescimentoConsumo.Canvas.LineTo(vposicaox,
        trunc((vmedida_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgCrescimentoConsumo.Canvas.Pen.Color := clyellow;
  imgCrescimentoConsumo.Canvas.Brush.Color := clyellow;
  imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vcrescimento_forr_ymto[vlinha_idx]);
  imgCrescimentoConsumo.Canvas.LineTo(vposicaox,
        trunc((vcrescimento_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgConsumoPeso.Canvas.Pen.Color := clred;
  imgConsumoPeso.Canvas.Brush.Color := clred;
  imgConsumoPeso.Canvas.MoveTo(vposicaox, vconsumida_forr_ymto[vlinha_idx]);
  imgConsumoPeso.Canvas.LineTo(vposicaox,
        trunc((vconsumida_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgConsumoPeso.Canvas.Pen.Color := clmaroon;
  imgConsumoPeso.Canvas.Brush.Color := clmaroon;
  imgConsumoPeso.Canvas.MoveTo(vposicaox, vpeso_animal_ymto[vlinha_idx]);
  imgConsumoPeso.Canvas.LineTo(vposicaox,
        trunc((vpeso_animal_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgConsumoPeso.Canvas.Pen.Color := clfuchsia;
  imgConsumoPeso.Canvas.Brush.Color := clfuchsia;
  imgConsumoPeso.Canvas.MoveTo(vposicaox, vpeso_animal_medido_ymto[vlinha_idx]);
  imgConsumoPeso.Canvas.LineTo(vposicaox,
        trunc((vpeso_animal_medido_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgSaldoForragem.Canvas.Pen.Color := clteal;
  imgSaldoForragem.Canvas.Brush.Color := clteal;
  imgSaldoForragem.Canvas.MoveTo(vposicaox, vsaldo_forr_ymto[vlinha_idx]);
  imgSaldoForragem.Canvas.LineTo(vposicaox,
        trunc((vsaldo_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgCrescimentoConsumo.Canvas.Pen.Color := clblack;
  imgCrescimentoConsumo.Canvas.Brush.Color := clblack;
  imgSaldoForragem.Canvas.Pen.Color := clblack;
  imgSaldoForragem.Canvas.Brush.Color := clblack;
  //
  imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vretirada_forr_ymto[vlinha_idx]);
  imgCrescimentoConsumo.Canvas.LineTo(vposicaox,
        trunc((vretirada_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));
  imgSaldoForragem.Canvas.MoveTo(vposicaox, vretirada_forr_ymto[vlinha_idx]);
  imgSaldoForragem.Canvas.LineTo(vposicaox,
        trunc((vretirada_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgCrescimentoConsumo.Canvas.Pen.Color := clred;
  imgCrescimentoConsumo.Canvas.Brush.Color := clred;
  imgSaldoForragem.Canvas.Pen.Color := clred;
  imgSaldoForragem.Canvas.Brush.Color := clred;
  //
  imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vconsumida_forr_ymto[vlinha_idx]);
  imgCrescimentoConsumo.Canvas.LineTo(vposicaox, vconsumida_forr_ylto[vlinha_idx]);
  imgSaldoForragem.Canvas.MoveTo(vposicaox, vconsumida_forr_ymto[vlinha_idx]);
  imgSaldoForragem.Canvas.LineTo(vposicaox,
        trunc((vconsumida_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  imgCrescimentoConsumo.Canvas.Pen.Color := claqua;
  imgCrescimentoConsumo.Canvas.Brush.Color := claqua;
  imgSaldoForragem.Canvas.Pen.Color := claqua;
  imgSaldoForragem.Canvas.Brush.Color := claqua;
  //
  imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vacamamento_forr_ymto[vlinha_idx]);
  imgCrescimentoConsumo.Canvas.LineTo(vposicaox, vacamamento_forr_ylto[vlinha_idx]);
  imgSaldoForragem.Canvas.MoveTo(vposicaox, vacamamento_forr_ymto[vlinha_idx]);
  imgSaldoForragem.Canvas.LineTo(vposicaox,
        trunc((vacamamento_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555}));

  if vsuplemento_forr_ymto[vlinha_idx] > 0 then
    begin
      imgCrescimentoConsumo.Canvas.Pen.Color := clblue;
      imgCrescimentoConsumo.Canvas.Brush.Color := clblue;
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox,
            trunc((vcrescimento_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555})
            -3
            );
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox,
            trunc((vsuplemento_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555})+
            trunc((vcrescimento_forr_ylto[vlinha_idx] * vidxCorrige) {+ 0.5555})
            -3
            );
    end;

end;

procedure TfrmControlforr.mkeDtAnimaisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarAniClick(Sender);

end;

procedure TfrmControlforr.mkedtEventoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarEventoClick(Sender);

end;

procedure TfrmControlforr.mkeDtInclusaoAniChange(Sender: TObject);
begin

  mkedtanimais.Text := '00/00/0000';

end;

procedure TfrmControlforr.mkeDtInclusaoAniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarAniClick(Sender);

end;

procedure TfrmControlforr.mkedtInclusaoChange(Sender: TObject);
begin

  mkeDtEvento.Text := '00/00/0000';

end;

procedure TfrmControlforr.mkedtInclusaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarEventoClick(Sender);

end;

procedure TfrmControlforr.mkedtInclusaosupChange(Sender: TObject);
begin

  mkedtSuplemento.Text := '00/00/0000';

end;

procedure TfrmControlforr.mkedtInclusaosupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarSupClick(Sender);

end;

procedure TfrmControlforr.mkeDtSuplementoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = 13 then
    btPesquisarSupClick(Sender);

end;

procedure TfrmControlforr.mm10Click(Sender: TObject);
begin

  mmaux.Text := mm10.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm11Click(Sender: TObject);
begin

  mmaux.Text := mm11.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm12Click(Sender: TObject);
begin

  mmaux.Text := mm12.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm13Click(Sender: TObject);
begin

  mmaux.Text := mm13.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm14Click(Sender: TObject);
begin

  mmaux.Text := mm1.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm15Click(Sender: TObject);
begin

  mmaux.Text := mm15.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm16Click(Sender: TObject);
begin

  mmaux.Text := mm16.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm17Click(Sender: TObject);
begin

  mmaux.Text := mm17.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm18Click(Sender: TObject);
begin

  mmaux.Text := mm18.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm19Click(Sender: TObject);
begin

  mmaux.Text := mm19.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm1Click(Sender: TObject);
begin

  mmaux.Text := mm1.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm20Click(Sender: TObject);
begin

  mmaux.Text := mm20.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm21Click(Sender: TObject);
begin

  mmaux.Text := mm21.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm22Click(Sender: TObject);
begin

  mmaux.Text := mm22.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm2Click(Sender: TObject);
begin

  mmaux.Text := mm2.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm3Click(Sender: TObject);
begin

  mmaux.Text := mm3.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm4Click(Sender: TObject);
begin

  mmaux.Text := mm4.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm5Click(Sender: TObject);
begin

  mmaux.Text := mm5.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm6Click(Sender: TObject);
begin

  mmaux.Text := mm6.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm7Click(Sender: TObject);
begin

  mmaux.Text := mm7.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm8Click(Sender: TObject);
begin

  mmaux.Text := mm8.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.mm9Click(Sender: TObject);
begin

  mmaux.Text := mm9.Text;
  Exibe_mmaux;

end;

procedure TfrmControlforr.Exibe_mmaux;
begin

  mmaux.Height := 350;
  mmaux.Width := 700;

  mmaux.top  := trunc((frmcontrolforr.Height - mmaux.Height) / 2);
  mmaux.left := trunc((frmcontrolforr.Width - mmaux.Width) / 2);
  mmaux.BringToFront;
  mmaux.Visible := true;

  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.mmAuxClick(Sender: TObject);
begin

  mmaux.Visible := false;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.mminfoClick(Sender: TObject);
begin

  mminfo.Visible := false;

end;

procedure TfrmControlforr.MontaDadosCrescimentoConsumo;
var i : integer;

begin
  lbarea_ltf.Caption := qryCrescimentoForragem.FieldByName('nome_area').AsString;
  vposicaoy0 := trunc( imgCrescimentoConsumo.Height / 2 );
  vposicaoy0 := vposicaoy0 + 50;

  vmassa_seca_medicao_unica := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
  valt_massa_seca_medicao_unica:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
  vsaldo_forragem_crescimento := 0;

  while (vlinha_idx < 1100) and
        (vrecordcount < qryCrescimentoForragem.RecordCount) do
    begin

      ConstroiCrescimentoConsumo;
      qryCrescimentoForragem.Next;
      vrecordcount := vrecordcount + 1;

    end;

end;

procedure TfrmControlforr.ConstroiCrescimentoConsumo;
var i, xposicaoy, xalturaForr, xAlt_massa_seca : integer;
    xalturaCurr, xmassa_secaAlt : currency;

begin

  // processa altura planta medida
  ProcessaPlantaMedida;
  xalturaCurr := vUltimaAlturaMedia;

  xmassa_secaAlt := vmassa_seca_medicao;
  xAlt_massa_seca:= vAlt_massa_seca_medicao;

  //if vMedia_planta_medicao = 0 then
    begin
      xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
      xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
    end;

  vdatax[vlinha_idx] := qryCrescimentoForragem.FieldByName('data').AsString;
  varea_m2[vlinha_idx] := qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
  vforragemMedida_cm[vlinha_idx] := xalturacurr; //trunc(xalturacurr {+ 0.5555});
  vforragemMedida_kg[vlinha_idx] :=
      ((xalturaCurr / xAlt_massa_seca) * xmassa_secaAlt) *
      qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;

  xalturaCurr := (xalturaCurr * vpercCorrige2);
  xalturaforr := trunc(xalturaCurr {+ 0.5555});

{  if vdesenhaForragem then
    begin
      imgCrescimentoConsumo.Canvas.Pen.Color := cllime;
      imgCrescimentoConsumo.Canvas.Brush.Color := cllime;
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vposicaoy0);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox,
                                          vposicaoy0 - xalturaForr);
    end;}
  if vUltimaAlturaMedia = 0 then
    begin
      vmedida_forr_ymto[vlinha_idx] := 0;
      vsaldo_forragem := 0;
      vposicaoy_positiva := vposicaoy0;
    end
  else
    begin
      vmedida_forr_ymto[vlinha_idx] := vposicaoy0;
      vmedida_forr_ylto[vlinha_idx] := vposicaoy0 - xalturaForr;

      vsaldo_forragem := xalturaCurr;
      vposicaoy_positiva := vposicaoy0 - xalturaForr -3;
    end;

  // processa altura planta calculada
{  xalturaCurr := qryCrescimentoForragem.FieldByName('kg_ms_ha_dia_acumulado').AsCurrency /
                 10000; //qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
  xalturaCurr := ((xalturaCurr / xmassa_secaAlt) * xAlt_massa_seca) + 0.5555;}

  vsaldo_forragem_crescimento :=
      vsaldo_forragem_crescimento +
      qryCrescimentoForragem.FieldByName('kg_ms_ha_dia').AsCurrency;

  xalturaCurr := vsaldo_forragem_crescimento / 10000;
  xalturaCurr := ((xalturaCurr / xmassa_secaAlt) * xAlt_massa_seca) {+ 0.5555};

  vforragemcresce_cm[vlinha_idx] := xalturacurr; //trunc(xalturacurr);
  {vforragemcresce_kg[vlinha_idx] :=
      ((qryCrescimentoForragem.FieldByName('kg_ms_ha_dia_acumulado').AsCurrency / 10000)
       * qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency);  }

  vforragemAlturaEntrada_cm[vlinha_idx] :=
       qryCrescimentoForragem.FieldByName('altura_maxima_crescimento').AsInteger;
  vforragemAlturaSaida_cm[vlinha_idx] :=
       qryCrescimentoForragem.FieldByName('alt_min_pastejo').AsInteger;

  vforragemcresce_kg[vlinha_idx] :=
      ((vsaldo_forragem_crescimento / 10000)
       * qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency);

  xalturaCurr := (xalturaCurr * vpercCorrige2);
  vsaldo_forragem := vsaldo_forragem + xalturacurr;

  xalturaforr := trunc(xalturacurr);
  if xalturaForr = 0 then
    begin
      xalturaForr := 1;
      vsaldo_forragem := vsaldo_forragem +1;
    end;

{  if vdesenhaForragem then
    begin
      imgCrescimentoConsumo.Canvas.Pen.Color := clyellow;
      imgCrescimentoConsumo.Canvas.Brush.Color := clyellow;
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vposicaoy_positiva);
      imgCrescimentoConsumo.Canvas.LineTo(
                          vposicaox, vposicaoy_positiva - xalturaforr );
    end;}
  vcrescimento_forr_ymto[vlinha_idx] := vposicaoy_positiva;
  vcrescimento_forr_ylto[vlinha_idx] := vposicaoy_positiva - xalturaforr;

  vposicaoy_positiva := vposicaoy_positiva - xalturaforr -3;

  ProcessaConsumoSuplemento;
  ProcessaConsumoAnimal;
  ProcessaRetiradaForragem;

  ProcessaConsumoPeso;
  ProcessaSaldoForragem;

  vlinha_idx := vlinha_idx + 1;

end;

procedure TfrmControlforr.ProcessaConsumoPeso;
var xmassa_secaAlt, xconsumo_acumulado, xalturaCurr : currency;
    xalturaForr, xAlt_massa_seca, xalturaPeso, xposicaoy0 : integer;

begin

  if qryConsumoPeso.RecordCount = 0 then
    exit;

  xposicaoy0 := vposicaoy0 + 4;

  while not qryConsumoPeso.Eof do
    begin
      if (qryConsumoPeso.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryConsumoPeso.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryConsumoPeso.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryConsumoPeso.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryConsumoPeso.Next;
    end;

  xmassa_secaAlt := vmassa_seca_medicao;
  xAlt_massa_seca:= vAlt_massa_seca_medicao;

//  if vMedia_planta_medicao = 0 then
    begin
      xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
      xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
    end;

  //xmassa_secaAlt:= vmassa_seca_medicao_unica;
  //xAlt_massa_seca := valt_massa_seca_medicao_unica;


  if not qryConsumoPeso.Eof then
    begin
      if (qryConsumoPeso.FieldByName('data').AsDateTime <>
          qryCrescimentoForragem.FieldByName('data').AsDateTime) or
         (qryConsumoPeso.FieldByName('seq_area').asinteger <>
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) then
      else
        begin
          //Exibe consumo calculado
          xconsumo_acumulado := qryConsumoPeso.FieldByName('consumo_acumulado').AsCurrency /
                                qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
          xalturaCurr := ((xconsumo_acumulado / xmassa_secaAlt) * xAlt_massa_seca);

          xalturaForr := trunc( (xalturaCurr{+ 0.5555}) * vpercCorrige3);
          if xalturaForr = 0 then
            xalturaForr := 1;

          imgConsumoPeso.Canvas.Pen.Color := clred;
          imgConsumoPeso.Canvas.Brush.Color := clred;

          {if vdesenhaForragem then
            begin
              imgConsumoPeso.Canvas.MoveTo(vposicaox, xposicaoy0);
              imgConsumoPeso.Canvas.LineTo(vposicaox, xposicaoy0 + xalturaForr);
            end;}
          vconsumida_forr_ymto[vlinha_idx] := xposicaoy0;
          vconsumida_forr_ylto[vlinha_idx] := xposicaoy0 + xalturaForr;

          //Calcula e exibe peso
          xmassa_secaAlt:= vmassa_seca_medicao_unica;
          xAlt_massa_seca := valt_massa_seca_medicao_unica;

          xconsumo_acumulado := qryConsumoPeso.FieldByName('peso_vivo_ganho_acumulado').AsCurrency /
                                qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
          xalturaCurr := ((xconsumo_acumulado / xmassa_secaAlt) * xAlt_massa_seca);

          vpeso_calculado_cm[vlinha_idx] := trunc(xalturaCurr {+ 0.5555});
          vpeso_calculado_kg[vlinha_idx] :=
              qryConsumoPeso.FieldByName('peso_vivo_ganho_acumulado').AsCurrency;
          vqtde_cabeca[vlinha_idx] :=
              qryConsumoPeso.FieldByName('qtde').AsInteger;
          vpeso_vivo_inicial_total_kg[vlinha_idx] :=
              qryConsumoPeso.FieldByName('peso_vivo_inicial_total').AsCurrency;

          xalturaPeso := trunc( (xalturaCurr{+ 0.5555}) * vpercCorrige3 * 5);
          if xalturaPeso = 0 then
            xalturaPeso := 1;

          imgConsumoPeso.Canvas.Pen.Color := clmaroon;
          imgConsumoPeso.Canvas.Brush.Color := clmaroon;

          {if vdesenhaForragem then
            begin
              imgConsumoPeso.Canvas.MoveTo(vposicaox, vposicaoy0);
              imgConsumoPeso.Canvas.LineTo(vposicaox, vposicaoy0 - xalturaPeso);
            end;}
          vpeso_animal_ymto[vlinha_idx] := vposicaoy0;
          vpeso_animal_ylto[vlinha_idx] := vposicaoy0 - xalturaPeso;

        end;
    end;

  //Procura e exibe peso medido
  while not qryPesagemAnimal.Eof do
    begin
      if (qryPesagemAnimal.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryPesagemAnimal.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryPesagemAnimal.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryPesagemAnimal.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryPesagemAnimal.Next;

    end;

  if not qryPesagemAnimal.Eof then
    begin
      if (qryPesagemAnimal.FieldByName('data').AsDateTime <>
          qryCrescimentoForragem.FieldByName('data').AsDateTime) or
         (qryPesagemAnimal.FieldByName('seq_area').asinteger <>
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) then
      else
        begin

          xmassa_secaAlt:= vmassa_seca_medicao_unica;
          xAlt_massa_seca := valt_massa_seca_medicao_unica;

          xconsumo_acumulado :=
              (qryPesagemAnimal.FieldByName('qtde').AsCurrency -
               qryConsumoPeso.FieldByName('peso_vivo_inicial_total').AsCurrency) /
              qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
          xalturaCurr := ((xconsumo_acumulado / xmassa_secaAlt) * xAlt_massa_seca);

          vpeso_medido_cm[vlinha_idx] := trunc(xalturaCurr {+ 0.5555});
          vpeso_medido_kg[vlinha_idx] :=
              (qryPesagemAnimal.FieldByName('qtde').AsCurrency -
               qryConsumoPeso.FieldByName('peso_vivo_inicial_total').AsCurrency);

          xalturaForr := trunc( (xalturaCurr{+ 0.5555}) * vpercCorrige3 * 5);
          if xalturaForr = 0 then
            xalturaForr := 1;

          imgConsumoPeso.Canvas.Pen.Color := clfuchsia;
          imgConsumoPeso.Canvas.Brush.Color := clfuchsia;

          {if vdesenhaForragem then
            begin
              imgConsumoPeso.Canvas.MoveTo(vposicaox, vposicaoy0);
              imgConsumoPeso.Canvas.LineTo(vposicaox, vposicaoy0 - xalturaForr);
            end;}
          vpeso_animal_medido_ymto[vlinha_idx] := vposicaoy0;
          vpeso_animal_medido_ylto[vlinha_idx] := vposicaoy0 - xalturaForr;

        end;
    end;

end;

procedure TfrmControlforr.ProcessaSaldoForragem;
var xsaldo_forragem_inteiro, xAlt_massa_seca : integer;
    xmassa_secaAlt, xalturaCurr, xsaldo_forragem_curr : currency;

begin

  xmassa_secaAlt := vmassa_seca_medicao;
  xAlt_massa_seca:= vAlt_massa_seca_medicao;

  //if vMedia_planta_medicao = 0 then
    begin
      xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
      xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
    end;

  {xsaldo_forragem_curr :=
             vsaldo_forragem +
             vsaldo_forragem_entrada -
             vsaldo_forragem_saida -
             vconsumoAnimal;}

  xsaldo_forragem_curr := (vforragemMedida_cm[vlinha_idx] +
                           vforragemcresce_cm[vlinha_idx] +
                           vforragemSuplemento_cm[vlinha_idx] -
                           vforragemConsumo_cm[vlinha_idx] -
                           vforragemAcamamento_cm[vlinha_idx] -
                           vforragemRetirada_cm[vlinha_idx]);

  xalturaCurr := xsaldo_forragem_curr;

  vforragemSaldo_cm[vlinha_idx] := xsaldo_forragem_curr; //trunc(xsaldo_forragem_curr {+ 0.5555});
  vforragemSaldo_kg[vlinha_idx] :=
      ((xalturaCurr / xAlt_massa_seca) * xmassa_secaAlt ) *
      qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;

  if not vjaTemNotaEntrada then
    begin
      if vforragemSaldo_cm[vlinha_idx] >=
        qryCrescimentoForragem.FieldByName('altura_maxima_crescimento').AsInteger then
        if strTOdateTime(formatDateTime('dd/mm/yyyy', strTOdateTime(vdatax[vlinha_idx])))
           >=
           strTOdateTime(formatDateTime('dd/mm/yyyy', now)) then
          begin
            vjaTemNotaEntrada := true;
            vTemNotificacao[vlinha_idx] := true;
          end;
    end
  else
    begin
      if not vjaTemNotaSaida then
        if vforragemSaldo_cm[vlinha_idx] <=
          qryCrescimentoForragem.FieldByName('alt_min_pastejo').AsInteger then
          if strTOdateTime(formatDateTime('dd/mm/yyyy', strTOdateTime(vdatax[vlinha_idx])))
             >=
             strTOdateTime(formatDateTime('dd/mm/yyyy', now)) then
            begin
              vjaTemNotaSaida := true;
              vTemNotificacao[vlinha_idx] := true;
            end;

      //if not vjaTemPercLimiteAltEntrada then
        if vforragemSaldo_cm[vlinha_idx] >=
            trunc(
            ((qryPadrao_sistema.
                FieldByName('perc_limite_altura_entrada').AsCurrency + 100) *
             qryCrescimentoForragem.
                FieldByName('altura_maxima_crescimento').AsInteger) / 100) then
          begin
            vjaTemPercLimiteAltEntrada := true;
            vTemNotificacao[vlinha_idx] := true;
          end;
    end;

  //vpeso_medido_cm[vlinha_idx] := trunc(xalturaCurr {+ 0.5555});
  //vpeso_medido_kg[vlinha_idx] :=
  //    qryPesagemAnimal.FieldByName('qtde').AsCurrency;

  imgSaldoForragem.Canvas.Pen.Color := clteal;
  imgSaldoForragem.Canvas.Brush.Color := clteal;

  xsaldo_forragem_inteiro :=
      trunc((xsaldo_forragem_curr * vpercCorrige2) {+ 0.5555});
  if xsaldo_forragem_inteiro = 0 then
    xsaldo_forragem_inteiro := 1;

  {if vdesenhaForragem then
    begin
      imgSaldoForragem.Canvas.MoveTo(vposicaox, vposicaoy0);
      imgSaldoForragem.Canvas.LineTo(vposicaox, vposicaoy0 - xsaldo_forragem_inteiro);
    end;}
  vsaldo_forr_ymto[vlinha_idx] := vposicaoy0;
  vsaldo_forr_ylto[vlinha_idx] := vposicaoy0 - xsaldo_forragem_inteiro;

end;

procedure TfrmControlforr.ProcessaRetiradaForragem;
var xloopContinuo : boolean;
    xmassa_secaAlt, xForragemRetirada, xalturaCurr : currency;
    xalturaForr, xAlt_massa_seca : integer;

begin

  if qryRetiradaEvento.RecordCount = 0 then
    exit;

  xloopContinuo := true;

  while xloopContinuo do
    begin
      if qryRetiradaEvento.Eof then
        break;

      if (qryRetiradaEvento.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryRetiradaEvento.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryRetiradaEvento.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryRetiradaEvento.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryRetiradaEvento.Next;
    end;

  if (qryRetiradaEvento.FieldByName('data').AsDateTime <>
      qryCrescimentoForragem.FieldByName('data').AsDateTime) or
     (qryRetiradaEvento.FieldByName('seq_area').asinteger <>
      qryCrescimentoForragem.FieldByName('seq_area').asinteger) then
    exit;

  xmassa_secaAlt := vmassa_seca_medicao;
  xAlt_massa_seca:= vAlt_massa_seca_medicao;

  //if vMedia_planta_medicao = 0 then
    begin
      xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
      xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
    end;

  xForragemRetirada := qryRetiradaEvento.FieldByName('qtde').AsCurrency /
                       qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
  xalturaCurr := ((xForragemRetirada / xmassa_secaAlt) * xAlt_massa_seca);

  vforragemRetirada_cm[vlinha_idx] := xalturaCurr; //trunc(xalturaCurr {+ 0.5555});
  vforragemRetirada_kg[vlinha_idx] :=
        qryRetiradaEvento.FieldByName('qtde').AsCurrency;

  xalturaCurr := (xalturaCurr * vpercCorrige);
  vsaldo_forragem_saida := vsaldo_forragem_saida + xalturaCurr;

  xalturaForr := trunc(xalturaCurr {+ 0.5555});
  if xalturaForr = 0 then
    begin
      xalturaForr := 1;
      vsaldo_forragem_saida := vsaldo_forragem_saida +1;
    end;

  imgCrescimentoConsumo.Canvas.Pen.Color := clblack;
  imgCrescimentoConsumo.Canvas.Brush.Color := clblack;
  imgSaldoForragem.Canvas.Pen.Color := clblack;
  imgSaldoForragem.Canvas.Brush.Color := clblack;

  {if vdesenhaForragem then
    begin
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vposicaoy_negativa);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox, vposicaoy_negativa + xalturaForr);

      imgSaldoForragem.Canvas.MoveTo(vposicaox, vposicaoy_negativa);
      imgSaldoForragem.Canvas.LineTo(vposicaox, vposicaoy_negativa + xalturaForr);
    end;}
  vretirada_forr_ymto[vlinha_idx] := vposicaoy_negativa;
  vretirada_forr_ylto[vlinha_idx] := vposicaoy_negativa + xalturaForr;

  //vposicaoy_negativa := vposicaoy_negativa + xalturaForr +3;

end;

procedure TfrmControlforr.ProcessaConsumoAnimal;
var xloopContinuo : boolean;
    xmassa_secaAlt, xconsumo_acumulado, xalturaCurr : currency;
    xalturaForr, xAlt_massa_seca, xposicaoy0 : integer;

begin

  if qryConsumoPeso.RecordCount = 0 then
    exit;

  vConsumoAnimal := 0;
  xloopContinuo := true;
  xposicaoy0 := vposicaoy0 + 4;

  while xloopContinuo do
    begin
      if qryConsumoPeso.Eof then
        break;

      if (qryConsumoPeso.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryConsumoPeso.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryConsumoPeso.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryConsumoPeso.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryConsumoPeso.Next;
    end;

  if (qryConsumoPeso.FieldByName('data').AsDateTime <>
      qryCrescimentoForragem.FieldByName('data').AsDateTime) or
     (qryConsumoPeso.FieldByName('seq_area').asinteger <>
      qryCrescimentoForragem.FieldByName('seq_area').asinteger) then
    exit;

  xmassa_secaAlt := vmassa_seca_medicao;
  xAlt_massa_seca:= vAlt_massa_seca_medicao;

//  if vMedia_planta_medicao = 0 then
    begin
      xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
      xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
    end;

  //xmassa_secaAlt:= vmassa_seca_medicao_unica;
  //xAlt_massa_seca := valt_massa_seca_medicao_unica;

  xconsumo_acumulado := qryConsumoPeso.FieldByName('consumo_acumulado').AsCurrency /
                        qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;
  xalturaCurr := ((xconsumo_acumulado / xmassa_secaAlt) * xAlt_massa_seca);

  vforragemConsumo_cm[vlinha_idx] := xalturaCurr; //trunc(xalturaCurr {+ 0.5555});
  {vforragemConsumo_kg[vlinha_idx] :=
      (qryConsumoPeso.FieldByName('consumo_acumulado').AsCurrency / 10000) *
       qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;}

  vforragemConsumo_kg[vlinha_idx] :=
      qryConsumoPeso.FieldByName('consumo_acumulado').AsCurrency;

  xalturaCurr := (xalturaCurr * vpercCorrige);
  vConsumoAnimal := xalturaCurr;

  xalturaForr := trunc(xalturaCurr {+ 0.5555});

  if xalturaForr = 0 then
    begin
      xalturaForr := 1;
      vConsumoAnimal := vConsumoAnimal +1;
    end;

  imgCrescimentoConsumo.Canvas.Pen.Color := clred;
  imgCrescimentoConsumo.Canvas.Brush.Color := clred;
  imgSaldoForragem.Canvas.Pen.Color := clred;
  imgSaldoForragem.Canvas.Brush.Color := clred;

  {if vdesenhaForragem then
    begin
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, xposicaoy0);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox, xposicaoy0 + xalturaForr);

      imgSaldoForragem.Canvas.MoveTo(vposicaox, xposicaoy0);
      imgSaldoForragem.Canvas.LineTo(vposicaox, xposicaoy0 + xalturaForr);
    end;}
  vconsumida_forr_ymto[vlinha_idx] := xposicaoy0;
  vconsumida_forr_ylto[vlinha_idx] := xposicaoy0 + xalturaForr;

  vposicaoy_negativa := xposicaoy0 + xalturaForr +3;

  xalturaCurr :=
    (xalturaCurr *
    (qrypadrao_sistema.FieldByName('perc_perda_acamamento').AsCurrency / 100));

  vforragemAcamamento_cm[vlinha_idx] := xalturaCurr; //trunc(xalturaCurr {+ 0.5555});
  vforragemAcamamento_kg[vlinha_idx] :=
    qryConsumoPeso.FieldByName('consumo_acumulado').AsCurrency *
    (qrypadrao_sistema.FieldByName('perc_perda_acamamento').AsCurrency / 100);

  xalturaCurr := (xalturaCurr * vpercCorrige);
  vConsumoAnimal := vConsumoAnimal + xalturaCurr;

  xalturaForr := trunc(xalturaCurr {+ 0.5555});
  if xalturaForr = 0 then
    begin
      xalturaForr := 1;
      vConsumoAnimal := vConsumoAnimal +1;
    end;

  imgCrescimentoConsumo.Canvas.Pen.Color := claqua;
  imgCrescimentoConsumo.Canvas.Brush.Color := claqua;
  imgSaldoForragem.Canvas.Pen.Color := claqua;
  imgSaldoForragem.Canvas.Brush.Color := claqua;

  {if vdesenhaForragem then
    begin
      imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vposicaoy_negativa);
      imgCrescimentoConsumo.Canvas.LineTo(vposicaox, vposicaoy_negativa + xalturaForr);

      imgSaldoForragem.Canvas.MoveTo(vposicaox, vposicaoy_negativa);
      imgSaldoForragem.Canvas.LineTo(vposicaox, vposicaoy_negativa + xalturaForr);
    end;}
  vacamamento_forr_ymto[vlinha_idx] := vposicaoy_negativa;
  vacamamento_forr_ylto[vlinha_idx] := vposicaoy_negativa + xalturaForr;

  vposicaoy_negativa := vposicaoy_negativa + xalturaForr +3;

end;

procedure TfrmControlforr.ProcessaConsumoSuplemento;
var xloopContinuo : boolean;
    xqtde_parcela, xmassa_secakg, xmassa_secaAlt, xalturaCurr : currency;
    xdias, i, xAlt_massa_seca, xalturaForr : integer;
begin

  if qryConsumoSuplemento.RecordCount = 0 then
    exit;

  xloopContinuo := true;

  while xloopContinuo do
    begin
      if qryConsumoSuplemento.Eof then
        break;

      if (qryConsumoSuplemento.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryConsumoSuplemento.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryConsumoSuplemento.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryConsumoSuplemento.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryConsumoSuplemento.Next;
    end;

  if (qryConsumoSuplemento.FieldByName('data').AsDateTime <>
      qryCrescimentoForragem.FieldByName('data').AsDateTime) or
     (qryConsumoSuplemento.FieldByName('seq_area').asinteger <>
      qryCrescimentoForragem.FieldByName('seq_area').asinteger) then

  else
    begin
      xmassa_secaAlt := vmassa_seca_medicao;
      xAlt_massa_seca:= vAlt_massa_seca_medicao;

//      if vMedia_planta_medicao = 0 then
        begin
          xmassa_secaAlt := qryCrescimentoForragem.FieldByName('massa_seca').AsCurrency;
          xAlt_massa_seca:= qryCrescimentoForragem.FieldByName('alt_massa_seca').asinteger;
        end;

      //xmassa_secaAlt:= vmassa_seca_medicao_unica;
      //xAlt_massa_seca := valt_massa_seca_medicao_unica;

      xdias := qryConsumoSuplemento.FieldByName('qtde_dias_usado').asinteger;
      xqtde_parcela :=
         qryConsumoSuplemento.FieldByName('qtde').AsCurrency / xdias;

      for I := vlinha_idx to (xdias + vlinha_idx -1) do
        begin
          if i > 1100 then
            break;

          xmassa_secakg :=
            (xqtde_parcela /
             qryConsumoSuplemento.FieldByName('relacao_mskg_sukg').AsCurrency ) /
            qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency;

          xalturaCurr := ((xmassa_secakg / xmassa_secaAlt) * xAlt_massa_seca);
          vforragemSuplemento_cm[i] :=
                  vforragemSuplemento_cm[i] +
                  xalturaCurr; //trunc(xalturaCurr {+ 0.5555});

          vforragemSuplemento_kg[i] :=
              xqtde_parcela /
              qryConsumoSuplemento.FieldByName('relacao_mskg_sukg').AsCurrency;
           {   ((xalturaCurr / xAlt_massa_seca) * xmassa_secaAlt ) *
              qryCrescimentoForragem.FieldByName('tamanho_area').AsCurrency; }

          xalturaCurr := (xalturaCurr * vpercCorrige);
          vsaldo_forragem_entrada := vsaldo_forragem_entrada + xalturaCurr;

          xalturaForr := trunc(xalturaCurr {+ 0.5555});
          if xalturaForr = 0 then
            begin
              xalturaForr := 1;
              vsaldo_forragem_entrada := vsaldo_forragem_entrada +1;
            end;

          imgCrescimentoConsumo.Canvas.Pen.Color := clblue;
          imgCrescimentoConsumo.Canvas.Brush.Color := clblue;

          {if vdesenhaForragem then
            begin
              imgCrescimentoConsumo.Canvas.MoveTo(vposicaox, vposicaoy_positiva);
              imgCrescimentoConsumo.Canvas.LineTo(vposicaox, vposicaoy_positiva - xalturaForr);
            end;}
          vsuplemento_forr_ymto[i] := vposicaoy_positiva;
          vsuplemento_forr_ylto[i] :=
                        vsuplemento_forr_ylto[i] - xalturaForr;

          //vposicaoy_positiva := vposicaoy_positiva - xalturaForr -3;

        end;
    end;

end;

procedure TfrmControlforr.ProcessaPlantaMedida;
var xloopContinuo : boolean;
    xalturaCurr : currency;
    xalturaForr : integer;

begin

  if qryForragemMedida.RecordCount = 0 then
    exit;

  xloopContinuo := true;

  while xloopContinuo do
    begin
      if qryForragemMedida.Eof then
        break;

      if (qryForragemMedida.FieldByName('seq_area').asinteger =
          qryCrescimentoForragem.FieldByName('seq_area').asinteger) and
         (qryForragemMedida.FieldByName('data').AsDateTime =
          qryCrescimentoForragem.FieldByName('data').AsDateTime) then
        break;

      if qryForragemMedida.FieldByName('seq_area').asinteger >
         qryCrescimentoForragem.FieldByName('seq_area').asinteger then
        break;

      if qryForragemMedida.FieldByName('data').AsDateTime >
         qryCrescimentoForragem.FieldByName('data').AsDateTime then
        break;

      qryForragemMedida.Next;
    end;

  if (qryForragemMedida.FieldByName('data').AsDateTime <>
      qryCrescimentoForragem.FieldByName('data').AsDateTime) or
     (qryForragemMedida.FieldByName('seq_area').asinteger <>
      qryCrescimentoForragem.FieldByName('seq_area').asinteger) then
    exit;

  vmedia_planta_medicao :=
    qryForragemMedida.FieldByName('media_planta').asinteger;
  vmassa_seca_medicao :=
    qryForragemMedida.FieldByName('massa_seca').AsCurrency;
  vAlt_massa_seca_medicao :=
    qryForragemMedida.FieldByName('alt_massa_seca').asinteger;

  vultimaAlturaMedia := vmedia_planta_medicao;
  xalturaForr := vmedia_planta_medicao;
  vsaldo_forragem_crescimento := 0;

end;

procedure TfrmControlforr.ApuraDadosCrescimentoConsumo;
var i : integer;

begin

  qryCrescimentoForragem.Close;
  qryCrescimentoForragem.SQL.Text :=
' select ' +
    ' data, ' +
    ' seq_unica, ' +
    ' seq_area, ' +
    ' nome_area, ' +
    ' massa_seca, ' +
    ' alt_massa_seca, ' +
    ' kg_ms_ha_dia_acumulado, ' +
    ' kg_ms_ha_dia, ' +
    ' tamanho_area, ' +
    ' altura_maxima_crescimento, ' +
    ' alt_min_pastejo ' +
' from linha_dotempo_tb' +
' where ordem = 99' +
' order by nome_area, seq_area, data';
  qryCrescimentoForragem.Open;

  qryForragemMedida.Close;
  qryForragemMedida.SQL.Text :=
' select ' +
    ' data, ' +
    ' media_planta, ' +
    ' seq_area, ' +
    ' alt_massa_seca, ' +
    ' massa_seca ' +
' from linha_dotempo_tb' +
' where ordem = 9' +
' order by nome_area, seq_area, data';
  qryForragemMedida.Open;

  qryConsumoSuplemento.Close;
  qryConsumoSuplemento.SQL.Text :=
' select ' +
    ' data, ' +
    ' qtde_dias_usado, ' +
    ' seq_area, ' +
    ' qtde, ' +
    ' relacao_mskg_sukg ' +
' from linha_dotempo_tb' +
' where ordem = 4' +
' order by nome_area, seq_area, data';
  qryConsumoSuplemento.Open;

  qryConsumoPeso.Close;
  qryConsumoPeso.SQL.Text :=
' select nome_area, seq_area, data, sum(qtde_animal_atual) as qtde, ' +
'        sum(peso_vivo_ganho_acumulado) as peso_vivo_ganho_acumulado, ' +
'        sum(consumo_acumulado) as consumo_acumulado, ' +
'        sum(peso_vivo_inicial_cabeca * qtde_animal_atual) ' +
'        as peso_vivo_inicial_total ' +
' from linha_dotempo_tb' +
' where ordem in (28, 29)' +
'   and qtde_animal_atual > 0' +
' group by nome_area, seq_area, data' +
' order by nome_area, seq_area, data';

{' select nome_area, seq_area, data, sum(qtde_animal_atual) as qtde,' +
'        sum(peso_vivo_ganho_acumulado * qtde_animal_atual) as peso_vivo_ganho_acumulado, ' +
'        sum(consumo_acumulado * qtde_animal_atual) as consumo_acumulado' +}

  qryConsumoPeso.Open;

  qryRetiradaEvento.Close;
  qryRetiradaEvento.SQL.Text :=
' select nome_area, seq_area, data, sum(qtde) as qtde ' +
' from linha_dotempo_tb' +
' where ordem = 3' +
'   and seq_tipo <> :seq_tipo' +
'   and saida = true ' +
' group by nome_area, seq_area, data' +
' order by nome_area, seq_area, data';
  qryRetiradaEvento.Params[0].AsInteger :=
        qryPadrao_sistema.FieldByName('seq_tipo_evento_pesagem_animal').AsInteger;
  qryRetiradaEvento.Open;

  qryPesagemAnimal.Close;
  qryPesagemAnimal.SQL.Text :=
' select nome_area, seq_area, data, sum(qtde) as qtde ' +
' from linha_dotempo_tb' +
' where ordem = 3' +
'   and seq_tipo = :seq_tipo' +
' group by nome_area, seq_area, data' +
' order by nome_area, seq_area, data';
  qryPesagemAnimal.Params[0].AsInteger :=
        qryPadrao_sistema.FieldByName('seq_tipo_evento_pesagem_animal').AsInteger;
  qryPesagemAnimal.Open;

end;

procedure TfrmControlforr.MontaDadosLinhaDoTempo;
begin

  ApagaLinhaTempo;
  vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
  vsaldoAnimais := 0;

  for vI := 1 to 22 do
    begin
      if qryLinhaTempo.Eof then
        break;

      ConstroiLinhaDoTempo;

      qryLinhaTempo.Next;
    end;

  pnControle.Refresh;

end;

procedure TfrmControlforr.ConstroiLinhaDoTempo;
begin

  if vseq_areaAnt <> qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      vcorDemo := 'azul claro';
      vsaldoAnimais := 0;
    end
  else
    vcorDemo := 'branco';

  lbarea_lt.Caption := qryLinhaTempo.FieldByName('nome_area').AsString;

  case vi of
     1  : monta_mm1;
     2  : monta_mm2;
     3  : monta_mm3;
     4  : monta_mm4;
     5  : monta_mm5;
     6  : monta_mm6;
     7  : monta_mm7;
     8  : monta_mm8;
     9  : monta_mm9;
    10  : monta_mm10;
    11  : monta_mm11;
    12  : monta_mm12;
    13  : monta_mm13;
    14  : monta_mm14;
    15  : monta_mm15;
    16  : monta_mm16;
    17  : monta_mm17;
    18  : monta_mm18;
    19  : monta_mm19;
    20  : monta_mm20;
    21  : monta_mm21;
    22  : monta_mm22;
  end;

  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;
  vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;

end;

procedure TfrmControlforr.cbEventoRealizadoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

begin

  if qryeventos.State = dsinsert then
    exit;

  if qryeventos.FieldByName('seq_tipo_evento').AsInteger =
     qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger then
    begin
      // PROCURA DATA DE INICIO DO CICLO
      vDataInicioCiclo := dataInicioCiclo(
            qryeventos.FieldByName('seq_empresa').AsInteger,
            qryeventos.FieldByName('seq_area_geral').AsInteger,
            qryeventos.FieldByName('seq_area').AsInteger,
            '31/12/3000');
      if (copy(vDataInicioCiclo, 1, 5) <> '!@#$%') and
         (strTOdateTime(vDataInicioCiclo) >
          qryEventos.FieldByName('data_evento').AsDateTime) then
        begin
          showmessage('o ciclo j� est� fechado para esse in�cio de ciclo, ' +
                      ' n�o � permitido marcar/desmarcar');
          qryeventos.CancelUpdates;
          exit;
        end;
    end

  else
    begin
      // PROCURA DATA DE FIM DO CICLO
      vDataFimCiclo := dataFimCiclo(
            qryeventos.FieldByName('seq_empresa').AsInteger,
            qryeventos.FieldByName('seq_area_geral').AsInteger,
            qryeventos.FieldByName('seq_area').AsInteger,
            qryeventos.FieldByName('data_evento').AsString);
      if vDataFimCiclo <> '31/12/3000' then
        begin
          showmessage('o ciclo j� est� fechado para esse evento, ' +
                      'n�o � permitido marcar/desmarcar');
          qryeventos.CancelUpdates;
          exit;
        end;
    end;

  if not cbEventoRealizado.Checked then
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse evento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryeventos.CancelUpdates;
                      exit;
                    end;
      qryeventos.CancelUpdates;
      qryeventos.Edit;
      cbEventoRealizado.Checked := false;
      qryeventos.FieldByName('realizado').AsBoolean := false;
      qryeventos.ApplyUpdates;
      qryeventos.CommitUpdates;

    end

  else
    begin
      if MessageDlg ('***** ATEN��O - Deseja marcar/desmarcar esse evento?'
                    , mtWarning,[mbYes, mbNo], 0) = mrNo then
                    begin
                      qryeventos.CancelUpdates;
                      exit;
                    end;
      qryeventos.CancelUpdates;
      qryeventos.Edit;
      cbEventoRealizado.Checked := true;
      qryeventos.FieldByName('realizado').AsBoolean := true;
      qryeventos.ApplyUpdates;
      qryeventos.CommitUpdates;

    end;

  //showmessage('evento atualizado!');

end;

procedure TfrmControlforr.CompoeMemoLinhaDoTempo;
var i, xnroDiaSemana : integer;
    xdescricaoQtde : string;
    xQtdeParcela, xAlturaCamadaPastejavel, xAlturaMaximaCrescimento : currency;
    xDataParcela : tdatetime;

begin

  mmAux.Clear;
  //mmAux.Lines.Add('');

  xnroDiaSemana := dayofweek(strTOdate(qryLinhaTempo.FieldByName('data').AsString));

  mmAux.Lines.Add(trim(vDiaSemana[xnroDiaSemana]));
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    mmAux.Lines.Add('Realizado')
  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      mmAux.Lines.Add('Realizado')
    else
      mmAux.Lines.Add('Previsto');
  //mmAux.Lines.Add('');

  mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('nome_area').AsString));
  mmAux.Lines.Add('');

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin

      if qryLinhaTempo.FieldByName('saida').AsBoolean then
        begin
          vsaldoAnimais := vsaldoAnimais -
                           qryLinhaTempo.FieldByName('qtde').AsInteger;

          if vcorDemo = 'branco' then
            vcorDemo := 'cinza';
        end
      else
      if qryLinhaTempo.FieldByName('entrada').AsBoolean then
        vsaldoAnimais := vsaldoAnimais +
                         qryLinhaTempo.FieldByName('qtde').AsInteger;

      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao').AsString));
      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao_tipo').AsString));
      mmAux.Lines.Add('');
      mmAux.Lines.Add(
        'Qtde de animais: ' +
        formatCurr('###,###,##0', qryLinhaTempo.FieldByName('qtde').AsCurrency)
        );
      mmAux.Lines.Add('');

      if qryLinhaTempo.FieldByName('entrada').AsBoolean then
        mmAux.Lines.Add('Entrada no piquete')
      else
        mmAux.Lines.Add('Sa�da do piquete');

      mmAux.Lines.Add('');

      if qryLinhaTempo.FieldByName('femea').AsBoolean then
        mmAux.Lines.Add('Animal f�mea')
      else
      if qryLinhaTempo.FieldByName('castrado').AsBoolean then
        mmAux.Lines.Add('Animal castrado')
      else
      if qryLinhaTempo.FieldByName('normal').AsBoolean then
        mmAux.Lines.Add('Animal normal');

      mmAux.Lines.Add('');

      if qryLinhaTempo.FieldByName('peso_vivo').AsCurrency > 0 then
      begin
        mmAux.Lines.Add(
          'Peso vivo inicial: ' +
          formatCurr('#,##0.00 ', qryLinhaTempo.FieldByName('peso_vivo').AsCurrency) +
          'kg'
          );
        mmAux.Lines.Add('');
      end;

      if qryLinhaTempo.FieldByName('perc_consumo').AsCurrency > 0 then
      begin
        mmAux.Lines.Add(
          'Percentual de consumo sobre o peso vivo: ' +
          formatCurr('##0.00', qryLinhaTempo.FieldByName('perc_consumo').AsCurrency) +
          '%'
          );
        mmAux.Lines.Add('');
      end;

      if vsaldoAnimais = 0 then
        begin
          mmAux.Lines.Add('***** N�o tem mais animais nesse piquete');
          mmAux.Lines.Add(' ');
          vcorDemo := 'rosa';
        end
      else
      if vsaldoAnimais < 0 then
        begin
          mmAux.Lines.Add('***** Saldo de animais negativo = ' +
                          vsaldoAnimais.ToString);
          mmAux.Lines.Add(' ');
          vcorDemo := 'amarelo';
        end;

    end

  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      if qryLinhaTempo.FieldByName('entrada').AsBoolean then
        xdescricaoQtde := 'Qtde utilizada:'
      else
      if qryLinhaTempo.FieldByName('entrada').AsBoolean then
        xdescricaoQtde := 'Qtde retirada:'
      else
        xdescricaoQtde := 'Qtde:';

      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao').AsString));
      mmAux.Lines.Add('');

      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao_tipo').AsString));
      mmAux.Lines.Add('');

      //if qryLinhaTempo.FieldByName('qtde').AsCurrency > 0 then
        begin
          mmAux.Lines.Add(
            trim(xdescricaoQtde) + ' ' +
            formatCurr('###,###,##0.00 ', qryLinhaTempo.FieldByName('qtde').AsCurrency) +
            qryLinhaTempo.FieldByName('sigla_unidade').AsString
            );
          mmAux.Lines.Add('');
        end;

      //if qryLinhaTempo.FieldByName('valor').AsCurrency > 0 then
        begin
          mmAux.Lines.Add(
            'Valor pago: R$ ' +
            formatCurr('###,###,##0.00', qryLinhaTempo.FieldByName('valor').AsCurrency)
            );
          mmAux.Lines.Add('');
        end;

      if qryLinhaTempo.FieldByName('entrada').AsBoolean then
        mmAux.Lines.Add('Entrada no piquete')
      else
      if qryLinhaTempo.FieldByName('saida').AsBoolean then
        mmAux.Lines.Add('Sa�da do piquete');

      mmAux.Lines.Add('');
    end

  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao').AsString));
      mmAux.Lines.Add('');

      mmAux.Lines.Add(trim(qryLinhaTempo.FieldByName('descricao_tipo').AsString));
      mmAux.Lines.Add('');

      mmAux.Lines.Add(
        'Qtde Total: ' +
        formatCurr('###,###,##0.00 ', qryLinhaTempo.FieldByName('qtde').AsCurrency) +
        trim(qryLinhaTempo.FieldByName('sigla_unidade').AsString)
        );
      mmAux.Lines.Add('');

      mmAux.Lines.Add(
        'Valor pago: R$' +
        formatCurr('###,###,##0.00', qryLinhaTempo.FieldByName('valor').AsCurrency)
        );
      mmAux.Lines.Add('');

      mmAux.Lines.Add(
        'Qtde de dias de Suplementa��o: ' +
        formatCurr('##00', qryLinhaTempo.FieldByName('qtde_dias_usado').AsCurrency)
        );
      mmAux.Lines.Add('');

      xQtdeParcela :=
          qryLinhaTempo.FieldByName('qtde').AsCurrency /
          qryLinhaTempo.FieldByName('qtde_dias_usado').AsInteger;
      xDataParcela := qryLinhaTempo.FieldByName('data').AsDateTime;

      for I := 1 to qryLinhaTempo.FieldByName('qtde_dias_usado').AsInteger do
        begin

          mmAux.Lines.Add(
            'Parcela: ' +
            formatCurr('00', i.ToDouble) +

            ' - ' +
            dateTimeTOstr(xDataParcela) +

            ' ' +
            vDiaSemana[dayofweek(xDataParcela)] +

            ' - ' +
            'Qtde: ' +
            formatCurr('##00 ', xQtdeParcela) +
            trim(qryLinhaTempo.FieldByName('sigla_unidade').AsString)
            );

          mmAux.Lines.Add(' ');

          xDataParcela := incDay(xDataParcela, 1);

        end;
    end

  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      if vcorDemo = 'branco' then
        vcorDemo := 'verde +claro';

      mmAux.Lines.Add(qryLinhaTempo.FieldByName('descricao').AsString);
      mmAux.Lines.Add(' ');

      mmAux.Lines.Add(
        'Operador da medi��o: ' +
        qryLinhaTempo.FieldByName('operador').AsString
        );
      mmAux.Lines.Add(' ');

      mmAux.Lines.Add(
        'Tamanho do piquete: ' +
        formatCurr('###,###,###,##0.00', qryLinhaTempo.FieldByName('tamanho_Area').AsCurrency) +
        ' m�'
        );
      mmAux.Lines.Add(' ');

      mmAux.Lines.Add(
        'Altura m�dia medida da forragem: ' +
        formatCurr('##0', qryLinhaTempo.FieldByName('media_Planta').AsCurrency) +
        ' cm'
        );
      mmAux.Lines.Add(' ');

      mmAux.Lines.Add(
        'Altura m�nima de pastejo (altura de sa�da): ' +
        formatCurr('##0', qryLinhaTempo.FieldByName('alt_min_pastejo').AsCurrency) +
        ' cm'
        );
      mmAux.Lines.Add(' ');

      xAlturaCamadaPastejavel :=
            qryLinhaTempo.FieldByName('media_Planta').AsCurrency -
            qryLinhaTempo.FieldByName('alt_min_pastejo').AsCurrency;

      // camada pastej�vel
      if xAlturaCamadaPastejavel > 0 then
        begin
          mmAux.Lines.Add(
            'Altura da camada pastej�vel: ' +
            formatCurr('##0', xAlturaCamadaPastejavel) +
            ' cm'
            );
          mmAux.Lines.Add(' ');
        end

      else
      if xAlturaCamadaPastejavel = 0 then
        begin
          mmAux.Lines.Add(
            '***** A altura da camada pastej�vel est� igual a zero, a forragem ' +
            'est� na altura m�nima de pastejo: ' +
            formatCurr('##0', qryLinhaTempo.FieldByName('alt_min_pastejo').AsCurrency) +
            ' cm'
            );
          mmAux.Lines.Add(' ');

          vcorDemo := 'amarelo';
        end

      else
        begin
          xAlturaCamadaPastejavel := xAlturaCamadaPastejavel * (-1);

          mmAux.Lines.Add(
            '***** A altura da forragem est� abaixo da altura vi�vel para pastejo em: ' +
            formatCurr('##0', xAlturaCamadaPastejavel) +
            ' cm'
            );
          mmAux.Lines.Add(' ');

          vcorDemo := 'vermelho';
        end;

      // altura m�xima de crescimento  // altura de entrada
      xAlturaMaximaCrescimento :=
            qryLinhaTempo.FieldByName('media_Planta').AsCurrency -
            qryLinhaTempo.FieldByName('altura_maxima_crescimento').AsCurrency; // altura de entrada

      if xAlturaMaximaCrescimento <= 0 then
        begin
          mmAux.Lines.Add(
            'Altura m�xima de crescimento (altura de entrada): ' +
            formatCurr('##0', qryLinhaTempo.
                    FieldByName('altura_maxima_crescimento').AsCurrency) + // altura de entrada
            ' cm'
            );
          mmAux.Lines.Add(' ');
        end

      else
        begin
          mmAux.Lines.Add(
            '***** A altura da forragem excedeu a altura m�xima vi�vel de crescimento em: ' +
            formatCurr('##0', xAlturaMaximaCrescimento) +
            ' cm'
            );
          mmAux.Lines.Add(' ');

          vcorDemo := 'vermelho';
        end;

    end;

end;

procedure TfrmControlforr.ApuraDadosLinhaDoTempo;
var i : integer;

begin

  qryLinhaTempo.Close;
  qryLinhaTempo.SQL.Text :=
' select *' +
' from linha_dotempo_tb' +
' where ordem <= 9' +
' order by nome_area, seq_area, data, ordem';

  qryLinhaTempo.Open;

end;

procedure TfrmControlforr.btUltimoForrClick(Sender: TObject);
var xtelas : integer;

begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  xtelas := trunc(qryCrescimentoForragem.RecordCount / vseq_unica);
  vseq_unica_idx := (xtelas * vseq_unica) + 1;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btProximoForrClick(Sender: TObject);
begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  if vseq_unica_idx > (qryCrescimentoForragem.RecordCount -1) then
    exit;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btrestauraClick(Sender: TObject);
begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  vseq_unica_idx := vseq_unica_idx - vseq_unica_idxUltima;
  if vseq_unica_idx < 1 then
    vseq_unica_idx := 1;

  vidxCorrige := 1;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btAnteriorForrClick(Sender: TObject);
var i : integer;

begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  vseq_unica_idx := vseq_unica_idx - vseq_unica - vseq_unica_idxUltima;
  if vseq_unica_idx < 1 then
    vseq_unica_idx := 1;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btaumentaClick(Sender: TObject);
begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  vseq_unica_idx := vseq_unica_idx - vseq_unica_idxUltima;
  if vseq_unica_idx < 1 then
    vseq_unica_idx := 1;

  vidxCorrige := vidxCorrige * 1.10;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btPrimeiroforrClick(Sender: TObject);
begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  vseq_unica_idx := 1;
  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.IncluiSuplementos;
var i : integer;

begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, valor, qtde, nome_area, seq_tipo, qtde_dias_usado, ' +
  '     seq_unidade, sigla_unidade, seq_unica, relacao_mskg_sukg, realizado ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :valor, :qtde, :nome_area, :seq_tipo, :qtde_dias_usado, ' +
  '     :seq_unidade, :sigla_unidade, :seq_unica, :relacao_mskg_sukg, :realizado ) ';

  qryGeral2.Params[0].AsInteger :=
        qryEventosMonta.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryEventosMonta.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryEventosMonta.FieldByName('seq_area').AsInteger;

  qryGeral2.Params[3].AsInteger :=
        qryEventosMonta.FieldByName('ordem').AsInteger;
  qryGeral2.Params[4].AsString :=
        qryEventosMonta.FieldByName('tipo').AsString;
  qryGeral2.Params[5].AsString :=
        qryEventosMonta.FieldByName('data').AsString;
  qryGeral2.Params[6].AsString :=
        qryEventosMonta.FieldByName('descricao').AsString;
  qryGeral2.Params[7].AsString :=
        qryEventosMonta.FieldByName('descricao_tipo').AsString;
  qryGeral2.Params[8].AsCurrency :=
        qryEventosMonta.FieldByName('valor').AsCurrency;
  qryGeral2.Params[9].AsCurrency :=
        qryEventosMonta.FieldByName('qtde').AsCurrency;
  qryGeral2.Params[10].AsString :=
        qryEventosMonta.FieldByName('nome_area').AsString;
  qryGeral2.Params[11].AsString :=
        qryEventosMonta.FieldByName('seq_tipo').AsString;
  qryGeral2.Params[12].AsInteger :=
        qryEventosMonta.FieldByName('qtde_dias_usado').AsInteger;
  qryGeral2.Params[13].AsInteger :=
        qryEventosMonta.FieldByName('seq_unidade').AsInteger;
  qryGeral2.Params[14].AsString :=
        qryEventosMonta.FieldByName('sigla_unidade').AsString;
  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[15].AsInteger := vseq_unica;
  qryGeral2.Params[16].AsString :=
        qryEventosMonta.FieldByName('relacao_mskg_sukg').AsString;
  qryGeral2.Params[17].AsBoolean :=
        qryEventosMonta.FieldByName('realizado').AsBoolean;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento suplemento na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.ProcessaSuplementos;
var i : integer;

begin
  vTemErro := false;


end;

procedure TfrmControlforr.IncluiEventos;
var i : integer;

begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, valor, qtde, entrada, saida, nome_area, seq_tipo, ' +
  '     seq_unidade, sigla_unidade, seq_unica, realizado ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :valor, :qtde, :entrada, :saida, :nome_area, :seq_tipo, ' +
  '     :seq_unidade, :sigla_unidade, :seq_unica, :realizado ) ';

  qryGeral2.Params[0].AsInteger :=
        qryEventosMonta.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryEventosMonta.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryEventosMonta.FieldByName('seq_area').AsInteger;

  qryGeral2.Params[3].AsInteger :=
        qryEventosMonta.FieldByName('ordem').AsInteger;
  qryGeral2.Params[4].AsString :=
        qryEventosMonta.FieldByName('tipo').AsString;
  qryGeral2.Params[5].AsString :=
        qryEventosMonta.FieldByName('data').AsString;
  qryGeral2.Params[6].AsString :=
        qryEventosMonta.FieldByName('descricao').AsString;
  qryGeral2.Params[7].AsString :=
        qryEventosMonta.FieldByName('descricao_tipo').AsString;
  qryGeral2.Params[8].AsCurrency :=
        qryEventosMonta.FieldByName('valor').AsCurrency;
  qryGeral2.Params[9].AsCurrency :=
        qryEventosMonta.FieldByName('qtde').AsCurrency;
  qryGeral2.Params[10].AsBoolean :=
        qryEventosMonta.FieldByName('entrada').AsBoolean;
  qryGeral2.Params[11].AsBoolean :=
        qryEventosMonta.FieldByName('saida').AsBoolean;
  qryGeral2.Params[12].AsString :=
        qryEventosMonta.FieldByName('nome_area').AsString;
  qryGeral2.Params[13].AsString :=
        qryEventosMonta.FieldByName('seq_tipo').AsString;
  qryGeral2.Params[14].AsInteger :=
        qryEventosMonta.FieldByName('seq_unidade').AsInteger;
  qryGeral2.Params[15].AsString :=
        qryEventosMonta.FieldByName('sigla_unidade').AsString;
  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[16].AsInteger := vseq_unica;
  qryGeral2.Params[17].AsBoolean :=
        qryEventosMonta.FieldByName('realizado').AsBoolean;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir evento na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.ProcessaEventos;
var i : integer;

begin
  vTemErro := false;


end;

procedure TfrmControlforr.IncluiMedicoes;
var i : integer;

begin

  vTemErro := true;

  qryMedicoesMonta.First;

  for I := 1 to qryMedicoesMonta.RecordCount do
    begin

      qryGeral2.Close;
      qryGeral2.SQL.Text :=
      ' insert into linha_dotempo_tb(' +
      '              seq_area, data, tipo, ordem, ' +
      '              seq_empresa, seq_area_geral, descricao, nome_area,' +
      '              tamanho_Area, operador, alt_equi,' +
      '              alt_planta, massa_seca, alt_min_pastejo, alt_massa_seca,' +
      '              media_Planta, seq_unica, altura_maxima_crescimento) ' + // altura de entrada
      ' values (' +
      '              :seq_area, :data, :tipo, :ordem, ' +
      '              :seq_empresa, :seq_area_geral, :descricao, :nome_area,' +
      '              :tamanho_Area, :operador, :alt_equi,' +
      '              :alt_planta, :massa_seca, :alt_min_pastejo, :alt_massa_seca,' +
      '              :media_Planta, :seq_unica, :altura_maxima_crescimento) '; // altura de entrada

      qryGeral2.Params[0].AsInteger :=
            qryMedicoesMonta.FieldByName('seq_area').AsInteger;
      qryGeral2.Params[1].AsString :=
            qryMedicoesMonta.FieldByName('data').AsString;
      qryGeral2.Params[2].AsString :=
            qryMedicoesMonta.FieldByName('tipo').AsString;

      qryGeral2.Params[3].AsInteger :=
            qryMedicoesMonta.FieldByName('ordem').AsInteger;
      qryGeral2.Params[4].AsInteger :=
            qryMedicoesMonta.FieldByName('seq_empresa').AsInteger;
      qryGeral2.Params[5].AsInteger :=
            qryMedicoesMonta.FieldByName('seq_area_geral').AsInteger;
      qryGeral2.Params[6].AsString :=
            qryMedicoesMonta.FieldByName('descricao').AsString;
      qryGeral2.Params[7].AsString :=
            qryMedicoesMonta.FieldByName('nome_area').AsString;
      qryGeral2.Params[8].AsCurrency :=
            qryMedicoesMonta.FieldByName('tamanho_Area').AsCurrency;
      qryGeral2.Params[9].AsString :=
            qryMedicoesMonta.FieldByName('operador').AsString;
      qryGeral2.Params[10].AsInteger :=
            qryMedicoesMonta.FieldByName('alt_equi').AsInteger;
      qryGeral2.Params[11].AsInteger :=
            qryMedicoesMonta.FieldByName('alt_planta').AsInteger;
      qryGeral2.Params[12].AsCurrency :=
            qryMedicoesMonta.FieldByName('massa_seca').AsCurrency;
      qryGeral2.Params[13].AsInteger :=
            qryMedicoesMonta.FieldByName('alt_min_pastejo').AsInteger;
      qryGeral2.Params[14].AsInteger :=
            qryMedicoesMonta.FieldByName('alt_massa_seca').AsInteger;
      qryGeral2.Params[15].AsInteger :=
            trunc(qryMedicoesMonta.FieldByName('media_planta').AsCurrency + 0.55);
      vseq_unica := vseq_unica + 1;
      qryGeral2.Params[16].AsInteger := vseq_unica;
      qryGeral2.Params[17].AsInteger :=
            qryMedicoesMonta.FieldByName('altura_maxima_crescimento').AsInteger; // altura de entrada

      try
        qryGeral2.ExecSQL;

      except
        on E : Exception do
        begin
          ShowMessage('Erro ao incluir evento na tab linha_dotempo_tb : '+E.Message);
          abort;
        end;
      end;

      qryMedicoesMonta.Next;
    end;

  vTemErro := false;

end;

procedure TfrmControlforr.IncluiAnimais;
begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, valor, qtde, entrada, saida, peso_vivo, perc_consumo, ' +
  '     femea, castrado, normal, nome_area, id_raca, seq_raca, seq_sem_raca, ' +
  '     seq_tipo, seq_unica, ganho_depeso_diakg, realizado ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :valor, :qtde, :entrada, :saida, :peso_vivo, :perc_consumo, ' +
  '     :femea, :castrado, :normal, :nome_area, :id_raca, :seq_raca, :seq_sem_raca, '+
  '     :seq_tipo, :seq_unica, :ganho_depeso_diakg, :realizado ) ';

  qryGeral2.Params[0].AsInteger :=
        qryEventosMonta.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryEventosMonta.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryEventosMonta.FieldByName('seq_area').AsInteger;

  qryGeral2.Params[3].AsInteger :=
        qryEventosMonta.FieldByName('ordem').AsInteger;
  qryGeral2.Params[4].AsString :=
        qryEventosMonta.FieldByName('tipo').AsString;
  qryGeral2.Params[5].AsString :=
        qryEventosMonta.FieldByName('data').AsString;
  qryGeral2.Params[6].AsString :=
        qryEventosMonta.FieldByName('descricao').AsString;
  qryGeral2.Params[7].AsString :=
        qryEventosMonta.FieldByName('descricao_tipo').AsString;
  qryGeral2.Params[8].AsCurrency :=
        qryEventosMonta.FieldByName('valor').AsCurrency;
  qryGeral2.Params[9].AsCurrency :=
        qryEventosMonta.FieldByName('qtde').AsCurrency;
  qryGeral2.Params[10].AsBoolean :=
        qryEventosMonta.FieldByName('entrada').AsBoolean;
  qryGeral2.Params[11].AsBoolean :=
        qryEventosMonta.FieldByName('saida').AsBoolean;
  qryGeral2.Params[12].AsCurrency :=
        qryEventosMonta.FieldByName('peso_vivo').AsCurrency;
  qryGeral2.Params[13].AsCurrency :=
        qryEventosMonta.FieldByName('perc_consumo').AsCurrency;
  qryGeral2.Params[14].AsBoolean :=
        qryEventosMonta.FieldByName('femea').AsBoolean;
  qryGeral2.Params[15].AsBoolean :=
        qryEventosMonta.FieldByName('castrado').AsBoolean;
  qryGeral2.Params[16].AsBoolean :=
        qryEventosMonta.FieldByName('normal').AsBoolean;
  qryGeral2.Params[17].AsString :=
        qryEventosMonta.FieldByName('nome_area').AsString;
  qryGeral2.Params[18].asinteger :=
        qryEventosMonta.FieldByName('id_raca').asinteger;
  qryGeral2.Params[19].asinteger :=
        qryEventosMonta.FieldByName('seq_raca').asinteger;
  qryGeral2.Params[20].asinteger :=
        qryEventosMonta.FieldByName('seq_sem_raca').asinteger;
  qryGeral2.Params[21].asinteger :=
        qryEventosMonta.FieldByName('seq_tipo').asinteger;
  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[22].AsInteger := vseq_unica;
  qryGeral2.Params[23].AsCurrency :=
        qryEventosMonta.FieldByName('ganho_depeso_diakg').AsCurrency;
  qryGeral2.Params[24].AsBoolean :=
        qryEventosMonta.FieldByName('realizado').AsBoolean;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento animais na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.ProcessaForragem;
var
  I: Integer;
begin

  qrygeral.Close;
  if cbtodosPiquetes.Checked then
    begin
      qrygeral.SQL.Text :=
' select *' +
' from area_geral_tb ag, variedades_tb v, areas_tb a' +
' where ag.seq_empresa = :seq_empresa' +
'   and a.seq_empresa = ag.seq_empresa' +
'   and a.seq_area_geral = ag.seq_area_geral' +
'   and v.seq_empresa = ag.seq_empresa_fornecedora' +
'   and v.seq_variedade = ag.seq_variedade' +
' order by a.seq_area';

      qrygeral.Params[0].AsInteger := qryAreas.FieldByName('seq_empresa').AsInteger;

    end
  else
    begin
      qrygeral.SQL.Text :=
' select *' +
' from area_geral_tb ag, variedades_tb v, areas_tb a' +
' where ag.seq_empresa = :seq_empresa' +
'   and ag.seq_area_geral = :seq_area_geral' +
'   and a.seq_area = :seq_area' +
'   and a.seq_empresa = ag.seq_empresa' +
'   and a.seq_area_geral = ag.seq_area_geral' +
'   and v.seq_empresa = ag.seq_empresa_fornecedora' +
'   and v.seq_variedade = ag.seq_variedade' +
' order by a.seq_area';

      qrygeral.Params[0].AsInteger := qryAreas.FieldByName('seq_empresa').AsInteger;
      qrygeral.Params[1].AsInteger := qryAreas.FieldByName('seq_area_geral').AsInteger;
      qrygeral.Params[2].AsInteger := qryAreas.FieldByName('seq_area').AsInteger;
    end;

  qrygeral.Open;

  qryAnimaisMonta.Close;
  qryAnimaisMonta.SQL.Text :=
' select seq_area, data, sum(qtde_animal_atual) as qtde_animal' +
' from linha_dotempo_tb' +
' where ordem in (28, 29)' +
' group by seq_area, data' +
' order by seq_area, data';

  qryAnimaisMonta.Open;

  for I := 1 to qrygeral.RecordCount do
    begin
      CompoeCrescimentoForragem;
      qrygeral.Next;
    end;

end;

procedure TfrmControlforr.CompoeCrescimentoForragem;
var xdias, xdiasOcupacao, i : integer;
    xloopContinuo : boolean;

begin

  vdataScala := strTOdateTime(vdataInicioCiclo);

  xdias := daysBetween(strTOdateTime(vdataFimLinhaTempo), strTOdateTime(vdataInicioCiclo)) + 1;
  xloopcontinuo := true;
  xdiasOcupacao := 0;
  vkg_ms_ha_dia_acumulado := 0;

  for I := 1 to xdias do
    begin
      vkg_ms_ha_dia := 0;
      RecuperaVariaveisEstacao;
      if vkg_ms_ha_dia = 0 then
        begin
          showmessage('data: ' + DateTimeTOstr(vdataScala) +
                      ' n�o encontrada na recupera��o de esta��o');
          abort;
        end;

      if qryGeral.FieldByName('considera_acamamento').AsBoolean then
        begin
          while xloopContinuo do
            begin
              if (qryAnimaisMonta.RecordCount = 0) or
                 (qryAnimaisMonta.eof) then
                 begin
                   xdiasOcupacao := 0;
                   break;
                 end
              else
              if (qryAnimaisMonta.FieldByName('seq_area').AsInteger =
                  qryGeral.FieldByName('seq_area').AsInteger) and
                 (qryAnimaisMonta.FieldByName('data').AsDateTime =
                  qryGeral.FieldByName('data').AsDateTime) then
                 begin
                    xdiasOcupacao := xdiasOcupacao + 1;
                    break;
                 end
              else
              begin
                xdiasOcupacao := 0;

                if (qryAnimaisMonta.FieldByName('seq_area').AsInteger =
                    qryGeral.FieldByName('seq_area').AsInteger) and
                   (qryAnimaisMonta.FieldByName('data').AsDateTime >
                    qryGeral.FieldByName('data').AsDateTime) then
                   break
                else
                if (qryAnimaisMonta.FieldByName('seq_area').AsInteger >
                    qryGeral.FieldByName('seq_area').AsInteger) then
                   break;
              end;

              qryAnimaisMonta.Next;

            end;
        end;

      if xdiasOcupacao <= 10 then
        vkg_ms_ha_dia_acumulado :=
            vkg_ms_ha_dia_acumulado + vkg_ms_ha_dia;

      IncluiCrescimentoForragem;
      vdataScala := incDay(vdataScala, 1);

    end;

end;

procedure TfrmControlforr.IncluiCrescimentoForragem;
begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, nome_area, massa_seca, alt_min_pastejo, alt_massa_seca, ' +
  '     tamanho_area, kg_ms_ha_dia, kg_ms_ha_dia_acumulado, altura_maxima_crescimento,' +
  '     seq_unica) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :nome_area, :massa_seca, :alt_min_pastejo, :alt_massa_seca, ' +
  '     :tamanho_area, :kg_ms_ha_dia, :kg_ms_ha_dia_acumulado, :altura_maxima_crescimento,' +
  '     :seq_unica) ';

  qryGeral2.Params[0].AsInteger := qrygeral.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger := qrygeral.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger := qrygeral.FieldByName('seq_area').AsInteger;

  qryGeral2.Params[3].AsInteger := 99;
  qryGeral2.Params[4].AsString := 'Crescimento Forragem';
  qryGeral2.Params[5].AsString := dateTimeTOstr(vdataScala);

  qryGeral2.Params[6].AsString := ''; //descri��o
  qryGeral2.Params[7].AsString := 'Crescimento da Forragem Previsto';

  qryGeral2.Params[8].AsString := qrygeral.FieldByName('nome_area').AsString;

  qryGeral2.Params[9].AsCurrency := vmassa_seca_kg_m2;
  qryGeral2.Params[10].AsInteger := qrygeral.FieldByName('altura_minima_pastejo').AsInteger;
  qryGeral2.Params[11].AsInteger := valtura_massa_seca_cm;
  qryGeral2.Params[12].AsCurrency := qrygeral.FieldByName('tamanho_area').AsInteger;

  qryGeral2.Params[13].AsCurrency := vkg_ms_ha_dia;
  qryGeral2.Params[14].AsCurrency := vkg_ms_ha_dia_acumulado;
  qryGeral2.Params[15].AsInteger := qrygeral.FieldByName('altura_maxima_crescimento').AsInteger;

  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[16].AsInteger := vseq_unica;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir crescimento da forragem na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.ProcessaAnimais;
var I : Integer;

begin

  vTemErro := true;
  InicializaVariaveisAnimais;

  qryAnimaisMonta.Close;
  qryAnimaisMonta.SQL.Text :=
' select *' +
' from linha_dotempo_tb' +
' where ordem = 2' +
' order by nome_area, seq_area, data';

  qryAnimaisMonta.Open;
  if qryAnimaisMonta.RecordCount = 0 then
    begin
      vTemErro := false;
      exit;
    end;

  vseq_areaAnt := qryAnimaisMonta.FieldByName('seq_area').AsInteger;
  vseq_area_geralAnt := qryAnimaisMonta.FieldByName('seq_area_geral').AsInteger;
  vseq_empresaAnt := qryAnimaisMonta.FieldByName('seq_empresa').AsInteger;
  vdataAnt := qryAnimaisMonta.FieldByName('data').AsDateTime;
  vnome_areaAnt := qryAnimaisMonta.FieldByName('nome_area').AsString;

  for I := 1 to qryAnimaisMonta.RecordCount do
    begin

      if qryAnimaisMonta.FieldByName('seq_area').AsInteger <> vseq_areaAnt then
        begin
          vdataLimite := strTOdateTime(vDataFimLinhaTempo);
          CompoeConsumoPesoDia;
          CompoeConsumoPeso;
          InicializaVariaveisAnimais;
          GuardaDadosTabela;
        end
      else
      if qryAnimaisMonta.FieldByName('data').AsDateTime = vdataAnt then
        GuardaDadosTabela
      else
        GuardaDadosTabela;

      vseq_areaAnt := qryAnimaisMonta.FieldByName('seq_area').AsInteger;
      vseq_area_geralAnt := qryAnimaisMonta.FieldByName('seq_area_geral').AsInteger;
      vseq_empresaAnt := qryAnimaisMonta.FieldByName('seq_empresa').AsInteger;
      vdataAnt := qryAnimaisMonta.FieldByName('data').AsDateTime;
      vnome_areaAnt := qryAnimaisMonta.FieldByName('nome_area').AsString;
      qryAnimaisMonta.Next;

    end;

  vdataLimite := strTOdateTime(vDataFimLinhaTempo);
  CompoeConsumoPesoDia;
  CompoeConsumoPeso;

  vTemErro := false;

end;

procedure TfrmControlforr.GuardaDadosTabela;
begin

  if (qryAnimaisMonta.FieldByName('id_raca').IsNull) or
     (qryAnimaisMonta.FieldByName('id_raca').AsInteger = 0) then
     GuardaDados_SemRaca
  else
     GuardaDados_Embrapa;

end;

procedure TfrmControlforr.GuardaDados_Embrapa;
var xQtdeAnimalAtual_embrapa : integer;

begin

  vid_raca := qryAnimaisMonta.FieldByName('id_raca').AsInteger;
  vseq_raca := qryAnimaisMonta.FieldByName('seq_raca').AsInteger;
  //xQtdeAnimalAtual_embrapa :=
  //    vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

  if qryAnimaisMonta.FieldByName('castrado').AsBoolean then
    vCastFemNormal := 1
  else
  if qryAnimaisMonta.FieldByName('femea').AsBoolean then
    vCastFemNormal := 2
  else
    vCastFemNormal := 3;

  //VerificaMudaNivelPeso_embrapa;

  if datetimeTOstr(vData_embrapa[vid_raca, vCastFemNormal, vseq_raca]) <>
    '01/01/1900' then
    if datetimeTOstr(vData_embrapa[vid_raca, vCastFemNormal, vseq_raca]) <>
      qryAnimaisMonta.FieldByName('data').AsString then
      begin
        vdataLimite := qryAnimaisMonta.FieldByName('data').AsDateTime;
        CompoeConsumoPesoCompletaEmbrapa;
      end;

  if qryAnimaisMonta.FieldByName('entrada').AsBoolean then
    begin
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
            vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
            qryAnimaisMonta.FieldByName('qtde').AsInteger;
    end
  else
    begin
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
            vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] -
            qryAnimaisMonta.FieldByName('qtde').AsInteger;

      //exit;
    end;

  xQtdeAnimalAtual_embrapa :=
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

  vseq_tipo_animal_embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
        qryAnimaisMonta.FieldByName('seq_tipo').AsInteger;

  vDescricaoTipo_embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
        qryAnimaisMonta.FieldByName('descricao_tipo').AsString;

  //if datetimeTOstr(vData_embrapa[vid_raca, vCastFemNormal, vseq_raca]) = '01/01/1900' then
    vData_embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
          qryAnimaisMonta.FieldByName('data').AsDateTime;
    vgravou_embrapa[vid_raca, vCastFemNormal, vseq_raca] := false;

  if vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] <> 0 then
    if xQtdeAnimalAtual_embrapa = 0 then
      exit;

  if vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] <> 0 then
    if qryPadrao_sistema.FieldByName('peso_limite_cabeca').AsCurrency <=
       (vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] /
        xQtdeAnimalAtual_embrapa) then
      exit;

  CalculaPesoConsumo_embrapa;

end;

procedure TfrmControlforr.CalculaPesoConsumo_embrapa;
var xIdxCastFemNormal : integer;
    xconsumodiario, xconsumoacumulado : currency;

begin

{  if vQtdeAnimalAtual_embrapa[vid_raca, vCastFemNormal, vseq_raca] <= 0 then
    exit;

  if qryPadrao_sistema.FieldByName('peso_limite_cabeca').AsCurrency <=
     vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] then
    exit;  }

  if vCastFemNormal = 1 then
    xIdxCastFemNormal := 13
  else
  if vCastFemNormal = 2 then
    xIdxCastFemNormal := 14
  else
    xIdxCastFemNormal := 16;

  vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
      (vqtdeIdx_embrapa[vid_raca, 15] *
       vqtdeIdx_embrapa[vid_raca, xIdxCastFemNormal])
      * vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

  vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
      vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
      vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

{      vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
      (vqtdeIdx_embrapa[vid_raca, 15] *
       vqtdeIdx_embrapa[vid_raca, xIdxCastFemNormal]);}

  vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
      (vqtdeIdx_embrapa[vid_raca, vseq_raca] *
       vqtdeIdx_embrapa[vid_raca, xIdxCastFemNormal])
      * vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

  vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] :=
      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
      vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

{      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
      (vqtdeIdx_embrapa[vid_raca, vseq_raca] *
       vqtdeIdx_embrapa[vid_raca, xIdxCastFemNormal]); }

end;

procedure TfrmControlforr.CompoeConsumoPesoCompletaEmbrapa;
var id, xdias : integer;

begin

  if (vdataLimite >= vData_embrapa[vid_raca, vCastFemNormal, vseq_raca]) and
     (vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] > 0) then
    begin
      xdias := daysBetween(vdataLimite, vData_embrapa[vid_raca, vCastFemNormal, vseq_raca]);

      if xdias < 1 then
        exit;

      //xdias := xdias -1;

      vdataScala := vData_embrapa[vid_raca, vCastFemNormal, vseq_raca];
      for Id := 1 to xdias do
        begin
          //vid_raca := vid_raca;
          //vCastFemNormal := vCastFemNormal;
          //vseq_raca := vseq_raca;

          //if vQtdeAnimalAtual_Embrapa[i, ii, iii] > 0 then
            begin
              //if id > 1 then
                begin
                  GravaPosi��oDiariaAnimais_embrapa;
                  vdataScala := incDay(vdataScala, 1);
                  if Id <> xdias then
                    CalculaPesoConsumo_embrapa;
                  if vtemerro then
                    abort;
                end;

              {GravaPosi��oDiariaAnimais_embrapa;
              if vtemerro then
                abort;  }
            end;
        end;
    end;

end;

procedure TfrmControlforr.VerificaMudaNivelPeso_embrapa;
var xPeso_vivo_atual : currency;
    i : integer;

begin

  xPeso_vivo_atual :=
    vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] +
    vPesoVivo_Embrapa[vid_raca, vseq_raca];

  i := 12;
  while i > 0 do
    begin
      if xpeso_vivo_atual >= vPesoVivo_Embrapa[vid_raca, i] then
        break;

      i := i - 1;
    end;

  if i = 0 then
    begin
      showmessage('peso vivo atual n�o encontrado na tabela da embrapa, peso = ' +
                  formatCurr('###,##0.00', xpeso_vivo_atual));
      abort;
    end;

  if i <> vseq_raca then
    begin
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, i] :=
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, i] +
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
      vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, i] :=
      (vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, i] +
       vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca]) /
       vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, i];
      vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, i] :=
      (vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, i] +
       vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca]) /
       vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, i];
      vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, i] :=
      (vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, i] +
       vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca]) /
       vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, i];
      vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, i] :=
      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, i] +
      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
      vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vseq_tipo_animal_embrapa[vid_raca, vCastFemNormal, i] :=
      vseq_tipo_animal_embrapa[vid_raca, vCastFemNormal, vseq_raca];
      vseq_tipo_animal_embrapa[vid_raca, vCastFemNormal, vseq_raca] := 0;

      vDescricaoTipo_embrapa[vid_raca, vCastFemNormal, i] :=
      vDescricaoTipo_embrapa[vid_raca, vCastFemNormal, vseq_raca];
      vDescricaoTipo_embrapa[vid_raca, vCastFemNormal, vseq_raca] := '';

      if datetimeTOstr(vData_embrapa[vid_raca, vCastFemNormal, i]) = '01/01/1900' then
        begin
          vData_embrapa[vid_raca, vCastFemNormal, i] :=
          vData_embrapa[vid_raca, vCastFemNormal, vseq_raca];
          vData_embrapa[vid_raca, vCastFemNormal, vseq_raca] := strTOdatetime('01/01/1900');
        end;

      vseq_raca := i;
    end;

end;

procedure TfrmControlforr.GuardaDados_SemRaca;
var xQtdeAnimalAtual_semRaca : integer;

begin

  vseq_sem_raca := qryAnimaisMonta.FieldByName('seq_sem_raca').AsInteger;
  vQtdeAnimalAnt_semRaca := vQtdeAnimalAtual_semRaca[vseq_sem_raca];
  if vQtdeAnimalAnt_semRaca = 0 then
    vQtdeAnimalAnt_semRaca := 1;

  //VerificaMudaNivelPeso_semRaca;

  if datetimeTOstr(vData_semRaca[vseq_sem_raca]) <> '01/01/1900' then
    if datetimeTOstr(vData_semRaca[vseq_sem_raca]) <>
      qryAnimaisMonta.FieldByName('data').AsString then
        begin
          vdataLimite := qryAnimaisMonta.FieldByName('data').AsDateTime;
          CompoeConsumoPesoCampletaSemRaca;
        end;

  if qryAnimaisMonta.FieldByName('entrada').AsBoolean then
    begin
      vQtdeAnimalAtual_semRaca[vseq_sem_raca] :=
            vQtdeAnimalAtual_semRaca[vseq_sem_raca] +
            qryAnimaisMonta.FieldByName('qtde').AsInteger;
    end
  else
    begin
      vQtdeAnimalAtual_semRaca[vseq_sem_raca] :=
            vQtdeAnimalAtual_semRaca[vseq_sem_raca] -
            qryAnimaisMonta.FieldByName('qtde').AsInteger;
      //exit;
    end;

  xQtdeAnimalAtual_semRaca := vQtdeAnimalAtual_semRaca[vseq_sem_raca];

  vseq_tipo_animal_semRaca[vseq_sem_raca] :=
        qryAnimaisMonta.FieldByName('seq_tipo').AsInteger;

  vDescricaoTipo_semRaca[vseq_sem_raca] :=
        qryAnimaisMonta.FieldByName('descricao_tipo').AsString;

  //if datetimeTOstr(vData_semRaca[vseq_sem_raca]) = '01/01/1900' then
    vData_semRaca[vseq_sem_raca] :=
          qryAnimaisMonta.FieldByName('data').AsDateTime;
    vgravou_semRaca[vseq_sem_raca] := false;

  if vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] <> 0 then
    if xQtdeAnimalAtual_semRaca = 0 then
      exit;

  if vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] <> 0 then
    if qryPadrao_sistema.FieldByName('peso_limite_cabeca').AsCurrency <=
       (vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] /
        xQtdeAnimalAtual_semRaca) then
      exit;

  CalculaPesoConsumo_semRaca;

end;

procedure TfrmControlforr.CalculaPesoConsumo_semRaca;
begin

{  if vQtdeAnimalAtual_semRaca[vseq_sem_raca] <= 0 then
    exit;

  if qryPadrao_sistema.FieldByName('peso_limite_cabeca').AsCurrency <=
     (vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] /
      vQtdeAnimalAtual_semRaca[vseq_sem_raca]) then
    exit;    }

  vConsumoDiario_semRaca[vseq_sem_raca] :=
      (
      (vPeso_Vivo_semRaca[vseq_sem_raca] +
       (vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] /
        vQtdeAnimalAnt_semRaca) ) *
      (vPerc_Consumo_mspvdia_semRaca[vseq_sem_raca]/100)
      ) * vQtdeAnimalAtual_semRaca[vseq_sem_raca];

  vConsumoAcumulado_semRaca[vseq_sem_raca] :=
      vConsumoAcumulado_semRaca[vseq_sem_raca] +
      vConsumoDiario_semRaca[vseq_sem_raca];

  vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] :=
      vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] +
      (
      vGanho_DePeso_diakg_semRaca[vseq_sem_raca] *
      vQtdeAnimalAtual_semRaca[vseq_sem_raca]
      );

{    ((vPeso_Vivo_semRaca[vseq_sem_raca] *
      vQtdeAnimalAtual_semRaca[vseq_sem_raca]) +
      vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca]) *
    (vPerc_Consumo_mspvdia_semRaca[vseq_sem_raca]/100);}

{  vConsumoDiario_semRaca[vseq_sem_raca] :=
    (vPeso_Vivo_semRaca[vseq_sem_raca] + vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca])
    * (vPerc_Consumo_mspvdia_semRaca[vseq_sem_raca]/100);

  vConsumoAcumulado_semRaca[vseq_sem_raca] :=
    vConsumoAcumulado_semRaca[vseq_sem_raca] +
    ((vPeso_Vivo_semRaca[vseq_sem_raca] + vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca])
    * (vPerc_Consumo_mspvdia_semRaca[vseq_sem_raca]/100));}

end;

procedure TfrmControlforr.CompoeConsumoPesoCampletaSemRaca;
var id, xdias : integer;

begin

  if (vdataLimite >= vData_semRaca[vseq_sem_raca]) and
     (vQtdeAnimalAtual_semRaca[vseq_sem_raca] > 0) then
    begin
      xdias := daysBetween(vdataLimite, vData_semRaca[vseq_sem_raca]);

      if xdias < 1 then
        exit;

      //xdias := xdias -1;

      vdataScala := vData_semRaca[vseq_sem_raca];
      for Id := 1 to xdias do
        begin
          //vseq_sem_raca := vseq_sem_raca;

          //if vQtdeAnimalAtual_semRaca[i] > 0 then
            begin
              //if id > 1 then
                begin
                  GravaPosi��oDiariaAnimais_semRaca;
                  vdataScala := incDay(vdataScala, 1);
                  if Id <> xdias then
                    CalculaPesoConsumo_semRaca;
                  if vtemerro then
                    abort;
                end;

              {GravaPosi��oDiariaAnimais_semRaca;
              if vtemerro then
                abort;  }
            end;
        end;
    end;

end;

procedure TfrmControlforr.VerificaMudaNivelPeso_semRaca;
var xPeso_vivo_maior  : currency;
    i, xseq_sem_raca_move : integer;

begin

  xPeso_vivo_maior := vPeso_Vivo_semRaca[1] + vPesoVivoGanhoAcumulado_semRaca[1];
  xseq_sem_raca_move := 0;

  for I := 1 to 20 do
    begin

      if ((vPeso_Vivo_semRaca[i] + vPesoVivoGanhoAcumulado_semRaca[i] -
           xPeso_vivo_maior) <= 50) and
         ((vPeso_Vivo_semRaca[i] + vPesoVivoGanhoAcumulado_semRaca[i] -
           xPeso_vivo_maior) > 0) then
        begin
          xPeso_vivo_maior := vPeso_Vivo_semRaca[i] + vPesoVivoGanhoAcumulado_semRaca[i];
          xseq_sem_raca_move := i;
        end;

    end;

  if (xseq_sem_raca_move <> vseq_sem_raca) and
     (xseq_sem_raca_move <> 0) then
    begin
      vQtdeAnimalAtual_semRaca[xseq_sem_raca_move] :=
      vQtdeAnimalAtual_semRaca[xseq_sem_raca_move] +
      vQtdeAnimalAtual_semRaca[vseq_sem_raca];
      vQtdeAnimalAtual_semRaca[vseq_sem_raca] := 0;

      vPesoVivoGanhoAcumulado_semRaca[xseq_sem_raca_move] :=
      (vPesoVivoGanhoAcumulado_semRaca[xseq_sem_raca_move] +
       vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca]) /
       vQtdeAnimalAtual_semRaca[xseq_sem_raca_move];
      vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca] := 0;

      vConsumoDiario_semRaca[xseq_sem_raca_move] :=
      (vConsumoDiario_semRaca[xseq_sem_raca_move] +
       vConsumoDiario_semRaca[vseq_sem_raca]) /
       vQtdeAnimalAtual_semRaca[xseq_sem_raca_move];
      vConsumoDiario_semRaca[vseq_sem_raca] := 0;

      vConsumoAcumulado_semRaca[xseq_sem_raca_move] :=
      vConsumoAcumulado_semRaca[xseq_sem_raca_move] +
      vConsumoAcumulado_semRaca[vseq_sem_raca];
      vConsumoAcumulado_semRaca[vseq_sem_raca] := 0;

      vseq_tipo_animal_semRaca[xseq_sem_raca_move] :=
      vseq_tipo_animal_semRaca[vseq_sem_raca];
      vseq_tipo_animal_semRaca[vseq_sem_raca] := 0;

      vDescricaoTipo_semRaca[xseq_sem_raca_move] :=
      vDescricaoTipo_semRaca[vseq_sem_raca];
      vDescricaoTipo_semRaca[vseq_sem_raca] := '';

      if datetimeTOstr(vData_semRaca[xseq_sem_raca_move]) = '01/01/1900' then
        begin
          vData_semRaca[xseq_sem_raca_move] := vData_semRaca[vseq_sem_raca];
          vData_semRaca[vseq_sem_raca] := strTOdatetime('01/01/1900');
        end;
    end;

end;

procedure TfrmControlforr.CompoeConsumoPeso;
var i, ii, iii, id, xdias : integer;

begin

  for I := 1 to 6 do
    begin
      for ii := 1 to 3 do
        begin
          for iii := 1 to 15 do
            begin

              if (vdataLimite > vData_embrapa[i, ii, iii]) and
                 (vQtdeAnimalAtual_Embrapa[i, ii, iii] > 0) then
                begin
                  xdias := daysBetween(vdataLimite, vData_embrapa[i, ii, iii]);
                  vdataScala := vData_embrapa[i, ii, iii];
                  for Id := 1 to xdias do
                    begin
                      vid_raca := i;
                      vCastFemNormal := ii;
                      vseq_raca := iii;

                      //if vQtdeAnimalAtual_Embrapa[i, ii, iii] > 0 then
                        begin
                          //if id > 1 then
                            begin
                              CalculaPesoConsumo_embrapa;
                              vdataScala := incDay(vdataScala, 1);
                              GravaPosi��oDiariaAnimais_embrapa;
                              if vtemerro then
                                abort;
                            end;

                          {GravaPosi��oDiariaAnimais_embrapa;
                          if vtemerro then
                            abort;  }
                        end;
                    end;
                end;

            end;
        end;
    end;

  for I := 1 to 20 do
    begin

      if (vdataLimite > vData_semRaca[i]) and
         (vQtdeAnimalAtual_semRaca[i] > 0) then
        begin
          xdias := daysBetween(vdataLimite, vData_semRaca[i]);
          vdataScala := vData_semRaca[i];
          for Id := 1 to xdias do
            begin
              vseq_sem_raca := i;

              //if vQtdeAnimalAtual_semRaca[i] > 0 then
                begin
                  //if id > 1 then
                    begin
                      CalculaPesoConsumo_semRaca;
                      vdataScala := incDay(vdataScala, 1);
                      GravaPosi��oDiariaAnimais_semRaca;
                      if vtemerro then
                        abort;
                    end;

                  {GravaPosi��oDiariaAnimais_semRaca;
                  if vtemerro then
                    abort;  }
                end;
            end;
        end;

    end;

end;

procedure TfrmControlforr.CompoeConsumoPesoDia;
var i, ii, iii, id, xdias : integer;

begin

  for I := 1 to 6 do
    begin
      for ii := 1 to 3 do
        begin
          for iii := 1 to 15 do
            begin

              if (vdataLimite > vData_embrapa[i, ii, iii]) and
                 (vQtdeAnimalAtual_Embrapa[i, ii, iii] > 0) and
                 (not vgravou_embrapa[i, ii, iii]) then
                begin
                  //xdias := daysBetween(vdataLimite, vData_embrapa[i, ii, iii]);
                  vdataScala := vData_embrapa[i, ii, iii];
                  //for Id := 1 to xdias do
                    begin
                      vid_raca := i;
                      vCastFemNormal := ii;
                      vseq_raca := iii;

                      //if vQtdeAnimalAtual_Embrapa[i, ii, iii] > 0 then
                        begin
                          {if id > 1 then
                            begin
                              CalculaPesoConsumo_embrapa;
                              vdataScala := incDay(vdataScala, 1);
                            end;}

                          GravaPosi��oDiariaAnimais_embrapa;
                          vgravou_embrapa[i, ii, iii] := true;
                          if vtemerro then
                            abort;

                        end;
                    end;
                end;

            end;
        end;
    end;

  for I := 1 to 20 do
    begin

      if (vdataLimite > vData_semRaca[i]) and
         (vQtdeAnimalAtual_semRaca[i] > 0) and
         (not vgravou_semRaca[i]) then
        begin
          //xdias := daysBetween(vdataLimite, vData_semRaca[i]);
          vdataScala := vData_semRaca[i];
          //for Id := 1 to xdias do
            begin
              vseq_sem_raca := i;

              //if vQtdeAnimalAtual_semRaca[i] > 0 then
                begin
                  {if id > 1 then
                    begin
                      CalculaPesoConsumo_semRaca;
                      vdataScala := incDay(vdataScala, 1);
                    end;}

                  GravaPosi��oDiariaAnimais_semRaca;
                  vgravou_semRaca[i] := true;
                  if vtemerro then
                    abort;

                end;
            end;
        end;

    end;

end;

procedure TfrmControlforr.GravaPosi��oDiariaAnimais_embrapa;
begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, castrado, femea, normal, nome_area, ' +
  '     id_raca, seq_raca, seq_tipo, peso_vivo_inicial_cabeca, ' +
  '     qtde_animal_atual, peso_vivo_ganho_acumulado, peso_vivo_ganho_diario_cabeca,' +
  '     consumo_acumulado, consumo_diario, seq_unica' +
  '     ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :castrado, :femea, :normal, :nome_area, ' +
  '     :id_raca, :seq_raca, :seq_tipo, :peso_vivo_inicial_cabeca, ' +
  '     :qtde_animal_atual, :peso_vivo_ganho_acumulado, :peso_vivo_ganho_diario_cabeca,' +
  '     :consumo_acumulado, :consumo_diario, :seq_unica' +
  '     ) ';

  qryGeral2.Params[0].AsInteger := vseq_empresaAnt;
  qryGeral2.Params[1].AsInteger := vseq_area_geralAnt;
  qryGeral2.Params[2].AsInteger := vseq_areaAnt;

  qryGeral2.Params[3].AsInteger := 29;
  qryGeral2.Params[4].AsString := 'Consumo-Peso Animal/dia Embrapa';
  qryGeral2.Params[5].AsString := dateTimeTOstr(vdataScala);

  qryGeral2.Params[6].AsString := ''; //descri��o
  qryGeral2.Params[7].AsString := vDescricaoTipo_embrapa[vid_raca, vCastFemNormal, vseq_raca];

  if vCastFemNormal = 1 then
    begin
      qryGeral2.Params[8].asboolean := true;
      qryGeral2.Params[9].asboolean := false;
      qryGeral2.Params[10].asboolean := false;
    end
  else
  if vCastFemNormal = 2 then
    begin
      qryGeral2.Params[8].asboolean := false;
      qryGeral2.Params[9].asboolean := true;
      qryGeral2.Params[10].asboolean := false;
    end
  else
    begin
      qryGeral2.Params[8].asboolean := false;
      qryGeral2.Params[9].asboolean := false;
      qryGeral2.Params[10].asboolean := true;
    end;

  qryGeral2.Params[11].asstring := vnome_areaAnt;
  qryGeral2.Params[12].asinteger := vid_raca;
  qryGeral2.Params[13].asinteger := vseq_raca;

  qryGeral2.Params[14].asinteger := vseq_tipo_animal_embrapa[vid_raca, vCastFemNormal, vseq_raca];

  qryGeral2.Params[15].AsCurrency := vPesoVivo_Embrapa[vid_raca, vseq_raca];
  qryGeral2.Params[16].AsCurrency := vQtdeAnimalAtual_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
  qryGeral2.Params[17].AsCurrency := vPesoVivoGanhoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
  qryGeral2.Params[18].AsCurrency := vPesoVivoGanhoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
  qryGeral2.Params[19].AsCurrency := vConsumoAcumulado_Embrapa[vid_raca, vCastFemNormal, vseq_raca];
  qryGeral2.Params[20].AsCurrency := vConsumoDiario_Embrapa[vid_raca, vCastFemNormal, vseq_raca];

  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[21].AsInteger := vseq_unica;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento diario de animais embrapa na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.GravaPosi��oDiariaAnimais_semRaca;
begin

  vTemErro := true;

  qryGeral2.Close;
  qryGeral2.SQL.Text :=
  ' insert into linha_dotempo_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, ordem, tipo, data, descricao, ' +
  '     descricao_tipo, nome_area, ' +
  '     seq_sem_raca, seq_tipo, peso_vivo_inicial_cabeca, ' +
  '     qtde_animal_atual, peso_vivo_ganho_acumulado, peso_vivo_ganho_diario_cabeca,' +
  '     consumo_acumulado, consumo_diario, perc_consumo, seq_unica' +
  '     ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :ordem, :tipo, :data, :descricao, ' +
  '     :descricao_tipo, :nome_area, ' +
  '     :seq_sem_raca, :seq_tipo, :peso_vivo_inicial_cabeca, ' +
  '     :qtde_animal_atual, :peso_vivo_ganho_acumulado, :peso_vivo_ganho_diario_cabeca,' +
  '     :consumo_acumulado, :consumo_diario, :perc_consumo, :seq_unica' +
  '     ) ';

  qryGeral2.Params[0].AsInteger := vseq_empresaAnt;
  qryGeral2.Params[1].AsInteger := vseq_area_geralAnt;
  qryGeral2.Params[2].AsInteger := vseq_areaAnt;

  qryGeral2.Params[3].AsInteger := 28;
  qryGeral2.Params[4].AsString := 'Consumo-Peso Animal/dia semRa�a';
  qryGeral2.Params[5].AsString := dateTimeTOstr(vdataScala);

  qryGeral2.Params[6].AsString := ''; //descri��o
  qryGeral2.Params[7].AsString := vDescricaoTipo_semraca[vseq_sem_raca];

  qryGeral2.Params[8].asstring := vnome_areaAnt;
  qryGeral2.Params[9].AsInteger := vseq_sem_raca;

  qryGeral2.Params[10].asinteger := vseq_tipo_animal_semRaca[vseq_sem_raca];

  qryGeral2.Params[11].AsCurrency := vPeso_Vivo_semRaca[vseq_sem_raca];
  qryGeral2.Params[12].AsCurrency := vQtdeAnimalAtual_semRaca[vseq_sem_raca];
  qryGeral2.Params[13].AsCurrency := vPesoVivoGanhoAcumulado_semRaca[vseq_sem_raca];
  qryGeral2.Params[14].AsCurrency := vGanho_DePeso_diakg_semRaca[vseq_sem_raca] *
                                     vQtdeAnimalAtual_semRaca[vseq_sem_raca];
  qryGeral2.Params[15].AsCurrency := vConsumoAcumulado_semRaca[vseq_sem_raca];
  qryGeral2.Params[16].AsCurrency := vConsumoDiario_semRaca[vseq_sem_raca];
  qryGeral2.Params[17].AsCurrency := vPerc_Consumo_mspvdia_semRaca[vseq_sem_raca];

  vseq_unica := vseq_unica + 1;
  qryGeral2.Params[18].AsInteger := vseq_unica;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento diario de animais semra�a na tab linha_dotempo_tb : '+E.Message);
      abort;
    end;
  end;

  vTemErro := false;

end;

procedure TfrmControlforr.InicializaVariaveisAnimais;
var i, ii, iii : integer;

begin

  for I := 1 to 6 do
    begin
      for ii := 1 to 3 do
        begin
          for iii := 1 to 15 do
            begin
              vQtdeAnimalAtual_Embrapa[i][ii][iii] := 0;
              vPesoVivoGanhoDiario_Embrapa[i][ii][iii] := 0;
              vPesoVivoGanhoAcumulado_Embrapa[i][ii][iii] := 0;
              vConsumoDiario_Embrapa[i][ii][iii] := 0;
              vConsumoAcumulado_Embrapa[i][ii][iii] := 0;
              vseq_tipo_animal_embrapa[i][ii][iii] := 0;
              vDescricaoTipo_embrapa[i][ii][iii] := '';
              vData_embrapa[i][ii][iii] := strTOdatetime('01/01/1900');
              vgravou_embrapa[i, ii, iii] := false;
            end;
        end;
    end;

  for I := 1 to 20 do
    begin
          vQtdeAnimalAtual_semRaca[i] := 0;
          vPesoVivoGanhoAcumulado_semRaca[i] := 0;
          vConsumoDiario_semRaca[i] := 0;
          vConsumoAcumulado_semRaca[i] := 0;
          vseq_tipo_animal_semRaca[i] := 0;
          vDescricaoTipo_semRaca[i] := '';
          vData_semRaca[i] := strTOdatetime('01/01/1900');
          vgravou_semRaca[i] := false;
    end;

end;

procedure TfrmControlforr.ApagaLinhaTempo;
begin

  lbdata1.Visible := false;
  lbtipo1.Visible := false;
      mm1.Visible := false;
     img1.Visible := false;
  mmdias1.Visible := false;
  mmdias1.Clear;

  lbdata2.Visible := false;
  lbtipo2.Visible := false;
      mm2.Visible := false;
     img2.Visible := false;
  mmdias2.Visible := false;
  mmdias2.Clear;

  lbdata3.Visible := false;
  lbtipo3.Visible := false;
      mm3.Visible := false;
     img3.Visible := false;
  mmdias3.Visible := false;
  mmdias3.Clear;

  lbdata4.Visible := false;
  lbtipo4.Visible := false;
      mm4.Visible := false;
     img4.Visible := false;
  mmdias4.Visible := false;
  mmdias4.Clear;

  lbdata5.Visible := false;
  lbtipo5.Visible := false;
      mm5.Visible := false;
     img5.Visible := false;
  mmdias5.Visible := false;
  mmdias5.Clear;

  lbdata6.Visible := false;
  lbtipo6.Visible := false;
      mm6.Visible := false;
     img6.Visible := false;
  mmdias6.Visible := false;
  mmdias6.Clear;

  lbdata7.Visible := false;
  lbtipo7.Visible := false;
      mm7.Visible := false;
     img7.Visible := false;
  mmdias7.Visible := false;
  mmdias7.Clear;

  lbdata8.Visible := false;
  lbtipo8.Visible := false;
      mm8.Visible := false;
     img8.Visible := false;
  mmdias8.Visible := false;
  mmdias8.Clear;

  lbdata9.Visible := false;
  lbtipo9.Visible := false;
      mm9.Visible := false;
     img9.Visible := false;
  mmdias9.Visible := false;
  mmdias9.Clear;

  lbdata10.Visible := false;
  lbtipo10.Visible := false;
      mm10.Visible := false;
     img10.Visible := false;
  mmdias10.Visible := false;
  mmdias10.Clear;

  lbdata11.Visible := false;
  lbtipo11.Visible := false;
      mm11.Visible := false;
     img11.Visible := false;
  mmdias11.Visible := false;
  mmdias11.Clear;

  lbdata12.Visible := false;
  lbtipo12.Visible := false;
      mm12.Visible := false;
     img12.Visible := false;
  mmdias12.Visible := false;
  mmdias12.Clear;

  lbdata13.Visible := false;
  lbtipo13.Visible := false;
      mm13.Visible := false;
     img13.Visible := false;
  mmdias13.Visible := false;
  mmdias13.Clear;

  lbdata14.Visible := false;
  lbtipo14.Visible := false;
      mm14.Visible := false;
     img14.Visible := false;
  mmdias14.Visible := false;
  mmdias14.Clear;

  lbdata15.Visible := false;
  lbtipo15.Visible := false;
      mm15.Visible := false;
     img15.Visible := false;
  mmdias15.Visible := false;
  mmdias15.Clear;

  lbdata16.Visible := false;
  lbtipo16.Visible := false;
      mm16.Visible := false;
     img16.Visible := false;
  mmdias16.Visible := false;
  mmdias16.Clear;

  lbdata17.Visible := false;
  lbtipo17.Visible := false;
      mm17.Visible := false;
     img17.Visible := false;
  mmdias17.Visible := false;
  mmdias17.Clear;

  lbdata18.Visible := false;
  lbtipo18.Visible := false;
      mm18.Visible := false;
     img18.Visible := false;
  mmdias18.Visible := false;
  mmdias18.Clear;

  lbdata19.Visible := false;
  lbtipo19.Visible := false;
      mm19.Visible := false;
     img19.Visible := false;
  mmdias19.Visible := false;
  mmdias19.Clear;

  lbdata20.Visible := false;
  lbtipo20.Visible := false;
      mm20.Visible := false;
     img20.Visible := false;
  mmdias20.Visible := false;
  mmdias20.Clear;

  lbdata21.Visible := false;
  lbtipo21.Visible := false;
      mm21.Visible := false;
     img21.Visible := false;
  mmdias21.Visible := false;
  mmdias21.Clear;

  lbdata22.Visible := false;
  lbtipo22.Visible := false;
      mm22.Visible := false;
     img22.Visible := false;
  mmdias22.Visible := false;
  mmdias22.Clear;

end;

procedure TfrmControlforr.GanttFlatButton14Click(Sender: TObject);
begin

  CarregaTabelaConsumoEmbrapa;
  if vtemerro then
    exit;

  CarregaTabelaConsumoSemRaca;
  if vtemerro then
    exit;

  pnMontaLTempo.top  := trunc((screen.Height - pnMontaLTempo.Height) / 2);
  pnMontaLTempo.left := trunc((screen.Width - pnMontaLTempo.Width) / 2);
  pnMontaLTempo.BringToFront;

  pnMontaLTempo.Visible := true;
  mminfo.Visible := false;

end;

procedure TfrmControlforr.GanttFlatButton1Click(Sender: TObject);
var xtestaData : tdatetime;
    i, xsec_movto_animalAnt : integer;
    xativo : string;

begin

  if mkeDtAnimais.Text = '00/00/0000' then
    begin
      showmessage('informe a data do movimento inicial para o resumo');
      mkedtAnimais.SetFocus;
      exit;
    end
  else
    begin
      try
        xtestadata := strTOdateTime(mkedtanimais.Text);

      except
        begin
          showmessage('data inv�lida');
          mkedtAnimais.SetFocus;
          exit;
        end;
      end;
    end;

  qrygeral.Close;
  qrygeral.SQL.Text :=
' select m.data_movto_animais as data_orig, m.qtde_animais as qtde_orig,'+
'    m.descricao_movto_animais as descricao_orig, m.cancelado as canc_orig,'+
'	   m1.data_movto_animais as data_transf, m1.qtde_animais as qtde_transf,'+
'	   m1.descricao_movto_animais as descricao_transf, m1.cancelado as canc_transf,'+
'    m.seq_movto_animais, a.nome_area as nome_area, m1.entrada as entrada' +
' from movto_animais_tb m, movto_animais_tb m1, areas_tb a'+
' where m.seq_empresa = :seq_empresa' +
'   and m.data_movto_animais >= :data_movto_animais' +
'   and m1.seq_movto_animais_origem = m.seq_movto_animais'+
'   and a.seq_empresa = m1.seq_empresa' +
'   and a.seq_area_geral = m1.seq_area_geral' +
'   and a.seq_area = m1.seq_area' +
' order by m.seq_movto_animais, m1.seq_movto_animais';

  qrygeral.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qrygeral.Params[1].AsString := mkedtanimais.Text;

  qrygeral.Open;

  mmaux.Color := clinfobk;
  mmaux.Font.Color := clblack;

  mmaux.Lines.Clear;
  mmaux.Lines.Add('');
  mmaux.Lines.Add(' Entradas - Sa�das - Transfer�ncias');

  xsec_movto_animalAnt := 0;

  for I := 1 to qrygeral.RecordCount do
    begin
      if xsec_movto_animalAnt <>
         qrygeral.FieldByName('seq_movto_animais').AsInteger then
        begin
          if qrygeral.FieldByName('canc_orig').AsBoolean then
            xativo := 'inativo'
          else
            xativo := 'ativo';

          mmaux.Lines.Add('');
          mmaux.Lines.Add(' ' +
            qrygeral.FieldByName('data_orig').AsString +
            '   qtde: ' +
            qrygeral.FieldByName('qtde_orig').AsString +
            '   ' +
            trim(qrygeral.FieldByName('descricao_orig').AsString) +
            '   ' +
            xativo
            );

          mmaux.Lines.Add('');
        end;

      if qrygeral.FieldByName('canc_transf').AsBoolean then
        xativo := 'inativo'
      else
        xativo := 'ativo';

      if qrygeral.FieldByName('entrada').AsBoolean then
        begin
          mmaux.Lines.Add('      ' +
            qrygeral.FieldByName('data_transf').AsString +
            '   qtde: ' +
            qrygeral.FieldByName('qtde_transf').AsString +
            '   ' +
            trim(qrygeral.FieldByName('descricao_transf').AsString) +
            //' para ' +
            //trim(qrygeral.FieldByName('nome_area').AsString) +
            '   ' +
            xativo
            );
        end

      else
        begin
          mmaux.Lines.Add('      ' +
            qrygeral.FieldByName('data_transf').AsString +
            '   qtde: ' +
            qrygeral.FieldByName('qtde_transf').AsString +
            '   ' +
            trim(qrygeral.FieldByName('descricao_transf').AsString) +
            '   ' +
            xativo
            );
        end;

      //mmaux.Lines.Add('');

      xsec_movto_animalAnt := qrygeral.FieldByName('seq_movto_animais').AsInteger;
      qrygeral.Next;

    end;

  exibe_mmaux;

end;

procedure TfrmControlforr.GanttFlatButton2Click(Sender: TObject);
begin

  if qryMovto_animais.RecordCount = 0 then
    exit;

  if qryMovto_animais.FieldByName('saida').AsBoolean then
    begin
      showmessage('esse movimento � de sa�da, escolha um movimento de entrada');
      exit;
    end;

  vseq_movto_animais_posicao :=
        qrymovto_animais.FieldByName('seq_movto_animais').AsInteger;

  qryMovto_animais.Close;
  qryMovto_animais.SQL.Clear;
  qryMovto_animais.SQL.Text :=

' Select *' +
' from movto_animais_tb' +
' where (seq_movto_animais = :seq_movto_animais or' +
'        seq_movto_animais_origem = :seq_movto_animais_origem)' +
'   and seq_movto_animais >= :seq_movto_animais2' +
' order by seq_movto_animais';

  qryMovto_animais.Params[0].AsInteger := vseq_movto_animais_posicao;
  qryMovto_animais.Params[1].AsInteger := vseq_movto_animais_posicao;
  qryMovto_animais.Params[2].AsInteger := vseq_movto_animais_posicao;

  qryMovto_animais.Open;

end;

procedure TfrmControlforr.LeEventosCiclo;
begin

  qryEventosCiclo.Close;
  qryEventosCiclo.SQL.Text :=
' select *' +
' from eventos_tb' +
' where data_evento >= :data_evento' +
'   and seq_empresa = :seq_empresa' +
'   and seq_area_geral = :seq_area_geral' +
'   and seq_area = :seq_area' +
'   and seq_tipo_evento = :seq_tipo_evento' +
'   and cancelado <> true' +
' order by data_evento desc';

  qryEventosCiclo.Params[0].AsString := mkeDtCiclo.Text;
  qryEventosCiclo.Params[1].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventosCiclo.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventosCiclo.Params[3].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryEventosCiclo.Params[4].AsInteger :=
        qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger;

  qryEventosCiclo.Open;

  if qryEventosCiclo.RecordCount = 0 then
    lbDescricaoEvento.Caption := '.....'
  else
    lbDescricaoEvento.Caption :=
      qryEventosCiclo.FieldByName('descricao_evento').AsString;

end;

procedure TfrmControlforr.btnovoeveClick(Sender: TObject);
begin

  if qryEventos.State = dsinsert then
    begin
      showmessage('j� est� em modo de inclus�o, digite os dados e clique em grava evento');
      exit;
    end;

  qryEventos.Insert;
  qryEventos.FieldByName('data_evento').AsString := formatDateTime('dd/mm/yyyy', now);
  qryEVentos.FieldByName('valor_evento').AsCurrency := 0;
  qryEventos.FieldByName('qtde_evento').AsCurrency := 0;

  qryTipo_eventocb.First;
  dblTipoEvento.KeyValue:='';

  dbeDescricao_evento.ReadOnly := false;
  dblTipoEvento.ReadOnly := false;
  dbeQtde.ReadOnly := false;
  dbeValor.ReadOnly := false;
  dbeData_evento.ReadOnly := false;

  dbeDescricao_evento.SetFocus;

  btnovoeve.Enabled := false;
  btgravaeve.Enabled := true;
  btcancelaeve.Enabled := true;
  cbeventoCancelado.Enabled := false;
  cbeventoRealizado.Enabled := false;

end;

procedure TfrmControlforr.btgravaeveClick(Sender: TObject);
var i : integer;
    xdataConfere : tdate;

begin

  if qryEventos.State <> dsinsert then
    begin
      showmessage('� permitido somente inclus�o de eventos');
      qryEventos.CancelUpdates;
      exit;
    end;

  if length(dbeDescricao_evento.Text) = 0 then
    begin
      showmessage('informe a descri��o do evento');
      dbeDescricao_evento.SetFocus;
      abort;
    end;

  if ( (length(dbevalor.Text) = 0) or (strTocurr(dbevalor.Text) <= 0) ) and
     (qryTipo_eventocb.FieldByName('exige_valor').AsBoolean) then
    begin
      showmessage('informe o valor gasto no evento');
      dbeValor.SetFocus;
      exit;
    end;

  if ( (length(dbeqtde.Text) = 0) or (strTocurr(dbeqtde.Text) <= 0) ) and
     (qryTipo_eventocb.FieldByName('exige_qtde').AsBoolean) then
    begin
      showmessage('informe a quantidade gasta no evento');
      dbeQtde.SetFocus;
      exit;
    end;

  try
    xdataConfere := strTOdate(dbedata_evento.Text);
    dbeData_evento.text := formatDateTime('dd/mm/yyy', xdataConfere);
  except
    showmessage('data inv�lida');
    dbedata_evento.SetFocus;
    exit;
  end;

  // PROCURA �LTIMA DATA DE CICLO CADASTRADO
  vDataInicioCiclo := DataInicioCiclo(
        qryAreas.FieldByName('seq_empresa').AsInteger,
        qryAreas.FieldByName('seq_area_geral').AsInteger,
        qryAreas.FieldByName('seq_area').AsInteger,
        '31/12/3000');

  if (copy(vDataInicioCiclo, 1, 5) = '!@#$%') and
     (qryTipo_Eventocb.fieldbyname('seq_tipo_evento').asinteger <>
       qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger) then
    begin
      showmessage('falta evento de in�cio de ciclo');
      dbeData_evento.SetFocus;
      exit;
    end
  else
  if (copy(vDataInicioCiclo, 1, 5) <> '!@#$%') and
     (qryTipo_Eventocb.fieldbyname('seq_tipo_evento').asinteger =
       qryPadrao_sistema.
            FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger) and
     (strTOdate(vDataInicioCiclo) = strTOdate(dbeData_evento.Text)) then
    begin
      showmessage('j� existe um evento de in�cio de ciclo para essa data');
      dbeData_evento.SetFocus;
      exit;
    end
  else
  if (copy(vDataInicioCiclo, 1, 5) <> '!@#$%') and
     (strTOdateTime(vDataInicioCiclo) > strTOdateTime(dbeData_evento.Text)) then
    begin
      showmessage('o ciclo j� est� fechado para essa data de evento');
      dbeData_evento.SetFocus;
      exit;
    end;

  qryEventos.FieldByName('seq_empresa').AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryEventos.FieldByName('seq_area_geral').AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryEventos.FieldByName('seq_area').AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryEventos.FieldByName('data_inclusao').AsString := formatDateTime('dd/mm/yyyy', now);
  qryEventos.FieldByName('cancelado').AsBoolean := false;
  qryEventos.FieldByName('realizado').AsBoolean := false;
  qryEventos.FieldByName('descricao_evento').asstring :=
    trim(dbeDescricao_evento.Text) + ' - ' + trim(dblTipoEvento.Text);

  try
    qryEventos.ApplyUpdates;
    qryEventos.CommitUpdates;
  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir evento : '+E.Message);
      qryEventos.CancelUpdates;
      abort;
    end;
  end;

  if qryeventos.FieldByName('seq_tipo_evento').AsInteger =
     qrypadrao_sistema.
        FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger then
    begin
      qryGeral.Close;
      qryGeral.SQL.Text :=
    ' select *' +
    ' from areas_tb' +
    ' where seq_empresa = :seq_empresa' +
    '   and seq_area_geral = :seq_area_geral' +
    '   and seq_area <> :seq_area';

      qryGeral.Params[0].AsInteger :=
            qryAreas.FieldByName('seq_empresa').AsInteger;
      qryGeral.Params[1].AsInteger :=
            qryAreas.FieldByName('seq_area_geral').AsInteger;
      qryGeral.Params[2].AsInteger :=
            qryAreas.FieldByName('seq_area').AsInteger;

      qryGeral.Open;
      if qryGeral.RecordCount > 0 then
        begin

          for I := 1 to qryGeral.RecordCount do
            begin

              qryGeral2.Close;
              qryGeral2.SQL.Text :=
    ' insert into eventos_tb(' +
    '     seq_empresa, seq_area_geral, seq_area, seq_tipo_evento, descricao_evento,' +
    '     valor_evento, data_evento, qtde_evento, data_inclusao, cancelado)' +
    ' values (' +
    '     :seq_empresa, :seq_area_geral, :seq_area, :seq_tipo_evento, :descricao_evento,' +
    '     :valor_evento, :data_evento, :qtde_evento, :data_inclusao, :cancelado)';

              qryGeral2.Params[0].AsInteger :=
                    qryAreas.FieldByName('seq_empresa').AsInteger;
              qryGeral2.Params[1].AsInteger :=
                    qryAreas.FieldByName('seq_area_geral').AsInteger;
              qryGeral2.Params[2].AsInteger :=
                    qryGeral.FieldByName('seq_area').AsInteger;

              qryGeral2.Params[3].AsInteger :=
                    qrypadrao_sistema.
                    FieldByName('seq_tipo_evento_inicio_ciclo').AsInteger;
              qryGeral2.Params[4].AsString :=
                    dbeDescricao_evento.Text;
              qryGeral2.Params[5].AsInteger := 0;
              qryGeral2.Params[6].AsString :=
                    dbeData_evento.Text;
              qryGeral2.Params[7].AsInteger := 0;
              qryGeral2.Params[8].AsString :=
                    formatDateTime('dd/mm/yyyy', now);
              qryGeral2.Params[9].AsBoolean := false;

              qryGeral2.ExecSQL;
              qryGeral.Next;
            end;

        end;
    end;

  ReadOnlyCamposEventos;

  btnovoeve.Enabled := true;
  btgravaeve.Enabled := false;
  btcancelaeve.Enabled := false;
  cbeventoCancelado.Enabled := true;
  cbeventoRealizado.Enabled := true;

  PesquisaEventos;

  showmessage('Evento incluido!');

end;

procedure TfrmControlforr.ReadOnlyCamposEventos;
begin

  dbeDescricao_evento.ReadOnly := true;
  dblTipoEvento.ReadOnly := true;
  dbeQtde.ReadOnly := true;
  dbeValor.ReadOnly := true;
  dbeData_evento.ReadOnly := true;

end;

procedure TfrmControlforr.btcancelaeveClick(Sender: TObject);
begin

  qryEventos.CancelUpdates;
  ReadOnlyCamposEventos;

  btnovoeve.Enabled := true;
  btgravaeve.Enabled := false;
  btcancelaeve.Enabled := false;
  cbeventoCancelado.Enabled := true;
  cbeventoRealizado.Enabled := true;

end;

procedure TfrmControlforr.btPesquisarSupClick(Sender: TObject);
var xtestadata : tdatetime;

begin

  if mkeDtSuplemento.Text = '00/00/0000' then
    begin
      try
        xtestadata := strTOdateTime(mkeDtInclusaoSup.Text);

      except
        begin
          showmessage('data inv�lida');
          mkeDtInclusaoSup.SetFocus;
          exit;
        end;
      end;
    end

  else
    begin
      try
        xtestadata := strTOdateTime(mkeDtSuplemento.Text);

      except
        begin
          showmessage('data inv�lida');
          mkeDtSuplemento.SetFocus;
          exit;
        end;
      end;
    end;

  pesquisaMovtoSuplemento;

end;

procedure TfrmControlforr.pesquisaMovtoSuplemento;
var xfiltroData, xorderby : string;

begin

  if mkeDtSuplemento.Text <> '00/00/0000' then
    xfiltroData := ' and data_movto_suplemento >= :dt'
  else
  if mkeDtInclusaoSup.Text <> '00/00/0000' then
    xfiltroData := ' and data_inclusao >= :dt'
  else
    begin
      showmessage('informe uma data para pesquisa');
      mkeDtSuplemento.SetFocus;
      exit;
    end;

  if vsortData then
    if vcresc then
      xorderby := ' order by data_movto_suplemento asc, seq_movto_suplementos'
    else
      xorderby := ' order by data_movto_suplemento desc, seq_movto_suplementos'
  else
  if vsortInclusao then
    if vcresc then
      xorderby := ' order by data_inclusao asc, seq_movto_suplementos'
    else
      xorderby := ' order by data_inclusao desc, seq_movto_suplementos'
  else
  if vsortDescricao then
    if vcresc then
      xorderby := ' order by descricao_movto_suplemento asc, seq_movto_suplementos'
    else
      xorderby := ' order by descricao_movto_suplemento desc, seq_movto_suplementos'
  else
  if vinativo then
    begin
      xorderby := ' order by data_movto_suplemento asc, seq_movto_suplementos';
      xfiltroData := xfiltroData + ' and cancelado = :cancelado ';
    end
  else
  if vrealizado then
    begin
      xorderby := ' order by data_movto_suplemento asc, seq_movto_suplementos';
      xfiltroData := xfiltroData + ' and realizado = :realizado ';
    end
  else
    xorderby := ' order by data_movto_suplemento asc, seq_movto_suplementos';

  qryMovto_Suplementos.Close;
  qryMovto_Suplementos.SQL.Clear;
  qryMovto_Suplementos.SQL.Text :=

' Select *' +
' from movto_suplementos_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_area_geral = :seq_area_geral' +
'   and seq_area = :seq_area' +
xfiltroData +
xorderby;

  qryMovto_Suplementos.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryMovto_Suplementos.Params[1].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryMovto_Suplementos.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;

  if mkeDtSuplemento.Text <> '00/00/0000' then
    qryMovto_Suplementos.Params[3].AsString := mkeDtSuplemento.Text
  else
    qryMovto_Suplementos.Params[3].AsString := mkeDtInclusaoSup.Text;

  if vinativo then
    if vcresc then
      qryMovto_Suplementos.Params[4].AsBoolean := true
    else
      qryMovto_Suplementos.Params[4].AsBoolean := false;

  if vrealizado then
    if vcresc then
      qryMovto_Suplementos.Params[4].AsBoolean := true
    else
      qryMovto_Suplementos.Params[4].AsBoolean := false;

  qryMovto_Suplementos.Open;

end;

procedure TfrmControlforr.pnNomeArquivoGraficoClick(Sender: TObject);
begin

  pnNomeArquivoGrafico.Visible := false;

end;

procedure TfrmControlforr.qryPadrao_sistemaBeforePost(DataSet: TDataSet);
begin

  if (length(dbePercPerdaAcamamento.Text) = 0) or
     (strTOcurr(dbePercPerdaAcamamento.Text) < 0.01) then
    begin
      showmessage('informe o percentual de perda por acamamento relativo ao '+
                  'consumo do animal');
      dbePercPerdaAcamamento.SetFocus;
      abort;
    end;

  if (length(dbeDiasEstimadoCrescimento.Text) = 0) or
     (strTOcurr(dbeDiasEstimadoCrescimento.Text) < 1) then
    begin
      showmessage('informe a quantidade de dias que se pode considerar o '+
                  'crescimento da forragem por estimativa, quando o piquete '+
                  'est� ocupado');
      dbeDiasEstimadoCrescimento.SetFocus;
      abort;
    end;

end;

procedure TfrmControlforr.qryTipo_AnimalAfterDelete(DataSet: TDataSet);
begin

  qryTipo_animal.ApplyUpdates;
  qryTipo_animal.CommitUpdates;

  Calcula_seq_sem_raca;

end;

procedure TfrmControlforr.qryTipo_AnimalAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_animal.FieldByName('tipo_animal_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de animal � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_animal.CancelUpdates;
    end;

end;

procedure TfrmControlforr.qryTipo_AnimalAfterPost(DataSet: TDataSet);
begin

  qryTipo_animal.ApplyUpdates;
  qryTipo_animal.CommitUpdates;

  Calcula_seq_sem_raca;

end;

procedure TfrmControlforr.Calcula_seq_sem_raca;
var xseq_sem_raca, i : integer;

begin

  xseq_sem_raca := 0;

  qryTipo_animal_change.Close;
  qryTipo_animal_change.SQL.Text :=
' select *' +
' from tipo_animal_tb' +
' where id_raca is null or id_raca = 0';

  qryTipo_animal_change.Open;
  for I := 1 to qryTipo_animal_change.recordcount do
    begin
      qryTipo_animal_change.Edit;
      xseq_sem_raca := xseq_sem_raca + 1;
      qryTipo_animal_change.FieldByName('seq_sem_raca').AsInteger := xseq_sem_raca;
      qryTipo_animal_change.ApplyUpdates;
      qryTipo_animal_change.CommitUpdates;

      qryTipo_animal_change.Next;
    end;

end;

procedure TfrmControlforr.qryTipo_AnimalBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_animal.FieldByName('tipo_animal_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de animal � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmControlforr.qryTipo_AnimalBeforePost(DataSet: TDataSet);
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

  if length(dbeTganhoDepesoDiakg.Text) = 0 then
    begin
      showmessage('informe o ganho m�dio de peso por dia em kg do tipo de animal, por cabe�a');
      dbeTganhoDepesoDiakg.SetFocus;
      abort;
    end;

  if strToCurr(dbeTganhoDepesoDiakg.Text) <= 0 then
    begin
      showmessage('informe o ganho m�dio de peso por dia em kg do tipo de animal, por cabe�a');
      dbeTganhoDepesoDiakg.SetFocus;
      abort;
    end;

end;

procedure TfrmControlforr.qrytipo_EventoAfterDelete(DataSet: TDataSet);
begin

  qryTipo_Evento.ApplyUpdates;
  qryTipo_Evento.CommitUpdates;

end;

procedure TfrmControlforr.qrytipo_EventoAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_evento.FieldByName('tipo_evento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de evento � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_evento.CancelUpdates;
    end;

end;

procedure TfrmControlforr.qrytipo_EventoAfterPost(DataSet: TDataSet);
begin

  qryTipo_evento.ApplyUpdates;
  qryTipo_evento.CommitUpdates;

end;

procedure TfrmControlforr.qrytipo_EventoBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_evento.FieldByName('tipo_evento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de evento � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmControlforr.qrytipo_EventoBeforePost(DataSet: TDataSet);
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

  if (dcbSaida.Checked) and
     (qryUnidades2.FieldByName('seq_unidade').AsInteger <>
      qryPadrao_sistema.FieldByName('seq_unidade_kg').AsInteger) then
    begin
      showmessage('para sa�da de forragem use somente unidade de kg');
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

procedure TfrmControlforr.qryTipo_SuplementoAfterDelete(DataSet: TDataSet);
begin

  qryTipo_suplemento.ApplyUpdates;
  qryTipo_suplemento.CommitUpdates;

end;

procedure TfrmControlforr.qryTipo_SuplementoAfterEdit(DataSet: TDataSet);
begin

  if qryTipo_suplemento.FieldByName('tipo_suplemento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de suplemento � padr�o do sistema, n�o pode ser alterado nem apagado');
      qryTipo_suplemento.CancelUpdates;
    end;

end;

procedure TfrmControlforr.qryTipo_SuplementoAfterPost(DataSet: TDataSet);
begin

  qryTipo_suplemento.ApplyUpdates;
  qryTipo_suplemento.CommitUpdates;

end;

procedure TfrmControlforr.qryTipo_SuplementoBeforeDelete(DataSet: TDataSet);
begin

  if qryTipo_suplemento.FieldByName('tipo_suplemento_padrao').AsBoolean then
    begin
      showmessage('Esse tipo de suplemento � padr�o do sistema, n�o pode ser alterado nem apagado');
      abort;
    end;

end;

procedure TfrmControlforr.qryTipo_SuplementoBeforePost(DataSet: TDataSet);
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

procedure TfrmControlforr.TabSheet11Exit(Sender: TObject);
begin

  qryPadrao_sistema.ApplyUpdates;
  qryPadrao_sistema.CommitUpdates;

end;

procedure TfrmControlforr.btnovosupClick(Sender: TObject);
begin

  if qryMovto_Suplementos.State = dsinsert then
    begin
      showmessage('j� est� em modo de inclus�o, digite os dados e clique em grava movto');
      exit;
    end;

  qryMovto_Suplementos.Insert;
  qryMovto_Suplementos.FieldByName('data_movto_suplemento').AsString := formatDateTime('dd/mm/yyyy', now);
  qryMovto_Suplementos.FieldByName('valor_suplemento_emreais').AsCurrency := 0;
  qryMovto_Suplementos.FieldByName('qtde_suplemento').AsCurrency := 0;

  qryTipo_suplementocb.First;
  dblTipoSuplemento.KeyValue:='';

  dbeDescricao_movto_suplemento.ReadOnly := false;
  dblTipoSuplemento.ReadOnly := false;
  dbeQtdeSup.ReadOnly := false;
  dbeValorSup.ReadOnly := false;
  dbeDataSup.ReadOnly := false;
  dbeQtdeDiasUsado.ReadOnly := false;

  dbeDescricao_movto_suplemento.SetFocus;

  btnovosup.Enabled := false;
  btgravasup.Enabled := true;
  btcancelasup.Enabled := true;
  cbmovtoSupCancelado.Enabled := false;
  cbmovtoSupRealizado.Enabled := false;

end;

procedure TfrmControlforr.btGravaSupClick(Sender: TObject);
var xdataConfere : tdatetime;

begin

  if qryMovto_suplementos.State <> dsinsert then
    begin
      showmessage('� permitido somente inclus�o de movimentos de suplemento');
      qryMovto_suplementos.CancelUpdates;
      exit;
    end;

  if length(dbeDescricao_movto_suplemento.Text) = 0 then
    begin
      showmessage('informe a descri��o do movimento de suplemento');
      dbeDescricao_movto_suplemento.SetFocus;
      abort;
    end;

  if length(dblTipoSuplemento.Text) = 0 then
    begin
      showmessage('informe o tipo de suplento a ser usado');
      dblTipoSuplemento.SetFocus;
      abort;
    end;

  if ( (length(dbeqtdeSup.Text) = 0) or (strTocurr(dbeqtdeSup.Text) <= 0) ) then
    begin
      showmessage('informe a quantidade de suprimento gasta no movimento');
      dbeQtdeSup.SetFocus;
      exit;
    end;

  if ( (length(dbevalorSup.Text) = 0) or (strTocurr(dbevalorSup.Text) <= 0) ) then
    begin
      showmessage('informe o valor do suprimento gasto no movimento');
      dbeValorSup.SetFocus;
      exit;
    end;

  if ( (length(dbeqtdeDiasUsado.Text) = 0) or (strTocurr(dbeqtdeDiasUsado.Text) <= 0) ) then
    begin
      showmessage('informe em quantos dias a quantidade do suprimento ser� distribuida e utilizada');
      dbeqtdeDiasUsado.SetFocus;
      exit;
    end;

  try
    xdataConfere := strTOdateTime(dbedataSup.Text);
  except
    showmessage('data inv�lida');
    dbedataSup.SetFocus;
    exit;
  end;

  // PROCURA DATA DE FIM DO CICLO
  vDataFimCiclo := dataFimCiclo(
        qryAreas.FieldByName('seq_empresa').AsInteger,
        qryAreas.FieldByName('seq_area_geral').AsInteger,
        qryAreas.FieldByName('seq_area').AsInteger,
        dbeDataSup.Text);
  if vDataFimCiclo <> '31/12/3000' then
    begin
      showmessage('o ciclo j� est� fechado para essa data de movimento');
      dbeDataSup.SetFocus;
      exit;
    end;

  qryMovto_suplementos.FieldByName('seq_empresa').AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryMovto_suplementos.FieldByName('seq_area_geral').AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryMovto_suplementos.FieldByName('seq_area').AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;
  qryMovto_suplementos.FieldByName('data_inclusao').AsString := formatDateTime('dd/mm/yyyy', now);
  qryMovto_suplementos.FieldByName('cancelado').AsBoolean := false;
  qryMovto_suplementos.FieldByName('realizado').AsBoolean := false;
  qryMovto_suplementos.FieldByName('descricao_movto_suplemento').asstring :=
    trim(dbeDescricao_movto_suplemento.Text) + ' - ' + trim(dblTipoSuplemento.Text);

  try
    qryMovto_suplementos.ApplyUpdates;
    qryMovto_suplementos.CommitUpdates;
  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento suplemento : '+E.Message);
      qryMovto_suplementos.CancelUpdates;
      abort;
    end;
  end;

  ReadOnlyCamposSuplementos;

  btnovosup.Enabled := true;
  btgravasup.Enabled := false;
  btcancelasup.Enabled := false;
  cbMovtoSupCancelado.Enabled := true;
  cbmovtoSupRealizado.Enabled := true;

  pesquisaMovtoSuplemento;

  showmessage('Movimento incluido!');

end;

procedure TfrmControlforr.ReadOnlyCamposSuplementos;
begin

  dbeDescricao_movto_suplemento.ReadOnly := true;
  dblTipoSuplemento.ReadOnly := true;
  dbeQtdeSup.ReadOnly := true;
  dbeValorSup.ReadOnly := true;
  dbeDataSup.ReadOnly := true;
  dbeQtdeDiasUsado.ReadOnly := true;

end;

procedure TfrmControlforr.btcancelaSupClick(Sender: TObject);
begin

  qryMovto_suplementos.CancelUpdates;
  ReadOnlyCamposSuplementos;

  btnovosup.Enabled := true;
  btgravasup.Enabled := false;
  btcancelasup.Enabled := false;
  cbMovtoSupCancelado.Enabled := true;
  cbmovtoSupRealizado.Enabled := true;

end;

procedure TfrmControlforr.btContinuaClick(Sender: TObject);
var xtestaData : tdatetime;
    xtestaPeso : currency;
    xDataAux : string;

begin

  try
    xtestaData := strTOdateTime(mkedataSaida.Text);
  except
    showmessage('data de sa�da inv�lida');
    mkedataSaida.SetFocus;
    exit
  end;

  try
    xtestaPeso := strTOcurr(mkePesoSaida.Text);
  except
    showmessage('peso de sa�da inv�lido');
    mkePesoSaida.SetFocus;
    exit
  end;

  if xtestaData <
     qryMovto_animais.FieldByName('data_movto_animais').AsDateTime then
    begin
      showmessage('data de sa�da menor que a data de entrada dos animais');
      mkedataSaida.SetFocus;
      exit
    end;

  if vsaldoAnimais = 0 then
    begin
      showmessage('n�o existe mais animais a ser transferido, saldo = ' +
                  vsaldoanimais.ToString );
      mkeqtdeSaida.SetFocus;
      exit
    end;

  if vsaldoAnimais < strTOint(trim(mkeQtdeSaida.Text)) then
    begin
      showmessage('qtde de sa�da maior que o saldo restante da entrada de animais = ' +
                  vsaldoanimais.ToString );
      mkeqtdeSaida.SetFocus;
      exit
    end;

  if strTOint(trim(mkeQtdeSaida.Text)) = 0 then
    begin
      showmessage('quantidade de sa�da de animais est� zerada');
      mkeqtdeSaida.SetFocus;
      exit
    end;

  if xtestaPeso <
    qryMovto_animais.FieldByName('peso_vivo_emkg').AsCurrency then
    begin
      showmessage('peso de sa�da menor que o peso de entrada');
      mkepesoSaida.SetFocus;
      exit
    end;

  if trim(mkeDataEntrada.Text) = '00/00/0000' then
    if MessageDlg ('A data de entrada n�o est� informada, n�o ser� feito nenhuma' +
                   ' transfer�ncia, prossegue?'
                 , mtWarning,[mbYes, mbNo], 0) = mrNo then
      begin
        mkeDataEntrada.SetFocus;
        exit;
      end;

  if trim(mkeDataEntrada.Text) <> '00/00/0000' then
    begin
      try
        xtestaData := strTOdateTime(mkedataEntrada.Text);
      except
        showmessage('data de entrada inv�lida');
        mkedataEntrada.SetFocus;
        exit
      end;

      if strTOdateTIme(mkeDataEntrada.Text) > strToDateTime(mkeDataSaida.Text) then
      else
        begin
          showmessage('a data de entrada na transfer�ncia tem de ser maior que a data ' +
                      'de sa�da');
          mkedataEntrada.SetFocus;
          exit
        end;

      if lbpiquete_transfere.Caption = '...' then
        begin
          showmessage('piquete de transfer�ncia n�o informado, clique na tabela de piquetes ' +
                      'para selecionar');
          exit
        end;

      if lbtipo_animal_transfere.Caption = '...' then
        begin
          showmessage('tipo de animal n�o informado, clique na tabela de tipo de animais ' +
                      'para selecionar');
          exit
        end;

      if qryMovto_animais.FieldByName('seq_area').AsInteger =
         qrypiquetes.FieldByName('seq_area').AsInteger then
        if qryMovto_animais.FieldByName('seq_tipo_animal').AsInteger =
           qryTipo_animal.FieldByName('seq_tipo_animal').AsInteger then
          begin
            showmessage('o piquete de transfer�ncia � o mesmo da sa�da, escolha outro');
            exit
          end;

      // PROCURA DATA DE FIM E IN�CIO DO CICLO
      if qryMovto_animais.FieldByName('seq_area_geral').AsInteger <>
         qrypiquetes.FieldByName('seq_area_geral').AsInteger then
        begin
          xDataAux := dataFimCiclo(
                qrypiquetes.FieldByName('seq_empresa').AsInteger,
                qrypiquetes.FieldByName('seq_area_geral').AsInteger,
                qrypiquetes.FieldByName('seq_area').AsInteger,
                trim(mkedataEntrada.Text));
          if xDataAux <> '31/12/3000' then
            begin
              showmessage('o ciclo j� est� fechado para esse movimento, ' +
                          'para essa data de entrada no piquete ' +
                          qrypiquetes.FieldByName('nome_area').AsString + ' - ' +
                          qrypiquetes.FieldByName('nome_area_geral').AsString + ' - ' +
                          qrypiquetes.FieldByName('nome_empresa').AsString
                          );
              exit;
            end;

          xDataAux := dataInicioCiclo(
                qrypiquetes.FieldByName('seq_empresa').AsInteger,
                qrypiquetes.FieldByName('seq_area_geral').AsInteger,
                qrypiquetes.FieldByName('seq_area').AsInteger,
                trim(mkedataEntrada.Text));
          if (copy(xDataAux, 1, 5) = '!@#$%') then
            begin
              showmessage('n�o foi encontrado a data de in�cio do ciclo ' +
                          'para essa data de entrada no piquete ' +
                          qrypiquetes.FieldByName('nome_area').AsString + ' - ' +
                          qrypiquetes.FieldByName('nome_area_geral').AsString + ' - ' +
                          qrypiquetes.FieldByName('nome_empresa').AsString
                          );
              exit;
            end;
        end;

    end;

  qrygeral2.Close;
  qrygeral2.SQL.Text :=
  ' insert into movto_animais_tb(' +
  '     seq_empresa, seq_area_geral, seq_area, data_inclusao, cancelado, ' +
  '     entrada, saida, femea, castrado, normal, peso_vivo_emkg, ' +
  '     descricao_movto_animais, seq_tipo_animal, perc_consumo_mspvdia,' +
  '     ganho_depeso_diakg, qtde_animais, data_movto_animais, seq_movto_animais_origem,' +
  '     realizado ' +
  '      ) ' +
  ' values (' +
  '     :seq_empresa, :seq_area_geral, :seq_area, :data_inclusao, :cancelado, ' +
  '     :entrada, :saida, :femea, :castrado, :normal, :peso_vivo_emkg, ' +
  '     :descricao_movto_animais, :seq_tipo_animal, :perc_consumo_mspvdia,' +
  '     :ganho_depeso_diakg, :qtde_animais, :data_movto_animais, :seq_movto_animais_origem,' +
  '     :realizado' +
  '      ) ';

  qryGeral2.Params[0].AsInteger :=
        qryMovto_animais.FieldByName('seq_empresa').AsInteger;
  qryGeral2.Params[1].AsInteger :=
        qryMovto_animais.FieldByName('seq_area_geral').AsInteger;
  qryGeral2.Params[2].AsInteger :=
        qryMovto_animais.FieldByName('seq_area').AsInteger;

  qryGeral2.Params[3].AsString := formatDateTime('dd/mm/yyyy', now); // data inclusao
  qryGeral2.Params[4].AsBoolean := false; // cancelado;

  qryGeral2.Params[5].AsBoolean := false; //entrada;
  qryGeral2.Params[6].AsBoolean := true; //saida;
  qryGeral2.Params[7].AsBoolean := qryMovto_animais.FieldByName('femea').AsBoolean;
  qryGeral2.Params[8].AsBoolean := qryMovto_animais.FieldByName('castrado').AsBoolean;
  qryGeral2.Params[9].AsBoolean := qryMovto_animais.FieldByName('normal').AsBoolean;

  qryGeral2.Params[10].AsString := mkePesoSaida.Text;

  if trim(mkeDataEntrada.Text) = '00/00/0000' then
    begin
      qryGeral2.Params[11].AsString :=     //descri��o do movimento animal
                  'sa�da piquete ' +
                  trim(qryAreas.FieldByName('nome_area').AsString) + ' - ' +
                  trim(qrytipo_animalcb.FieldByName('descricao_tipo_animal').AsString);
    end

  else
    begin
      qryGeral2.Params[11].AsString :=     //descri��o do movimento animal
                  'sa�da do piquete ' +
                  trim(qryAreas.FieldByName('nome_area').AsString) +
                  ' p/ ' +
                  trim(qryPiquetes.FieldByName('nome_area').AsString) +
                  ' - ' +
                  trim(qrytipo_animalcb.FieldByName('descricao_tipo_animal').AsString);
    end;

  qryGeral2.Params[12].AsInteger :=
              qryMovto_animais.FieldByName('seq_tipo_animal').AsInteger;

  qryGeral2.Params[13].AsCurrency :=
              qryMovto_animais.FieldByName('perc_consumo_mspvdia').AsCurrency;
  qryGeral2.Params[14].AsCurrency :=
              qryMovto_animais.FieldByName('ganho_depeso_diakg').AsCurrency;

  qryGeral2.Params[15].AsString := mkeQtdeSaida.Text;
  qryGeral2.Params[16].AsDateTime := strTOdateTIme(mkeDataSaida.Text);
  qryGeral2.Params[17].AsInteger :=
              qryMovto_animais.FieldByName('seq_movto_animais').AsInteger;
  qryGeral2.Params[18].AsBoolean := false;

  try
    qryGeral2.ExecSQL;

  except
    on E : Exception do
    begin
      ShowMessage('Erro ao incluir movimento animais saida em movto_animais_tb : '+E.Message);
      exit;
    end;
  end;

  if trim(mkeDataEntrada.Text) <> '00/00/0000' then
    begin
      qrygeral2.Close;
      qrygeral2.SQL.Text :=
      ' insert into movto_animais_tb(' +
      '     seq_empresa, seq_area_geral, seq_area, data_inclusao, cancelado, ' +
      '     entrada, saida, femea, castrado, normal, peso_vivo_emkg, ' +
      '     descricao_movto_animais, seq_tipo_animal, perc_consumo_mspvdia,' +
      '     ganho_depeso_diakg, qtde_animais, data_movto_animais, seq_movto_animais_origem' +
      '      ) ' +
      ' values (' +
      '     :seq_empresa, :seq_area_geral, :seq_area, :data_inclusao, :cancelado, ' +
      '     :entrada, :saida, :femea, :castrado, :normal, :peso_vivo_emkg, ' +
      '     :descricao_movto_animais, :seq_tipo_animal, :perc_consumo_mspvdia,' +
      '     :ganho_depeso_diakg, :qtde_animais, :data_movto_animais, :seq_movto_animais_origem' +
      '      ) ';

      qryGeral2.Params[0].AsInteger :=
            qrypiquetes.FieldByName('seq_empresa').AsInteger;
      qryGeral2.Params[1].AsInteger :=
            qrypiquetes.FieldByName('seq_area_geral').AsInteger;
      qryGeral2.Params[2].AsInteger :=
            qrypiquetes.FieldByName('seq_area').AsInteger;

      qryGeral2.Params[3].AsString := formatDateTime('dd/mm/yyyy', now); // data inclusao
      qryGeral2.Params[4].AsBoolean := false; // cancelado;

      qryGeral2.Params[5].AsBoolean := true; //entrada;
      qryGeral2.Params[6].AsBoolean := false; //saida;
      qryGeral2.Params[7].AsBoolean := qryMovto_animais.FieldByName('femea').AsBoolean;
      qryGeral2.Params[8].AsBoolean := qryMovto_animais.FieldByName('castrado').AsBoolean;
      qryGeral2.Params[9].AsBoolean := qryMovto_animais.FieldByName('normal').AsBoolean;

      qryGeral2.Params[10].AsString := edpeso_vivo_emkg.Text;
      qryGeral2.Params[11].AsString :=     //descri��o do movimento animal
                  'transf piquete ' +
                  trim(qryAreas.FieldByName('nome_area').AsString) +
                  ' p/ ' +
                  trim(qryPiquetes.FieldByName('nome_area').AsString) +
                  ' - ' +
                  trim(qrytipo_animal.FieldByName('descricao_tipo_animal').AsString);

      qryGeral2.Params[12].AsInteger :=
                  qrytipo_animal.FieldByName('seq_tipo_animal').AsInteger;

      qryGeral2.Params[13].AsString := edperc_consumo_mspvdia.Text;
      qryGeral2.Params[14].AsString := edganho_depeso_diakg.Text;

      qryGeral2.Params[15].AsString := mkeQtdeSaida.Text;
      qryGeral2.Params[16].AsDateTime := strTOdateTIme(mkeDataEntrada.Text);
      qryGeral2.Params[17].AsInteger :=
                  qryMovto_animais.FieldByName('seq_movto_animais').AsInteger;

      try
        qryGeral2.ExecSQL;

      except
        on E : Exception do
        begin
          ShowMessage('Erro ao incluir movimento animais transfer�ncia em movto_animais_tb : '+E.Message);
          exit;
        end;
      end;

    end;

  vsaldoAnimais := vsaldoAnimais - strTOint(trim(mkeQtdeSaida.Text));
  mkeQtdeSaida.Text := vsaldoAnimais.ToString;

  mkedataEntrada.Text := '00/00/0000';
  lbpiquete_transfere.Caption := '...';
  lbtipo_animal_transfere.Caption := '...';

  edpeso_vivo_emkg.Text := '';
  edperc_consumo_mspvdia.Text := '';
  edganho_depeso_diakg.Text := '';

  mkeQtdeSaida.SetFocus;

end;

procedure TfrmControlforr.btdiminuiClick(Sender: TObject);
begin

  mminfo.Visible := false;

  if qryCrescimentoForragem.RecordCount = 0 then
    begin
      showmessage('ainda n�o foi feito nenhuma pesquisa de ciclo');
      exit;
    end;

  vseq_unica_idx := vseq_unica_idx - vseq_unica_idxUltima;
  if vseq_unica_idx < 1 then
    vseq_unica_idx := 1;

  vidxCorrige := vidxCorrige * 0.90;

  ControlaMontaTelaGraficaCrescimento;

end;

procedure TfrmControlforr.btPesquisarAniClick(Sender: TObject);
var xtestadata : tdatetime;

begin

  if mkeDtAnimais.Text = '00/00/0000' then
    begin
      try
        xtestadata := strTOdateTime(mkeDtInclusaoAni.Text);

      except
        begin
          showmessage('data inv�lida');
          mkeDtInclusaoAni.SetFocus;
          exit;
        end;
      end;
    end

  else
    begin
      try
        xtestadata := strTOdateTime(mkedtanimais.Text);

      except
        begin
          showmessage('data inv�lida');
          mkedtAnimais.SetFocus;
          exit;
        end;
      end;
    end;

  pesquisaMovtoAnimais;

  if vseq_movto_animais_posicao > 0 then
    qrymovto_animais.Locate(
          'seq_movto_animais', vseq_movto_animais_posicao, [loPartialKey]);

  vseq_movto_animais_posicao := 0;

end;

procedure TfrmControlforr.btnovoaniClick(Sender: TObject);
begin

  if qryMovto_animais.State = dsinsert then
    begin
      showmessage('j� est� em modo de inclus�o, digite os dados e clique em grava movto');
      exit;
    end;

  qryMovto_animais.Insert;
  qryMovto_animais.FieldByName('data_movto_animais').AsString := formatDateTime('dd/mm/yyyy', now);
  qryMovto_animais.FieldByName('peso_vivo_emKg').AsCurrency := 0;
  qryMovto_animais.FieldByName('perc_consumo_mspvdia').AsCurrency := 0;
  qryMovto_animais.FieldByName('qtde_animais').AsCurrency := 0;

  qryTipo_animalcb.First;
  dblTipoAnimal.KeyValue:='';

  dbeDescricao_movto_animais.ReadOnly := false;
  dblTipoAnimal.ReadOnly := false;
  dbeQtdeAnimais.ReadOnly := false;
  //dbePesoAnimais.ReadOnly := false;
  //dbeConsumoAnimais.ReadOnly := false;
  //dbeGanhoDePesoDiakg.ReadOnly := false;
  dbeDataAni.ReadOnly := false;

  cbentrada.ReadOnly := false;
  cbsaida.ReadOnly := false;
  cbfemea.ReadOnly := false;
  cbcastrado.ReadOnly := false;
  cbnormal.ReadOnly := false;

  dbeDescricao_movto_animais.SetFocus;

  btnovoani.Enabled := false;
  btTransfereAnimaisPiquete.Enabled := false;
  btgravaAni.Enabled := true;
  btcancelaAni.Enabled := true;
  cbmovtoAniCancelado.Enabled := false;
  cbMovtoaniRealizado.Enabled := false;

end;

procedure TfrmControlforr.Image2Click(Sender: TObject);
begin

  pnMontaLTempo.Visible := false;

end;

procedure TfrmControlforr.imgConsumoPesoClick(Sender: TObject);
var xidx : integer;

begin

  montaMMinfo;

end;

procedure TfrmControlforr.imgCrescimentoConsumoClick(Sender: TObject);
var xidx : integer;

begin

  montaMMinfo;

end;

procedure TfrmControlforr.imggr1Click(Sender: TObject);
begin

  imgsalva.Picture := imggr1.Picture;
  lbgrafico.Caption := lbg1.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr1cMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr1c.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg1c.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr1.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg1.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr2Click(Sender: TObject);
begin

  imgsalva.Picture := imggr2.Picture;
  lbgrafico.Caption := lbg2.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr2cMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr2c.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg2c.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr2.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg2.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr3Click(Sender: TObject);
begin

  imgsalva.Picture := imggr3.Picture;
  lbgrafico.Caption := lbg3.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr3.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg3.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr4Click(Sender: TObject);
begin

  imgsalva.Picture := imggr4.Picture;
  lbgrafico.Caption := lbg4.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr4.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg4.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr5Click(Sender: TObject);
begin

  imgsalva.Picture := imggr5.Picture;
  lbgrafico.Caption := lbg5.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr5.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg5.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imggr6Click(Sender: TObject);
begin

  imgsalva.Picture := imggr6.Picture;
  lbgrafico.Caption := lbg6.Caption;

  pngrafico.top  := trunc((screen.Height - pngrafico.Height) / 2);
  pngrafico.left := trunc((screen.Width - pngrafico.Width) / 2);
  pngrafico.BringToFront;
  pngrafico.Visible := true;
  frmcontrolforr.Refresh;

end;

procedure TfrmControlforr.imggr6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xfileNameReverse : string;
begin

  if button = mbright then
    begin
      OpenDialog1.Title := 'Selecione o caminho do arquivo de gr�fico';
      OpenDialog1.DefaultExt := '*.bmp';
      OpenDialog1.Filter := 'Arquivos (.bmp)|*.bmp';
      OpenDialog1.InitialDir := vdiretorioGraficos; //ExtractFileDir(application.ExeName);

      if OpenDialog1.Execute then
        begin
          imggr6.Picture.LoadFromFile(OpenDialog1.FileName);
          xfileNameReverse := reverseString(OpenDialog1.FileName);
          xfileNameReverse := copy(xfileNameReverse, 1, pos('\', xfileNameReverse) -1);
          xfileNameReverse := copy(xfileNameReverse, 5, 200);
          xfileNameReverse := reverseString(xfileNameReverse);
          lbg6.Caption := xfileNameReverse;
        end;
    end;

end;

procedure TfrmControlforr.imgSaldoForragemClick(Sender: TObject);
var xidx : integer;

begin

  montaMMinfo;

end;

procedure TfrmControlforr.imgSalvaClick(Sender: TObject);
begin

  pnGrafico.Visible := false;

end;

procedure TfrmControlforr.montaMMinfo;
var xidx, xnroDiaSemana, xtelas : integer;
    xlimiteMaisPerc : currency;

begin

  mminfo.Visible := false;

  xidx := trunc((mouse.CursorPos.x - 11) / 6);

  if xidx > 216 then
    exit;

  if xidx = 0 then
    exit;

  if vseq_unica_idx < 1 then
    exit;

  xtelas := trunc((vseq_unica_idx - 1) / vseq_unica);
  if (xtelas * vseq_unica) < (vseq_unica_idx - 1) then
  else
    xtelas := xtelas - 1;

  xidx := xidx + (xtelas * vseq_unica);

  if xidx > qryCrescimentoForragem.RecordCount then
    exit;

  if xidx > 1100 then
    exit;

  if length(trim(vdatax[xidx])) = 0 then
    exit;

  mminfo.BringToFront;

  if (mouse.CursorPos.x + mminfo.Width) <= imgCrescimentoConsumo.Width then
    mminfo.Left := mouse.CursorPos.x
  else
    mminfo.Left := mouse.CursorPos.x - mminfo.Width;

  if (mouse.CursorPos.y + mminfo.Height) <= imgCrescimentoConsumo.Height then
    mminfo.Top := mouse.CursorPos.y
  else
    mminfo.Top := mouse.CursorPos.y - mminfo.Height;

  mminfo.Top := 140;

  xnroDiaSemana := dayofweek(strTOdate(trim(vdatax[xidx])));

  lb1.Font.Color := clblack;
  lb2.Font.Color := clblack;
  lb3.Font.Color := clblack;
  lb1.Color := clwhite;
  lb2.Color := clwhite;
  lb3.Color := clwhite;
  lb1.Caption := trim(vdatax[xidx]) + ' - ' + trim(vDiaSemana[xnroDiaSemana]);
  lb2.Caption := vqtde_cabeca[xidx].ToString + ' animais';
  lb3.Caption := xidx.ToString + ' dias - ' +
                 formatCurr('##0.#', xidx/7) + ' semanas - ' +
                 formatCurr('##0.#', xidx/30) + ' meses';

  lb4.Font.Color := cllime;
  lb4.Color := clblack;
  lb4.Caption := (formatCurr('###,###,###,##0.##', vforragemMedida_cm[xidx]) + //vforragemMedida_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemMedida_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'
                  );

  lb5.Font.Color := clyellow;
  lb5.Color := clblack;
  lb5.Caption := (formatCurr('###,###,###,##0.##', vforragemcresce_cm[xidx]) +//vforragemcresce_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemcresce_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'
                  );


  lb6.Font.Color := clred;
  lb6.Color := clblack;
  lb6.Caption := (formatCurr('###,###,###,##0.##', vforragemConsumo_cm[xidx]) +//vforragemConsumo_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemConsumo_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'
                  );


  lb7.Font.Color := claqua;
  lb7.Color := clblack;
  lb7.Caption := (formatCurr('###,###,###,##0.##', vforragemAcamamento_cm[xidx]) + //vforragemAcamamento_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemAcamamento_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'
                  );


  lb8.Font.Color := clblack;
  lb8.Color := cl3dlight;
  lb8.Caption := (formatCurr('###,###,###,##0.##', vforragemRetirada_cm[xidx]) + //vforragemRetirada_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemRetirada_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'
                  );


  lb9.Font.Color := clblue;
  lb9.Color := cl3dlight;
  lb9.Caption := (formatCurr('###,###,###,##0.##', vforragemSuplemento_cm[xidx]) + //vforragemSuplemento_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemSuplemento_kg[xidx]/1000) +
                   ' ton para ' +
                   vqtde_cabeca[xidx].ToString +
                   ' animais'
                  );

  lb10.Font.Color := clteal;
  lb10.Color := cl3dlight;
  lb10.Caption := (

                   {(vforragemMedida_cm[xidx] +
                    vforragemcresce_cm[xidx] +
                    vforragemSuplemento_cm[xidx] -
                    vforragemConsumo_cm[xidx] -
                    vforragemAcamamento_cm[xidx] -
                    vforragemRetirada_cm[xidx]).ToString + }

                   formatCurr('###,###,###,##0.##', vforragemSaldo_cm[xidx]) + // vforragemSaldo_cm[xidx].ToString +
                   ' cm - ' +
                   formatCurr('###,###,###,##0.###', vforragemSaldo_kg[xidx]/1000) +

                  { (vforragemMedida_kg[xidx] +
                    vforragemcresce_kg[xidx] +
                    vforragemSuplemento_kg[xidx] -
                    vforragemConsumo_kg[xidx] -
                    vforragemAcamamento_kg[xidx] -
                    vforragemRetirada_kg[xidx])/1000 ) +  }

                   //vforragemSaldo_kg[xidx]/1000) +
                   ' ton em ' +
                   formatCurr('###,###,###,##0.####', varea_m2[xidx]/10000) +
                   ' ha'

                  );


  lb11.Font.Color := clmaroon;
  lb11.Color := cl3dlight;
  lb11.Caption := (
                   formatCurr('###,###,###,##0.##', vpeso_calculado_kg[xidx]) +
                   ' kg'
                  );


  lb12.Font.Color := clfuchsia;
  lb12.Color := clblack;
  lb12.Caption := (
                   formatCurr('###,###,###,##0.##', vpeso_medido_kg[xidx]) +
                   ' kg'
                  );

  lb1.Color := clwhite;
  lb2.Color := clwhite;
  lb3.Color := clwhite;
  lb4.Color := clwhite;
  lb5.Color := clblack;
  lb6.Color := clwhite;
  lb7.Color := clblack;
  lb8.Color := clwhite;
  lb9.Color := clwhite;
  lb10.Color := clwhite;
  lb11.Color := clwhite;
  lb12.Color := clwhite;

  mmNote.Lines.Clear;

  mmNote.Lines.Add(
    'Altura de entrada da forragem: ' +
    formatCurr('###,###,###,##0', vforragemAlturaEntrada_cm[xidx].ToDouble)+
    ' cm');

  mmNote.Lines.Add(
    'Altura de sa�da da forragem: ' +
    formatCurr('###,###,###,##0', vforragemAlturaSaida_cm[xidx].ToDouble)+
    ' cm');

  mmNote.Lines.Add('');

  if vTemNotificacao[xidx] then
    begin
      xlimiteMaisPerc :=
        ((qryPadrao_sistema.
                FieldByName('perc_limite_altura_entrada').AsCurrency + 100) *
          vforragemAlturaEntrada_cm[xidx])/100;

      if vforragemSaldo_cm[xidx] >= trunc(xlimiteMaisPerc) then
        begin
          mmNote.Lines.Add(
            '***** Saldo de forragem est� acima da altura de entrada padr�o em ' +
            formatCurr('###,###,###,##0.00',
                qryPadrao_sistema.
                  FieldByName('perc_limite_altura_entrada').AsCurrency) +
            '% ou mais');
          mmNote.Lines.Add('');
          mmNote.Lines.Add(
            'Altura de entrada padr�o + percentual limite: ' +
            formatCurr('###,###,###,##0', xlimiteMaisPerc)+
            ' cm');
        end

      else
      if vforragemSaldo_cm[xidx] >=
        vforragemAlturaEntrada_cm[xidx] then
        begin
          mmNote.Lines.Add(
            '***** Aten��o o saldo de forragem atingiu a altura de entrada');
          mmNote.Lines.Add('');
        end

      else
      if vforragemSaldo_cm[xidx] <=
        vforragemAlturaSaida_cm[xidx] then
        begin
          mmNote.Lines.Add(
            '***** Aten��o o saldo de forragem atingiu a altura de sa�da');
          mmNote.Lines.Add('');
        end;

    end;

  mminfo.Visible := true;
  frmcontrolForr.Refresh;

end;

procedure TfrmControlforr.pesquisaMovtoAnimais;
var xfiltroData, xorderby : string;

begin

  xfiltrodata := '';
  xorderby := '';

  if mkeDtAnimais.Text <> '00/00/0000' then
    xfiltroData := ' and data_movto_animais >= :dt'
  else
  if mkeDtInclusaoAni.Text <> '00/00/0000' then
    xfiltroData := ' and data_inclusao >= :dt'
  else
    begin
      showmessage('informe uma data para pesquisax');
      mkeDtanimais.SetFocus;
      exit;
    end;

  if vsortData then
    if vcresc then
      xorderby := ' order by data_movto_animais asc, seq_movto_animais'
    else
      xorderby := ' order by data_movto_animais desc, seq_movto_animais'
  else
  if vsortInclusao then
    if vcresc then
      xorderby := ' order by data_inclusao asc, seq_movto_animais'
    else
      xorderby := ' order by data_inclusao desc, seq_movto_animais'
  else
  if vsortDescricao then
    if vcresc then
      xorderby := ' order by descricao_movto_animais asc, seq_movto_animais'
    else
      xorderby := ' order by descricao_movto_animais desc, seq_movto_animais'
  else
  if vinativo then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and cancelado = :cancelado ';
    end
  else
  if vrealizado then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and realizado = :realiado ';
    end
  else
  if ventrada then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and entrada = :entrada ';
    end
  else
  if vsaida then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and saida = :saida ';
    end
  else
  if vfemea then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and femea = :femea ';
    end
  else
  if vcastrado then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and castrado = :castrado ';
    end
  else
  if vnormal then
    begin
      xorderby := ' order by data_movto_animais asc, seq_movto_animais';
      xfiltroData := xfiltroData + ' and normal = :normal ';
    end
  else
    xorderby := ' order by data_movto_animais asc, seq_movto_animais';

  qryMovto_animais.Close;
  qryMovto_animais.SQL.Clear;
  qryMovto_animais.SQL.Text :=

' Select *' +
' from movto_animais_tb' +
' where seq_empresa = :seq_empresa' +
'   and seq_area_geral = :seq_area_geral' +
'   and seq_area = :seq_area' +
xfiltroData +
xorderby;

  qryMovto_animais.Params[0].AsInteger :=
        qryAreas.FieldByName('seq_empresa').AsInteger;
  qryMovto_animais.Params[1].AsInteger :=
        qryAreas.FieldByName('seq_area_geral').AsInteger;
  qryMovto_animais.Params[2].AsInteger :=
        qryAreas.FieldByName('seq_area').AsInteger;

  if mkeDtAnimais.Text <> '00/00/0000' then
    qryMovto_animais.Params[3].AsString := mkeDtanimais.Text
  else
    qryMovto_animais.Params[3].AsString := mkeDtInclusaoAni.Text;

  if vinativo   or
     vrealizado or
     ventrada  or
     vsaida    or
     vfemea    or
     vcastrado or
     vnormal   then
    if vcresc then
      qryMovto_animais.Params[4].AsBoolean := true
    else
      qryMovto_animais.Params[4].AsBoolean := false;

  qryMovto_animais.Open;

end;

procedure TfrmControlforr.MoveNomes;
begin

  if xSelectedIndex = 0 then
    begin
      lbPiquete.Caption := 'piquete: ' + qryAreas.FieldByName('nome_area').AsString;
      lbAreaGeral.Caption := '�rea: ' + qryAreas.FieldByName('nome_area_geral').AsString;
      lbLocal.Caption := 'local: ' + qryAreas.FieldByName('nome_empresa').AsString;
    end;

  if xSelectedIndex = 1 then
    begin
      lbPiquete.Caption := 'piquete: ' + qryAreas.FieldByName('nome_area').AsString;
      lbAreaGeral.Caption := '�rea: ' + qryAreas.FieldByName('nome_area_geral').AsString;
      lbLocal.Caption := 'local: ' + qryAreas.FieldByName('nome_empresa').AsString;
    end;

  if xSelectedIndex = 2 then
    begin
      lbPiquete.Caption := 'piquete: ' + qryAreas.FieldByName('nome_area').AsString;
      lbAreaGeral.Caption := '�rea: ' + qryAreas.FieldByName('nome_area_geral').AsString;
      lbLocal.Caption := 'local: ' + qryAreas.FieldByName('nome_empresa').AsString;
    end;

end;

procedure TfrmControlforr.pcControleChange(Sender: TObject);
begin

  mminfo.Visible := false;

  if (frmControlforr.pcControle.TabIndex = 3) or
     (frmControlforr.pcControle.TabIndex = 4) or
     (frmControlforr.pcControle.TabIndex = 5) or
     (frmControlforr.pcControle.TabIndex = 6)then
    begin
      frmControlforr.WindowState := wsmaximized;
    end
  else
    begin
      frmControlforr.Height := 532;
      frmControlforr.Width  := 903;
      frmControlforr.WindowState := wsnormal;

      frmControlforr.top  := trunc((screen.Height - frmControlforr.Height) / 2);
      frmControlforr.left := trunc((screen.Width - frmControlforr.Width) / 2);

      pnMontaLTempo.Visible := false;
    end;

  frmControlforr.Refresh;

end;

procedure TfrmControlforr.pcSuperiorChange(Sender: TObject);
begin

  mminfo.Visible := false;
  pnMontaLTempo.Visible := false;

  if (frmControlforr.pcSuperior.TabIndex = 0) or
     (frmControlforr.pcSuperior.TabIndex = 2) or
     (frmControlforr.pcSuperior.TabIndex = 3) or
     (frmControlforr.pcSuperior.TabIndex = 5) or
     (frmControlforr.pcSuperior.TabIndex = 4) then
    begin
      frmControlforr.Height := 532;
      frmControlforr.Width  := 903;
      frmControlforr.WindowState := wsnormal;

      frmControlforr.top  := trunc((screen.Height - frmControlforr.Height) / 2);
      frmControlforr.left := trunc((screen.Width - frmControlforr.Width) / 2);
    end
  else
  if (frmControlforr.pcControle.TabIndex = 3) or
     (frmControlforr.pcControle.TabIndex = 4) or
     (frmControlforr.pcControle.TabIndex = 5) or
     (frmControlforr.pcControle.TabIndex = 6)then
    begin
      frmControlforr.WindowState := wsmaximized;
    end;

  if (frmControlforr.pcSuperior.TabIndex = 2) then
    begin
      qryTipo_evento.Close;
      qryTipo_evento.Open;

      qryUnidades2.Close;
      qryUnidades2.Open;
    end;

  if (frmControlforr.pcSuperior.TabIndex = 3) then
    begin
      qryTipo_suplemento.Close;
      qryTipo_suplemento.Open;

      qryUnidades2.Close;
      qryUnidades2.Open;
    end;

  if (frmControlforr.pcSuperior.TabIndex = 4) then
    begin
      qryTipo_animal.Close;
      qryTipo_animal.Open;
    end;

  if (frmControlforr.pcSuperior.TabIndex = 5) then
    begin
      qryPadrao_sistema.Close;
      qryPadrao_sistema.Open;
    end;

  frmControlforr.Refresh;

end;

procedure TfrmControlforr.RecuperaVariaveisEstacao;
var xprimavera, xverao, xoutono, xinverno, xdata_medicao : integer;

begin

  xdata_medicao := strTOint( formatDateTime('mmdd', vdataScala) );

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
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_primavera').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_primavera').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_primavera').AsCurrency;
          exit;
        end;

      if (xdata_medicao >= xoutono) and
         (xdata_medicao <  xinverno) then
        begin
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_outono').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_outono').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_outono').AsCurrency;
          exit;
        end;

      if (xdata_medicao >= xinverno) and
         (xdata_medicao <  xprimavera) then
        begin
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_inverno').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_inverno').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_inverno').AsCurrency;
          exit;
        end;

      // � ver�o
      vkg_ms_ha_dia :=
          qryGeral.FieldByName('kg_ms_ha_dia_verao').AsCurrency;
      valtura_massa_seca_cm :=
          qryGeral.FieldByName('altura_massa_seca_cm_verao').AsInteger;
      vmassa_seca_kg_m2 :=
          qryGeral.FieldByName('massa_seca_kg_m2_verao').AsCurrency;
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
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_primavera').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_primavera').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_primavera').AsCurrency;
          exit;
        end;

      if (xdata_medicao >= xverao) and
         (xdata_medicao <  xoutono) then
        begin
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_verao').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_verao').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_verao').AsCurrency;
          exit;
        end;

      if (xdata_medicao >= xoutono) and
         (xdata_medicao <  xinverno) then
        begin
          vkg_ms_ha_dia :=
              qryGeral.FieldByName('kg_ms_ha_dia_outono').AsCurrency;
          valtura_massa_seca_cm :=
              qryGeral.FieldByName('altura_massa_seca_cm_outono').AsInteger;
          vmassa_seca_kg_m2 :=
              qryGeral.FieldByName('massa_seca_kg_m2_outono').AsCurrency;
          exit;
        end;

      // � inverno
      vkg_ms_ha_dia :=
          qryGeral.FieldByName('kg_ms_ha_dia_inverno').AsCurrency;
      valtura_massa_seca_cm :=
          qryGeral.FieldByName('altura_massa_seca_cm_inverno').AsInteger;
      vmassa_seca_kg_m2 :=
          qryGeral.FieldByName('massa_seca_kg_m2_inverno').AsCurrency;
      exit;

    end;

end;


//--------------------------------------- inicio mmxx
procedure TfrmControlforr.Monta_mm1;
var i, ii : integer;
    xdias : string;

begin

  lbdata1.Visible := true;
  lbtipo1.Visible := true;
  mmdias1.Visible := true;
  img1.Visible := true;
  mm1.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata1.Font.Color := clblack;
      lbtipo1.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata1.Font.Color := clblack;
        lbtipo1.Font.Color := clblack;
      end

    else
      begin
        lbdata1.Font.Color := clgray;
        lbtipo1.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm1.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata1.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo1.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias1.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias1.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img1.Picture := imgAnimal.Picture;
      img1.Height := imgAnimal.Height;
      img1.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img1.Picture := imgEvento.Picture;
      img1.Height := imgEvento.Height;
      img1.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img1.Picture := imgSuplemento.Picture;
      img1.Height := imgSuplemento.Height;
      img1.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img1.Picture := imgMedicao.Picture;
      img1.Height := imgMedicao.Height;
      img1.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm1.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm1.Color := clwhite;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm1.Color := clred;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm1.Color := clyellow;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm1.Color := claqua;
      mm1.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm1.Color := clmoneygreen;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm1.Color := clskyblue;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm1.Color := clfuchsia;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm1.Color := clnavy;
      mm1.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm1.Color := cllime;
      mm1.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm1.Color := clblue;
      mm1.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm1.Color := clsilver;
      mm1.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm2;
var i, ii : integer;
    xdias : string;

begin

  lbdata2.Visible := true;
  lbtipo2.Visible := true;
  mmdias2.Visible := true;
  img2.Visible := true;
  mm2.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata2.Font.Color := clblack;
      lbtipo2.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata2.Font.Color := clblack;
        lbtipo2.Font.Color := clblack;
      end

    else
      begin
        lbdata2.Font.Color := clgray;
        lbtipo2.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm2.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata2.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo2.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias2.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias2.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img2.Picture := imgAnimal.Picture;
      img2.Height := imgAnimal.Height;
      img2.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img2.Picture := imgEvento.Picture;
      img2.Height := imgEvento.Height;
      img2.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img2.Picture := imgSuplemento.Picture;
      img2.Height := imgSuplemento.Height;
      img2.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img2.Picture := imgMedicao.Picture;
      img2.Height := imgMedicao.Height;
      img2.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm2.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm2.Color := clwhite;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm2.Color := clred;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm2.Color := clyellow;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm2.Color := claqua;
      mm2.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm2.Color := clmoneygreen;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm2.Color := clskyblue;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm2.Color := clfuchsia;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm2.Color := clnavy;
      mm2.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm2.Color := cllime;
      mm2.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm2.Color := clblue;
      mm2.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm2.Color := clsilver;
      mm2.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm3;
var i, ii : integer;
    xdias : string;

begin

  lbdata3.Visible := true;
  lbtipo3.Visible := true;
  mmdias3.Visible := true;
  img3.Visible := true;
  mm3.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata3.Font.Color := clblack;
      lbtipo3.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata3.Font.Color := clblack;
        lbtipo3.Font.Color := clblack;
      end

    else
      begin
        lbdata3.Font.Color := clgray;
        lbtipo3.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm3.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata3.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo3.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias3.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias3.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img3.Picture := imgAnimal.Picture;
      img3.Height := imgAnimal.Height;
      img3.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img3.Picture := imgEvento.Picture;
      img3.Height := imgEvento.Height;
      img3.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img3.Picture := imgSuplemento.Picture;
      img3.Height := imgSuplemento.Height;
      img3.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img3.Picture := imgMedicao.Picture;
      img3.Height := imgMedicao.Height;
      img3.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm3.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm3.Color := clwhite;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm3.Color := clred;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm3.Color := clyellow;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm3.Color := claqua;
      mm3.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm3.Color := clmoneygreen;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm3.Color := clskyblue;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm3.Color := clfuchsia;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm3.Color := clnavy;
      mm3.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm3.Color := cllime;
      mm3.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm3.Color := clblue;
      mm3.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm3.Color := clsilver;
      mm3.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm4;
var i, ii : integer;
    xdias : string;

begin

  lbdata4.Visible := true;
  lbtipo4.Visible := true;
  mmdias4.Visible := true;
  img4.Visible := true;
  mm4.Visible  := true;

    if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata4.Font.Color := clblack;
      lbtipo4.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata4.Font.Color := clblack;
        lbtipo4.Font.Color := clblack;
      end

    else
      begin
        lbdata4.Font.Color := clgray;
        lbtipo4.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm4.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata4.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo4.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias4.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias4.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img4.Picture := imgAnimal.Picture;
      img4.Height := imgAnimal.Height;
      img4.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img4.Picture := imgEvento.Picture;
      img4.Height := imgEvento.Height;
      img4.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img4.Picture := imgSuplemento.Picture;
      img4.Height := imgSuplemento.Height;
      img4.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img4.Picture := imgMedicao.Picture;
      img4.Height := imgMedicao.Height;
      img4.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm4.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm4.Color := clwhite;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm4.Color := clred;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm4.Color := clyellow;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm4.Color := claqua;
      mm4.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm4.Color := clmoneygreen;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm4.Color := clskyblue;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm4.Color := clfuchsia;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm4.Color := clnavy;
      mm4.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm4.Color := cllime;
      mm4.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm4.Color := clblue;
      mm4.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm4.Color := clsilver;
      mm4.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm5;
var i, ii : integer;
    xdias : string;

begin

  lbdata5.Visible := true;
  lbtipo5.Visible := true;
  mmdias5.Visible := true;
  img5.Visible := true;
  mm5.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata5.Font.Color := clblack;
      lbtipo5.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata5.Font.Color := clblack;
        lbtipo5.Font.Color := clblack;
      end

    else
      begin
        lbdata5.Font.Color := clgray;
        lbtipo5.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm5.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata5.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo5.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias5.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias5.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img5.Picture := imgAnimal.Picture;
      img5.Height := imgAnimal.Height;
      img5.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img5.Picture := imgEvento.Picture;
      img5.Height := imgEvento.Height;
      img5.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img5.Picture := imgSuplemento.Picture;
      img5.Height := imgSuplemento.Height;
      img5.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img5.Picture := imgMedicao.Picture;
      img5.Height := imgMedicao.Height;
      img5.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm5.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm5.Color := clwhite;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm5.Color := clred;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm5.Color := clyellow;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm5.Color := claqua;
      mm5.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm5.Color := clmoneygreen;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm5.Color := clskyblue;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm5.Color := clfuchsia;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm5.Color := clnavy;
      mm5.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm5.Color := cllime;
      mm5.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm5.Color := clblue;
      mm5.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm5.Color := clsilver;
      mm5.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm6;
var i, ii : integer;
    xdias : string;

begin

  lbdata6.Visible := true;
  lbtipo6.Visible := true;
  mmdias6.Visible := true;
  img6.Visible := true;
  mm6.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata6.Font.Color := clblack;
      lbtipo6.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata6.Font.Color := clblack;
        lbtipo6.Font.Color := clblack;
      end

    else
      begin
        lbdata6.Font.Color := clgray;
        lbtipo6.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm6.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata6.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo6.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias6.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias6.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img6.Picture := imgAnimal.Picture;
      img6.Height := imgAnimal.Height;
      img6.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img6.Picture := imgEvento.Picture;
      img6.Height := imgEvento.Height;
      img6.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img6.Picture := imgSuplemento.Picture;
      img6.Height := imgSuplemento.Height;
      img6.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img6.Picture := imgMedicao.Picture;
      img6.Height := imgMedicao.Height;
      img6.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm6.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm6.Color := clwhite;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm6.Color := clred;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm6.Color := clyellow;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm6.Color := claqua;
      mm6.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm6.Color := clmoneygreen;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm6.Color := clskyblue;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm6.Color := clfuchsia;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm6.Color := clnavy;
      mm6.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm6.Color := cllime;
      mm6.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm6.Color := clblue;
      mm6.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm6.Color := clsilver;
      mm6.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm7;
var i, ii : integer;
    xdias : string;

begin

  lbdata7.Visible := true;
  lbtipo7.Visible := true;
  mmdias7.Visible := true;
  img7.Visible := true;
  mm7.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata7.Font.Color := clblack;
      lbtipo7.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata7.Font.Color := clblack;
        lbtipo7.Font.Color := clblack;
      end

    else
      begin
        lbdata7.Font.Color := clgray;
        lbtipo7.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm7.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata7.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo7.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias7.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias7.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img7.Picture := imgAnimal.Picture;
      img7.Height := imgAnimal.Height;
      img7.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img7.Picture := imgEvento.Picture;
      img7.Height := imgEvento.Height;
      img7.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img7.Picture := imgSuplemento.Picture;
      img7.Height := imgSuplemento.Height;
      img7.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img7.Picture := imgMedicao.Picture;
      img7.Height := imgMedicao.Height;
      img7.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm7.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm7.Color := clwhite;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm7.Color := clred;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm7.Color := clyellow;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm7.Color := claqua;
      mm7.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm7.Color := clmoneygreen;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm7.Color := clskyblue;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm7.Color := clfuchsia;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm7.Color := clnavy;
      mm7.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm7.Color := cllime;
      mm7.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm7.Color := clblue;
      mm7.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm7.Color := clsilver;
      mm7.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm8;
var i, ii : integer;
    xdias : string;

begin

  lbdata8.Visible := true;
  lbtipo8.Visible := true;
  mmdias8.Visible := true;
  img8.Visible := true;
  mm8.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata8.Font.Color := clblack;
      lbtipo8.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata8.Font.Color := clblack;
        lbtipo8.Font.Color := clblack;
      end

    else
      begin
        lbdata8.Font.Color := clgray;
        lbtipo8.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm8.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata8.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo8.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias8.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias8.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img8.Picture := imgAnimal.Picture;
      img8.Height := imgAnimal.Height;
      img8.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img8.Picture := imgEvento.Picture;
      img8.Height := imgEvento.Height;
      img8.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img8.Picture := imgSuplemento.Picture;
      img8.Height := imgSuplemento.Height;
      img8.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img8.Picture := imgMedicao.Picture;
      img8.Height := imgMedicao.Height;
      img8.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm8.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm8.Color := clwhite;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm8.Color := clred;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm8.Color := clyellow;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm8.Color := claqua;
      mm8.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm8.Color := clmoneygreen;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm8.Color := clskyblue;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm8.Color := clfuchsia;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm8.Color := clnavy;
      mm8.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm8.Color := cllime;
      mm8.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm8.Color := clblue;
      mm8.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm8.Color := clsilver;
      mm8.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm9;
var i, ii : integer;
    xdias : string;

begin

  lbdata9.Visible := true;
  lbtipo9.Visible := true;
  mmdias9.Visible := true;
  img9.Visible := true;
  mm9.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata9.Font.Color := clblack;
      lbtipo9.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata9.Font.Color := clblack;
        lbtipo9.Font.Color := clblack;
      end

    else
      begin
        lbdata9.Font.Color := clgray;
        lbtipo9.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm9.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata9.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo9.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias9.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias9.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img9.Picture := imgAnimal.Picture;
      img9.Height := imgAnimal.Height;
      img9.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img9.Picture := imgEvento.Picture;
      img9.Height := imgEvento.Height;
      img9.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img9.Picture := imgSuplemento.Picture;
      img9.Height := imgSuplemento.Height;
      img9.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img9.Picture := imgMedicao.Picture;
      img9.Height := imgMedicao.Height;
      img9.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm9.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm9.Color := clwhite;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm9.Color := clred;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm9.Color := clyellow;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm9.Color := claqua;
      mm9.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm9.Color := clmoneygreen;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm9.Color := clskyblue;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm9.Color := clfuchsia;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm9.Color := clnavy;
      mm9.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm9.Color := cllime;
      mm9.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm9.Color := clblue;
      mm9.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm9.Color := clsilver;
      mm9.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm10;
var i, ii : integer;
    xdias : string;

begin

  lbdata10.Visible := true;
  lbtipo10.Visible := true;
  mmdias10.Visible := true;
  img10.Visible := true;
  mm10.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata10.Font.Color := clblack;
      lbtipo10.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata10.Font.Color := clblack;
        lbtipo10.Font.Color := clblack;
      end

    else
      begin
        lbdata10.Font.Color := clgray;
        lbtipo10.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm10.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata10.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo10.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias10.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias10.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img10.Picture := imgAnimal.Picture;
      img10.Height := imgAnimal.Height;
      img10.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img10.Picture := imgEvento.Picture;
      img10.Height := imgEvento.Height;
      img10.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img10.Picture := imgSuplemento.Picture;
      img10.Height := imgSuplemento.Height;
      img10.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img10.Picture := imgMedicao.Picture;
      img10.Height := imgMedicao.Height;
      img10.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm10.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm10.Color := clwhite;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm10.Color := clred;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm10.Color := clyellow;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm10.Color := claqua;
      mm10.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm10.Color := clmoneygreen;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm10.Color := clskyblue;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm10.Color := clfuchsia;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm10.Color := clnavy;
      mm10.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm10.Color := cllime;
      mm10.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm10.Color := clblue;
      mm10.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm10.Color := clsilver;
      mm10.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm11;
var i, ii : integer;
    xdias : string;

begin

  lbdata11.Visible := true;
  lbtipo11.Visible := true;
  mmdias11.Visible := true;
  img11.Visible := true;
  mm11.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata11.Font.Color := clblack;
      lbtipo11.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata11.Font.Color := clblack;
        lbtipo11.Font.Color := clblack;
      end

    else
      begin
        lbdata11.Font.Color := clgray;
        lbtipo11.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm11.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata11.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo11.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias11.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias11.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img11.Picture := imgAnimal.Picture;
      img11.Height := imgAnimal.Height;
      img11.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img11.Picture := imgEvento.Picture;
      img11.Height := imgEvento.Height;
      img11.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img11.Picture := imgSuplemento.Picture;
      img11.Height := imgSuplemento.Height;
      img11.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img11.Picture := imgMedicao.Picture;
      img11.Height := imgMedicao.Height;
      img11.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm11.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm11.Color := clwhite;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm11.Color := clred;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm11.Color := clyellow;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm11.Color := claqua;
      mm11.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm11.Color := clmoneygreen;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm11.Color := clskyblue;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm11.Color := clfuchsia;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm11.Color := clnavy;
      mm11.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm11.Color := cllime;
      mm11.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm11.Color := clblue;
      mm11.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm11.Color := clsilver;
      mm11.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm12;
var i, ii : integer;
    xdias : string;

begin

  lbdata12.Visible := true;
  lbtipo12.Visible := true;
  mmdias12.Visible := true;
  img12.Visible := true;
  mm12.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata12.Font.Color := clblack;
      lbtipo12.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata12.Font.Color := clblack;
        lbtipo12.Font.Color := clblack;
      end

    else
      begin
        lbdata12.Font.Color := clgray;
        lbtipo12.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm12.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata12.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo12.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias12.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias12.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img12.Picture := imgAnimal.Picture;
      img12.Height := imgAnimal.Height;
      img12.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img12.Picture := imgEvento.Picture;
      img12.Height := imgEvento.Height;
      img12.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img12.Picture := imgSuplemento.Picture;
      img12.Height := imgSuplemento.Height;
      img12.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img12.Picture := imgMedicao.Picture;
      img12.Height := imgMedicao.Height;
      img12.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm12.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm12.Color := clwhite;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm12.Color := clred;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm12.Color := clyellow;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm12.Color := claqua;
      mm12.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm12.Color := clmoneygreen;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm12.Color := clskyblue;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm12.Color := clfuchsia;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm12.Color := clnavy;
      mm12.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm12.Color := cllime;
      mm12.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm12.Color := clblue;
      mm12.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm12.Color := clsilver;
      mm12.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm13;
var i, ii : integer;
    xdias : string;

begin

  lbdata13.Visible := true;
  lbtipo13.Visible := true;
  mmdias13.Visible := true;
  img13.Visible := true;
  mm13.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata13.Font.Color := clblack;
      lbtipo13.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata13.Font.Color := clblack;
        lbtipo13.Font.Color := clblack;
      end

    else
      begin
        lbdata13.Font.Color := clgray;
        lbtipo13.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm13.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata13.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo13.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias13.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias13.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img13.Picture := imgAnimal.Picture;
      img13.Height := imgAnimal.Height;
      img13.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img13.Picture := imgEvento.Picture;
      img13.Height := imgEvento.Height;
      img13.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img13.Picture := imgSuplemento.Picture;
      img13.Height := imgSuplemento.Height;
      img13.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img13.Picture := imgMedicao.Picture;
      img13.Height := imgMedicao.Height;
      img13.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm13.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm13.Color := clwhite;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm13.Color := clred;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm13.Color := clyellow;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm13.Color := claqua;
      mm13.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm13.Color := clmoneygreen;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm13.Color := clskyblue;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm13.Color := clfuchsia;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm13.Color := clnavy;
      mm13.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm13.Color := cllime;
      mm13.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm13.Color := clblue;
      mm13.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm13.Color := clsilver;
      mm13.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm14;
var i, ii : integer;
    xdias : string;

begin

  lbdata14.Visible := true;
  lbtipo14.Visible := true;
  mmdias14.Visible := true;
  img14.Visible := true;
  mm14.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata14.Font.Color := clblack;
      lbtipo14.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata14.Font.Color := clblack;
        lbtipo14.Font.Color := clblack;
      end

    else
      begin
        lbdata14.Font.Color := clgray;
        lbtipo14.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm14.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata14.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo14.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias14.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias14.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img14.Picture := imgAnimal.Picture;
      img14.Height := imgAnimal.Height;
      img14.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img14.Picture := imgEvento.Picture;
      img14.Height := imgEvento.Height;
      img14.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img14.Picture := imgSuplemento.Picture;
      img14.Height := imgSuplemento.Height;
      img14.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img14.Picture := imgMedicao.Picture;
      img14.Height := imgMedicao.Height;
      img14.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm14.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm14.Color := clwhite;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm14.Color := clred;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm14.Color := clyellow;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm14.Color := claqua;
      mm14.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm14.Color := clmoneygreen;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm14.Color := clskyblue;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm14.Color := clfuchsia;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm14.Color := clnavy;
      mm14.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm14.Color := cllime;
      mm14.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm14.Color := clblue;
      mm14.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm14.Color := clsilver;
      mm14.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm15;
var i, ii : integer;
    xdias : string;

begin

  lbdata15.Visible := true;
  lbtipo15.Visible := true;
  mmdias15.Visible := true;
  img15.Visible := true;
  mm15.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata15.Font.Color := clblack;
      lbtipo15.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata15.Font.Color := clblack;
        lbtipo15.Font.Color := clblack;
      end

    else
      begin
        lbdata15.Font.Color := clgray;
        lbtipo15.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm15.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata15.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo15.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias15.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias15.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img15.Picture := imgAnimal.Picture;
      img15.Height := imgAnimal.Height;
      img15.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img15.Picture := imgEvento.Picture;
      img15.Height := imgEvento.Height;
      img15.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img15.Picture := imgSuplemento.Picture;
      img15.Height := imgSuplemento.Height;
      img15.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img15.Picture := imgMedicao.Picture;
      img15.Height := imgMedicao.Height;
      img15.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm15.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm15.Color := clwhite;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm15.Color := clred;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm15.Color := clyellow;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm15.Color := claqua;
      mm15.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm15.Color := clmoneygreen;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm15.Color := clskyblue;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm15.Color := clfuchsia;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm15.Color := clnavy;
      mm15.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm15.Color := cllime;
      mm15.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm15.Color := clblue;
      mm15.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm15.Color := clsilver;
      mm15.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm16;
var i, ii : integer;
    xdias : string;

begin

  lbdata16.Visible := true;
  lbtipo16.Visible := true;
  mmdias16.Visible := true;
  img16.Visible := true;
  mm16.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata16.Font.Color := clblack;
      lbtipo16.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata16.Font.Color := clblack;
        lbtipo16.Font.Color := clblack;
      end

    else
      begin
        lbdata16.Font.Color := clgray;
        lbtipo16.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm16.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata16.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo16.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias16.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias16.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img16.Picture := imgAnimal.Picture;
      img16.Height := imgAnimal.Height;
      img16.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img16.Picture := imgEvento.Picture;
      img16.Height := imgEvento.Height;
      img16.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img16.Picture := imgSuplemento.Picture;
      img16.Height := imgSuplemento.Height;
      img16.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img16.Picture := imgMedicao.Picture;
      img16.Height := imgMedicao.Height;
      img16.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm16.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm16.Color := clwhite;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm16.Color := clred;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm16.Color := clyellow;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm16.Color := claqua;
      mm16.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm16.Color := clmoneygreen;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm16.Color := clskyblue;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm16.Color := clfuchsia;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm16.Color := clnavy;
      mm16.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm16.Color := cllime;
      mm16.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm16.Color := clblue;
      mm16.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm16.Color := clsilver;
      mm16.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm17;
var i, ii : integer;
    xdias : string;

begin

  lbdata17.Visible := true;
  lbtipo17.Visible := true;
  mmdias17.Visible := true;
  img17.Visible := true;
  mm17.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata17.Font.Color := clblack;
      lbtipo17.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata17.Font.Color := clblack;
        lbtipo17.Font.Color := clblack;
      end

    else
      begin
        lbdata17.Font.Color := clgray;
        lbtipo17.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm17.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata17.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo17.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias17.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias17.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img17.Picture := imgAnimal.Picture;
      img17.Height := imgAnimal.Height;
      img17.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img17.Picture := imgEvento.Picture;
      img17.Height := imgEvento.Height;
      img17.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img17.Picture := imgSuplemento.Picture;
      img17.Height := imgSuplemento.Height;
      img17.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img17.Picture := imgMedicao.Picture;
      img17.Height := imgMedicao.Height;
      img17.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm17.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm17.Color := clwhite;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm17.Color := clred;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm17.Color := clyellow;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm17.Color := claqua;
      mm17.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm17.Color := clmoneygreen;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm17.Color := clskyblue;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm17.Color := clfuchsia;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm17.Color := clnavy;
      mm17.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm17.Color := cllime;
      mm17.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm17.Color := clblue;
      mm17.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm17.Color := clsilver;
      mm17.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm18;
var i, ii : integer;
    xdias : string;

begin

  lbdata18.Visible := true;
  lbtipo18.Visible := true;
  mmdias18.Visible := true;
  img18.Visible := true;
  mm18.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata18.Font.Color := clblack;
      lbtipo18.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata18.Font.Color := clblack;
        lbtipo18.Font.Color := clblack;
      end

    else
      begin
        lbdata18.Font.Color := clgray;
        lbtipo18.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm18.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata18.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo18.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias18.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias18.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img18.Picture := imgAnimal.Picture;
      img18.Height := imgAnimal.Height;
      img18.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img18.Picture := imgEvento.Picture;
      img18.Height := imgEvento.Height;
      img18.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img18.Picture := imgSuplemento.Picture;
      img18.Height := imgSuplemento.Height;
      img18.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img18.Picture := imgMedicao.Picture;
      img18.Height := imgMedicao.Height;
      img18.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm18.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm18.Color := clwhite;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm18.Color := clred;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm18.Color := clyellow;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm18.Color := claqua;
      mm18.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm18.Color := clmoneygreen;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm18.Color := clskyblue;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm18.Color := clfuchsia;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm18.Color := clnavy;
      mm18.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm18.Color := cllime;
      mm18.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm18.Color := clblue;
      mm18.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm18.Color := clsilver;
      mm18.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm19;
var i, ii : integer;
    xdias : string;

begin

  lbdata19.Visible := true;
  lbtipo19.Visible := true;
  mmdias19.Visible := true;
  img19.Visible := true;
  mm19.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata19.Font.Color := clblack;
      lbtipo19.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata19.Font.Color := clblack;
        lbtipo19.Font.Color := clblack;
      end

    else
      begin
        lbdata19.Font.Color := clgray;
        lbtipo19.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm19.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata19.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo19.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias19.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias19.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img19.Picture := imgAnimal.Picture;
      img19.Height := imgAnimal.Height;
      img19.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img19.Picture := imgEvento.Picture;
      img19.Height := imgEvento.Height;
      img19.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img19.Picture := imgSuplemento.Picture;
      img19.Height := imgSuplemento.Height;
      img19.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img19.Picture := imgMedicao.Picture;
      img19.Height := imgMedicao.Height;
      img19.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm19.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm19.Color := clwhite;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm19.Color := clred;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm19.Color := clyellow;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm19.Color := claqua;
      mm19.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm19.Color := clmoneygreen;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm19.Color := clskyblue;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm19.Color := clfuchsia;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm19.Color := clnavy;
      mm19.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm19.Color := cllime;
      mm19.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm19.Color := clblue;
      mm19.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm19.Color := clsilver;
      mm19.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm20;
var i, ii : integer;
    xdias : string;

begin

  lbdata20.Visible := true;
  lbtipo20.Visible := true;
  mmdias20.Visible := true;
  img20.Visible := true;
  mm20.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata20.Font.Color := clblack;
      lbtipo20.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata20.Font.Color := clblack;
        lbtipo20.Font.Color := clblack;
      end

    else
      begin
        lbdata20.Font.Color := clgray;
        lbtipo20.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm20.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata20.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo20.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias20.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias20.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img20.Picture := imgAnimal.Picture;
      img20.Height := imgAnimal.Height;
      img20.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img20.Picture := imgEvento.Picture;
      img20.Height := imgEvento.Height;
      img20.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img20.Picture := imgSuplemento.Picture;
      img20.Height := imgSuplemento.Height;
      img20.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img20.Picture := imgMedicao.Picture;
      img20.Height := imgMedicao.Height;
      img20.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm20.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm20.Color := clwhite;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm20.Color := clred;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm20.Color := clyellow;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm20.Color := claqua;
      mm20.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm20.Color := clmoneygreen;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm20.Color := clskyblue;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm20.Color := clfuchsia;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm20.Color := clnavy;
      mm20.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm20.Color := cllime;
      mm20.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm20.Color := clblue;
      mm20.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm20.Color := clsilver;
      mm20.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm21;
var i, ii : integer;
    xdias : string;

begin

  lbdata21.Visible := true;
  lbtipo21.Visible := true;
  mmdias21.Visible := true;
  img21.Visible := true;
  mm21.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata21.Font.Color := clblack;
      lbtipo21.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata21.Font.Color := clblack;
        lbtipo21.Font.Color := clblack;
      end

    else
      begin
        lbdata21.Font.Color := clgray;
        lbtipo21.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm21.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata21.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo21.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias21.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias21.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img21.Picture := imgAnimal.Picture;
      img21.Height := imgAnimal.Height;
      img21.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img21.Picture := imgEvento.Picture;
      img21.Height := imgEvento.Height;
      img21.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img21.Picture := imgSuplemento.Picture;
      img21.Height := imgSuplemento.Height;
      img21.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img21.Picture := imgMedicao.Picture;
      img21.Height := imgMedicao.Height;
      img21.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm21.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm21.Color := clwhite;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm21.Color := clred;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm21.Color := clyellow;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm21.Color := claqua;
      mm21.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm21.Color := clmoneygreen;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm21.Color := clskyblue;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm21.Color := clfuchsia;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm21.Color := clnavy;
      mm21.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm21.Color := cllime;
      mm21.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm21.Color := clblue;
      mm21.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm21.Color := clsilver;
      mm21.Font.Color := clblack;
      exit;
    end;

end;

procedure TfrmControlforr.Monta_mm22;
var i, ii : integer;
    xdias : string;

begin

  lbdata22.Visible := true;
  lbtipo22.Visible := true;
  mmdias22.Visible := true;
  img22.Visible := true;
  mm22.Visible  := true;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      lbdata22.Font.Color := clblack;
      lbtipo22.Font.Color := clblack;
    end

  else
    if qryLinhaTempo.FieldByName('realizado').AsBoolean then
      begin
        lbdata22.Font.Color := clblack;
        lbtipo22.Font.Color := clblack;
      end

    else
      begin
        lbdata22.Font.Color := clgray;
        lbtipo22.Font.Color := clgray;
      end;

  if vseq_areaAnt <>
     qryLinhaTempo.FieldByName('seq_area').AsInteger then
    begin
      mm22.Color := claqua;
      vdataAnt := qryLinhaTempo.FieldByName('data').AsDateTime;
    end;
  vseq_areaAnt := qryLinhaTempo.FieldByName('seq_area').AsInteger;

  lbdata22.Caption := qryLinhaTempo.FieldByName('data').AsString;
  lbtipo22.Caption := qryLinhaTempo.FieldByName('tipo').AsString;

  if (vdataAnt = qryLinhaTempo.FieldByName('data').AsDateTime) then
    mmdias22.Clear
  else
    begin
      xdias := intTOstr(
               daysBetween(qryLinhaTempo.FieldByName('data').AsDateTime, vdataAnt));
      for ii := 1 to length(xdias) do
        begin
          mmdias22.Lines.Add(copy(xdias, ii, 1));
        end;
    end;

  if qryLinhaTempo.FieldByName('ordem').AsInteger = 2 then
    begin
      img22.Picture := imgAnimal.Picture;
      img22.Height := imgAnimal.Height;
      img22.Width  := imgAnimal.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 3 then
    begin
      img22.Picture := imgEvento.Picture;
      img22.Height := imgEvento.Height;
      img22.Width  := imgEvento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 4 then
    begin
      img22.Picture := imgSuplemento.Picture;
      img22.Height := imgSuplemento.Height;
      img22.Width  := imgSuplemento.Width;
    end
  else
  if qryLinhaTempo.FieldByName('ordem').AsInteger = 9 then
    begin
      img22.Picture := imgMedicao.Picture;
      img22.Height := imgMedicao.Height;
      img22.Width  := imgMedicao.Width;
    end;

  //vcorDemo := 'branco';
  CompoeMemoLinhaDoTempo;
  mm22.Text := mmAux.Text;

  if vcorDemo = 'branco' then
    begin
      mm22.Color := clwhite;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'vermelho' then
    begin
      mm22.Color := clred;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'amarelo' then
    begin
      mm22.Color := clyellow;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul claro' then
    begin
      mm22.Color := claqua;
      mm22.Font.Color := clblack;
      exit;
    end

  else
  if vcorDemo = 'verde +claro' then
    begin
      mm22.Color := clmoneygreen;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul +claro' then
    begin
      mm22.Color := clskyblue;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'rosa' then
    begin
      mm22.Color := clfuchsia;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul escuro' then
    begin
      mm22.Color := clnavy;
      mm22.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'verde limao' then
    begin
      mm22.Color := cllime;
      mm22.Font.Color := clblack;
      exit;
    end
  else
  if vcorDemo = 'azul' then
    begin
      mm22.Color := clblue;
      mm22.Font.Color := clwhite;
      exit;
    end
  else
  if vcorDemo = 'cinza' then
    begin
      mm22.Color := clsilver;
      mm22.Font.Color := clblack;
      exit;
    end;

end;
//--------------------------------------- fim mmxx


end.
