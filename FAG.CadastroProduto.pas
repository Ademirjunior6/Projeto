unit FAG.CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ComCtrls, FAG.Frame.Generico;

type
  TForm_CadastroProduto = class(TForm)
    Panel_cadastroProduto: TPanel;
    Edit_codigo: TEdit;
    Label_tituloForm: TLabel;
    GroupBox1: TGroupBox;
    Label_codigo: TLabel;
    Label_status: TLabel;
    ComboBox_status: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label_data: TLabel;
    Edit_descricao: TEdit;
    Label_descricao: TLabel;
    ComboBox_unMedida: TComboBox;
    Label_unMedida: TLabel;
    SpeedButton_salvar: TSpeedButton;
    SpeedButton_pesquisar: TSpeedButton;
    SpeedButton_sair: TSpeedButton;
    SpeedButton_cancelar: TSpeedButton;
    SpeedButton_unMedida: TSpeedButton;
    Label_valor: TLabel;
    Frame_Generico1: TFrame_Generico;
    Edit_valor: TEdit;
    SpeedButton_categoria: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_sairClick(Sender: TObject);
    procedure SpeedButton_cancelarClick(Sender: TObject);
    procedure SpeedButton_unMedidaClick(Sender: TObject);
    procedure Frame_Generico1Exit(Sender: TObject);
    procedure Edit_valorExit(Sender: TObject);
    procedure Edit_valorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_valorChange(Sender: TObject);
    procedure SpeedButton_categoriaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    function getUltimoID: String;
    function cancelar: Boolean;
    procedure loadTela(id: string);
  public
    function carregaCategoria: Boolean;
  end;

var
  Form_CadastroProduto: TForm_CadastroProduto;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao, FAG.CadastroUnMedida, FAG.CadastroCategoria,
  FAG.ConsultarProduto;

procedure TForm_CadastroProduto.Edit_valorChange(Sender: TObject);
var
  s: string;
  v: double;
  I: integer;
begin
  // 1� Passo : se o edit estiver vazio, nada pode ser feito.
  If (Edit_valor.Text = emptystr) then
    Edit_valor.Text := '0,00';

  // 2� Passo : obter o texto do edit, SEM a virgula e SEM o ponto decimal:
  s := '';
  for I := 1 to length(Edit_valor.Text) do
    if (Edit_valor.Text[I] in ['0' .. '9']) then
      s := s + Edit_valor.Text[I];

  // 3� Passo : fazer com que o conte�do do edit apresente 2 casas decimais:
  v := strtofloat(s);
  v := (v / 100); // para criar 2 casa decimais

  // 4� Passo : Formata o valor de (V) para aceitar valores do tipo 0,10.
  Edit_valor.Text := FormatFloat('###,##0.00', v);
  Edit_valor.selstart := length(Edit_valor.Text);
end;

procedure TForm_CadastroProduto.Edit_valorExit(Sender: TObject);
begin
  // Edit_valor.Text := CurrToStrF(StrToCurrDef(Trim(Edit_valor.Text),0),ffNumber,2);
end;

