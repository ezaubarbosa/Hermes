unit FormVendaListagemUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormVendaListagem = class(TForm)
    LblTitulo: TLabel;
    GrdPrincipal: TDBGrid;
    EdtPesquisa: TEdit;
    BtnPesquisar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFechar: TBitBtn;
    DSVenda: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendaListagem: TFormVendaListagem;

implementation

{$R *.dfm}

uses
  DMDadosUnit, FormVendaListagemCadUnit, ClassesUnit;

procedure TFormVendaListagem.BtnEditarClick(Sender: TObject);
begin
  if not DMDados.CDSVenda.IsEmpty then
  begin
    // Criação, Abertura e Destruição de Form
    try
      Application.CreateForm(TFormVendaListagemCad, FormVendaListagemCad);

      FormVendaListagemCad.ShowModal;
    finally
      FreeAndNil(FormVendaListagemCad);
    end;
  end else
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormVendaListagem.BtnExcluirClick(Sender: TObject);
begin
  // Exclusão de Registro
  if TMensagem.New.Tipo(MsgPergunta).Texto('Deseja Excluir o Registro?') then
  begin
    if not DMDados.ExcluirDB(DMDados.CDSVenda) then
      TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormVendaListagem.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormVendaListagem.BtnPesquisarClick(Sender: TObject);
begin
  if not DMDados.PesquisarStr(DMDados.CDSVenda,EdtPesquisa.Text,'id','=') then
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('Pesquisa Vazia!');

    DMDados.CDSVenda.Filtered := False;

    EdtPesquisa.Text := EmptyStr;
  end;
end;

procedure TFormVendaListagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Fechamento de Tabela
  DMDados.FecharDB(DMDados.CDSVenda);
end;

procedure TFormVendaListagem.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormVendaListagem.FormShow(Sender: TObject);
begin
  // Abertura de Tabela
  DMDados.AbrirDB(DMDados.CDSVenda);
end;

end.
