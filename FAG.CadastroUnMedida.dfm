object Form_CadastroUnMedida: TForm_CadastroUnMedida
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Un. Medida'
  ClientHeight = 171
  ClientWidth = 281
  Color = clBtnFace
  Constraints.MaxHeight = 200
  Constraints.MaxWidth = 287
  Constraints.MinHeight = 200
  Constraints.MinWidth = 287
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
  object Label_codigoUnMedida: TLabel
    Left = 25
    Top = 24
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
  object Label_descricaoUnMedida: TLabel
    Left = 112
    Top = 24
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
  object BitBtn_cancelar: TBitBtn
    Left = 152
    Top = 112
    Width = 75
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = BitBtn_cancelarClick
  end
  object BitBtn_salvar: TBitBtn
    Left = 56
    Top = 112
    Width = 75
    Height = 33
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BitBtn_salvarClick
  end
  object Edit_codigoUnMedida: TEdit
    Left = 25
    Top = 51
    Width = 65
    Height = 29
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit_descricaoUnMedida: TEdit
    Left = 112
    Top = 51
    Width = 145
    Height = 29
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
  end
end
