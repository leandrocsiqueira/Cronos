program Cronos;

uses
  Vcl.Forms,
  Cronos.View.uFormPrincipal in 'src\view\Cronos.View.uFormPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
