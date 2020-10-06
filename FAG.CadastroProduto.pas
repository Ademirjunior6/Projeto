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
    ComboBox_categoria: TComboBox;
    Label_categoria: TLabel;
    SpeedButton_salvar: TSpeedButton;
    SpeedButton_pesquisar: TSpeedButton;
    SpeedButton_sair: TSpeedButton;
    SpeedButton_cancelar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit_valor: TEdit;
    Label_valor: TLabel;
    Frame_Generico1: TFrame_Generico;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_sairClick(Sender: TObject);
    procedure SpeedButton_cancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Frame_Generico1Exit(Sender: TObject);
  private
    { Private declarations }
    function getUltimoID: String;
    function cancelar: Boolean;
  public
    { Public declarations }
  end;

var
  Form_CadastroProduto: TForm_CadastroProduto;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao, FAG.CadastroUnMedida;

procedure TForm_CadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  Form_CadastroProduto := nil;
end;

procedure TForm_CadastroProduto.FormCreate(Sender: TObject);
begin
  Frame_Generico1.tabela := 'categoria';
  Frame_Generico1.campoChave := 'cat_id_categoria';
  Frame_Generico1.campoDescricao:= 'cat_desc';
  Frame_Generico1.camposExtras:= 'cat_data_cadastro, cat_data_alterado';
  Frame_Generico1.condicao := '';
  Frame_Generico1.titulo := 'Categorias';
  Frame_Generico1.carregaFrame := True;
  // SetWindowLong(Handle, GWL_STYLE,
  // GetWindowLong(Handle,GWL_STYLE) and not WS_CAPTION);
  // Height := ClientHeight;
  cancelar;
  ComboBox_status.Items.Add('1 - Ativo');
  ComboBox_status.Items.Add('2 - Inativo');
end;

procedure TForm_CadastroProduto.Frame_Generico1Exit(Sender: TObject);
begin
showmessage(Frame_Generico1.TableTemp.FieldByName('cat_id_categoria').AsString);
showmessage(Frame_Generico1.TableTemp.FieldByName('cat_desc').AsString);
showmessage(Frame_Generico1.TableTemp.FieldByName('cat_data_cadastro').AsString);
showmessage(Frame_Generico1.TableTemp.FieldByName('cat_data_alterado').AsString);
end;

procedure TForm_CadastroProduto.SpeedButton1Click(Sender: TObject);
begin
  Form_CadastroUnMedida := TForm_CadastroUnMedida.Create(Self);
  try
    Form_CadastroUnMedida.ShowModal;
  finally
    Form_CadastroUnMedida.Free;
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
  ComboBox_categoria.clear;

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

end.
