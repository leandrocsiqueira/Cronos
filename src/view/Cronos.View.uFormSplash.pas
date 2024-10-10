unit Cronos.View.uFormSplash;

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
  Vcl.ComCtrls;

type
  TFormSplash = class(TForm)
    imgBancoDados: TImage;
    imgCarregamentoSistema: TImage;
    imgConfiguracoes: TImage;
    imgDll: TImage;
    imgLogoSistema: TImage;
    lblNomeSistema: TLabel;
    lblStatusCarregamento: TLabel;
    pbCarregamento: TProgressBar;
    pnlPrincipal: TPanel;
    tmContador: TTimer;
    procedure tmContadorTimer(Sender: TObject);
  private
    procedure AtualizarStatusCarregamento(const aPosicao: Integer);
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

procedure TFormSplash.AtualizarStatusCarregamento(const aPosicao: Integer);
begin
  case aPosicao of
    10:
      begin
        lblStatusCarregamento.Caption := 'Carregando dependências...';
        imgDll.Visible := True;
      end;
    25:
      begin
        lblStatusCarregamento.Caption := 'Conectando ao banco de dados...';
        imgBancoDados.Visible := True;
      end;
    45:
      begin
        lblStatusCarregamento.Caption := 'Carregando configurações...';
        imgConfiguracoes.Visible := True;
      end;
    75:
      begin
        lblStatusCarregamento.Caption := 'Iniciando o CRONOS...';
        imgCarregamentoSistema.Visible := True;
      end;
  end;
end;

procedure TFormSplash.tmContadorTimer(Sender: TObject);
begin
  if pbCarregamento.Position < 100 then
  begin
    pbCarregamento.StepIt;
    AtualizarStatusCarregamento(pbCarregamento.Position);
  end
  else
    Close;
end;

end.
