object Form_Usuario: TForm_Usuario
  Left = 0
  Top = 0
  Caption = 'Form_Usuario'
  ClientHeight = 543
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_usuario: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 545
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
        OnClick = Usurio1Click
      end
    end
    object N4: TMenuItem
      Caption = ' '
    end
    object N2: TMenuItem
      Caption = ' '
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
