unit uCadOSServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, AdvGlowButton, sPageControl;

type
  TFrmCadOS = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    BtnOk: TAdvGlowButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOkKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }

  end;



var
  FrmCadOS: TFrmCadOS;

implementation





{$R *.dfm}

uses uDM, uConsOSServicos;


procedure TFrmCadOS.AdvGlowButton10Click(Sender: TObject);
begin
if DM.qryCadOS.RecordCount = 0 then
begin
  Application.MessageBox('Não há registro a ser excluído!',pchar('Atenção'),+MB_ICONINFORMATION);
end
else
if Application.MessageBox('Confirma a exclusão definitiva do cadastro selecionado?',pchar('Atenção - Excluir cadastro'),+MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON1) = id_yes then
begin
dm.qryCadOS.Delete;
dm.qryCadOS.Refresh;
DM.qryCadOS.Edit;
 end;
end;

procedure TFrmCadOS.AdvGlowButton13Click(Sender: TObject);
begin
dm.qryCadOS.Cancel;
dm.qryCadOS.Refresh;
Close;
end;

procedure TFrmCadOS.BtnOkClick(Sender: TObject);
begin
if DBEdit2.Text = EmptyStr then
begin

DM.qryCadOS.Cancel;
Close;
Abort
end
else
    dm.qryCadOS.Post;
    dm.qryCadOS.Refresh;
    MessageBox(0,'SERVIÇOS PRESTADO cadastrado com sucesso!.','Atenção',64);
    DBEdit4.SetFocus;

  if DBEdit4.Text = EmptyStr then
begin
   DBEdit4.SetFocus;
end
else
begin
  dm.qryCadOS.Append;
  DBEdit6.Text := DateToStr(now);

  end;
end;

procedure TFrmCadOS.BtnOkKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.Click;
end;

procedure TFrmCadOS.AdvGlowButton8Click(Sender: TObject);
begin
if DBEdit4.Text = EmptyStr then
begin
   DBEdit4.SetFocus;
end
else
begin
  dm.qryCadOS.Append;
  DBEdit6.Text := DateToStr(now);

  end;
end;

procedure TFrmCadOS.AdvGlowButton9Click(Sender: TObject);
begin
FrmConsOS.Show;
Close;
DM.qryCadOS.close;
end;



procedure TFrmCadOS.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.SetFocus;
   DBEdit3.SetFocus;
end;

procedure TFrmCadOS.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.SetFocus;
   DBEdit7.SetFocus;
end;

procedure TFrmCadOS.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.SetFocus;
   DBEdit5.SetFocus;
end;

procedure TFrmCadOS.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.SetFocus;
   DBEdit2.SetFocus;
end;

procedure TFrmCadOS.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BtnOk.SetFocus;
end;

procedure TFrmCadOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.qryCadOS.State in [dsInsert, dsEdit] then
    begin
          //MessageBox(0,'É necessário salvar ou cancelar as alterações de sair','Atenção',64);
DM.qryCadOS.Cancel;

Close;
    end;
end;

procedure TFrmCadOS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.qryCadOS.State in [dsInsert, dsEdit] then
    begin
          //MessageBox(0,'É necessário salvar ou cancelar as alterações de sair','Atenção',64);
         DM.qryCadOS.Cancel;

Close;
    end;
end;

end.