procedure TForm_CadastroProduto.Edit_valorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NOT(Key in ['0' .. '9', #8, #9]) then
    Key := #0;
  // Fun��o para posicionar o cursor sempre na direita
  Edit_valor.selstart := length(Edit_valor.Text);
end;

procedure TForm_CadastroProduto.FormActivate(Sender: TObject);
begin
  carregaCategoria;
end;

procedure TForm_CadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  Form_CadastroProduto := nil;
end;

procedure TForm_CadastroProduto.FormCreate(Sender: TObject);
begin
  carregaCategoria;
  // SetWindowLong(Handle, GWL_STYLE,
  // GetWindowLong(Handle,GWL_STYLE) and not WS_CAPTION);
  // Height := ClientHeight;
  cancelar;
  ComboBox_status.Items.Add('1 - Ativo');
  ComboBox_status.Items.Add('2 - Inativo');
end;

procedure TForm_CadastroProduto.Frame_Generico1Exit(Sender: TObject);
begin
  // showmessage(Frame_Generico1.TableTemp.FieldByName('cat_id_categoria')
  // .AsString);
  // showmessage(Frame_Generico1.TableTemp.FieldByName('cat_desc').AsString);
  // showmessage(Frame_Generico1.TableTemp.FieldByName('cat_data_cadastro')
  // .AsString);
  // showmessage(Frame_Generico1.TableTemp.FieldByName('cat_data_alterado')
  // .AsString);
end;

procedure TForm_CadastroProduto.SpeedButton_unMedidaClick(Sender: TObject);
begin
  Form_CadastroUnMedida := TForm_CadastroUnMedida.Create(Self);
  try
    Form_CadastroUnMedida.ShowModal;
  finally
    Form_CadastroUnMedida.Free;
  end;
end;

procedure TForm_CadastroProduto.SpeedButton_categoriaClick(Sender: TObject);
begin
  Form_CadastroCategoria := TForm_CadastroCategoria.Create(Self);
  try
    if Form_CadastroCategoria.ShowModal = mrOk then
      carregaCategoria;
  finally
    Form_CadastroCategoria.Free;
  end;
end;

procedure TForm_CadastroProduto.SpeedButton_pesquisarClick(Sender: TObject);
begin
  Form_ConsultarProduto := TForm_ConsultarProduto.Create(Self);
  try
    if Form_ConsultarProduto.ShowModal = mrOk then
      loadTela(Form_ConsultarProduto.FDMemTable_consultaProduto.FieldByName('prod_id_produto')
        .AsString);
  finally
    FreeAndNil(Form_ConsultarProduto)
  end;
end;

procedure TForm_CadastroProduto.loadTela(id: string);
var
  carrega: TFDMemTable;
begin
  carrega := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL('SELECT * FROM usuario WHERE ID = '
      + id, carrega);
    edit_codigo.Text := carrega.FieldByName('prod_id_produto').AsString;
    ComboBox_status.ItemIndex := carrega.FieldByName('status').AsInteger;
    edit_descricao.Text := carrega.FieldByName('prod_desc').AsString;
    Frame_generico1.ComboBox_Informacao.ItemIndex := carrega.FieldByName('cat_id_categoria').AsInteger;
    ComboBox_status.ItemIndex := carrega.FieldByName('status').AsInteger;
   // DateTimePicker1 := carrega.FieldByName('prod_data_cadastro').AsDate;
  finally
    FreeAndNil(carrega);
  end;

end;

procedure TForm_CadastroProduto.SpeedButton_cancelarClick(Sender: TObject);
begin
  cancelar;
end;

procedure TForm_CadastroProduto.SpeedButton_sairClick(Sender: TObject);
begin
  Form_CadastroProduto.Close;
end;

function TForm_CadastroProduto.cancelar: Boolean;
begin
  Edit_codigo.Text := getUltimoID;
  Edit_descricao.clear;
  ComboBox_unMedida.clear;

end;

function TForm_CadastroProduto.getUltimoID: String;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT COALESCE(MAX(prod_id_produto)+1, 1) AS ID FROM produto', excist);
    Result := excist.FieldByName('ID').AsString;
  finally
    FreeAndNil(excist);
  end;
end;

function TForm_CadastroProduto.carregaCategoria: Boolean;
begin
  Frame_Generico1.tabela := 'categoria';
  Frame_Generico1.campoChave := 'cat_id_categoria';
  Frame_Generico1.campoDescricao := 'cat_desc';
  Frame_Generico1.camposExtras := 'cat_data_cadastro, cat_data_alterado';
  Frame_Generico1.condicao := '';
  Frame_Generico1.titulo := 'Categorias';
  Frame_Generico1.carregaFrame := True;
end;

end.
