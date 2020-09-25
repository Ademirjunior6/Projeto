unit FAG.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm_Menu = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produto1: TMenuItem;
    Fornecedor1: TMenuItem;
    Usurio1: TMenuItem;
    N1: TMenuItem;
    MovimentarEstoque1: TMenuItem;
    ConsultareAlterar1: TMenuItem;
    Movimentar1: TMenuItem;
    CadastrodeProduto1: TMenuItem;
    Movimentao1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Menu: TForm_Menu;

implementation

{$R *.dfm}

uses FAG.Usuario;

procedure TForm_Menu.Panel1Click(Sender: TObject);
begin
  Form_Usuario.show;

  Form_Menu.hide;
end;

end.
