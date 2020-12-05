object Form_RelatorioProduto: TForm_RelatorioProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Produto'
  ClientHeight = 602
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
  object Panel_Principal: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 602
    Align = alClient
    TabOrder = 0
    object Label_tituloForm: TLabel
      Left = 296
      Top = 24
      Width = 230
      Height = 32
      Caption = 'Relat'#243'rio de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_limparConsulta: TSpeedButton
      Left = 38
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
    object SpeedButton_exportar: TSpeedButton
      Left = 221
      Top = 557
      Width = 149
      Height = 33
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_exportarClick
    end
    object SpeedButton_sair: TSpeedButton
      Left = 753
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
    object GroupBox_consulta: TGroupBox
      Left = 20
      Top = 72
      Width = 817
      Height = 149
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
      object Label_categoria: TLabel
        Left = 490
        Top = 35
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
      object Label_tipoMoviemento: TLabel
        Left = 662
        Top = 35
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
      object SpeedButton_filtrar: TSpeedButton
        Left = 681
        Top = 104
        Width = 120
        Height = 33
        Caption = 'Filtrar'
        OnClick = SpeedButton_filtrarClick
      end
      object SpeedButton_exibirTodos: TSpeedButton
        Left = 18
        Top = 104
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
      object ComboBox_categoria: TComboBox
        Left = 490
        Top = 56
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
        TabOrder = 1
      end
      object ComboBox_Status: TComboBox
        Left = 662
        Top = 56
        Width = 139
        Height = 29
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      inline Frame_Produto1: TFrame_Produto
        Left = 12
        Top = 32
        Width = 468
        Height = 56
        TabOrder = 0
        ExplicitLeft = 12
        ExplicitTop = 32
        ExplicitWidth = 468
        inherited Label2: TLabel
          Top = 3
          ExplicitTop = 3
        end
        inherited Label3: TLabel
          Left = 120
          Top = 3
          Width = 149
          Caption = 'Descri'#231#227'o do Produto'
          ExplicitLeft = 120
          ExplicitTop = 3
          ExplicitWidth = 149
        end
        inherited Edit_descricao: TEdit
          Width = 341
          Font.Style = []
          ExplicitWidth = 341
        end
        inherited Edit_codigoProduto: TEdit
          Font.Style = []
        end
        inherited FDMemTable_Produto: TFDMemTable
          Left = 320
          Top = 0
        end
      end
    end
    object GroupBox_grid: TGroupBox
      Left = 20
      Top = 225
      Width = 817
      Height = 312
      BiDiMode = bdLeftToRight
      Caption = 'Resultado da Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Panel_grid: TPanel
        Left = 17
        Top = 32
        Width = 784
        Height = 261
        TabOrder = 0
        object DBGrid_Pesquisa: TDBGrid
          Left = 1
          Top = 1
          Width = 782
          Height = 259
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clWhite
          DataSource = DataSource_Consulta
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
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Un. Medida'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Categoria'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 149
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Data Cadastro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 168
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Qtd. Atual'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 72
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource_Consulta: TDataSource
    DataSet = FDMemTable_Consulta
    Left = 548
    Top = 352
  end
  object FDMemTable_Consulta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 388
    Top = 352
    object FDMemTable_Consultaprod_id_produto: TIntegerField
      FieldName = 'prod_id_produto'
    end
    object FDMemTable_Consultaprod_desc: TWideStringField
      FieldName = 'prod_desc'
      Size = 255
    end
    object FDMemTable_Consultaun_medida_desc: TWideStringField
      FieldName = 'un_medida_desc'
      Size = 255
    end
    object FDMemTable_Consultacat_desc: TWideStringField
      FieldName = 'cat_desc'
      Size = 255
    end
    object FDMemTable_Consultaprod_data_cadastro: TDateTimeField
      FieldName = 'prod_data_cadastro'
    end
    object FDMemTable_Consultaprod_quantidade: TIntegerField
      FieldName = 'prod_quantidade'
      OnGetText = FDMemTable_Consultaprod_quantidadeGetText
    end
  end
  object frxReportExport: TfrxReport
    Version = '6.2.1'
    DataSetName = 'frxUserDataSet1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44130.771658877300000000
    ReportOptions.LastChange = 44151.826957604160000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDatasetExport
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 54.872480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetExport
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1prod_id_produto: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = -0.417440000000000000
          Width = 55.000000000000000000
          Height = 18.897650000000000000
          DataField = 'prod_id_produto'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."prod_id_produto"]')
          ParentFont = False
        end
        object frxDBDataset1prod_desc: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 55.000000000000000000
          Top = -0.417440000000000000
          Width = 162.519685040000000000
          Height = 18.897650000000000000
          DataField = 'prod_desc'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."prod_desc"]')
          ParentFont = False
        end
        object frxDBDataset1un_medida_desc: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 217.519685040000000000
          Top = -0.417440000000000000
          Width = 127.748031500000000000
          Height = 18.897650000000000000
          DataField = 'un_medida_desc'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."un_medida_desc"]')
          ParentFont = False
        end
        object frxDBDataset1cat_desc: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 345.267716540000000000
          Top = -0.417440000000000000
          Width = 161.251968500000000000
          Height = 18.897650000000000000
          DataField = 'cat_desc'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."cat_desc"]')
          ParentFont = False
        end
        object frxDBDataset1prod_quantidade: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 641.386290550000000000
          Top = -0.417440000000000000
          Width = 76.724409450000000000
          Height = 18.897650000000000000
          DataField = 'prod_quantidade'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."prod_quantidade"]')
          ParentFont = False
        end
        object frxDBDataset1prod_data_cadastro: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 506.519685040000000000
          Top = -0.417440000000000000
          Width = 134.866605510000000000
          Height = 18.897650000000000000
          DataField = 'prod_data_cadastro'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."prod_data_cadastro"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 55.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 55.133890000000000000
          Width = 162.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 217.637910000000000000
          Width = 127.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Un. Medida')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 345.362400000000000000
          Width = 160.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 505.732530000000000000
          Width = 135.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data de Cadastro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 641.252320000000000000
          Width = 76.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetExport: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDMemTable_Consulta
    BCDToCurrency = False
    Left = 696
    Top = 16
  end
  object exportPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 176
    Top = 32
  end
  object exportEXCEL: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 248
    Top = 32
  end
  object exportTXT: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 112
    Top = 32
  end
  object exportWORD: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 40
    Top = 32
  end
end
