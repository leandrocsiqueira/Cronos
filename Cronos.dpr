program Cronos;

uses
  Vcl.Forms,
  Cronos.Formularios.uFormPrincipal in 'Fontes\Formularios\Cronos.Formularios.uFormPrincipal.pas' {FormPrincipal},
  Cronos.Formularios.uFormPadrao in 'Fontes\Formularios\Cronos.Formularios.uFormPadrao.pas' {FormPadrao},
  Cronos.Formularios.uFormSplash in 'Fontes\Formularios\Cronos.Formularios.uFormSplash.pas' {FormSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormPadrao, FormPadrao);
  Application.Run;
end.
