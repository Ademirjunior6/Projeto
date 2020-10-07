unit FAG.CadastroUnMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_CadastroUnMedida = class(TForm)
    Edit_codigoUnMedida: TEdit;
    Label_codigoUnMedida: TLabel;
    Label_descricaoUnMedida: TLabel;
    Edit_descricaoUnMedida: TEdit;
    Panel_cadastroUn: TPanel;
    BitBtn_salvar: TBitBtn;
    BitBtn_cancelar: TBitBtn;
    FDMemTable1: TFDMemTable;
    procedure SpeedButton_cancelarUnMedidaClick(Sender: TObject);
    procedure SpeedButton_salvarUnMedidaClick(Sender: TObject);
    procedure BitBtn_salvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function getUltimoID: String;
  public
    { Public declarations }
  end;

var
  Form_CadastroUnMedida: TForm_CadastroUnMedida;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao;

procedure TForm_CadastroUnMedida.BitBtn_salvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_CadastroUnMedida.FormCreate(Sender: TObject);
begin
  Edit_codigoUnMedida.Text := getUltimoID;
end;

function TForm_CadastroUnMedida.getUltimoID: String;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT COALESCE(MAX(un_medida_id)+1, 1) AS ID FROM un_medida', excist);
    Result := excist.FieldByName('ID').AsString;
  finally
    FreeAndNil(excist);
  end;
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
