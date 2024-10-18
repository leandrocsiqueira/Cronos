program Cronos;

uses
  Vcl.Forms,
  Cronos.Formularios.uFormPrincipal in 'Fontes\Formularios\Cronos.Formularios.uFormPrincipal.pas' {FormPrincipal},
  Cronos.Formularios.uFormPadrao in 'Fontes\Formularios\Cronos.Formularios.uFormPadrao.pas' {FormPadrao},
  Cronos.Formularios.uFormSplash in 'Fontes\Formularios\Cronos.Formularios.uFormSplash.pas' {FormSplash},
  Cronos.Modulos.uDataModuleConexao in 'Fontes\Modulos\Cronos.Modulos.uDataModuleConexao.pas' {DataModuleConexao: TDataModule},
  Cronos.Formularios.uFormUsuarios in 'Fontes\Formularios\Cronos.Formularios.uFormUsuarios.pas' {FormUsuarios},
  Cronos.Configuracoes.uConfiguracaoConexao in 'Fontes\Configuracoes\Cronos.Configuracoes.uConfiguracaoConexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormPadrao, FormPadrao);
  Application.CreateForm(TFormUsuarios, FormUsuarios);
  Application.Run;
end.
