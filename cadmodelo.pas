unit CadModelo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, DBGrids, Buttons;

type

  { TCadModeloF }

  TCadModeloF = class(TForm)
    btnLimpar: TBitBtn;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnPesquisa: TBitBtn;
    edtPesquisa: TEdit;
    gridDados: TDBGrid;
    lblLogo: TLabel;
    PageControl1: TPageControl;
    pnlLogo: TPanel;
    pnlFooter: TPanel;
    pnlHeader: TPanel;
    tbsDados: TTabSheet;
    tbsCadastro: TTabSheet;
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  CadModeloF: TCadModeloF;

implementation

{$R *.lfm}

{ TCadModeloF }

procedure TCadModeloF.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCadModeloF.btnLimparClick(Sender: TObject);
begin
  edtPesquisa.Clear;
end;

end.

