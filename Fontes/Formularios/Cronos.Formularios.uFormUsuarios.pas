unit Cronos.Formularios.uFormUsuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Cronos.Formularios.uFormPadrao,
  Data.DB,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXPanels;

type
  TFormUsuarios = class(TFormPadrao)
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  FormUsuarios: TFormUsuarios;

implementation

uses
  Cronos.Modulos.uDataModuleConexao;

{$R *.dfm}

procedure TFormUsuarios.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  if not DataModuleConexao.conBanco.Connected then
    DataModuleConexao.Conectar;

  DataModuleConexao.fdqryUsuarios.Close;
  DataModuleConexao.fdqryUsuarios.SQL.Clear;
  DataModuleConexao.fdqryUsuarios.SQL.Add('SELECT * FROM "usuarios"');
  DataModuleConexao.fdqryUsuarios.Open
end;

procedure TFormUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  DataModuleConexao.InicializarConexao;
end;

end.

