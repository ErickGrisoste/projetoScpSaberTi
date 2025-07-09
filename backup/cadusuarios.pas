unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  CadModelo;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TCadModeloF)
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtNomeUser: TEdit;
    edtEndereco: TEdit;
    edtIdCadUsu: TEdit;
    edtNomeFantasia: TEdit;
    edtSenhaUser: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    lblCpfCnpj: TLabel;
    lblEmail: TLabel;
    lblNomeUser: TLabel;
    lblEndereco: TLabel;
    lblIdCadUsu: TLabel;
    lblNomeFantasia: TLabel;
    lblSenhaUser: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    pnlCamposUsuarios: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure pnlCamposUsuariosResize(Sender: TObject);
  private

  public
    procedure centralizarPnlCamposUsuarios;

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

{$R *.lfm}

{ TCadUsuariosF }

procedure TCadUsuariosF.FormCreate(Sender: TObject);
begin
  centralizarPnlCamposUsuarios;
end;

procedure TCadUsuariosF.pnlCamposUsuariosResize(Sender: TObject);
begin
  centralizarPnlCamposUsuarios;
end;

procedure TCadUsuariosF.centralizarPnlCamposUsuarios;
begin
  pnlCamposUsuarios.Left := (ClientWidth - pnlCamposUsuarios.Width) div 2;
  pnlCamposUsuarios.Top := ((ClientHeight - pnlCamposUsuarios.Height) div 2) - pnlFooter.Height;
end;

end.

