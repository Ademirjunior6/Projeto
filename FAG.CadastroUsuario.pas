unit FAG.CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FAG.Frame.Generico;

type
  TForm_CadastroUsuario = class(TForm)
    Panel_CadastroUsuario: TPanel;
    GroupBox1: TGroupBox;
    Label_tituloForm: TLabel;
    Edit_codigo: TEdit;
    Label_codigo: TLabel;
    Label_NomeCompleto: TLabel;
    Edit_nomecompleto: TEdit;
    Label_CPF: TLabel;
    Label_RG: TLabel;
    Edit_RG: TEdit;
    Date_Nascimento: TDateTimePicker;
    Label_nascimento: TLabel;
    Edit_Matricula: TEdit;
    Label_Matricula: TLabel;
    ComboBox_Sexo: TComboBox;
    Label_Sexo: TLabel;
    Label_Celular: TLabel;
    Edit_Celular: TEdit;
    Label_Telefone: TLabel;
    Edit_Telefone: TEdit;
    SpeedButton_salvar: TSpeedButton;
    SpeedButton_editar: TSpeedButton;
    SpeedButton_Sair: TSpeedButton;
    Mask_CPF: TMaskEdit;
    FDMemTable1: TFDMemTable;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit_cep: TEdit;
    Edit_bairro: TEdit;
    Edit_numero: TEdit;
    Edit_complemento: TEdit;
    Edit_cxpostal: TEdit;
    Edit_cidade: TEdit;
    Edit_logradouro: TEdit;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_senha: TEdit;
    Edit_email: TEdit;
    Edit_confirmasenha: TEdit;
    Edit_login: TEdit;
    Frame_Pessoa: TFrame_Generico;
    Frame_Status: TFrame_Generico;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_salvarClick(Sender: TObject);
    procedure SpeedButton_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    function inserirdados: Boolean;
    function inserirendereco: Boolean;
    function carregaStatus :Boolean;
    function senha: Boolean;
    function EncryptSTR(const key, texto: String): String;
    function getUltimoId : String;

  public
    function carregatppessoa: Boolean;
  end;

var
  Form_CadastroUsuario: TForm_CadastroUsuario;

implementation

{$R *.dfm}

uses FAG.DataModule.Conexao, FAG.Utils;

function TForm_CadastroUsuario.carregaStatus: Boolean;
begin
  Frame_Status.tabela := 'situacao';
  Frame_Status.campoChave := 'sit_id';
  Frame_Status.campoDescricao := 'sit_descricao';
  Frame_Status.camposExtras := '';
  Frame_Status.condicao := '';
  Frame_Status.titulo := 'Status';
  Frame_Status.primeiraOpcao := 'Escolha';
  Frame_Status.carregaFrame := True;
end;

function TForm_CadastroUsuario.carregatppessoa: Boolean;
begin
  Frame_Pessoa.tabela := 'tipopessoa';
  Frame_Pessoa.campoChave := 'id_tipoPessoa';
  Frame_Pessoa.campoDescricao := 'tipopessoa_desc';
  Frame_Pessoa.camposExtras := '';
  Frame_Pessoa.condicao := '';
  Frame_Pessoa.titulo := 'Tipo Pessoa';
  Frame_Pessoa.primeiraOpcao := 'Escolha';
  Frame_Pessoa.carregaFrame := True;
end;

function TForm_CadastroUsuario.EncryptSTR(const key, texto: String): String;
var
  I: Integer;
  C: Byte;
begin
  Result := '';
  for I := 1 to Length(texto) do
  begin
    if Length(key) > 0 then
      C := Byte(key[1 + ((I - 1) mod Length(key))]) xor Byte(texto[I])
    else
      C := Byte(texto[I]);
    Result := Result + AnsiLowerCase(IntToHex(C, 2));
  end;
end;

procedure TForm_CadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  Release;
  Form_CadastroUsuario := nil;
end;

procedure TForm_CadastroUsuario.FormCreate(Sender: TObject);
begin
  Date_Nascimento.datetime := now;
  carregatppessoa;
  carregaStatus;
   Edit_codigo.Text := getUltimoId;
end;

function TForm_CadastroUsuario.getUltimoId: String;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT COALESCE(MAX(pes_id_pessoa)+1, 1) AS ID FROM pessoa', excist);
    Result := excist.FieldByName('ID').AsString;
  finally
    FreeAndNil(excist);
  end;
end;

function TForm_CadastroUsuario.inserirdados: Boolean;
var
  sql: String;

begin

  sql := 'INSERT INTO pessoa (pes_nome, pes_cpf, pes_rg, pes_celular, pes_nascimento)' +
    'VALUES ("' + Edit_nomecompleto.Text + '","' + Mask_CPF.Text + '","' +
    Edit_RG.Text + '","' + Edit_Celular.Text + '",' +
        DateTimeToSQL(Date_Nascimento.DateTime) + ')';
  DataModuleConexao.ExecSQL(sql);
  ShowMessage('Salvo com Sucesso.');

end;

function TForm_CadastroUsuario.inserirendereco: Boolean;
var
  sql: String;
begin
  sql := 'INSERT INTO endereco (end_num, end_rua, end_bairro, end_cidade, end_cep, end_cx_postal, end_complemento, end_data_cadastro)'
    + 'values ("' + Edit_numero.Text + '", "' + Edit_logradouro.Text + '", "' +
    Edit_bairro.Text + '", "' + Edit_cidade.Text + '", "' + Edit_cep.Text +
    '","' + Edit_cxpostal.Text + '","' + Edit_complemento.Text + '",now())';

  DataModuleConexao.ExecSQL(sql);

end;

function TForm_CadastroUsuario.senha: Boolean;
var
  sql: String;
begin
  sql := 'INSERT INTO login (login_usuario,login_senha )' + 'values ("' +
    Edit_login.Text + '","' + EncryptSTR(Edit_senha.Text,
    Edit_login.Text) + '")';
  DataModuleConexao.ExecSQL(sql);
end;

procedure TForm_CadastroUsuario.SpeedButton_SairClick(Sender: TObject);
begin
  Form_CadastroUsuario.Close;
end;

procedure TForm_CadastroUsuario.SpeedButton_salvarClick(Sender: TObject);

begin
  inserirdados;
  inserirendereco;
  senha;
end;

end.
