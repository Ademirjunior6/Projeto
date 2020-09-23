object Form_Login: TForm_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Login'
  ClientHeight = 380
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -9
    Width = 849
    Height = 546
    TabOrder = 0
    object Label1: TLabel
      Left = 215
      Top = 40
      Width = 178
      Height = 73
      Caption = 'Fric'#233'u'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 215
      Top = 177
      Width = 57
      Height = 19
      Caption = 'Usu'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 215
      Top = 234
      Width = 46
      Height = 19
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 248
      Top = 32
      Width = 105
      Height = 105
    end
    object edit_usuario: TEdit
      Left = 215
      Top = 202
      Width = 178
      Height = 21
      TabOrder = 0
    end
    object edit_senha: TEdit
      Left = 215
      Top = 259
      Width = 178
      Height = 21
      TabOrder = 1
    end
    object entrar: TButton
      Left = 264
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 2
      OnClick = entrarClick
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
    Left = 528
    Top = 167
  end
end
