object Form_RelatorioMovimento: TForm_RelatorioMovimento
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Relatorio de Movimenta'#231#227'o'
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
      Width = 278
      Height = 32
      Caption = 'Relatorio de Momimentos'
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
      object Label_data_ate: TLabel
        Left = 335
        Top = 54
        Width = 23
        Height = 21
        Caption = 'At'#233
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
        Left = 358
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
        Left = 534
        Top = 92
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
        Left = 710
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Edit_produto: TEdit
        Left = 17
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
        TabOrder = 1
      end
      object ComboBox_categoria: TComboBox
        Left = 360
        Top = 115
        Width = 153
        Height = 29
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
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
        TabOrder = 5
      end
      object DateTimePicker2: TDateTimePicker
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
        TabOrder = 4
      end
      object ComboBox_tipoMoviemento: TComboBox
        Left = 536
        Top = 115
        Width = 153
        Height = 29
        TabOrder = 3
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
          Font.Style = [fsBold]
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
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
              FieldName = 'mov_id'
              PickList.Strings = (
                '')
              Title.Caption = 'Codigo'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mov_data_movimento'
              Title.Caption = 'Data'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mov_tipo'
              Title.Caption = 'Tipo de Movimento'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login_usuario'
              Title.Caption = 'Usuario'
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
    Active = True
    FieldDefs = <
      item
        Name = 'mov_id'
        DataType = ftInteger
      end
      item
        Name = 'mov_data_movimento'
        DataType = ftDateTime
      end
      item
        Name = 'mov_tipo'
        DataType = ftString
        Size = 20
      end>
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
    object FDMemTable_consultamov_tipo: TStringField
      FieldName = 'mov_tipo'
    end
    object FDMemTable_consultalogin_usuario: TStringField
      FieldKind = fkCalculated
      FieldName = 'login_usuario'
      Calculated = True
    end
  end
end
