unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, pngimage, DB, ADODB,
 IniFiles, acPNG, sLabel;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtSenha: TEdit;
    BtnEntrar: TBitBtn;
    BntCancelar: TBitBtn;
    EdtLogin1: TEdit;
    Label3: TLabel;
    sLabelFX1: TsLabelFX;
    Image1: TImage;
    EdtLogin: TDBLookupComboBox;
    
    procedure BntCancelarClick(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtLogin1Exit(Sender: TObject);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSenhaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    LOGIN : BOOLEAN;
    procedure Entrar;

  end;

var
  FrmLogin: TFrmLogin;


implementation

uses uDM, uPrincipal;

{$R *.dfm}

// Procedure para entrar na tela principal do sistema
procedure TFrmLogin.Entrar;
begin

  if (EdtLogin.text<>'') and (EdtSenha.text<>'') then
begin
  if (EdtLogin.Text= DM.QUsu.FieldByName('LOGIN').AsString) and (EdtSenha.text=DM.QUsu.FieldByName('SENHA').AsString) then
  begin
    frmLogin.Close;
    login:=true;
   end
  else
  begin
    messageBox(handle,'Usuário/Senha inválida','ATENÇÃO!',MB_ICONERROR+mb_OK);
    edtSenha.Text:='';
    //EdtLogin.Text:= '';
    EdtLogin.SetFocus;
  end;
end
else
  messageBox(handle,'Você deve preencher o nome de usuário e senha','ATENÇÃO!',MB_ICONERROR+mb_OK);
end;


procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  Entrar(); // Entrar na tela principal do sistema
end;


procedure TFrmLogin.BntCancelarClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmLogin.EdtLogin1Exit(Sender: TObject);
begin
//if not (EdtLogin.Text = '') then
//BitBtn1.Enabled := false ;
//if not (EdtSenha.Text = '') then
//BitBtn1.Enabled := false;

end;

procedure TFrmLogin.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
EdtSenha.SetFocus;
end;

procedure TFrmLogin.EdtSenhaChange(Sender: TObject);
begin
if EdtSenha.Text = emptystr then
BtnEntrar.Enabled := false
else
BtnEntrar.Enabled := true;
end;

procedure TFrmLogin.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// Se dê "ENTER" vai para tela principal
if Key = VK_RETURN then
Entrar();
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if login=false then
  Application.Terminate
else
  frmLogin.close;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
dm.QUsu.Active := true;
DM.QUsu.Open();

end;

end.
