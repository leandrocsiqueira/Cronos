unit Cronos.Formularios.uFormSplash;

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
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  System.ImageList,
  Vcl.ImgList;

type
  TProcessamentoEtapa = record
    Mensagem: string;
    Imagem: TImage;
    constructor Create(const AMensagem: string; AImagem: TImage);
  end;

  TFormSplash = class sealed(TForm)
    pnlAreaTotal: TPanel;
    imgLogoPrograma: TImage;
    lblNomePrograma: TLabel;
    pbSplash: TProgressBar;
    lblStatusCarregamento: TLabel;
    pnlStatusCarregamento: TPanel;
    tmrSplash: TTimer;
    imgDll: TImage;
    imgBd: TImage;
    imgConfig: TImage;
    imgIniciando: TImage;
    procedure tmrSplashTimer(Sender: TObject);
    procedure InicializarSplash(Sender: TObject);
  private
    procedure PrepararEtapas;
    procedure ExibirStatusAtual(const AEtapa: TProcessamentoEtapa);
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

var
  EtapasProcessamento: array [0 .. 3] of TProcessamentoEtapa;

procedure TFormSplash.ExibirStatusAtual(const AEtapa
  : TProcessamentoEtapa);
begin
  lblStatusCarregamento.Caption := AEtapa.Mensagem;
  if Assigned(AEtapa.Imagem) then
    AEtapa.Imagem.Visible := True
end;

procedure TFormSplash.InicializarSplash(Sender: TObject);
begin
  PrepararEtapas // Executado na criação do form (OnCreate)
end;

procedure TFormSplash.PrepararEtapas;
begin
  EtapasProcessamento[0] := TProcessamentoEtapa.Create
    ('Carregando dependências...', imgDll);
  EtapasProcessamento[1] := TProcessamentoEtapa.Create
    ('Carregando banco de dados...', imgBd);
  EtapasProcessamento[2] := TProcessamentoEtapa.Create
    ('Carregando configurações...', imgConfig);
  EtapasProcessamento[3] := TProcessamentoEtapa.Create
    ('Inicializando o sistema...', imgIniciando);
end;

procedure TFormSplash.tmrSplashTimer(Sender: TObject);
begin
  pbSplash.StepIt;
  case pbSplash.Position of
    10: ExibirStatusAtual(EtapasProcessamento[0]);
    25: ExibirStatusAtual(EtapasProcessamento[1]);
    45: ExibirStatusAtual(EtapasProcessamento[2]);
    75: ExibirStatusAtual(EtapasProcessamento[3])
  end;
  if pbSplash.Position = 100 then
    Close
end;

constructor TProcessamentoEtapa.Create(const AMensagem: string;
  AImagem: TImage);
begin
  Mensagem := AMensagem;
  Imagem := AImagem
end;

end.
