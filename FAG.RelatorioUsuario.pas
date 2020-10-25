unit FAG.RelatorioUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TForm_RelatorioUsuario = class(TForm)
    Panel_Principal: TPanel;
    Label_tituloForm: TLabel;
    SpeedButton_exibirTodos: TSpeedButton;
    SpeedButton_limparConsulta: TSpeedButton;
    SpeedButton_exportar: TSpeedButton;
    SpeedButton_sair: TSpeedButton;
    GroupBox_consulta: TGroupBox;
    Label_status: TLabel;
    SpeedButton_filtrar: TSpeedButton;
    ComboBox_Status: TComboBox;
    GroupBox_grid: TGroupBox;
    Panel_grid: TPanel;
    DBGrid_Pesquisa: TDBGrid;
    DataSource_Consulta: TDataSource;
    FDMemTable_Consulta: TFDMemTable;
    ComboBox_filtro: TComboBox;
    Label_filtro: TLabel;
    Label_pesquisa: TLabel;
    MaskEdit_pesquisa: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton_sairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_limparConsultaClick(Sender: TObject);
    procedure SpeedButton_filtrarClick(Sender: TObject);
    procedure ComboBox_filtroSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton_exibirTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RelatorioUsuario: TForm_RelatorioUsuario;

implementation

{$R *.dfm}
Uses
  FAG.Menu, FAG.DataModule.Conexao;


procedure TForm_RelatorioUsuario.ComboBox_filtroSelect(Sender: TObject);
begin

 if ComboBox_filtro.ItemIndex = 0 then
 begin
  MaskEdit_pesquisa.Clear;
  MaskEdit_pesquisa.EditMask := EmptyStr;
  MaskEdit_pesquisa.SetFocus;
 end;

 if ComboBox_filtro.ItemIndex = 1 then
 begin
  MaskEdit_pesquisa.Clear;
  MaskEdit_pesquisa.EditMask := EmptyStr;
  MaskEdit_pesquisa.SetFocus;
 end;

 if ComboBox_filtro.ItemIndex = 2 then
 begin
  MaskEdit_pesquisa.Clear;
  MaskEdit_pesquisa.EditMask := '000\.000\.000\-00;';
  MaskEdit_pesquisa.SetFocus;
 end;

 if ComboBox_filtro.ItemIndex = 3 then
 begin
  MaskEdit_pesquisa.Clear;
  MaskEdit_pesquisa.EditMask := '99\.999\.999\/9999\-99;';
  MaskEdit_pesquisa.SetFocus;
 end;


end;

procedure TForm_RelatorioUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  Form_RelatorioUsuario := nil;
end;


procedure TForm_RelatorioUsuario.FormCreate(Sender: TObject);
begin


  ComboBox_filtro.Items.Add('CÓDIGO');
  ComboBox_filtro.Items.Add('NOME');
  ComboBox_filtro.Items.Add('CPF');
  ComboBox_filtro.Items.Add('CNPJ');
  ComboBox_filtro.ItemIndex := 1;

  ComboBox_Status.Items.Add('TODOS');
  ComboBox_Status.Items.Add('ATIVO');
  ComboBox_Status.Items.Add('INATIVO');
  ComboBox_Status.ItemIndex := 0;
  DBGrid_Pesquisa.Columns[0].FieldName := 'pes_id_pessoa';
  DBGrid_Pesquisa.Columns[1].FieldName := 'pes_nome';
  DBGrid_Pesquisa.Columns[2].FieldName := 'pes_cpf';
  DBGrid_Pesquisa.Columns[3].FieldName := 'pes_nascimento';
  DBGrid_Pesquisa.Columns[4].FieldName := 'pes_email';
  DBGrid_Pesquisa.Columns[5].FieldName := 'pes_celular';
  DBGrid_Pesquisa.Columns[6].FieldName := 'pes_ativo';

end;

procedure TForm_RelatorioUsuario.FormShow(Sender: TObject);
begin
MaskEdit_pesquisa.SetFocus;
end;

procedure TForm_RelatorioUsuario.SpeedButton_exibirTodosClick(Sender: TObject);
var
   sql: String;
begin
   sql := 'SELECT pes_id_pessoa, pes_nome, pes_cpf, pes_nascimento,pes_email, pes_celular,pes_ativo FROM pessoa ' ;
   DataModuleConexao.ExecSQL(sql, FDMemTable_Consulta);
end;

procedure TForm_RelatorioUsuario.SpeedButton_filtrarClick(Sender: TObject);
var
  sql: String;
begin
  if MaskEdit_pesquisa.Text = EmptyStr then
  begin
   Application.MessageBox ('Preencha a pesquisa','Erro',MB_OK+MB_ICONEXCLAMATION);
   MaskEdit_pesquisa.SetFocus;
   exit
  end;

  sql := 'SELECT pes_id_pessoa, pes_nome, pes_cpf, pes_nascimento,pes_email, pes_celular,pes_ativo FROM pessoa WHERE 1 > 0' ;

  if MaskEdit_pesquisa.Text <> EmptyStr then
  begin
    if ComboBox_filtro.ItemIndex = 0 then
    begin
      sql := sql + ' AND (pes_id_pessoa = "' + MaskEdit_pesquisa.Text + '")'
    end;
    if ComboBox_filtro.ItemIndex = 1 then
    begin
      sql := sql + ' AND (pes_nome LIKE "%' + MaskEdit_pesquisa.Text + '%")'
    end;
    if ComboBox_filtro.ItemIndex = 2 then
    begin
      sql := sql + ' AND (pes_cpf = "' + MaskEdit_pesquisa.Text + '")'
    end;
    if ComboBox_filtro.ItemIndex = 3 then
    begin
      sql := sql + ' AND (pes_cnpj = "' + MaskEdit_pesquisa.Text + '")'
    end;
  end;

  if ComboBox_Status.ItemIndex <> 0 then
  begin
    sql := sql + ' AND (pes_ativo = "' + ComboBox_Status.ItemIndex.ToString + '")'
  end;

  DataModuleConexao.ExecSQL(sql, FDMemTable_Consulta);

  if FDMemTable_Consulta.IsEmpty then
  begin
    Application.MessageBox ('Nenhum registro encontrado','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;
end;

procedure TForm_RelatorioUsuario.SpeedButton_limparConsultaClick(Sender: TObject);
begin
  if not FDMemTable_Consulta.IsEmpty  then
  begin
  FDMemTable_Consulta.Open;
  FDMemTable_Consulta.EmptyDataSet;
  FDMemTable_Consulta.Close;
  FDMemTable_Consulta.Open;
  end;
  ComboBox_Status.ItemIndex := 0;
  ComboBox_filtro.ItemIndex := 1;
  MaskEdit_pesquisa.Clear;
  MaskEdit_pesquisa.EditMask := EmptyStr;
end;

procedure TForm_RelatorioUsuario.SpeedButton_sairClick(Sender: TObject);
begin
 Form_RelatorioUsuario.Close;
end;

end.
