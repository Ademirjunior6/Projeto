program Integrador;

{$R *.dres}

uses
  Vcl.Forms,
  FAG.Login in 'FAG.Login.pas' {Form_Login},
  FAG.DataModule.Conexao in 'FAG.DataModule.Conexao.pas' {DataModuleConexao: TDataModule},
  FAG.Menu in 'FAG.Menu.pas' {Form_Menu},
  FAG.Usuario in 'FAG.Usuario.pas' {Form_Usuario},
  FAG.CadastroProduto in 'FAG.CadastroProduto.pas' {Form_CadastroProduto},
  FAG.CadastroUnMedida in 'FAG.CadastroUnMedida.pas' {Form_CadastroUnMedida},
  FAG.Frame.Generico in 'FAG.Frame.Generico.pas' {Frame_Generico: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TForm_Menu, Form_Menu);
  Application.Run;
end.
