program OSServicos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCadOSServicos in 'uCadOSServicos.pas' {FrmCadOS},
  uDM in 'uDM.pas' {DM: TDataModule},
  uConsOSServicos in 'uConsOSServicos.pas' {FrmConsOS},
  uCadClientes in 'uCadClientes.pas' {FrmCadClientes},
  uConsCliente in 'uConsCliente.pas' {FrmConsCli},
  Vcl.Themes,
  Vcl.Styles,
  uSobre in 'uSobre.pas' {FrmSobre},
  uLogin in 'uLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.Title := 'OS & Serviços Deskjet Informática';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmConsOS, FrmConsOS);
  Application.CreateForm(TFrmCadOS, FrmCadOS);
  Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  Application.CreateForm(TFrmConsCli, FrmConsCli);
  Application.CreateForm(TFrmSobre, FrmSobre);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
