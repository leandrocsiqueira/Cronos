unit Cronos.Formularios.uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    miCadastros: TMenuItem;
    miRelatorios: TMenuItem;
    miAjuda: TMenuItem;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

end.
