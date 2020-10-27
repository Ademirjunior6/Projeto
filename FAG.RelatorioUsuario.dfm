object Form_RelatorioUsuario: TForm_RelatorioUsuario
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relatorio de Usuario'
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
  object Panel_Principal: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 602
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 861
    object Label_tituloForm: TLabel
      Left = 296
      Top = 24
      Width = 225
      Height = 32
      Caption = 'Relatorio de Usuarios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton_exibirTodos: TSpeedButton
      Left = 20
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
    object SpeedButton_limparConsulta: TSpeedButton
      Left = 169
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
      Left = 349
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
    object SpeedButton_sair: TSpeedButton
      Left = 769
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
      Top = 77
      Width = 817
      Height = 111
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
      object Label_status: TLabel
        Left = 585
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
        Left = 718
        Top = 55
        Width = 83
        Height = 31
        Caption = 'Filtrar'
        OnClick = SpeedButton_filtrarClick
      end
      object Label_filtro: TLabel
        Left = 17
        Top = 35
        Width = 36
        Height = 21
        Caption = 'Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label_pesquisa: TLabel
        Left = 200
        Top = 35
        Width = 60
        Height = 21
        Caption = 'Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox_Status: TComboBox
        Left = 579
        Top = 56
        Width = 111
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
      object ComboBox_filtro: TComboBox
        Left = 17
        Top = 55
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
        TabOrder = 0
        OnSelect = ComboBox_filtroSelect
      end
      object MaskEdit_pesquisa: TMaskEdit
        Left = 198
        Top = 55
        Width = 350
        Height = 29
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
    end
    object GroupBox_grid: TGroupBox
      Left = 20
      Top = 194
      Width = 817
      Height = 344
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
        Height = 296
        TabOrder = 0
        object DBGrid_Pesquisa: TDBGrid
          Left = 1
          Top = 1
          Width = 782
          Height = 294
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
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'CPF'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Data Nasc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 142
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 182
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Celular'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Status'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource_Consulta: TDataSource
    DataSet = FDMemTable_Consulta
    Left = 452
    Top = 370
  end
  object FDMemTable_Consulta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 252
    Top = 370
  end
end
