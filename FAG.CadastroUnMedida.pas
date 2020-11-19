unit FAG.CadastroUnMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FAG.Utils;

type
  TForm_CadastroUnMedida = class(TForm)
    Edit_codigoUnMedida: TEdit;
    Label_codigoUnMedida: TLabel;
    Label_descricaoUnMedida: TLabel;
    Edit_descricaoUnMedida: TEdit;
    FDMemTable1: TFDMemTable;
    BitBtn_salvar: TBitBtn;
    BitBtn_cancelar: TBitBtn;
    EditSigla: TEdit;
    LabelSigla: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn_cancelarClick(Sender: TObject);
    procedure BitBtn_salvarClick(Sender: TObject);
  private
    function getUltimoID: String;
    function validarCampos: Boolean;
    function gravar: Boolean;
  public
    { Public declarations }
  end;

var
  Form_CadastroUnMedida: TForm_CadastroUnMedida;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao;

function TForm_CadastroUnMedida.validarCampos: Boolean;
begin
  Result := False;
  if Edit_descricaoUnMedida.Text = '' then
  begin
    ShowMessage('Informe uma descri��o.');
    Edit_descricaoUnMedida.SetFocus;
  end
  else if EditSigla.Text = '' then
  begin
    ShowMessage('Informe uma sigla.');
    EditSigla.SetFocus;
    end
  else
  begin
    Result := True;
  end;
end;

function TForm_CadastroUnMedida.gravar: Boolean;
var
  SQL: String;
begin
  if not validarCampos then
  begin
    Result := False;
    Exit;
  end;
  begin
    SQL := ('INSERT INTO un_medida (un_medida_id, un_medida_desc, un_medida_sigla) '
      + ' VALUES (' + Edit_codigoUnMedida.Text + ',' +
      StrToSQL(Edit_descricaoUnMedida.Text) + ',' +
      StrToSQL(EditSigla.Text) + ')');
    DataModuleConexao.ExecSQL(SQL);
    ShowMessage('Salvo com Sucesso.');
  end;
end;

procedure TForm_CadastroUnMedida.BitBtn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm_CadastroUnMedida.BitBtn_salvarClick(Sender: TObject);
begin
  gravar;
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

end.
