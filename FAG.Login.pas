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
    FAG_Logo: TImage;
    FDMemTable1: TFDMemTable;
    Shape1: TShape;
    Edit_senha: TEdit;
    ovI_ImagemSenha: TImage;
    ovP_Entrar: TPanel;
    ovB_Entrar: TButton;
    ovP_Cancelar: TPanel;
    ovB_Cancelar: TButton;
    ovS_Cancelar: TShape;
    ovI_ImagemLogin: TImage;
    Shape2: TShape;
    Edit_usuario: TEdit;
    ImagemAparecer: TImage;
    procedure entrarClick(Sender: TObject);
    procedure ovP_CancelarClick(Sender: TObject);
    function existe_usuario(codigo: String): Boolean;
    function confirmar: Boolean;
    function validarCampos: Boolean;
    procedure ovP_EntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImagemAparecerClick(Sender: TObject);
    procedure Edit_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure ImagemOcultarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagemOcultarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagemAparecerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagemAparecerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    usuarioLogado: String;
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
  if existe_usuario(Edit_usuario.Text) then
  begin
    if not Assigned(Form_Menu) then
    Form_Menu.Hide;
    usuarioLogado := Edit_usuario.Text;
    ModalResult := mrOk;
  end
  else
  begin
    Application.MessageBox
      ('Usuário ou senha inserido está inválido/incorreto, tente novamente.',
      'NÃO FOI POSSÍVEL LOGAR', MB_OK + MB_ICONHAND + MB_TASKMODAL);
  end;

end;

procedure TForm_Login.Edit_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    confirmar;
end;

procedure TForm_Login.Edit_usuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    confirmar;
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
  senhaLogin := Edit_senha.Text;

  try
    DataModuleConexao.ExecSQL
      ('SELECT login_usuario, login_senha FROM login WHERE login_usuario = "' +
      codigo + '" AND login_senha ="' + Edit_senha.Text + '"', excist);
    Result := not excist.IsEmpty;
  finally
    FreeAndNil(excist);
  end;
end;

procedure TForm_Login.FormShow(Sender: TObject);
begin
  ImagemAparecer.Visible := True;
end;

procedure TForm_Login.ImagemAparecerClick(Sender: TObject);
begin
  if ImagemAparecer.Visible = True then
  begin
    Edit_senha.PasswordChar := #0;
    ImagemAparecer.Visible := False;
  end;
end;

procedure TForm_Login.ImagemAparecerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit_senha.PasswordChar := #0;
end;

procedure TForm_Login.ImagemAparecerMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit_senha.PasswordChar := '*';
end;

procedure TForm_Login.ImagemOcultarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit_senha.PasswordChar := #0;
end;

procedure TForm_Login.ImagemOcultarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit_senha.PasswordChar := '*';
end;

procedure TForm_Login.ovP_CancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm_Login.ovP_EntrarClick(Sender: TObject);
begin
  confirmar;
end;

function TForm_Login.validarCampos: Boolean;
begin
  Result := False;
  if Edit_usuario.Text = '' then
  begin
    Application.MessageBox('O campo login não foi preenchido !',
      'Atenção, campo não preenchido', MB_ICONWARNING + MB_OK + MB_TASKMODAL);
    Edit_usuario.SetFocus;
  end
  else if Edit_senha.Text = '' then
  begin
    Application.MessageBox('O campo senha não foi preenchido !',
      'Atenção, campo não preenchido', MB_ICONWARNING + MB_OK + MB_TASKMODAL);
    Edit_senha.SetFocus;
  end
  else
  begin
    Result := True;
  end;

end;

end.
