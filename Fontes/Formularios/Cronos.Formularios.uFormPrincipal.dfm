object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
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
  Menu = mmPrincipal
  WindowState = wsMaximized
  TextHeight = 15
  object mmPrincipal: TMainMenu
    Left = 352
    Top = 248
    object miCadastros: TMenuItem
      Caption = 'Cadastros'
    end
    object miRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object miAjuda: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
