object Form_Menu: TForm_Menu
  Left = 55
  Top = 0
  Caption = 'Menu'
  ClientHeight = 447
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 447
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 744
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produto1: TMenuItem
        Caption = 'Produto'
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
      end
      object Usurio1: TMenuItem
        Caption = 'Usu'#225'rio'
      end
    end
    object N4: TMenuItem
      Caption = ' '
      Enabled = False
    end
    object N2: TMenuItem
      Caption = '  '
      Enabled = False
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Estoque'
      object Movimentar1: TMenuItem
        Caption = 'Movimentar'
      end
    end
    object N3: TMenuItem
      Caption = ' '
    end
    object N1: TMenuItem
      Caption = ' '
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
