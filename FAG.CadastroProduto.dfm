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
    ExplicitLeft = 368
    ExplicitTop = 232
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
        Top = 27
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
        Top = 27
        Width = 59
        Height = 21
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_data: TLabel
        Left = 611
        Top = 27
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
        Top = 27
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
      object Label_valor: TLabel
        Left = 579
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
      end
      object Edit_descricao: TEdit
        Left = 224
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
        TabOrder = 3
      end
      inline Frame_Categoria: TFrame_Generico
        Left = 91
        Top = 102
        Width = 191
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = Frame_CategoriaExit
        ExplicitLeft = 91
        ExplicitTop = 102
        ExplicitWidth = 191
        inherited ComboBox_Informacao: TComboBox
          Width = 190
          Style = csDropDownList
          ExplicitWidth = 190
        end
      end
      object Edit_valor: TEdit
        Left = 579
        Top = 125
        Width = 102
        Height = 29
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
        OnChange = Edit_valorChange
        OnKeyPress = Edit_valorKeyPress
      end
      inline Frame_UnMedida: TFrame_Generico
        Left = 334
        Top = 102
        Width = 193
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ExplicitLeft = 334
        ExplicitTop = 102
        ExplicitWidth = 193
        inherited ComboBox_Informacao: TComboBox
          Width = 185
          Style = csDropDownList
          ExplicitWidth = 185
        end
      end
      object BitBtn_categoria: TBitBtn
        Left = 287
        Top = 128
        Width = 26
        Height = 25
        Caption = '+'
        TabOrder = 7
        OnClick = BitBtn_categoriaClick
      end
      object BitBtn_unMedida: TBitBtn
        Left = 526
        Top = 128
        Width = 26
        Height = 25
        Caption = '+'
        TabOrder = 8
        OnClick = BitBtn_unMedidaClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 19
      Top = 448
      Width = 814
      Height = 137
      TabOrder = 1
      object SpeedButton_cancelar: TSpeedButton
        Left = 272
        Top = 56
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
      object SpeedButton_pesquisar: TSpeedButton
        Left = 403
        Top = 56
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
        Left = 533
        Top = 56
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
      object BitBtn1: TBitBtn
        Left = 144
        Top = 56
        Width = 109
        Height = 33
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
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
    Left = 736
    Top = 32
  end
end
