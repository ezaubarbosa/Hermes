unit FormClienteUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormCliente = class(TForm)
    GrdPrincipal: TDBGrid;
    LblTitulo: TLabel;
    DSCliente: TDataSource;
    EdtPesquisa: TEdit;
    BtnPesquisar: TBitBtn;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure AbrirCad;
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;

implementation

{$R *.dfm}

uses
  DMDadosUnit, FormClienteCadUnit, ClassesUnit;

procedure TFormCliente.AbrirCad;
begin
  // Criação, Abertura e Destruição de Form
  try
    Application.CreateForm(TFormClienteCad, FormClienteCad);

    FormClienteCad.ShowModal;
  finally
    FreeAndNil(FormClienteCad);
  end;
end;

procedure TFormCliente.BtnEditarClick(Sender: TObject);
begin
  // Edição de Registro
  if DMDados.EditarDB(DMDados.CDSCliente) then
  begin
    AbrirCad;
  end else
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormCliente.BtnExcluirClick(Sender: TObject);
begin
  // Exclusão de Registro
  if TMensagem.New.Tipo(MsgPergunta).Texto('Deseja Excluir o Registro?') then
  begin
    if not DMDados.ExcluirDB(DMDados.CDSCliente) then
      TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormCliente.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCliente.BtnInserirClick(Sender: TObject);
begin
  // Desativar o Filtered
  DMDados.CDSCliente.Filtered := False;

  // Novo Registro
  if DMDados.NovoDB(DMDados.CDSCliente) then AbrirCad;
end;

procedure TFormCliente.BtnPesquisarClick(Sender: TObject);
begin
  if not DMDados.PesquisarStr(DMDados.CDSCliente,EdtPesquisa.Text,'nome') then
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('Pesquisa Vazia!');

    DMDados.CDSCliente.Filtered := False;

    EdtPesquisa.Text := EmptyStr;
  end;
end;

procedure TFormCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Fechamento de Tabela
  DMDados.FecharDB(DMDados.CDSCliente);
end;

procedure TFormCliente.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCliente.FormShow(Sender: TObject);
begin
  // Abertura de Tabela
  DMDados.AbrirDB(DMDados.CDSCliente);
end;

end.
