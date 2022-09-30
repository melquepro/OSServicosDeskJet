unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    SB1: TStatusBar;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MainMenu1: TMainMenu;
    c1: TMenuItem;
    C2: TMenuItem;
    O1: TMenuItem;
    S1: TMenuItem;
    R1: TMenuItem;
    C3: TMenuItem;
    O2: TMenuItem;
    A1: TMenuItem;
    S2: TMenuItem;
    N1: TMenuItem;
    C4: TMenuItem;
    C5: TMenuItem;
    O3: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure O3Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uCadClientes, uDM, uCadOSServicos, uConsCliente, uConsOSServicos, uSobre,
  uLogin;

procedure TFrmPrincipal.C2Click(Sender: TObject);
begin
DM.qryCadCliente.Append;
FrmCadClientes.Show;
FrmCadClientes.DBEdit2.SetFocus;
FrmCadClientes.DBEdit9.Text := DateToStr(now);
end;

procedure TFrmPrincipal.C5Click(Sender: TObject);
begin
FrmConsCli.Show;
DM.qryCadcliente.close;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;
DM.Database.Connected := false;
Application.Terminate;
end;

procedure TFrmPrincipal.O1Click(Sender: TObject);
begin
DM.qryCadOS.Append;
FrmCadOS.Show;
FrmCadOS.DBEdit4.SetFocus;
FrmCadOS.DBEdit6.Text := DateToStr(now);
end;

procedure TFrmPrincipal.O3Click(Sender: TObject);
begin
FrmConsOS.Show;
DM.qryCadOS.close;
end;

procedure TFrmPrincipal.S2Click(Sender: TObject);
begin
FrmSobre.Show;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
DM.qryCadCliente.Append;
FrmCadClientes.Show;
FrmCadClientes.DBEdit2.SetFocus;
FrmCadClientes.DBEdit9.Text := DateToStr(now);
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
DM.qryCadOS.Append;
FrmCadOS.Show;
FrmCadOS.DBEdit4.SetFocus;
FrmCadOS.DBEdit6.Text := DateToStr(now);
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
Label1.Caption := FrmLogin.EdtLogin.Text+', hoje é '+FormatDateTime('DDDD, D "de" MMMM "de" YYYY', Now)+' às '+FormatDateTime('hh:nn:ss', Now);  // Mostrar data/hora do sistema

end;

procedure TFrmPrincipal.Timer2Timer(Sender: TObject);
begin
Timer2.Enabled := false;
FrmLogin := TFrmLogin.Create(nil);
FrmLogin.ShowModal;

end;

end.
