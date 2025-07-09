unit CadFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, CadModelo;

type

  { TCadFornecedorF }

  TCadFornecedorF = class(TCadModeloF)
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdCadForec: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    lblCpfCnpj: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdCadForec: TLabel;
    lblNomeFantasia: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    pnlCamposForne: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public
    procedure centralizarPnlCamposForne;

  end;

var
  CadFornecedorF: TCadFornecedorF;

implementation

{$R *.lfm}

procedure TCadFornecedorF.FormCreate(Sender: TObject);
begin
  centralizarPnlCamposForne;
end;

procedure TCadFornecedorF.FormResize(Sender: TObject);
begin
  centralizarPnlCamposForne;
end;

procedure TCadFornecedorF.centralizarPnlCamposForne;
begin
  pnlCamposForne.Left := (ClientWidth - pnlCamposForne.Width) div 2;
  pnlCamposForne.Top := ((ClientHeight - pnlCamposForne.Height) div 2) - pnlFooter.Height;
end;

end.

