unit FAG.ConsultarProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_ConsultarProduto = class(TForm)
    Panel_relatorioMovimento: TPanel;
    Label_ConsultarProd: TLabel;
    SpeedButton_exibirTodos: TSpeedButton;
    GroupBox1: TGroupBox;
    Label_produto: TLabel;
    Label_categoria: TLabel;
    SpeedButton_filtrar: TSpeedButton;
    Edit_produto: TEdit;
    ComboBox_categoria: TComboBox;
    GroupBox2: TGroupBox;
    Panel_resultadoPesquisa: TPanel;
    SaveDialog1: TSaveDialog;
    FDMemTable_consultaProduto: TFDMemTable;
    DataSource_consultaProduto: TDataSource;
    ComboBox_filtro: TComboBox;
    SpeedButton_limparConsulta: TSpeedButton;
    SpeedButton_Voltar: TSpeedButton;
    Label_filtro: TLabel;
    DBGrid_resultadoPesquisa: TDBGrid;
    procedure SpeedButton_exibirTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_resultadoPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ConsultarProduto: TForm_ConsultarProduto;

implementation

{$R *.dfm}

Uses

FAG.DataModule.Conexao;


procedure TForm_ConsultarProduto.DBGrid_resultadoPesquisaDblClick(Sender: TObject);
begin
  if not FDMemTable_consultaProduto.IsEmpty then
    ModalResult := mrOk;
end;

procedure TForm_ConsultarProduto.FormCreate(Sender: TObject);
begin
  DBGrid_resultadoPesquisa.Columns[0].FieldName := 'C�digo';
  DBGrid_resultadoPesquisa.Columns[1].FieldName := 'Descri��o';
  DBGrid_resultadoPesquisa.Columns[2].FieldName := 'Categoria';
end;

procedure TForm_ConsultarProduto.SpeedButton_exibirTodosClick(Sender: TObject);
var
  sql: String;
begin
   sql := 'SELECT ' +
		    'prod_id_produto AS C�digo,'+
        'prod_desc AS Descri��o, '+
				'B.cat_desc AS Categoria '+

' FROM produto AS A '+
' INNER JOIN categoria as B ON A.cat_id_categoria = B.cat_id_categoria '+
' INNER JOIN un_medida as C ON A.un_medida_id = C.un_medida_id';
    DataModuleConexao.ExecSQL(sql, FDMemTable_consultaProduto);
end;

end.