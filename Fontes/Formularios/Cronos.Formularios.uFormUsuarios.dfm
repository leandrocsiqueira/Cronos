inherited FormUsuarios: TFormUsuarios
  Caption = 'Cadastro de Usu'#225'rios'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1103
  ExplicitHeight = 663
  TextHeight = 28
  inherited crdpnlPnlConteudo: TCardPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1085
    ExplicitHeight = 616
    inherited crdPesquisa: TCard
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 1083
      ExplicitHeight = 614
      inherited pnlPesquisaTopo: TPanel
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 1083
        inherited lblPesquisa: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited edtPesquisa: TEdit
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited btnPesquisar: TButton
          ExplicitLeft = 982
        end
      end
      inherited pnlPesquisaRodape: TPanel
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = 518
        ExplicitWidth = 1083
        inherited btnAdicionar: TButton
          ExplicitLeft = 973
        end
        inherited btnAlterar: TButton
          ExplicitLeft = 863
        end
        inherited btnExcluir: TButton
          ExplicitLeft = 753
        end
        inherited btnImprimir: TButton
          ExplicitLeft = 643
        end
      end
      inherited pnlPesquisaCentro: TPanel
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 1083
        ExplicitHeight = 427
        inherited dbgrdDados: TDBGrid
          DataSource = dsPadrao
        end
      end
    end
    inherited crdCadastro: TCard
      StyleElements = [seFont, seClient, seBorder]
      inherited pnlCadastroRodape: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
  inherited dsPadrao: TDataSource
    DataSet = DataModuleConexao.fdqryUsuarios
  end
end
