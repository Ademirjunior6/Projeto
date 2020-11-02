object Form_RelatorioMovimento: TForm_RelatorioMovimento
  Left = 0
  Top = 0
  ActiveControl = Edit_produto
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relatorio de Movimenta'#231#227'o'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_relatorioMovimento: TPanel
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
      Left = 264
      Top = 24
      Width = 269
      Height = 32
      Caption = 'Relatorio de Movimentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_sair: TSpeedButton
      Left = 738
      Top = 557
      Width = 68
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
    object SpeedButton_exportar: TSpeedButton
      Left = 574
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
      OnClick = SpeedButton_exportarClick
    end
    object SpeedButton_detalharMov: TSpeedButton
      Left = 365
      Top = 557
      Width = 193
      Height = 33
      Caption = 'Detalhar Movimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_detalharMovClick
    end
    object SpeedButton_limparConsulta: TSpeedButton
      Left = 184
      Top = 557
      Width = 163
      Height = 33
      Caption = 'Limpar Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_limparConsultaClick
    end
    object SpeedButton_exibirTodos: TSpeedButton
      Left = 37
      Top = 557
      Width = 132
      Height = 33
      Caption = 'Exibir Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_exibirTodosClick
    end
    object GroupBox1: TGroupBox
      Left = 19
      Top = 74
      Width = 809
      Height = 167
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
      object Label_codigo: TLabel
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
      object Label_data_ate: TLabel
        Left = 335
        Top = 54
        Width = 21
        Height = 21
        Caption = 'at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_produto: TLabel
        Left = 16
        Top = 93
        Width = 56
        Height = 21
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_categoria: TLabel
        Left = 361
        Top = 93
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
      object Label_data_de: TLabel
        Left = 104
        Top = 54
        Width = 19
        Height = 21
        Caption = 'De'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_tipoMoviemento: TLabel
        Left = 536
        Top = 93
        Width = 135
        Height = 21
        Caption = 'Tipo de Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton_filtrar: TSpeedButton
        Left = 707
        Top = 115
        Width = 83
        Height = 30
        Caption = 'Filtrar'
        OnClick = SpeedButton_filtrarClick
      end
      object Edit_codigo: TEdit
        Left = 18
        Top = 51
        Width = 65
        Height = 29
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_produto: TEdit
        Left = 16
        Top = 115
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
        TabOrder = 3
      end
      object ComboBox_categoria: TComboBox
        Left = 361
        Top = 115
        Width = 153
        Height = 29
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DateTimePicker_Fim: TDateTimePicker
        Left = 373
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
        TabOrder = 2
      end
      object DateTimePicker_Ini: TDateTimePicker
        Left = 129
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
        TabOrder = 1
      end
      object ComboBox_tipoMoviemento: TComboBox
        Left = 536
        Top = 115
        Width = 153
        Height = 29
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 19
      Top = 247
      Width = 809
      Height = 298
      BiDiMode = bdLeftToRight
      Caption = 'Resultados da Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Panel_resultadoPesquisa: TPanel
        Left = 16
        Top = 32
        Width = 774
        Height = 249
        Caption = 'Panel_resultadoPesquisa'
        TabOrder = 0
        object DBGrid_resultadoPesquisa: TDBGrid
          Left = 1
          Top = 1
          Width = 772
          Height = 247
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clWhite
          DataSource = DataSource_consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid_resultadoPesquisaDblClick
          Columns = <
            item
              Expanded = False
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 152
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 195
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Tipo de Movimento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Usu'#225'rio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 186
              Visible = True
            end
            item
              Expanded = False
              Width = 2
              Visible = True
            end
            item
              Expanded = False
              Width = 2
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource_consulta: TDataSource
    DataSet = FDMemTable_consulta
    Left = 448
    Top = 384
  end
  object FDMemTable_consulta: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 315
    Top = 383
  end
  object SaveDialog1: TSaveDialog
    FileName = 'C:\Users\mathe\Desktop\teste.txt'
    Left = 640
    Top = 472
  end
end