object Form_CadastroProduto: TForm_CadastroProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Produto'
  ClientHeight = 622
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMode = pmExplicit
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_cadastroProduto: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 622
    Align = alClient
    UseDockManager = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 304
    ExplicitHeight = 201
    object Label_tituloForm: TLabel
      Left = 264
      Top = 24
      Width = 191
      Height = 32
      Caption = 'Cadastrar Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_salvar: TSpeedButton
      Left = 182
      Top = 544
      Width = 109
      Height = 33
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton_pesquisar: TSpeedButton
      Left = 443
      Top = 544
      Width = 109
      Height = 33
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton_sair: TSpeedButton
      Left = 573
      Top = 544
      Width = 109
      Height = 33
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_sairClick
    end
    object SpeedButton_cancelar: TSpeedButton
      Left = 312
      Top = 544
      Width = 109
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_cancelarClick
    end
    object GroupBox1: TGroupBox
      Left = 19
      Top = 130
      Width = 809
      Height = 167
      BiDiMode = bdLeftToRight
      Caption = 'Dados B'#225'sicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
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
      object Label_status: TLabel
        Left = 104
        Top = 29
        Width = 42
        Height = 21
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_data: TLabel
        Left = 608
        Top = 29
        Width = 32
        Height = 21
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_descricao: TLabel
        Left = 16
        Top = 87
        Width = 67
        Height = 21
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_unMedida: TLabel
        Left = 357
        Top = 87
        Width = 79
        Height = 21
        Caption = 'Un. medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_categoria: TLabel
        Left = 510
        Top = 87
        Width = 67
        Height = 21
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 477
        Top = 109
        Width = 25
        Height = 28
        Margins.Bottom = 4
        Caption = '+'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 669
        Top = 109
        Width = 24
        Height = 28
        Caption = '+'
      end
      object Label_valor: TLabel
        Left = 712
        Top = 87
        Width = 36
        Height = 21
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit_codigo: TEdit
        Left = 16
        Top = 51
        Width = 65
        Height = 29
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ComboBox_status: TComboBox
        Left = 104
        Top = 51
        Width = 97
        Height = 29
        TabOrder = 1
        Text = '1 - Ativo'
      end
      object Edit_descricao: TEdit
        Left = 16
        Top = 109
        Width = 321
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ComboBox_unMedida: TComboBox
        Left = 357
        Top = 109
        Width = 114
        Height = 29
        TabOrder = 3
      end
      object ComboBox_categoria: TComboBox
        Left = 510
        Top = 109
        Width = 153
        Height = 29
        TabOrder = 4
      end
      object DateTimePicker1: TDateTimePicker
        Left = 608
        Top = 51
        Width = 185
        Height = 29
        Date = 44100.000000000000000000
        Time = 0.354362268517434100
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object Edit_valor: TEdit
        Left = 712
        Top = 109
        Width = 81
        Height = 29
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      inline Frame_Generico1: TFrame_Generico
        Left = 238
        Top = 21
        Width = 295
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnExit = Frame_Generico1Exit
        ExplicitLeft = 238
        ExplicitTop = 21
      end
    end
  end
end