unit FAG.CadastroUnMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_CadastroUnMedida = class(TForm)
    Edit_codigoUnMedida: TEdit;
    Label_codigoUnMedida: TLabel;
    Label_descricaoUnMedida: TLabel;
    Edit_descricaoUnMedida: TEdit;
    Panel_cadastroUn: TPanel;
    BitBtn_salvar: TBitBtn;
    BitBtn_cancelar: TBitBtn;
    procedure SpeedButton_cancelarUnMedidaClick(Sender: TObject);
    procedure SpeedButton_salvarUnMedidaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadastroUnMedida: TForm_CadastroUnMedida;

implementation

{$R *.dfm}

procedure TForm_CadastroUnMedida.BitBtn_salvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_CadastroUnMedida.FormCreate(Sender: TObject);
begin
 DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
end;

procedure TForm_CadastroUnMedida.SpeedButton_cancelarUnMedidaClick
  (Sender: TObject);
begin
  Form_CadastroUnMedida.Close;
end;

procedure TForm_CadastroUnMedida.SpeedButton_salvarUnMedidaClick
  (Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
