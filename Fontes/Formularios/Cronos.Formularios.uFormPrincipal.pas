unit Cronos.Formularios.uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  System.Actions, Vcl.ActnList;

type
  TFormPrincipal = class(TForm)
    MainMenuFormPrincipal: TMainMenu;
    miCadastro: TMenuItem;
    miRelatorio: TMenuItem;
    miAjuda: TMenuItem;
    miCadastroPadrao: TMenuItem;
    procedure actCarregarFormUsuariosExecute(Sender: TObject);
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  Cronos.Formularios.uFormPadrao;

procedure TFormPrincipal.actCarregarFormUsuariosExecute(Sender: TObject);
begin
  FormPadrao.Show
end;

end.
