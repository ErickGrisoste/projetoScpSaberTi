program prjSCP;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazcontrols, OpLogin, CadEsqSenha, MenuPrincipal, CadModelo,
  CadProdutos, CadClientes, CadFornecedor, CadVendedores, CadUsuarios, OpSobre;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  {$PUSH}{$WARN 5044 OFF}
  Application.MainFormOnTaskbar:=True;
  {$POP}
  Application.Initialize;
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TOpLoginF, OpLoginF);
  //OpLoginF.ShowModal;
  Application.Run;
end.

