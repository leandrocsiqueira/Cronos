unit Cronos.View.uFormBaseCadastro;

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
  Vcl.ExtCtrls,
  Vcl.WinXPanels,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TFormBaseCadastro = class(TForm)
    actAdicionar: TAction;
    actAlterar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actPesquisar: TAction;
    actSalvar: TAction;
    alAcoesCadastroPesquisa: TActionList;
    btnAdicionar: TButton;
    btnAlterar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnImprimir: TButton;
    btnPesquisar: TButton;
    btnSalvar: TButton;
    cdCadastro: TCard;
    cdPesquisa: TCard;
    cpnlCadastroPesquisa: TCardPanel;
    edtPesquisa: TEdit;
    grdCadastro: TDBGrid;
    ilListaImagens: TImageList;
    lblPesquisa: TLabel;
    pnlCadastro: TPanel;
    pnlPesquisaCentro: TPanel;
    pnlPesquisaRodape: TPanel;
    pnlPesquisaTopo: TPanel;
    procedure actAdicionarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ExibirErro(const AAcao: string; const AExcecao: Exception);
    procedure TrocarCard(ACard: TCard);
  public
    procedure ExecutarAcaoCadastro;
    procedure ExecutarAcaoPesquisa;
  end;

var
  FormBaseCadastro: TFormBaseCadastro;

implementation

{$R *.dfm}

procedure TFormBaseCadastro.actAdicionarExecute(Sender: TObject);
begin
  ExecutarAcaoCadastro
end;

procedure TFormBaseCadastro.actAlterarExecute(Sender: TObject);
begin
  ExecutarAcaoCadastro
end;

procedure TFormBaseCadastro.actCancelarExecute(Sender: TObject);
begin
  ExecutarAcaoPesquisa
end;

procedure TFormBaseCadastro.ExecutarAcaoCadastro;
begin
  TrocarCard(cdCadastro)
end;

procedure TFormBaseCadastro.ExecutarAcaoPesquisa;
begin
  TrocarCard(cdPesquisa)
end;

procedure TFormBaseCadastro.ExibirErro(const AAcao: string;
  const AExcecao: Exception);
begin
  ShowMessage(
    Format('Erro ao %s: %s', [AAcao, AExcecao.Message])
  )
end;

procedure TFormBaseCadastro.FormShow(Sender: TObject);
begin
  ExecutarAcaoPesquisa
end;

procedure TFormBaseCadastro.TrocarCard(ACard: TCard);
begin
  try
    cpnlCadastroPesquisa.ActiveCard := ACard;
  Except on E: Exception do
    ExibirErro('Trocar o Card', E)
  end;
end;

end.
