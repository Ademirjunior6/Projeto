unit FAG.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL,
  Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList;

type
  TForm_Login = class(TForm)
    Panel_Login: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edit_usuario: TEdit;
    edit_senha: TEdit;
    entrar: TButton;
    FAG_Logo: TImage;
    FDMemTable1: TFDMemTable;
    Image1: TImage;
    Shape1: TShape;
    Edit1: TEdit;
    ovI_ImagemSenha: TImage;
    ovP_Entrar: TPanel;
    ovB_Entrar: TButton;
    ovP_Cancelar: TPanel;
    ovB_Cancelar: TButton;
    ovS_Cancelar: TShape;
    ovI_ImagemLogin: TImage;
    Shape2: TShape;
    Edit2: TEdit;
    procedure entrarClick(Sender: TObject);
    procedure ovP_CancelarClick(Sender: TObject);
    function existe_usuario(codigo: String): Boolean;
    function confirmar: Boolean;
    function validarCampos: Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Login: TForm_Login;

implementation

{$R *.dfm}

uses FAG.DataModule.Conexao, FAG.Menu;

function TForm_Login.confirmar: Boolean;
var
  SQL: String;

begin
  if not validarCampos then
  begin
    Result := False;
    Exit;
  end;

  if existe_usuario(edit_usuario.Text) then
  begin
    if not Assigned(Form_Menu) then
      Form_Menu := TForm_Menu.Create(nil);
    Form_Menu.Show;
    Form_Login.Hide;
  end

  else

  begin
    Application.MessageBox
      ('Usu�rio ou senha inserido est� inv�lido/incorreto, tente novamente.',
      'N�O FOI POSS�VEL LOGAR', MB_OK + MB_ICONHAND + MB_TASKMODAL);
  end;

end;

procedure TForm_Login.entrarClick(Sender: TObject);
begin
 confirmar;
end;

function TForm_Login.existe_usuario(codigo: String): Boolean;
var
  excist: TFDMemTable;
  senhaLogin: String;
begin
  excist := TFDMemTable.Create(Self);
  senhaLogin := edit_senha.Text;

  try
    DataModuleConexao.ExecSQL
      ('SELECT login_usuario, login_senha FROM login WHERE login_usuario = "' +
      codigo + '" AND login_senha ="' + edit_senha.Text + '"', excist);
    Result := not excist.IsEmpty;
  finally
    FreeAndNil(excist);
  end;
end;

procedure TForm_Login.ovP_CancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

function TForm_Login.validarCampos: Boolean;
begin
  Result := False;
  if edit_usuario.Text = '' then
  begin
    Application.MessageBox('O campo login n�o foi preenchido !',
      'Aten��o, campo n�o preenchido', MB_ICONWARNING + MB_OK + MB_TASKMODAL);
    edit_usuario.SetFocus;
  end
  else if edit_senha.Text = '' then
  begin
    Application.MessageBox('O campo senha n�o foi preenchido !',
      'Aten��o, campo n�o preenchido', MB_ICONWARNING + MB_OK + MB_TASKMODAL);
    edit_senha.SetFocus;
  end
  else
  begin
    Result := True;
  end;

end;

end.
