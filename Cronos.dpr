program Cronos;

uses
  Vcl.Forms,
  Cronos.Formularios.uFormPrincipal in 'Fontes\Formularios\Cronos.Formularios.uFormPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
