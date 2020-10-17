unit FAG.DetalharMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm_detalharMovimento = class(TForm)
    Panel_relatorioMovimento: TPanel;
    Label_tituloForm: TLabel;
    SpeedButton_exportar: TSpeedButton;
    SpeedButton_voltar: TSpeedButton;
    GroupBox1: TGroupBox;
    DateTimePickerMOV: TDateTimePicker;
    Label_codigoMov: TLabel;
    Edit_codigo1: TEdit;
    Label_dataMov: TLabel;
    GroupBox_produtosMov: TGroupBox;
    DBGrid_rP: TDBGrid;
    DataSourc_srh: TDataSource;
    Table_srh: TFDMemTable;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton_voltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    FcodigoConsulta: String;
    procedure SetcodigoConsulta(const Value: String);
    { Private declarations }
  public
    property codigoConsulta: String read FcodigoConsulta
      write SetcodigoConsulta;
  end;

var
  Form_detalharMovimento: TForm_detalharMovimento;

implementation

{$R *.dfm}

Uses
  FAG.Menu, FAG.DataModule.Conexao, FAG.RelatorioMovimento;

procedure TForm_detalharMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Action := caFree;
  // Release;
  // Form_detalharMovimento := nil;
end;

procedure TForm_detalharMovimento.FormCreate(Sender: TObject);
begin
  Edit_codigo1.Enabled := false;
  DateTimePickerMOV.Enabled := false;
end;

procedure TForm_detalharMovimento.FormShow(Sender: TObject);
begin
  if (not codigoConsulta.IsEmpty) then
  begin
    DataModuleConexao.ExecSQL('SELECT m.mov_data_movimento, p.prod_desc,' +
      ' c.cat_desc, m.mov_tipo, p.prod_quantidade, ' +
      'l.login_usuario FROM movimento AS m INNER JOIN' +
      ' login AS l ON m.login_id = l.login_id INNER JOIN ' +
      'item_movimento AS im ON m.mov_id = im.mov_id INNER ' +
      'JOIN produto AS p ON im.prod_id_produto = p.prod_id_produto ' +
      'INNER JOIN categoria AS c ON p.cat_id_categoria = c.cat_id_categoria ' +
      'WHERE m.mov_id = ' + codigoConsulta, Table_srh);
  end;
  Edit_codigo1.Text := codigoConsulta;
  DBGrid_rP.Columns[0].FieldName := 'mov_data_movimento';
  DBGrid_rP.Columns[1].FieldName := 'prod_desc';
  DBGrid_rP.Columns[2].FieldName := 'cat_desc';
  DBGrid_rP.Columns[3].FieldName := 'mov_tipo';
  DBGrid_rP.Columns[4].FieldName := 'prod_quantidade';
  DBGrid_rP.Columns[5].FieldName := 'login_usuario';
end;

procedure TForm_detalharMovimento.SetcodigoConsulta(const Value: String);
begin
  FcodigoConsulta := Value;
end;

procedure TForm_detalharMovimento.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_detalharMovimento.SpeedButton_voltarClick(Sender: TObject);
begin
  with Table_srh do
  begin
    Open;
    EmptyDataSet;
    Close;
    Open
  end;
  Form_detalharMovimento.Close;
end;

end.
