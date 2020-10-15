unit FAG.RelatorioMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FAG.DetalharMovimento;

type
  TForm_RelatorioMovimento = class(TForm)
    Panel_relatorioMovimento: TPanel;
    GroupBox1: TGroupBox;
    Label_codigo: TLabel;
    Label_data_ate: TLabel;
    Label_produto: TLabel;
    Label_categoria: TLabel;
    Edit_codigo: TEdit;
    Edit_produto: TEdit;
    ComboBox_categoria: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label_tituloForm: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label_data_de: TLabel;
    ComboBox_tipoMoviemento: TComboBox;
    Label_tipoMoviemento: TLabel;
    SpeedButton_filtrar: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid_resultadoPesquisa: TDBGrid;
    SpeedButton_sair: TSpeedButton;
    SpeedButton_exportar: TSpeedButton;
    SpeedButton_detalharMov: TSpeedButton;
    SpeedButton_limparConsulta: TSpeedButton;
    SpeedButton_exibirTodos: TSpeedButton;
    DataSource_consulta: TDataSource;
    FDMemTable_consulta: TFDMemTable;
    FDMemTable_consultamov_id: TIntegerField;
    FDMemTable_consultamov_data_movimento: TDateTimeField;
    FDMemTable_consultamov_tipo: TStringField;
    Panel_resultadoPesquisa: TPanel;
    FDMemTable_consultalogin_usuario: TStringField;
    procedure SpeedButton_sairClick(Sender: TObject);
    procedure SpeedButton_limparConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_detalharMovClick(Sender: TObject);
    procedure SpeedButton_filtrarClick(Sender: TObject);
    procedure SpeedButton_exibirTodosClick(Sender: TObject);






  private
  procedure habilitaPesquisa;
  procedure limpaCampos;
  procedure validaCampos;
  procedure alimentaCategoria;
  procedure buscaMovimentos;
  public

  end;

var
  Form_RelatorioMovimento: TForm_RelatorioMovimento;
 hora : string;
implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao;


procedure TForm_RelatorioMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    Release;
    Form_RelatorioMovimento := nil;
end;

procedure TForm_RelatorioMovimento.habilitaPesquisa;
begin
 Edit_codigo.Enabled := true;
 ComboBox_categoria.Enabled := true;
 ComboBox_tipoMoviemento.Enabled := true;
 DateTimePicker1.Enabled := true;
 DateTimePicker2.Enabled := true;
 DateTimePicker1.DateTime := Now;
 DateTimePicker2.DateTime := Now;
end;

procedure TForm_RelatorioMovimento.limpaCampos;
begin
 DBGrid_resultadoPesquisa.DataSource := nil;
 Edit_codigo.Clear;
 Edit_produto.Clear;
 ComboBox_categoria.ItemIndex := -1;
 ComboBox_tipoMoviemento.ItemIndex := -1;
 DateTimePicker1.DateTime := Now;

 end;

procedure TForm_RelatorioMovimento.validaCampos;
begin
 if TrimLeft(Edit_produto.Text)= '' then
  begin
   Edit_produto.SetFocus;
   ShowMessage('Informe o produto.');
  end;

 if ComboBox_categoria.ItemIndex = -1 then
  begin
    ShowMessage('Selecione a categoria.')
  end;

  if not ComboBox_tipoMoviemento.ItemIndex = 0 and 1  then
  begin
   ShowMessage('Selecione o tipo de movimento.');
  end;

 end;

procedure TForm_RelatorioMovimento.alimentaCategoria;
var
exe: TFDMemTable;
idmax,i : integer;

begin
  exe := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL('SELECT (MAX(cat_id_categoria)) AS ID FROM categoria',exe);
    idmax := exe.FieldByName('ID').AsInteger;
  finally
    FreeAndNil(exe);
  end;

  for i := 1 to idmax do
   begin
   exe := TFDMemTable.Create(Self);
   DataModuleConexao.ExecSQL('SELECT cat_desc FROM categoria WHERE cat_id_categoria ="'+i.ToString+'"',exe);
   ComboBox_categoria.Items.Add(i.ToString+' - '+exe.FieldByName('cat_desc').AsString);
   FreeAndNil(exe);
   end;

end;

procedure TForm_RelatorioMovimento.FormCreate(Sender: TObject);

begin
  alimentaCategoria;
  habilitaPesquisa;
  ComboBox_tipoMoviemento.Items.Add('1 - ENTRADA');
  ComboBox_tipoMoviemento.Items.Add('2 - SAÍDA');
