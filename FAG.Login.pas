unit FAG.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL,
  Vcl.Imaging.jpeg;

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
    procedure entrarClick(Sender: TObject);


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


   procedure TForm_Login.entrarClick(Sender: TObject);
begin
//DataModuleConexao.ExecSQL('SELECT * FROM CATEGORIA',FDMemTable1);



Form_Menu.Show;

Form_Login.Hide;

end;

end.


