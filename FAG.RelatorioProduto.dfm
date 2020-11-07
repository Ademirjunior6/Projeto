object Form_RelatorioProduto: TForm_RelatorioProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relatorio de Produto'
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
  object Panel_Principal: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 604
    Align = alClient
    TabOrder = 0
    object Label_tituloForm: TLabel
      Left = 296
      Top = 24
      Width = 230
      Height = 32
      Caption = 'Relatorio de Produtos'
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
      Top = 76
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
      object Label_categoria: TLabel
        Left = 442
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
        Left = 601
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
      object ComboBox_categoria: TComboBox
        Left = 442
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
        Left = 601
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
      inline Frame_Produto1: TFrame_Produto
        Left = 10
        Top = 32
        Width = 426
        Height = 56
        TabOrder = 0
        ExplicitLeft = 10
        ExplicitTop = 32
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
          Font.Style = []
        end
        inherited Edit_codigoProduto: TEdit
          Font.Style = []
          OnChange = Frame_Produto1Edit_codigoProdutoChange
        end
        inherited FDMemTable_Produto: TFDMemTable
          Left = 320
          Top = 0
        end
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
  end
end
