unit FormVendaListagemCadUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormVendaListagemCad = class(TForm)
    LblClienteCPF: TLabel;
    EdtClienteCpf: TMaskEdit;
    LblTraco: TLabel;
    EdtClienteNome: TEdit;
    LblProduto: TLabel;
    GrdPrincipal: TDBGrid;
    PnTotal: TPanel;
    LblTotal: TLabel;
    LblValor: TLabel;
    BtnInserir: TBitBtn;
    DSVendaItem: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendaListagemCad: TFormVendaListagemCad;

implementation

{$R *.dfm}

uses
  DMDadosUnit;

{ TFormVendaListagemCad }

procedure TFormVendaListagemCad.BtnInserirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormVendaListagemCad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Fechamento de Tabela
  DMDados.FecharDB(DMDados.CDSVendaItem);
end;

procedure TFormVendaListagemCad.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormVendaListagemCad.FormShow(Sender: TObject);
begin
  // Dados do Cliente
  if not DMDados.CDSVenda.FieldByName('cliente_nome').IsNull then
  begin
    EdtClienteCpf.Text := DMDados.CDSVenda.FieldByName('cliente_cpf').AsString;
    EdtClienteNome.Text := DMDados.CDSVenda.FieldByName('cliente_nome').AsString;
  end else
  begin
    EdtClienteCpf.Clear;

    EdtClienteNome.Text := 'CLIENTE NÃO IDENTIFICADO';
  end;


  // Dados da VendaItem
  DMDados.AbrirDB(DMDados.CDSProduto);

  DMDados.PesquisarStr(DMDados.CDSVendaItem,
    DMDados.CDSVenda.FieldByName('id').AsString,'venda_id','=');

  LblValor.Caption := 'R$'+FormatFloat('#,##0.00',
    StrToFloatDef(DMDados.CDSVendaItem.FieldByName('totalgeral').AsString,0));
end;

end.
