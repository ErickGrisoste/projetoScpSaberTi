unit OpLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, CadEsqSenha, MenuPrincipal;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    btnEntrar: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtSenha: TEdit;
    lblSCP: TLabel;
    lblEsqueciSenha: TLabel;
    lblSenha: TLabel;
    lblEmail: TLabel;
    pnlLogin: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lblEsqueciSenhaClick(Sender: TObject);
    procedure lblEsqueciSenhaMouseEnter(Sender: TObject);
    procedure lblEsqueciSenhaMouseLeave(Sender: TObject);
  private

  public
    procedure centralizarPnlLogin;

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }

procedure TOpLoginF.lblEsqueciSenhaMouseEnter(Sender: TObject);
begin
  lblEsqueciSenha.Font.Color := clHighlight;
end;

procedure TOpLoginF.FormCreate(Sender: TObject);
begin
  centralizarPnlLogin;
end;

procedure TOpLoginF.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TOpLoginF.btnEntrarClick(Sender: TObject);
begin
  MenuPrincipalF.ShowModal;
  OpLoginF.Close;
end;

procedure TOpLoginF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure TOpLoginF.FormResize(Sender: TObject);
begin
  centralizarPnlLogin;
end;

procedure TOpLoginF.lblEsqueciSenhaClick(Sender: TObject);
begin
  CadEsqSenhaF := TCadEsqSenhaF.Create(Self);
  CadEsqSenhaF.ShowModal;
end;

procedure TOpLoginF.lblEsqueciSenhaMouseLeave(Sender: TObject);
begin
  lblEsqueciSenha.Font.Color := clDefault;
end;

procedure TOpLoginF.centralizarPnlLogin;
begin
  pnlLogin.Left := (ClientWidth - pnlLogin.Width) div 2;
  pnlLogin.Top := (ClientHeight - pnlLogin.Height) div 2;
end;

end.

