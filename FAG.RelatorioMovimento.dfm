object Form_RelatorioMovimento: TForm_RelatorioMovimento
  Left = 0
  Top = 0
  ActiveControl = Edit_produto
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Movimenta'#231#227'o'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_relatorioMovimento: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 602
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
      Caption = 'Relat'#243'rio de Movimentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_sair: TSpeedButton
      Left = 754
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
      Left = 221
      Top = 557
      Width = 149
      Height = 33
      Caption = 'Exportar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton_exportarClick
    end
    object SpeedButton_limparConsulta: TSpeedButton
      Left = 37
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
    object GroupBox1: TGroupBox
      Left = 19
      Top = 74
      Width = 818
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
        Left = 578
        Top = 55
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
        Left = 107
        Top = 29
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
        Left = 349
        Top = 55
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
        Left = 365
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
        Left = 537
        Top = 114
        Width = 115
        Height = 32
        Caption = 'Filtrar'
        OnClick = SpeedButton_filtrarClick
      end
      object SpeedButton_exibirTodos: TSpeedButton
        Left = 667
        Top = 114
        Width = 134
        Height = 32
        Caption = 'Exibir Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton_exibirTodosClick
      end
      object Label1: TLabel
        Left = 469
        Top = 25
        Width = 114
        Height = 21
        Caption = 'Filtrar por data?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
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
        OnChange = Edit_codigoChange
        OnExit = Edit_codigoExit
      end
      object Edit_produto: TEdit
        Left = 16
        Top = 115
        Width = 328
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ComboBox_categoria: TComboBox
        Left = 107
        Top = 51
        Width = 222
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
      object DateTimePicker_Fim: TDateTimePicker
        Left = 613
        Top = 51
        Width = 187
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
        TabOrder = 3
      end
      object DateTimePicker_Ini: TDateTimePicker
        Left = 378
        Top = 51
        Width = 187
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
      object ComboBox_tipoMoviemento: TComboBox
        Left = 365
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
      object RadioButtonSIM: TRadioButton
        Left = 585
        Top = 28
        Width = 56
        Height = 17
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = RadioButtonSIMClick
      end
      object RadioButtonNAO: TRadioButton
        Left = 637
        Top = 29
        Width = 56
        Height = 17
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = RadioButtonNAOClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 19
      Top = 247
      Width = 818
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
        Width = 785
        Height = 249
        Caption = 'Panel_resultadoPesquisa'
        TabOrder = 0
        object DBGrid_resultadoPesquisa: TDBGrid
          Left = 1
          Top = 1
          Width = 783
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
          Columns = <
            item
              Expanded = False
              Title.Caption = 'C'#243'digo'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Descri'#231#227'o'
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Categoria'
              Width = 167
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Entrada/Sa'#237'da'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Data'
              Width = 179
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Usu'#225'rio'
              Width = 137
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
    object FDMemTable_consultamov_id: TIntegerField
      FieldName = 'mov_id'
    end
    object FDMemTable_consultamov_data_movimento: TDateTimeField
      FieldName = 'mov_data_movimento'
    end
    object FDMemTable_consultamov_tipo: TWideStringField
      FieldName = 'mov_tipo'
      Size = 255
    end
    object FDMemTable_consultalogin_usuario: TWideStringField
      FieldName = 'usuario'
      Size = 255
    end
    object FDMemTable_consultaprod_desc: TWideStringField
      FieldName = 'prod_desc'
      Size = 255
    end
    object FDMemTable_consultacat_desc: TWideStringField
      FieldName = 'cat_desc'
      Size = 255
    end
  end
  object frxDBDatasetExport: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDMemTable_consulta
    BCDToCurrency = False
    Left = 676
    Top = 13
  end
  object frxReportExport: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44130.771658877300000000
    ReportOptions.LastChange = 44169.874059479170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 564
    Top = 18
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
      Frame.Typ = []
      HGuides.Strings = (
        '110,00'
        '90,80972973')
      VGuides.Strings = (
        '318,93'
        '174,64'
        '52,14'
        '425,36'
        '574,29'
        '717,86')
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 50.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 0.009350000000000000
          Top = 4.313852860000000000
          Width = 717.850650000000000000
          Height = 46.370130000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Movimentos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 671.000000000000000000
          Top = 1.102350000000000000
          Width = 46.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagina [Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetExport
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1mov_tipo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 318.930000000000000000
          Top = -0.555040470000000000
          Width = 106.430000000000000000
          Height = 18.897650000000000000
          DataField = 'mov_tipo'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."mov_tipo"]')
          ParentFont = False
        end
        object frxDBDataset1prod_desc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.229437220000000000
          Top = -0.381880300000000000
          Width = 121.885591260000000000
          Height = 18.897650000000000000
          DataField = 'prod_desc'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."prod_desc"]')
          ParentFont = False
        end
        object frxDBDataset1cat_desc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 174.285714270000000000
          Top = -0.435992860000000000
          Width = 144.915894290000000000
          Height = 18.897650000000000000
          DataField = 'cat_desc'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."cat_desc"]')
          ParentFont = False
        end
        object frxDBDataset1mov_data_movimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 425.360000000000000000
          Top = -0.555040460000000000
          Width = 148.930000000000000000
          Height = 18.897650000000000000
          DataField = 'mov_data_movimento'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."mov_data_movimento"]')
          ParentFont = False
        end
        object frxDBDataset1usuario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.290000000000000000
          Top = -0.641913060000000000
          Width = 143.570000000000000000
          Height = 18.897650000000000000
          DataField = 'usuario'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."usuario"]')
          ParentFont = False
        end
        object frxDBDataset1mov_id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = -0.349120270000000000
          Width = 52.140000000000000000
          Height = 18.897650000000000000
          DataField = 'mov_id'
          DataSet = frxDBDatasetExport
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."mov_id"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.291280000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 0.101009730000000000
          Width = 51.724137940000000000
          Height = 19.190270270000000000
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
          AllowVectorExport = True
          Left = 425.522732760000000000
          Top = 0.101009730000000000
          Width = 149.163585520000000000
          Height = 19.190270270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 318.930000000000000000
          Top = 0.101009730000000000
          Width = 106.592732760000000000
          Height = 19.190270270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Entrada/Sa'#237'da')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 574.686318280000000000
          Top = 0.101009730000000000
          Width = 143.424381720000000000
          Height = 19.190270270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 51.724137940000000000
          Top = 0.101009730000000000
          Width = 122.764112070000000000
          Height = 19.190270270000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 174.482758630000000000
          Top = 0.101009730000000000
          Width = 144.447241370000000000
          Height = 19.190270270000000000
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
      end
    end
  end
  object FDMemTable_Preview: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 339
    Top = 90
  end
end
