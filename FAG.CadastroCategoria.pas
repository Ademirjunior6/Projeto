unit FAG.CadastroCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_CadastroCategoria = class(TForm)
    BitBtn_salvar: TBitBtn;
    BitBtn_cancelar: TBitBtn;
    Edit_codigo: TEdit;
    Label_codigo: TLabel;
    Edit_descricao: TEdit;
    Label_descricao: TLabel;
    FDMemTable1: TFDMemTable;
    procedure BitBtn_cancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function getUltimoID: String;
  public
    { Public declarations }
  end;

var
  Form_CadastroCategoria: TForm_CadastroCategoria;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao;

procedure TForm_CadastroCategoria.BitBtn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm_CadastroCategoria.FormCreate(Sender: TObject);
begin
Edit_codigo.Text := getUltimoID;
end;

function TForm_CadastroCategoria.getUltimoID: String;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT COALESCE(MAX(cat_id_categoria)+1, 1) AS ID FROM categoria', excist);
    Result := excist.FieldByName('ID').AsString;
  finally
    FreeAndNil(excist);
  end;
end;

end.
