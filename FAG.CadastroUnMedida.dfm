object Form_CadastroUnMedida: TForm_CadastroUnMedida
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro Un. Medida'
  ClientHeight = 211
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel_cadastroUn: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 211
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label_descricaoUnMedida: TLabel
      Left = 160
      Top = 35
      Width = 67
      Height = 21
      Caption = 'Descri'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label_codigoUnMedida: TLabel
      Left = 81
      Top = 39
      Width = 50
      Height = 21
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit_codigoUnMedida: TEdit
      Left = 80
      Top = 62
      Width = 65
      Height = 29
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit_descricaoUnMedida: TEdit
      Left = 160
      Top = 62
      Width = 145
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn_salvar: TBitBtn
      Left = 64
      Top = 152
      Width = 108
      Height = 33
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = BitBtn_salvarClick
    end
    object BitBtn_cancelar: TBitBtn
      Left = 197
      Top = 152
      Width = 108
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn_cancelarClick
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
    Left = 320
    Top = 80
  end
end
