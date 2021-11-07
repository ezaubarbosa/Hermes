unit FormMenuPrincipalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TFormMenuPrincipal = class(TForm)
    PnCentral: TPanel;
    MMPrincipal: TMainMenu;
    Principal1: TMenuItem;
    Clientes1: TMenuItem;
    Produtros1: TMenuItem;
    Sair1: TMenuItem;
    EncerrarSistema1: TMenuItem;
    PnRodape: TPanel;
    LblInformativo1: TLabel;
    LblInformativo2: TLabel;
    ImgLogo: TImage;
    Vendas2: TMenuItem;
    EfetuarVendas1: TMenuItem;
    ConsultasListagem1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Produtros1Click(Sender: TObject);
    procedure EfetuarVendas1Click(Sender: TObject);
    procedure ConsultasListagem1Click(Sender: TObject);
    procedure EncerrarSistema1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

{$R *.dfm}

uses
  FormClienteUnit, FormProdutoUnit, FormVendaUnit, FormVendaListagemUnit,
  DMDadosUnit, ClassesUnit;

procedure TFormMenuPrincipal.Clientes1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCliente, FormCliente);

    FormCliente.ShowModal;
  finally
    FreeAndNil(FormCliente);
  end;
end;

procedure TFormMenuPrincipal.ConsultasListagem1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormVendaListagem, FormVendaListagem);

    FormVendaListagem.ShowModal;
  finally
    FreeAndNil(FormVendaListagem);
  end;
end;

procedure TFormMenuPrincipal.EfetuarVendas1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormVenda, FormVenda);

    FormVenda.ShowModal;
  finally
    FreeAndNil(FormVenda);
  end;
end;

procedure TFormMenuPrincipal.EncerrarSistema1Click(Sender: TObject);
begin
  if TMensagem.New.Tipo(MSgPergunta).Texto('Deseja Encerrar o Sistemas?') then
    Close;
end;

procedure TFormMenuPrincipal.Produtros1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormProduto, FormProduto);

    FormProduto.ShowModal;
  finally
    FreeAndNil(FormProduto);
  end;
end;

end.
