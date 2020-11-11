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
  FAG.Frame.Generico, FireDAC.Stan.Async, FireDAC.DApt;

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
    FDQuery1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_salvarClick(Sender: TObject);
    procedure SpeedButton_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_codigoExit(Sender: TObject);
    procedure Frame_PessoaComboBox_InformacaoExit(Sender: TObject);
    procedure SpeedButton_editarClick(Sender: TObject);
    // procedure Edit_codigoExit(Sender: TObject);

  private
    function inserirdados: Boolean;
    function inserirendereco: Boolean;
    function carregaStatus: Boolean;
    function validarCampos: Boolean;
    function existe_usuario(codigo: string): Boolean;
    function senha: Boolean;
    function EncryptSTR(const key, texto: String): String;
    function getUltimoId: String;
    function getUltimoIdEnd: String;
    function limpacampos: Boolean;

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

procedure TForm_CadastroUsuario.Edit_codigoExit(Sender: TObject);
var
  carrega: TFDMemTable;
begin
  if Edit_codigo.Text = '' then
  begin
    limpacampos;
  end
  else
  begin
    if StrToInt(Edit_codigo.Text) = Edit_codigo.Tag then
      Exit;
    if existe_usuario(Edit_codigo.Text) then
    begin
      carrega := TFDMemTable.Create(Self);
      try
       // Dados Pessoais //
        DataModuleConexao.ExecSQL
          ('SELECT pes_id_pessoa, pes_nome, pes_cpf, pes_rg, pes_sexo, pes_nascimento, pes_email, pes_telefone,'
          + 'pes_celular, pes_datacadastro,pes_data_atualizacao, log_id,tip_id_tipo_pessoa,	'
          +  'pes_fantasia, pes_incricao_municipal, pes_incricao_estadual, pes_ativo, end_id_endereco FROM pessoa WHERE pes_id_pessoa = '
          + Edit_codigo.Text, carrega);

        Edit_codigo.Text := carrega.FieldByName('pes_id_pessoa').AsString;
        Edit_nomecompleto.Text := carrega.FieldByName('pes_nome').AsString;
        Mask_CPF.Text := carrega.FieldByName('pes_cpf').AsString;
        Edit_RG.Text := carrega.FieldByName('pes_rg').AsString;
        Edit_Celular.Text := carrega.FieldByName('pes_celular').AsString;
        Edit_Telefone.Text := carrega.FieldByName('pes_telefone').AsString;
        Edit_email.Text := carrega.FieldByName('pes_email').AsString;

        Frame_Pessoa.ComboBox_Informacao.ItemIndex := carrega.FieldByName('tip_id_tipo_pessoa').AsInteger;
        Frame_Status.ComboBox_Informacao.ItemIndex := carrega.FieldByName('pes_ativo').AsInteger;
        Date_Nascimento.Date := carrega.FieldByName('pes_nascimento').Value;
        Edit_nomecompleto.Text := carrega.FieldByName('pes_nome').AsString;
        Mask_CPF.Text := carrega.FieldByName('pes_cpf').AsString;

      finally
        FreeAndNil(carrega);
      end;
    end
    else
    begin
      limpacampos;
    end;
  end;
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

function TForm_CadastroUsuario.existe_usuario(codigo: string): Boolean;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT pes_id_pessoa FROM pessoa WHERE pes_id_pessoa = ' +
      codigo, excist);
    Result := not excist.IsEmpty;
  finally
    FreeAndNil(excist);
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
  getUltimoIdEnd;
end;

procedure TForm_CadastroUsuario.Frame_PessoaComboBox_InformacaoExit
  (Sender: TObject);
begin
  Frame_Pessoa.ComboBox_InformacaoExit(Sender);
  case Frame_Pessoa.ComboBox_Informacao.ItemIndex of
    0:
      begin
        ShowMessage('Escolha tipo de pessoa');
        Frame_Pessoa.ComboBox_Informacao.SetFocus;
      end;

    1:
      begin
        Label_CPF.Caption := 'CPF';
        Mask_CPF.EditMask := '000.000.000-00;1;_';
      end;
    2:
      begin
        Label_CPF.Caption := 'CNPJ';
        Mask_CPF.EditMask := '00.000.000/0000-00;1;_';
      end;

  end;

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

function TForm_CadastroUsuario.getUltimoIdEnd: String;
var
  excist: TFDMemTable;
begin
  excist := TFDMemTable.Create(Self);
  try
    DataModuleConexao.ExecSQL
      ('SELECT COALESCE(MAX(end_id_endereco)+1, 1) AS ID FROM endereco',
      excist);
    Result := excist.FieldByName('ID').AsString;
  finally
    FreeAndNil(excist);
  end;
end;

function TForm_CadastroUsuario.inserirdados: Boolean;
var
  sql: String;
