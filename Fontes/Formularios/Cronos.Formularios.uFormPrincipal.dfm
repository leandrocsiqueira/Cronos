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
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenuFormPrincipal
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenuFormPrincipal: TMainMenu
    Left = 352
    Top = 248
    object miCadastro: TMenuItem
      Caption = 'Cadastro'
      object miCadastroPadrao: TMenuItem
        Caption = 'Pesquisar'
        OnClick = actCarregarFormUsuariosExecute
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
