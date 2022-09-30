unit uConsCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmConsCli = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Bevel1: TBevel;
    Label2: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ConsCliente;
  public
    { Public declarations }
  end;

var
  FrmConsCli: TFrmConsCli;

implementation

{$R *.dfm}

uses uCadClientes, uDM;

procedure TFrmConsCli.ConsCliente;
begin
if radiogroup1.ItemIndex = -1 then
MessageBox(0,'Selecione o tipo de consulta!','Atenção',64)
else

  Case radiogroup1.ItemIndex of
0:
with DM.qryCadCliente do
begin
Close;
SQL.Clear;
SQL.Add('Select * from CLIENTE where CPF_CNPJ like :pCPF_CNPJ');
ParamByName('pCPF_CNPJ').AsString := Edit1.Text + '%';
Open;
  end
  else
  //MessageBox(0,'Cliente não cadastrado!','Atenção',64);
end;
Case radiogroup1.ItemIndex of
1:
 with DM.qryCadCliente do
begin
Close;
SQL.Clear;
SQL.Add('Select * from CLIENTE where NOME like :pNOME');
ParamByName('pNOME').AsString := Edit1.Text + '%';
Open;

  end
  else
 // MessageBox(0,'Cliente não cadastrado!','Atenção',64);
end;
end;

procedure TFrmConsCli.DBGrid1DblClick(Sender: TObject);
begin

DM.qrycADCliente.Open;
DM.qryCadCliente.Edit;
FrmCadClientes.Show;
Close;
end;

procedure TFrmConsCli.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If odd(DM.qryCadCliente.RecNo) then
begin
DBGrid1.Canvas.Font.Color:= clBlack;
DBGrid1.Canvas.Brush.Color:= $00ECE3D7;
end
else
begin
DBGrid1.Canvas.Font.Color:= clBlack;
DBGrid1.Canvas.Brush.Color:= clWhite;
end;
DBGrid1.Canvas.FillRect(Rect);
DBGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
end;



procedure TFrmConsCli.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
Self.ConsCliente;
end;

end.
