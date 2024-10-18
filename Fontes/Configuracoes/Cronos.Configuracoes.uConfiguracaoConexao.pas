unit Cronos.Configuracoes.uConfiguracaoConexao;

interface

uses
  System.SysUtils,
  System.Classes;

type
  TConfiguracaoConexao = class
  private const
    NOME_ARQUIVO_CONFIGURACAO = 'Cronos.cfg';
  public
    procedure CarregarConfiguracoes(AParametros: TStrings);
  end;

implementation

uses
  System.IOUtils;

procedure TConfiguracaoConexao.CarregarConfiguracoes(AParametros: TStrings);
var
  LChave, LValor: string;
  LPosicao: Integer;
  LParametros: TStringList;
  LCaminhoArquivoConfiguracao: string;
begin
  AParametros.Clear;

  LCaminhoArquivoConfiguracao := TPath.Combine(ExtractFilePath(ParamStr(0)),
    'Config\' + NOME_ARQUIVO_CONFIGURACAO);

  if not FileExists(LCaminhoArquivoConfiguracao) then
    raise Exception.Create
      ('Arquivo de configuração do banco de dados não foi encontrado');

  LParametros := TStringList.Create;
  try
    LParametros.LoadFromFile(LCaminhoArquivoConfiguracao);
    for LPosicao := 0 to Pred(LParametros.Count) do
    begin
      if LParametros[LPosicao].IndexOf('=') > 0 then
      begin
        LChave := LParametros[LPosicao].Split(['='])[0].Trim;
        LValor := LParametros[LPosicao].Split(['='])[1].Trim;
        AParametros.Add(LChave + '=' + LValor);
      end;
    end;
  finally
    LParametros.Free;
  end;
end;

end.
