unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  SpinEx, CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    cbTipoProduto: TComboBox;
    edtIdCadProd: TEdit;
    edtDescSimples: TEdit;
    FloatSpinEditEx1: TFloatSpinEditEx;
    lblValorVenda: TLabel;
    lblTipoProduto: TLabel;
    lblIdProduto: TLabel;
    lblDescSimples: TLabel;
    lblDescCompleta: TLabel;
    memDescCompleta: TMemo;
    pnlCampos: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public
    procedure centralizarPnlProdutos;

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

{ TCadProdutosF }


procedure TCadProdutosF.FormCreate(Sender: TObject);
begin
  centralizarPnlProdutos;
end;

procedure TCadProdutosF.FormResize(Sender: TObject);
begin
  centralizarPnlProdutos;
end;

procedure TCadProdutosF.centralizarPnlProdutos;
begin
  pnlCampos.Left := (ClientWidth - pnlCampos.Width) div 2;
  pnlCampos.Top := ((ClientHeight - pnlCampos.Height) div 2) - pnlFooter.Height;
end;

end.

