program Integrador;

{$R *.dres}

uses
  Vcl.Forms,
  FAG.Login in 'FAG.Login.pas' {Form_Login},
  FAG.DataModule.Conexao in 'FAG.DataModule.Conexao.pas' {DataModuleConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TForm_Login, Form_Login);
  Application.Run;
end.