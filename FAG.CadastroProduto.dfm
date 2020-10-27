object Form_CadastroProduto: TForm_CadastroProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produto'
  ClientHeight = 604
  ClientWidth = 869
  Color = clBtnFace
  Constraints.MaxHeight = 633
  Constraints.MaxWidth = 875
  Constraints.MinHeight = 633
  Constraints.MinWidth = 875
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_cadastroProduto: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 604
    Align = alClient
    UseDockManager = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label_tituloForm: TLabel
      Left = 330
      Top = 32
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
      Left = 174
      Top = 528
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
      Left = 435
      Top = 528
      Width = 109
      Height = 33
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_pesquisarClick
    end
    object SpeedButton_sair: TSpeedButton
      Left = 565
      Top = 528
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
      Left = 304
      Top = 528
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
      Width = 814
      Height = 199
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
      DesignSize = (
        814
        199)
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
        Left = 611
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
        Left = 224
        Top = 29
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
        Left = 411
        Top = 103
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
      object SpeedButton_unMedida: TSpeedButton
        Left = 523
        Top = 125
        Width = 25
        Height = 28
        Margins.Bottom = 4
        Caption = '+'
        OnClick = SpeedButton_unMedidaClick
      end
      object Label_valor: TLabel
        Left = 572
        Top = 98
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
      object SpeedButton_categoria: TSpeedButton
        Left = 352
        Top = 125
        Width = 25
        Height = 28
        Caption = '+'
        OnClick = SpeedButton_categoriaClick
      end
      object Edit_codigo: TEdit
        Left = 16
        Top = 51
        Width = 70
        Height = 29
        Anchors = [akLeft, akTop, akRight]
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
        Width = 105
        Height = 29
        TabOrder = 1
        Text = '1 - Ativo'
      end
      object Edit_descricao: TEdit
        Left = 228
        Top = 51
        Width = 361
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
        Left = 411
        Top = 125
        Width = 114
        Height = 29
        TabOrder = 3
      end
      object DateTimePicker1: TDateTimePicker
        Left = 611
        Top = 51
        Width = 185
        Height = 29
        Date = 44112.000000000000000000
        Time = 0.354362268517434100
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      inline Frame_Generico1: TFrame_Generico
        Left = 163
        Top = 102
        Width = 191
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnExit = Frame_Generico1Exit
        ExplicitLeft = 163
        ExplicitTop = 102
        ExplicitWidth = 191
        inherited ComboBox_Informacao: TComboBox
          Width = 190
          ExplicitWidth = 190
        end
      end
      object Edit_valor: TEdit
        Left = 572
        Top = 125
        Width = 91
        Height = 29
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        OnChange = Edit_valorChange
        OnKeyPress = Edit_valorKeyPress
      end
    end
  end
end
