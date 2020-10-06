unit FAG.Frame.Generico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrame_Generico = class(TFrame)
    ComboBox_Informacao: TComboBox;
    Label_Titulo: TLabel;
    TableTemp: TFDMemTable;
    procedure ComboBox_InformacaoExit(Sender: TObject);
  private
    Ftabela: String;
    FcampoChave: String;
    FcarregaFrame: Boolean;
    Fcondicao: String;
    FcampoDescricao: String;
    FcamposExtras: String;
    Ftitulo: String;
    procedure Setcampos(const Value: String);
    procedure Settabela(const Value: String);
    procedure SetcarregaFrame(const Value: Boolean);
    procedure Setcondicao(const Value: String);
    procedure SetcampoDescricao(const Value: String);
    procedure SetcamposExtras(const Value: String);
    procedure Settitulo(const Value: String);
    { Private declarations }
  public
    property tabela: String read Ftabela write Settabela; // tabela do banco
    // Campo id chave da tabela
    property campoChave: String read FcampoChave write Setcampos;
    // campo descricao da tabela
    property campoDescricao: String read FcampoDescricao
      write SetcampoDescricao;
    // campo1, campo2, campo3
    property camposExtras: String read FcamposExtras write SetcamposExtras;
    // campo = "1" AND campo2 = "teste"
    property condicao: String read Fcondicao write Setcondicao;
    property titulo: String read Ftitulo write Settitulo;
    property carregaFrame: Boolean read FcarregaFrame write SetcarregaFrame;

    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  FAG.DataModule.Conexao;

{$R *.dfm}
{ TFrame_Generico }

procedure TFrame_Generico.ComboBox_InformacaoExit(Sender: TObject);
var
  indice: String;
begin
  // ComboBox_Informacao.Items.IndexOf(ComboBox_Informacao.text);
  indice := Copy(ComboBox_Informacao.Text, 0,Pred(Pos('-',ComboBox_Informacao.Text)));
  TableTemp.Locate(campoChave, indice, []);
end;

constructor TFrame_Generico.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TFrame_Generico.SetcampoDescricao(const Value: String);
begin
  FcampoDescricao := Value;
end;

procedure TFrame_Generico.Setcampos(const Value: String);
begin
  FcampoChave := Value;
end;

procedure TFrame_Generico.SetcamposExtras(const Value: String);
begin
  FcamposExtras := Value;
end;

procedure TFrame_Generico.SetcarregaFrame(const Value: Boolean);
var
  sql: String;
begin
  Label_Titulo.Caption := titulo;
  sql := 'SELECT ' + campoChave + ',' + campoDescricao + ',' + camposExtras +
    ' FROM ' + tabela + ' ' + condicao;
  DataModuleConexao.ExecSQL(sql, TableTemp);
  TableTemp.First;
  ComboBox_Informacao.Clear;
  while not TableTemp.eof do
  begin
    ComboBox_Informacao.Items.Add(TableTemp.FieldByName(campoChave).AsString +
      '-' + TableTemp.FieldByName(campoDescricao).AsString);
    TableTemp.Next;
  end;
  FcarregaFrame := Value;
end;

procedure TFrame_Generico.Setcondicao(const Value: String);
begin
  Fcondicao := ' WHERE 1 > 0 ' + Value;
end;

procedure TFrame_Generico.Settabela(const Value: String);
begin
  Ftabela := Value;
end;

procedure TFrame_Generico.Settitulo(const Value: String);
begin
  Ftitulo := Value;
end;

end.
