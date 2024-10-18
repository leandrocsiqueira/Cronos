object DataModuleConexao: TDataModuleConexao
  Height = 361
  Width = 630
  PixelsPerInch = 120
  object fdqryUsuarios: TFDQuery
    Connection = conBanco
    SQL.Strings = (
      '')
    Left = 500
    Top = 240
  end
  object conBanco: TFDConnection
    LoginPrompt = False
    Left = 296
    Top = 168
  end
end
