unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, SHELLAPI,acPNG;

type
  TFrmSobre = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    sLabelFX1: TsLabelFX;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    OKButton: TButton;
    Label5: TLabel;
    Label6: TLabel;
    procedure CommentsClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

procedure TFrmSobre.CommentsClick(Sender: TObject);
var
  Mail : String;
begin
Mail:=Comments.Caption;
Mail := 'mailto:'+Mail;
ShellExecute(GetDesktopWindow,'open',pchar(Mail), nil,nil,SW_SHOWMAXIMIZED);

end;


procedure TFrmSobre.Label4Click(Sender: TObject);
begin
MessageBox(0,'   Contato com programador:'+#10+#13+#10+
             'Celular:(89)98801-0210'+#10+#13+
             'Email: melque.pro@gmail.com','Contato',64);
end;

procedure TFrmSobre.OKButtonClick(Sender: TObject);
begin
close;
end;

end.
