object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cronos'
  ClientHeight = 482
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmFormPrincipal
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 25
  object mmFormPrincipal: TMainMenu
    Left = 352
    Top = 248
    object miCadastro: TMenuItem
      Caption = 'Cadastro'
      object MenuItemCadastroPadrao: TMenuItem
        Caption = 'Cadastro Padr'#227'o'
        OnClick = MenuItemCadastroPadraoClick
      end
    end
    object miRelatorio: TMenuItem
      Caption = 'Relat'#243'rio'
    end
    object miAjuda: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