end;

procedure TForm_RelatorioMovimento.SpeedButton_detalharMovClick(
  Sender: TObject);
begin
if not Assigned(Form_detalharMovimento) then
  begin
    Form_detalharMovimento := TForm_detalharMovimento.Create(Application);
    Form_detalharMovimento.BorderStyle := bsNone;
    Form_detalharMovimento.Position := poOwnerFormCenter;
  end;
  Form_detalharMovimento.Position := poOwnerFormCenter;
  Form_detalharMovimento.Show;
end;

procedure TForm_RelatorioMovimento.SpeedButton_exibirTodosClick(
  Sender: TObject);
var
exe: TFDMemTable;
idmax, i : integer;
begin
  exe := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL('SELECT MAX(mov_id) FROM movimento');
  finally
    FreeAndNil(exe);
  end;
  for i := 1 to idmax do
  begin
  exe := TFDMemTable.Create(Self);
      DataModuleConexao.ExecSQL('SELECT m.mov_id, m.mov_data_movimento,m.mov_tipo,l.login_usuario,'
                             +' p.prod_desc, c.cat_desc'
                             +' FROM movimento AS m '
                             +' INNER JOIN login AS l '
                             +' ON m.login_id = l.login_id '
                             +' INNER JOIN item_movimento AS im'
                             +' ON m.mov_id = im.mov_id '
                             +' INNER JOIN produto AS p '
                             +' ON im.prod_id_produto = p.prod_id_produto '
                             +' INNER JOIN categoria AS c'
                             +' ON p.cat_id_categoria = c.cat_id_categoria'
                             +' WHERE (m.mov_id = '+i.ToString+');',exe);


  end;

end;

procedure TForm_RelatorioMovimento.buscaMovimentos;
var
exe: TFDMemTable;
begin
  exe := TFDMemTable.Create(Self);
  try
    if Edit_codigo.Text = '' then
    begin
          DataModuleConexao.ExecSQL('SELECT m.mov_id, m.mov_data_movimento,m.mov_tipo,l.login_usuario,'
                             +' p.prod_desc, c.cat_desc'
                             +' FROM movimento AS m '
                             +' INNER JOIN login AS l '
                             +' ON m.login_id = l.login_id '
                             +' INNER JOIN item_movimento AS im'
                             +' ON m.mov_id = im.mov_id '
                             +' INNER JOIN produto AS p '
                             +' ON im.prod_id_produto = p.prod_id_produto '
                             +' INNER JOIN categoria AS c'
                             +' ON p.cat_id_categoria = c.cat_id_categoria'
                             +' WHERE (mov_tipo = "'+ ComboBox_tipoMoviemento.Items.ToString +'" )'
                             +' AND (p.prod_desc = "'+ Edit_produto.Text+'%") AND (c.cat_id_categoria = "'+ ComboBox_categoria.ItemIndex.ToString +'");',exe);
    end else
        begin
         DataModuleConexao.ExecSQL('SELECT m.mov_id, m.mov_data_movimento,m.mov_tipo,l.login_usuario,'
                             +' p.prod_desc, c.cat_desc'
                             +' FROM movimento AS m '
                             +' INNER JOIN login AS l '
                             +' ON m.login_id = l.login_id '
                             +' INNER JOIN item_movimento AS im'
                             +' ON m.mov_id = im.mov_id '
                             +' INNER JOIN produto AS p '
                             +' ON im.prod_id_produto = p.prod_id_produto '
                             +' INNER JOIN categoria AS c'
                             +' ON p.cat_id_categoria = c.cat_id_categoria'
                             +' WHERE (m.mov_id = "'+ Edit_codigo.Text +'") AND (mov_tipo = "'+ ComboBox_tipoMoviemento.Items.ToString +'" )'
                             +' AND (p.prod_desc = "'+ Edit_produto.Text+'%") AND (c.cat_id_categoria = "'+ ComboBox_categoria.ItemIndex.ToString +'");',exe);

        end;
  finally
    FreeAndNil(exe);
  end;

end;


procedure TForm_RelatorioMovimento.SpeedButton_filtrarClick(Sender: TObject);
begin
 validaCampos;
 buscaMovimentos;

end;

procedure TForm_RelatorioMovimento.SpeedButton_limparConsultaClick(
  Sender: TObject);
begin
  limpaCampos;
end;

procedure TForm_RelatorioMovimento.SpeedButton_sairClick(Sender: TObject);
begin
 Form_RelatorioMovimento.Close;
end;

end.
