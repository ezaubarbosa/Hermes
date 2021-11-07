unit FormVendaItemUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  TFormVendaItem = class(TForm)
    LblProdutoCodigoBarra: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PnTotal: TPanel;
    LblTotal: TLabel;
    LblValor: TLabel;
    EdtProdutoCodigoBarra: TEdit;
    EdtProdutoNome: TEdit;
    EdtProdutoPrecoVenda: TEdit;
    SpnQuantidade: TSpinEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProdutoCodigoBarraExit(Sender: TObject);
    procedure SpnQuantidadeExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GravarDB:Boolean;
    function NovoDB:Boolean;

    procedure BuscarProduto;
    procedure FazerTotal;
  public
    { Public declarations }
  end;

var
  FormVendaItem: TFormVendaItem;

implementation

{$R *.dfm}

uses
  Data.DB, DMDadosUnit, FormVendaUnit, ClassesUnit;

procedure TFormVendaItem.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormVendaItem.BtnSalvarClick(Sender: TObject);
begin
  if DMDados.CDSVendaItem.State in [dsInsert] then
  begin
    if GravarDB() then NovoDB();
  end else
  begin
    if GravarDB() then Close;
  end;
end;

procedure TFormVendaItem.BuscarProduto;
begin
  DMDados.CDSVendaItem.FieldByName('produto_codigobarra').AsString :=
    EdtProdutoCodigoBarra.Text;

  EdtProdutoNome.Text := DMDados.CDSVendaItem.FieldByName('produto_nome').AsString;
  EdtProdutoPrecoVenda.Text :=
    FormatFloat('#,##0.00',DMDados.CDSVendaItem.FieldByName('produto_precovenda').AsFloat);

  FormVenda.GrdPrincipal.Refresh;
end;

procedure TFormVendaItem.EdtProdutoCodigoBarraExit(Sender: TObject);
begin
  BuscarProduto;
  FazerTotal;
end;

procedure TFormVendaItem.FazerTotal;
var
  FTotal:Real;
begin
  if not DMDados.CDSVendaItem.FieldByName('produto_precovenda').IsNull then
  begin
    FTotal := DMDados.CDSVendaItem.FieldByName('quantidade').AsInteger*
      DMDados.CDSVendaItem.FieldByName('produto_precovenda').AsFloat;

    DMDados.CDSVendaItem.FieldByName('total').AsFloat := FTotal;

    LblValor.Caption := 'R$'+FormatFloat('#,##0.00',FTotal);
  end else
  begin
    DMDados.CDSVendaItem.FieldByName('produto_precovenda').Clear;

    LblValor.Caption := 'R$ 0,00';
  end;

  FormVenda.GrdPrincipal.Refresh;
end;

procedure TFormVendaItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMDados.CDSVendaItem.Cancel;
end;

procedure TFormVendaItem.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormVendaItem.FormShow(Sender: TObject);
begin
  if DMDados.CDSVendaItem.State in [dsEdit] then
  begin
    EdtProdutoCodigoBarra.Text := DMDados.CDSVendaItem.FieldByName('produto_codigobarra').AsString;
    EdtProdutoNome.Text := DMDados.CDSVendaItem.FieldByName('produto_nome').AsString;
    EdtProdutoPrecoVenda.Text := DMDados.CDSVendaItem.FieldByName('produto_precovenda').AsString;
    SpnQuantidade.Value := DMDados.CDSVendaItem.FieldByName('quantidade').AsInteger;

    LblValor.Caption := 'R$'+FormatFloat('#,##0.00',
      DMDados.CDSVendaItem.FieldByName('total').AsFloat);
  end;
end;

function TFormVendaItem.GravarDB: Boolean;
begin
  if not DMDados.CDSVendaItem.FieldByName('produto_nome').IsNull then
  begin
    DMDados.CDSVendaItem.FieldByName('venda_id').AsInteger :=
    DMDados.CDSVenda.FieldByName('id').AsInteger;

    Result := DMDados.GravarDB(DMDados.CDSVendaItem);
  end else
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('Produto Não Encontrado!');

    Result := False;
  end;

  FormVenda.LblValor.Caption := 'R$'+FormatFloat('#,##0.00',
    StrToFloatDef(DMDados.CDSVendaItem.FieldByName('totalgeral').AsString,0));
end;

function TFormVendaItem.NovoDB: Boolean;
var
  FNovoDB:Boolean;
begin
  FNovoDB := DMDados.NovoDB(DMDados.CDSVendaItem);

  if FNovoDB then
  begin
    EdtProdutoCodigoBarra.Clear;
    EdtProdutoNome.Clear;
    EdtProdutoPrecoVenda.Clear;
    SpnQuantidade.Clear;
    LblValor.Caption := 'R$0,00';

    EdtProdutoCodigoBarra.SetFocus;
  end;

  Result := FNovoDB;
end;

procedure TFormVendaItem.SpnQuantidadeExit(Sender: TObject);
begin
  DMDados.CDSVendaItem.FieldByName('quantidade').AsInteger := SpnQuantidade.Value;

  FazerTotal;
end;

end.
