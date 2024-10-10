object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Cronos - Sistema Financeiro'
  ClientHeight = 564
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmPrincipal
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object mmPrincipal: TMainMenu
    Left = 912
    Top = 8
    object miCadastros: TMenuItem
      Caption = '&Cadastros'
      object miCadastroPadrao: TMenuItem
        Action = actCadastroPadrao
      end
    end
    object miRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
    end
    object miAjuda: TMenuItem
      Caption = '&Ajuda'
    end
  end
  object alAcoesMenu: TActionList
    Left = 200
    Top = 208
    object actCadastroPadrao: TAction
      Category = 'Cadastros'
      Caption = 'C&adastro Padr'#227'o'
      OnExecute = actCadastroPadraoExecute
    end
  end
end
