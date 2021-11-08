unit FormProdutoUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormProduto = class(TForm)
    LblTitulo: TLabel;
    GrdPrincipal: TDBGrid;
    DSProduto: TDataSource;
    EdtPesquisa: TEdit;
    BtnPesquisar: TBitBtn;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFechar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCad;
  public
    { Public declarations }
  end;

var
  FormProduto: TFormProduto;

implementation

{$R *.dfm}

uses
  DMDadosUnit, FormProdutoCadUnit, ClassesUnit;

procedure TFormProduto.AbrirCad;
begin
  // Criação, Abertura e Destruição de Form
  try
    Application.CreateForm(TFormProdutoCad, FormProdutoCad);

    FormProdutoCad.ShowModal;
  finally
    FreeAndNil(FormProdutoCad);
  end;
end;

procedure TFormProduto.BtnEditarClick(Sender: TObject);
begin
  // Edição de Registro
  if DMDados.EditarDB(DMDados.CDSProduto) then
  begin
    AbrirCad;
  end else
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormProduto.BtnExcluirClick(Sender: TObject);
begin
  // Exclusão de Registro
  if TMensagem.New.Tipo(MsgPergunta).Texto('Deseja Excluir o Registro?') then
  begin
    if not DMDados.ExcluirDB(DMDados.CDSProduto) then
      TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormProduto.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormProduto.BtnInserirClick(Sender: TObject);
begin
  // Desativar o Filtered
  DMDados.CDSProduto.Filtered := False;

  // Novo Registro
  if DMDados.NovoDB(DMDados.CDSProduto) then AbrirCad;
end;

procedure TFormProduto.BtnPesquisarClick(Sender: TObject);
begin
  if not DMDados.PesquisarStr(DMDados.CDSProduto,EdtPesquisa.Text,'nome') then
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('Pesquisa Vazia!');

    DMDados.CDSProduto.Filtered := False;

    EdtPesquisa.Text := EmptyStr;
  end;
end;

procedure TFormProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Fechamento de Tabela
  DMDados.FecharDB(DMDados.CDSProduto);
end;

procedure TFormProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Substituir TAB por ENTER | Tecla ESC p/ Fechar Form
  case Key of
    #13:
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
    end;
    #27:
    begin
      Close;
    end;
  end;
end;

procedure TFormProduto.FormShow(Sender: TObject);
begin
  // Abertura de Tabela
  DMDados.AbrirDB(DMDados.CDSProduto);
end;

end.
