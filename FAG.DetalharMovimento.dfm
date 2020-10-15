object Form_detalharMovimento: TForm_detalharMovimento
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Movimento Detalhado'
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
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_relatorioMovimento: TPanel
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
    object Label_tituloForm: TLabel
      Left = 264
      Top = 24
      Width = 241
      Height = 32
      Caption = 'Movimento Detalhado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_exportar: TSpeedButton
      Left = 19
      Top = 557
      Width = 149
      Height = 33
      Caption = 'Exportar Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton_voltar: TSpeedButton
      Left = 696
      Top = 557
      Width = 132
      Height = 33
      Caption = 'Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_voltarClick
    end
    object GroupBox1: TGroupBox
      Left = 19
      Top = 74
      Width = 809
      Height = 95
      BiDiMode = bdLeftToRight
      Caption = 'Dados da Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      object Label_codigoMov: TLabel
        Left = 17
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
      object Label_dataMov: TLabel
        Left = 605
        Top = 29
        Width = 138
        Height = 21
        Caption = 'Data do Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker2: TDateTimePicker
        Left = 605
        Top = 51
        Width = 185
        Height = 29
        Date = 44100.000000000000000000
        Time = 0.354362268517434100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_codigo: TEdit
        Left = 17
        Top = 51
        Width = 112
        Height = 29
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox_produtosMov: TGroupBox
      Left = 19
      Top = 175
      Width = 809
      Height = 370
      BiDiMode = bdLeftToRight
      Caption = 'Produtos Movimentados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object DBGrid_resultadoPesquisa: TDBGrid
        Left = 16
        Top = 32
        Width = 777
        Height = 321
        BiDiMode = bdLeftToRight
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            Title.Caption = 'Data'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Descri'#231#227'o'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Categoria'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Entrada/Saida'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Qtd. Atual'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Usu'#225'rio'
            Width = 127
            Visible = True
          end>
      end
    end
  end
end
