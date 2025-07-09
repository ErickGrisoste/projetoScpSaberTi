unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  CadModelo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    edtIdCadCli: TEdit;
    edtCpfCnpj: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lblEndereco: TLabel;
    lblRazaoSocial: TLabel;
    lblNomeFantasia: TLabel;
    lblIdCadCli: TLabel;
    lblCpfCnpj: TLabel;
    pnlCamposClientes: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public
    procedure centralizarPnlCamposCli;
  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.FormCreate(Sender: TObject);
begin
  centralizarPnlCamposCli;
end;

procedure TCadClientesF.FormResize(Sender: TObject);
begin
  centralizarPnlCamposCli;
end;

procedure TCadClientesF.centralizarPnlCamposCli;
begin
  pnlCamposClientes.Left := (ClientWidth - pnlCamposClientes.Width) div 2;
  pnlCamposClientes.Top := ((ClientHeight - pnlCamposClientes.Height) div 2) - pnlFooter.Height;
end;

end.

