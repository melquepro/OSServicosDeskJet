unit uDM;

interface

uses
  System.SysUtils,Windows, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IniFiles;

type
  TDM = class(TDataModule)
    Database: TFDConnection;
    qryCadCliente: TFDQuery;
    Transaction: TFDTransaction;
    qryCadClienteCOD_CLI: TFDAutoIncField;
    qryCadClienteCPF_CNPJ: TWideStringField;
    qryCadClienteNOME: TWideStringField;
    qryCadClienteENDERECO: TWideStringField;
    qryCadClienteBAIRRO: TWideStringField;
    qryCadClienteCEP: TWideStringField;
    qryCadClienteTELFONE: TWideStringField;
    qryCadClienteCELULAR: TWideStringField;
    qryCadClienteDATA_CAD: TSQLTimeStampField;
    qryCadClienteOBSERVACAO: TWideStringField;
    dsCadCliente: TDataSource;
    qryCadClienteCIDADE: TWideStringField;
    qryCadOS: TFDQuery;
    dsCadOS: TDataSource;
    qryCadOSCOD_SERV: TFDAutoIncField;
    qryCadOSDESCRICAO: TWideStringField;
    qryCadOSDESCRICAO_SERVICO: TWideStringField;
    qryCadOSTIPO_EQUIPAMENTO: TWideStringField;
    qryCadOSTIPO_SERVICO: TWideStringField;
    qryCadOSDATA_SOLICITACAO: TSQLTimeStampField;
    qryCadOSVALOR: TCurrencyField;
    qryCadOSCOD_CLI: TIntegerField;
    qryCadOSCPF_CNPJ: TWideStringField;
    qryCadOSNOME: TWideStringField;
    QUsu: TFDQuery;
    QUsuLOGIN: TWideStringField;
    QUsuSENHA: TWideStringField;
    dsUsu: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
Config : TIniFile;
S,Databases, Default : String;
begin
  Default :=  Default;//'base.mdb'; // Local e nome da database
  Config    := Tinifile.Create(GetCurrentDir+'\OSServicos.ini');
  Databases := Config.ReadString('Servidor','DatabaseLocal',''); // Local onde está a db
  Config.Free;
  try
    Database.Params.Database :=  Databases;
    Database.Connected := true;
    qryCadCliente.Active := true;
    qryCadOS.Active := true;
    DM.QUsu.Active := true;
    DM.QUsu.Open;
    except
    //FrmLogin.Label3.Visible := true;
    //FrmLogin.BitBtn1.Enabled := false;
    //FrmLogin.Label3.Caption := 'Erro: Banco de dados não encontrado...';

    MessageBox(0,'Erro:'+#10+#13+'Não foi possível conectar com banco de dados. Verifica se o local do banco de dados está correto.'+#10#13+
    'Caso de dúvida fale com o suporte!','ATENÇÃO!',MB_ICONERROR+mb_OK);
     Halt(0);
  end;
end;

end.
