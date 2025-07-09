unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    btnEntrar: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtNovaSenha: TEdit;
    edtConfirmaNovaSenha: TEdit;
    lblEmail: TLabel;
    lblNovaSenha: TLabel;
    lblConfirmaNovaSenha: TLabel;
    pnlRedefSenha: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public
    procedure centralizarPnlEsqSenha;

  end;

var
  CadEsqSenhaF: TCadEsqSenhaF;

implementation

{$R *.lfm}

{ TCadEsqSenhaF }

procedure TCadEsqSenhaF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TCadEsqSenhaF.btnEntrarClick(Sender: TObject);
begin
  Close;
end;

procedure TCadEsqSenhaF.FormResize(Sender: TObject);
begin
  centralizarPnlEsqSenha;
end;

procedure TCadEsqSenhaF.centralizarPnlEsqSenha;
begin
  pnlRedefSenha.Left := (ClientWidth - pnlRedefSenha.Width) div 2;
  pnlRedefSenha.Top := (ClientHeight - pnlRedefSenha.Height) div 2;
end;

end.

