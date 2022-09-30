unit uConsOSServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmConsOS = class(TForm)
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
    procedure ConsOS;
  public
    { Public declarations }
  end;

var
  FrmConsOS: TFrmConsOS;

implementation

{$R *.dfm}

uses  uDM, uCadOSServicos;

procedure TFrmConsOS.ConsOS;
begin
if radiogroup1.ItemIndex = -1 then
MessageBox(0,'Selecione o tipo de consulta!','Atenção',64)
else

  Case radiogroup1.ItemIndex of
0:
with DM.qryCadOS do
begin
Close;
SQL.Clear;
SQL.Add('Select * from SERVICOS where COD_SERV like :pCOD_SERV');
ParamByName('pCOD_SERV').AsString := Edit1.Text + '%';
Open;
  end
  else
  //MessageBox(0,'Cliente não cadastrado!','Atenção',64);
end;
Case radiogroup1.ItemIndex of
1:
 with DM.qryCadOS do
begin
Close;
SQL.Clear;
SQL.Add('Select * from SERVICOS where DATA_SOLICITACAO like :pDATA_SOLICITACAO');
ParamByName('DATA_SOLICITACAO').AsString := Edit1.Text + '%';
Open;

  end
  else
 // MessageBox(0,'Cliente não cadastrado!','Atenção',64);
end;
end;

procedure TFrmConsOS.DBGrid1DblClick(Sender: TObject);
begin

DM.qryCadOS.Open;
DM.qryCadOS.Edit;
FrmCadOS.Show;
Close;
end;

procedure TFrmConsOS.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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



procedure TFrmConsOS.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
Self.ConsOS;
end;

end.
