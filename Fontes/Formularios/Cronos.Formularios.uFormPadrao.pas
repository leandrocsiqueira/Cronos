unit Cronos.Formularios.uFormPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXPanels, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TFormPadrao = class(TForm)
    cardPnlConteudo: TCardPanel;
    cardPesquisa: TCard;
    cardCadastro: TCard;
    pnlPesquisaTopo: TPanel;
    pnlPesquisaRodape: TPanel;
    pnlPesquisaCentro: TPanel;
    dbgDados: TDBGrid;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    btnPesquisar: TButton;
    imglIcones: TImageList;
    btnAdicionarRegistro: TButton;
    btnAlterarRegistro: TButton;
    btnExcluirRegistro: TButton;
    btnImprimirRegistros: TButton;
    pnlCadastroRodape: TPanel;
    btnCadastroSalvar: TButton;
    btnCadastroCancelar: TButton;
    ActionListFormPadrao: TActionList;
    actAdicionar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actPesquisar: TAction;
    actCancelar: TAction;
    actSalvar: TAction;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAlterarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
  private
    procedure AtivarCard(Card: TCard);
  end;

var
  FormPadrao: TFormPadrao;

implementation

{$R *.dfm}

procedure TFormPadrao.actAdicionarExecute(Sender: TObject);
begin
  AtivarCard(cardCadastro);
end;

procedure TFormPadrao.actAlterarExecute(Sender: TObject);
begin
  AtivarCard(cardCadastro);
end;

procedure TFormPadrao.actCancelarExecute(Sender: TObject);
begin
  AtivarCard(cardPesquisa);
end;

procedure TFormPadrao.actExcluirExecute(Sender: TObject);
begin
  AtivarCard(cardCadastro);
end;

procedure TFormPadrao.actImprimirExecute(Sender: TObject);
begin
  //to-do
end;

procedure TFormPadrao.actPesquisarExecute(Sender: TObject);
begin
  //to-do
end;

procedure TFormPadrao.actSalvarExecute(Sender: TObject);
begin
  //to-do
end;

procedure TFormPadrao.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    actPesquisarExecute(Sender);
    Key := 0;
  end;
end;

procedure TFormPadrao.AtivarCard(Card: TCard);
begin
  cardPnlConteudo.ActiveCard := Card;
end;

end.
