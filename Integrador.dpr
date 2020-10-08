program Integrador;

{$R *.dres}

uses
  Vcl.Forms,
  FAG.Login in 'FAG.Login.pas' {Form_Login},
  FAG.DataModule.Conexao in 'FAG.DataModule.Conexao.pas' {DataModuleConexao: TDataModule},
  FAG.Menu in 'FAG.Menu.pas' {Form_Menu},
  FAG.CadastroProduto in 'FAG.CadastroProduto.pas' {Form_CadastroProduto},
  FAG.CadastroUnMedida in 'FAG.CadastroUnMedida.pas' {Form_CadastroUnMedida},
  FAG.Frame.Generico in 'FAG.Frame.Generico.pas' {Frame_Generico: TFrame},
  FAG.CadastroCategoria in 'FAG.CadastroCategoria.pas' {Form_CadastroCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TForm_Menu, Form_Menu);
  Application.CreateForm(TForm_CadastroCategoria, Form_CadastroCategoria);
  Application.Run;
end.
