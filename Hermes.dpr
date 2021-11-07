program Hermes;

uses
  Vcl.Forms,
  FormMenuPrincipalUnit in 'FormMenuPrincipalUnit.pas' {FormMenuPrincipal},
  DMDadosUnit in 'DMDadosUnit.pas' {DMDados: TDataModule},
  FormClienteUnit in 'FormClienteUnit.pas' {FormCliente},
  FormClienteCadUnit in 'FormClienteCadUnit.pas' {FormClienteCad},
  ClassesUnit in 'ClassesUnit.pas',
  FormProdutoUnit in 'FormProdutoUnit.pas' {FormProduto},
  FormProdutoCadUnit in 'FormProdutoCadUnit.pas' {FormProdutoCad},
  FormVendaUnit in 'FormVendaUnit.pas' {FormVenda},
  FormVendaItemUnit in 'FormVendaItemUnit.pas' {FormVendaItem},
  FormVendaListagemUnit in 'FormVendaListagemUnit.pas' {FormVendaListagem},
  FormVendaListagemCadUnit in 'FormVendaListagemCadUnit.pas' {FormVendaListagemCad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuPrincipal, FormMenuPrincipal);
  Application.CreateForm(TDMDados, DMDados);
  Application.Run;
end.
