object Form_Menu: TForm_Menu
  Left = 55
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Menu'
  ClientHeight = 758
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 727
    Width = 1270
    Height = 31
    Align = alBottom
    AutoSize = True
    TabOrder = 0
    ExplicitTop = 728
    object Label1: TLabel
      Left = 1171
      Top = 1
      Width = 98
      Height = 29
      Align = alRight
      AutoSize = False
      Caption = 'Nome Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 2
      ExplicitHeight = 28
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 24
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
      end
      object Usurio1: TMenuItem
        Caption = 'Usu'#225'rio'
      end
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Estoque'
      object Movimentar1: TMenuItem
        Caption = 'Movimentar'
      end
    end
    object ConsultareAlterar1: TMenuItem
      Caption = 'Relat'#243'rio'
      object CadastrodeProduto1: TMenuItem
        Caption = 'Cadastro de Produto'
      end
      object Movimentao1: TMenuItem
        Caption = 'Movimenta'#231#227'o'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
    end
  end
end
