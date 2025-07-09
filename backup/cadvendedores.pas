unit CadVendedores;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  SpinEx, CadModelo;

type

  { TCadVendedoresF }

  TCadVendedoresF = class(TCadModeloF)
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdVend: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    edtPercentual: TFloatSpinEditEx;
    lblCpfCnpj: TLabel;
    lblEmail: TLabel;
    lblPercen: TLabel;
    lblPercenComissao: TLabel;
    lblEndereco: TLabel;
    lblIdVend: TLabel;
    lblNomeFantasia: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    pnlCamposVendedores: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public
    procedure centralizarPnlCamposVend;
  end;

var
  CadVendedoresF: TCadVendedoresF;

implementation

{$R *.lfm}

{ TCadVendedoresF }

procedure TCadVendedoresF.FormCreate(Sender: TObject);
begin
  centralizarPnlCamposVend;
end;

procedure TCadVendedoresF.FormResize(Sender: TObject);
begin
  centralizarPnlCamposVend;
end;

procedure TCadVendedoresF.centralizarPnlCamposVend;
begin
  pnlCamposVendedores.Left := (ClientWidth - pnlCamposVendedores.Width) div 2;
  pnlCamposVendedores.Top := ((ClientHeight - pnlCamposVendedores.Height) div 2) - pnlFooter.Height;
end;

end.

