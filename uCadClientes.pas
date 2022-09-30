unit uCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, AdvGlowButton, sPageControl;

type
  TFrmCadClientes = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);



    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;



var
  FrmCadClientes: TFrmCadClientes;

implementation





{$R *.dfm}

uses uDM, uConsCliente;


procedure TFrmCadClientes.AdvGlowButton10Click(Sender: TObject);
begin
if DM.qryCadCliente.RecordCount = 0 then
begin
  Application.MessageBox('Não há registro a ser excluído!',pchar('Atenção'),+MB_ICONINFORMATION);
end
else
if Application.MessageBox('Confirma a exclusão definitiva do cadastro selecionado?',pchar('Atenção - Excluir cadastro'),+MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON1) = id_yes then
begin
dm.qryCadCliente.Delete;
dm.qryCadCliente.Refresh;
DM.qryCadCliente.Edit;
 end;
end;

procedure TFrmCadClientes.AdvGlowButton13Click(Sender: TObject);
begin
dm.qryCadcliente.Cancel;
dm.qryCadcliente.Refresh;
Close;
end;

procedure TFrmCadClientes.AdvGlowButton14Click(Sender: TObject);
begin
if DBEdit1.Text = EmptyStr then
begin
DM.qryCadcliente.Cancel;
DBEdit2.Clear;
Close;
Abort
end
else
    dm.qryCadcliente.Post;
    dm.qryCadcliente.Refresh;
    MessageBox(0,'Cliente cadastrado com sucesso!.','Atenção',64);
   if DBEdit2.Text = EmptyStr then
begin
   DBEdit2.SetFocus;
   DBEdit2.Clear;
end
else
begin
  DBEdit2.Clear;
  dm.qryCadcliente.Append;
  DBEdit9.Text := DateToStr(now);

  end;
end;

procedure TFrmCadClientes.AdvGlowButton8Click(Sender: TObject);
begin
if DBEdit2.Text = EmptyStr then
begin
   DBEdit2.SetFocus;
end
else
begin
  dm.qryCadcliente.Append;
  DBEdit9.Text := DateToStr(now);

  end;
end;

procedure TFrmCadClientes.AdvGlowButton9Click(Sender: TObject);
begin
FrmConsCli.Show;
FrmCadClientes.Close;
DM.qryCadcliente.close;
end;



procedure TFrmCadClientes.DBEdit2Enter(Sender: TObject);
begin
 if DBEdit2.Text <> '' then
 begin
   if Length(Text) > 11 then //CNPJ
    DBEdit2.Field.EditMask:= '00.000.000/0000-00;1;_'
   else //CPF
    DBEdit2.Field.EditMask := ('000.000.000-00;0; ');
end;
end;

procedure TFrmCadClientes.DBEdit2Exit(Sender: TObject);
begin
 if DBEdit2.Text <> '' then
 begin
   if Length(Text) > 11 then //CNPJ
    DBEdit2.Field.EditMask:= '00.000.000/0000-00;1;_'
   else //CPF
    DBEdit2.Field.EditMask := ('000.000.000-00;0; ');
end;
end;

procedure TFrmCadClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.qryCadcliente.State in [dsInsert, dsEdit] then
    begin
          //MessageBox(0,'É necessário salvar ou cancelar as alterações de sair','Atenção',64);
DM.qryCadcliente.Cancel;

Close;
    end;
end;

procedure TFrmCadClientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.qryCadcliente.State in [dsInsert, dsEdit] then
    begin
          //MessageBox(0,'É necessário salvar ou cancelar as alterações de sair','Atenção',64);
         DM.qryCadcliente.Cancel;

Close;
    end;
end;

end.
