unit Cronos.Formularios.uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  System.Actions, Vcl.ActnList;

type
  TFormPrincipal = class(TForm)
    mmFormPrincipal: TMainMenu;
    miCadastro: TMenuItem;
    miRelatorio: TMenuItem;
    miAjuda: TMenuItem;
    MenuItemCadastroPadrao: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemCadastroPadraoClick(Sender: TObject);
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  Cronos.Formularios.uFormPadrao,
  Cronos.Formularios.uFormSplash;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  with TFormSplash.Create(nil) do
    try
      ShowModal
    finally
      Free
    end;
end;

procedure TFormPrincipal.MenuItemCadastroPadraoClick(Sender: TObject);
begin
  FormPadrao.Show
end;

end.
