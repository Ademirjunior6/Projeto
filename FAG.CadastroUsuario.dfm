object Form_CadastroUsuario: TForm_CadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Form_CadastroUsuario'
  ClientHeight = 617
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_CadastroUsuario: TPanel
    Left = -8
    Top = -8
    Width = 913
    Height = 657
    UseDockManager = False
    TabOrder = 0
    object Label_tituloForm: TLabel
      Left = 331
      Top = 40
      Width = 214
      Height = 32
      Caption = 'Cadastro de Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_salvar: TSpeedButton
      Left = 32
      Top = 578
      Width = 109
      Height = 33
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_salvarClick
    end
    object SpeedButton_editar: TSpeedButton
      Left = 164
      Top = 578
      Width = 109
      Height = 33
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton_Sair: TSpeedButton
      Left = 728
      Top = 576
      Width = 109
      Height = 33
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_SairClick
    end
    object GroupBox1: TGroupBox
      Left = 28
      Top = 78
      Width = 833
      Height = 195
      Caption = 'Dados Pessoais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label_codigo: TLabel
        Left = 16
        Top = 29
        Width = 50
        Height = 21
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_NomeCompleto: TLabel
        Left = 16
        Top = 83
        Width = 115
        Height = 21
        Caption = 'Nome Completo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_CPF: TLabel
        Left = 376
        Top = 83
        Width = 27
        Height = 21
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_RG: TLabel
        Left = 527
        Top = 83
        Width = 21
        Height = 21
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_nascimento: TLabel
        Left = 136
        Top = 139
        Width = 83
        Height = 21
        Caption = 'Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_Matricula: TLabel
        Left = 671
        Top = 83
        Width = 65
        Height = 21
        Caption = 'Matricula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_Sexo: TLabel
        Left = 16
        Top = 139
        Width = 33
        Height = 21
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_Celular: TLabel
        Left = 288
        Top = 139
        Width = 49
        Height = 21
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_Telefone: TLabel
        Left = 464
        Top = 139
        Width = 57
        Height = 21
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit_codigo: TEdit
        Left = 16
        Top = 50
        Width = 65
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_nomecompleto: TEdit
        Left = 16
        Top = 106
        Width = 354
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit_RG: TEdit
        Left = 527
        Top = 106
        Width = 138
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Date_Nascimento: TDateTimePicker
        Left = 136
        Top = 161
        Width = 110
        Height = 29
        Date = 44126.000000000000000000
        Time = 0.486402592592639800
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Edit_Matricula: TEdit
        Left = 671
        Top = 106
        Width = 130
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ComboBox_Sexo: TComboBox
        Left = 16
        Top = 161
        Width = 97
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object Edit_Celular: TEdit
        Left = 288
        Top = 161
        Width = 145
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object Edit_Telefone: TEdit
        Left = 464
        Top = 161
        Width = 145
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      inline Frame_Pessoa: TFrame_Generico
        Left = 226
        Top = 29
        Width = 295
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        ExplicitLeft = 226
        ExplicitTop = 29
        inherited Label_Titulo: TLabel
          Left = 16
          Top = -4
          ExplicitLeft = 16
          ExplicitTop = -4
        end
        inherited ComboBox_Informacao: TComboBox
          Left = 0
          Width = 140
          ExplicitLeft = 0
          ExplicitWidth = 140
        end
        inherited TableTemp: TFDMemTable
          Left = 192
          Top = 8
        end
      end
    end
    object Mask_CPF: TMaskEdit
      Left = 404
      Top = 182
      Width = 141
      Height = 29
      EditMask = '000.000.000-00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 1
      Text = '   .   .   -  '
    end
    object GroupBox2: TGroupBox
      Left = 28
      Top = 279
      Width = 833
      Height = 146
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 27
        Height = 21
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 76
        Width = 42
        Height = 21
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 589
        Top = 19
        Width = 19
        Height = 21
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 671
        Top = 19
        Width = 99
        Height = 21
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 662
        Top = 76
        Width = 82
        Height = 21
        Caption = 'Caixa Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 447
        Top = 76
        Width = 48
        Height = 21
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 101
        Top = 19
        Width = 82
        Height = 21
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit_cep: TEdit
        Left = 16
        Top = 42
        Width = 65
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_bairro: TEdit
        Left = 16
        Top = 100
        Width = 417
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit_numero: TEdit
        Left = 589
        Top = 41
        Width = 76
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit_complemento: TEdit
        Left = 671
        Top = 42
        Width = 138
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Edit_cxpostal: TEdit
        Left = 662
        Top = 100
        Width = 145
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Edit_cidade: TEdit
        Left = 447
        Top = 100
        Width = 202
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object Edit_logradouro: TEdit
        Left = 104
        Top = 42
        Width = 479
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object GroupBox3: TGroupBox
      Left = 28
      Top = 426
      Width = 833
      Height = 146
      Caption = 'Dados de Acesso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label7: TLabel
        Left = 16
        Top = 77
        Width = 43
        Height = 21
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 247
        Top = 21
        Width = 43
        Height = 20
        Caption = 'E_mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 247
        Top = 77
        Width = 118
        Height = 21
        Caption = 'Confirmar Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 19
        Top = 20
        Width = 39
        Height = 21
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit_senha: TEdit
        Left = 16
        Top = 101
        Width = 166
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_email: TEdit
        Left = 247
        Top = 45
        Width = 270
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit_confirmasenha: TEdit
        Left = 247
        Top = 101
        Width = 156
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit_login: TEdit
        Left = 16
        Top = 42
        Width = 166
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inline Frame_Status: TFrame_Generico
    Left = 121
    Top = 99
    Width = 119
    Height = 60
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 121
    ExplicitTop = 99
    ExplicitWidth = 119
    inherited ComboBox_Informacao: TComboBox
      Width = 104
      ExplicitWidth = 104
    end
    inherited TableTemp: TFDMemTable
      Left = 16
      Top = 65528
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 808
    Top = 16
  end
end