begin
  if not validarCampos then
  begin
    Result := False;
    Exit;
  end;
  begin
    if existe_usuario(Edit_codigo.Text) then
    begin
      sql := ('UPDATE pessoa SET pes_nome = ' + StrToSQL(Edit_nomecompleto.Text)
        + ',' + ' pes_cpf = ' + StrToSQL(Mask_CPF.Text) + ',' + ' pes_rg = ' +
        StrToSQL(Edit_RG.Text) + ', pes_celular =' + StrToSQL(Edit_Celular.Text)
        + ',' + ' pes_nascimento = ' + DateTimeToSQL(Date_Nascimento.datetime) +
        ',' + ' end_cx_postal = ' + StrToSQL(Edit_cxpostal.Text) + ',' +
        ' end_complemento = ' + StrToSQL(Edit_complemento.Text) + '' +
        ' WHERE end_id_endereco = ' + Edit_codigo.Text + '');
      DataModuleConexao.ExecSQL(sql);
      ShowMessage('Alterado com Sucesso.');
    end
    else
    begin
      sql := 'INSERT INTO pessoa (pes_nome, pes_cpf, pes_rg, pes_celular, pes_nascimento, pes_email, pes_telefone, pes_ativo, tip_id_tipo_pessoa)'
        + 'VALUES (' + StrToSQL(Edit_nomecompleto.Text) + ',' +
        StrToSQL(Mask_CPF.Text) + ',' + StrToSQL(Edit_RG.Text) + ',' +
        StrToSQL(Edit_Celular.Text) + ',' +
        DateTimeToSQL(Date_Nascimento.datetime) + ',' +
        StrToSQL(Edit_email.Text) + ',' + StrToSQL(Edit_Telefone.Text) + ',' +
        StrToSQL(Frame_Status.indexCombo) + ',' +
        StrToSQL(Frame_Pessoa.indexCombo) + ')';
      DataModuleConexao.ExecSQL(sql);
      ShowMessage('Salvo com Sucesso.');
    end;
    limpacampos;
  end;
end;

function TForm_CadastroUsuario.inserirendereco: Boolean;
var
  sql: String;
begin
  if not validarCampos then
  begin
    Result := False;
    Exit;
  end;
  begin
    if existe_usuario(Edit_codigo.Text) then
    begin
      sql := ('UPDATE endereco SET end_num = ' + StrToSQL(Edit_numero.Text) +
        ',' + ' end_rua = ' + StrToSQL(Edit_logradouro.Text) + ',' +
        ' end_bairro = ' + StrToSQL(Edit_bairro.Text) + ', end_cidade =' +
        StrToSQL(Edit_cidade.Text) + ',' + ' end_cep = ' +
        StrToSQL(Edit_cep.Text) + ',' + ' end_cx_postal = ' +
        StrToSQL(Edit_cxpostal.Text) + ',' + ' end_complemento = ' +
        StrToSQL(Edit_complemento.Text) + '' + ' WHERE end_id_endereco = ' +
        Edit_codigo.Text + '');
      DataModuleConexao.ExecSQL(sql);

    end
    else
    begin
      sql := 'INSERT INTO endereco (end_id_endereco,end_num, end_rua, end_bairro, end_cidade, '
        + 'end_cep, end_cx_postal, end_complemento, end_data_cadastro, pes_id_pessoa)VALUES('
        + StrToSQL(getUltimoIdEnd) + ',' + StrToSQL(Edit_numero.Text) + ',' +
        StrToSQL(Edit_logradouro.Text) + ',' + StrToSQL(Edit_bairro.Text) + ','
        + StrToSQL(Edit_cidade.Text) + ',' + StrToSQL(Edit_cep.Text) + ',' +
        StrToSQL(Edit_cxpostal.Text) + ',' + StrToSQL(Edit_complemento.Text) +
        ',NOW(),' + StrToSQL(Edit_codigo.Text) + ')';

      DataModuleConexao.ExecSQL(sql);
    end;
    limpacampos;
  end;
end;

function TForm_CadastroUsuario.limpacampos: Boolean;
begin
  // Dados pessoais //
  Edit_codigo.Text := getUltimoId;
  Edit_nomecompleto.Clear;
  Edit_RG.Clear;
  Edit_Matricula.Clear;
  ComboBox_Sexo.Clear;
  Date_Nascimento.datetime := Date;
  Edit_Celular.Clear;
  Edit_Telefone.Clear;
  Mask_CPF.Clear;
  // Endereço//
  Edit_cep.Clear;
  Edit_logradouro.Clear;
  Edit_numero.Clear;
  Edit_complemento.Clear;
  Edit_bairro.Clear;
  Edit_cidade.Clear;
  Edit_cxpostal.Clear;
  // Login //
  Edit_login.Clear;
  Edit_senha.Clear;
  Edit_confirmasenha.Clear;
  Edit_email.Clear;
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

procedure TForm_CadastroUsuario.SpeedButton_editarClick(Sender: TObject);
begin
  inserirendereco;
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

function TForm_CadastroUsuario.validarCampos: Boolean;
begin
  // Result := False;
  // if Edit_nomecompleto.Text = '' then
  // begin
  // ShowMessage('Informe a descrição.');
  // Edit_nomecompleto.SetFocus;
  // end
  // else if Edit_RG.Text = '' then
  // begin
  // ShowMessage('Informe o valor.');
  // Edit_RG.SetFocus
  // end
  // else if Frame_Pessoa.indexCombo.ToInteger = 0 then
  // begin
  // ShowMessage('Informe o status.');
  // Frame_Pessoa.ComboBox_Informacao.SetFocus;
  // end
  // else if Frame_Status.indexCombo.ToInteger = 0 then
  // begin
  // ShowMessage('Informe a categoria.');
  // Frame_Status.ComboBox_Informacao.SetFocus;
  // end
  // else if Mask_CPF.Text = '' then
  // begin
  // ShowMessage('Informe o valor.');
  // Mask_CPF.SetFocus
  // end
  // else
  // begin
  // Result := True;
  // end;
end;

end.
