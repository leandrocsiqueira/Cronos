unit Cronos.Formularios.uFormPadrao;

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
  Vcl.WinXPanels,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList;

type
  TFormPadrao = class(TForm)
    crdpnlPnlConteudo: TCardPanel;
    crdPesquisa: TCard;
    crdCadastro: TCard;
    pnlPesquisaTopo: TPanel;
    pnlPesquisaRodape: TPanel;
    pnlPesquisaCentro: TPanel;
    dbgrdDados: TDBGrid;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    btnPesquisar: TButton;
    ilFormPadrao: TImageList;
    btnAdicionar: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnImprimir: TButton;
    pnlCadastroRodape: TPanel;
    btnactCnPrefixWizard5: TButton;
    btnactCnPrefixWizard6: TButton;
    actlstFormPadrao: TActionList;
    actAdicionar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actPesquisar: TAction;
    actCancelar: TAction;
    actSalvar: TAction;
    dsPadrao: TDataSource;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
    procedure actAlterarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure AtivarCard(const ACard: TCard);
  end;

var
  FormPadrao: TFormPadrao;

implementation

{$R *.dfm}

procedure TFormPadrao.actAdicionarExecute(Sender: TObject);
begin
  AtivarCard(crdCadastro)
end;

procedure TFormPadrao.actAlterarExecute(Sender: TObject);
begin
  AtivarCard(crdCadastro)
end;

procedure TFormPadrao.actCancelarExecute(Sender: TObject);
begin
  AtivarCard(crdPesquisa)
end;

procedure TFormPadrao.actExcluirExecute(Sender: TObject);
begin
  AtivarCard(crdCadastro)
end;

procedure TFormPadrao.actImprimirExecute(Sender: TObject);
begin
  // to-do
end;

procedure TFormPadrao.actPesquisarExecute(Sender: TObject);
begin
  // to-do
end;

procedure TFormPadrao.actSalvarExecute(Sender: TObject);
begin
  // to-do
end;

procedure TFormPadrao.edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    actPesquisarExecute(Sender)
  end;
end;

procedure TFormPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Key := 0;
    Close
  end;
end;

procedure TFormPadrao.AtivarCard(const ACard: TCard);
begin
  crdpnlPnlConteudo.ActiveCard := ACard
end;

end.

