unit FAG.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_Produtos = class(TForm)
    DBGrid1: TDBGrid;
    Mem_Produtos: TFDMemTable;
    ds_Produtos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    function puxarProdutos: Boolean;
  public
    { Public declarations }
  end;

var
  Form_Produtos: TForm_Produtos;

implementation

{$R *.dfm}

uses FAG.DataModule.Conexao, FAG.Movimento;

procedure TForm_Produtos.DBGrid1DblClick(Sender: TObject);
begin
  Form_Movimento.Edit_codigoProduto.Text := Mem_Produtos.FieldByName('prod_id_produto').AsString;
  Form_Movimento.Edit_descricao.Text := Mem_Produtos.FieldByName('prod_desc').AsString;
  Form_Movimento.Edit_categoria.Text := Mem_Produtos.FieldByName('cat_desc').AsString;
  Form_Produtos.Close;
end;

procedure TForm_Produtos.FormShow(Sender: TObject);
begin

  puxarProdutos;

  DBGrid1.Columns[0].FieldName := 'prod_id_produto';
  DBGrid1.Columns[1].FieldName := 'prod_desc';
  DBGrid1.Columns[2].FieldName := 'cat_desc';
end;

function TForm_Produtos.puxarProdutos: Boolean;
begin
  DataModuleConexao.ExecSQL
    ('SELECT produto.prod_id_produto, produto.prod_desc, categoria.cat_desc FROM produto INNER JOIN categoria USING (cat_id_categoria)',
    Mem_Produtos);
end;

end.
