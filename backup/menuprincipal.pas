unit MenuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  CadProdutos, CadClientes, CadFornecedor, CadVendedores, CadUsuarios;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    menuCadastros: TMenuItem;
    menuCadProdutos: TMenuItem;
    menuCadClientes: TMenuItem;
    menuCadUsuarios: TMenuItem;
    menuCadFornecedor: TMenuItem;
    menuCadVendedores: TMenuItem;
    menuSair: TMenuItem;
    menuManutencao: TMenuItem;
    menuSobre: TMenuItem;
    procedure menuCadClientesClick(Sender: TObject);
    procedure menuCadFornecedorClick(Sender: TObject);
    procedure menuCadProdutosClick(Sender: TObject);
    procedure menuCadUsuariosClick(Sender: TObject);
    procedure menuCadVendedoresClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMenuPrincipalF.menuCadProdutosClick(Sender: TObject);
begin
  CadProdutosF := TCadProdutosF.Create(Self);
  CadProdutosF.ShowModal;
end;

procedure TMenuPrincipalF.menuCadUsuariosClick(Sender: TObject);
begin
  CadUsuariosF := TCadUsuariosF.Create(Self);
  CadUsuariosF.ShowModal;
end;

procedure TMenuPrincipalF.menuCadVendedoresClick(Sender: TObject);
begin
  CadVendedoresF := TCadVendedoresF.Create(Self);
  CadVendedoresF.ShowModal;
end;

procedure TMenuPrincipalF.menuCadClientesClick(Sender: TObject);
begin
  CadClientesF := TCadClientesF.Create(Self);
  CadClientesF.ShowModal;
end;

procedure TMenuPrincipalF.menuCadFornecedorClick(Sender: TObject);
begin
  CadFornecedorF := TCadFornecedorF.Create(Self);
  CadFornecedorF.ShowModal;
end;

end.

