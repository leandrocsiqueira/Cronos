unit Cronos.Modulos.uDataModuleConexao;

interface

uses
  System.SysUtils,
  System.Classes,
  System.IOUtils,
  Data.DB,
  FireDAC.Phys,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Vcl.Forms;

type
  TDataModuleConexao = class(TDataModule)
    fdqryUsuarios: TFDQuery;
    conBanco: TFDConnection;
    procedure Conectar;
    procedure Desconectar;
  public
    procedure InicializarConexao;
  end;

var
  DataModuleConexao: TDataModuleConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses
  Cronos.Configuracoes.uConfiguracaoConexao;


procedure TDataModuleConexao.Conectar;
begin
  if not conBanco.Connected then
    conBanco.Connected := True;
end;

procedure TDataModuleConexao.Desconectar;
begin
  if conBanco.Connected then
    conBanco.Connected := False
end;

procedure TDataModuleConexao.InicializarConexao;
var
  LConfiguracao: TConfiguracaoConexao;
begin
  LConfiguracao := TConfiguracaoConexao.Create;
  try
    LConfiguracao.CarregarConfiguracoes(conBanco.Params);
  finally
    LConfiguracao.Free;
  end;
end;

end.
