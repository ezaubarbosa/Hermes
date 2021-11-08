unit FormVendaUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormVenda = class(TForm)
    DSVENDA: TDataSource;
    PnCorpo: TPanel;
    BtnInserir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    GrdPrincipal: TDBGrid;
    PnCabecalho: TPanel;
    LblClienteCPF: TLabel;
    LblTraco: TLabel;
    LblProduto: TLabel;
    PnTotal: TPanel;
    LblTotal: TLabel;
    LblValor: TLabel;
    EdtClienteCpf: TMaskEdit;
    EdtClienteNome: TEdit;
    BtnVender: TBitBtn;
    DSVendaItem: TDataSource;
    SpdFinalizarVenda: TSpeedButton;
    SpdCancelarVenda: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdtClienteCpfExit(Sender: TObject);
    procedure BtnVenderClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure SpdCancelarVendaClick(Sender: TObject);
    procedure SpdFinalizarVendaClick(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarCliente;
    procedure AbrirCad;
    procedure CancelarVenda;
  public
    { Public declarations }
  end;

var
  FormVenda: TFormVenda;

implementation

{$R *.dfm}

uses
  DMDadosUnit, FormVendaItemUnit, ClassesUnit;

procedure TFormVenda.AbrirCad;
begin
  try
    Application.CreateForm(TFormVendaItem, FormVendaItem);

    FormVendaItem.ShowModal;
  finally
    FreeAndNil(FormVendaItem);
  end;
end;

procedure TFormVenda.BtnEditarClick(Sender: TObject);
begin
  // Edição de Registro
  if DMDados.EditarDB(DMDados.CDSVendaItem) then
  begin
    AbrirCad;
  end else
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');
  end;
end;

procedure TFormVenda.BtnExcluirClick(Sender: TObject);
begin
  // Exclusão de Registro
  if TMensagem.New.Tipo(MsgPergunta).Texto('Deseja Excluir o Registro?') then
  begin
    if not DMDados.ExcluirDB(DMDados.CDSVendaItem) then
      TMensagem.New.Tipo(MsgAlerta).Texto('A Tabela Está Vazia!');

    LblValor.Caption := 'R$'+FormatFloat('#,##0.00',
      StrToFloatDef(DMDados.CDSVendaItem.FieldByName('totalgeral').AsString,0));
  end;
end;

procedure TFormVenda.BtnInserirClick(Sender: TObject);
begin
  // Novo Registro
  if DMDados.NovoDB(DMDados.CDSVendaItem) then AbrirCad;
end;

procedure TFormVenda.BtnVenderClick(Sender: TObject);
begin
  // Abertura de Venda
  if DMDados.GravarDB(DMDados.CDSVenda) then
  begin
    DMDados.PesquisarStr(DMDados.CDSVendaItem,
      DMDados.CDSVenda.FieldByName('id').AsString,'venda_id','=');
    GrdPrincipal.DataSource := DSVendaItem;

    LblProduto.Caption := 'LISTAGEM DE PRODUTOS - VENDA ABERTA ';

    PnCabecalho.Enabled := False;
    PnCorpo.Enabled := True;

    DMDados.AbrirDB(DMDados.CDSProduto);

    try
      if DMDados.NovoDB(DMDados.CDSVendaItem) then
      begin
        Application.CreateForm(TFormVendaItem, FormVendaItem);

        FormVendaItem.ShowModal;
      end;
    finally
      FreeAndNil(FormVendaItem);
    end;
  end;
end;

procedure TFormVenda.BuscarCliente;
begin
  DMDados.CDSVenda.FieldByName('cliente_cpf').AsString := EdtClienteCpf.Text;

  if not DMDados.CDSVenda.FieldByName('cliente_nome').IsNull then
  begin
    EdtClienteNome.Text := DMDados.CDSVenda.FieldByName('cliente_nome').AsString;
  end else
  begin
    DMDados.CDSVenda.FieldByName('cliente_cpf').Clear;
    EdtClienteCpf.Clear;

    EdtClienteNome.Text := 'CLIENTE NÃO IDENTIFICADO';
  end;
end;

procedure TFormVenda.CancelarVenda;
begin
  GrdPrincipal.DataSource := nil;

  DMDados.ExcluirDB(DMDados.CDSVenda);

  EdtClienteCpf.Clear;
  EdtClienteNome.Clear;
  PnCorpo.Enabled := False;
  PnCabecalho.Enabled := True;
  LblValor.Caption := 'R$0,00';

  LblProduto.Caption := 'LISTAGEM DE PRODUTOS';
end;

procedure TFormVenda.EdtClienteCpfExit(Sender: TObject);
begin
  BuscarCliente;
end;

procedure TFormVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Verificar Status da Venda
  if DMDados.CDSVenda.State in [dsInsert] then
  begin
    DMDados.CDSVenda.Cancel;
  end else
  begin
    CancelarVenda;
  end;

  // Fechamento de Tabela
  DMDados.FecharDB(DMDados.CDSVenda);
  DMDados.FecharDB(DMDados.CDSVendaItem);
end;

procedure TFormVenda.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormVenda.FormShow(Sender: TObject);
begin
  // Abertura de Tabela
  DMDados.AbrirDB(DMDados.CDSVenda);

  // Novo Registro
  DMDados.NovoDB(DMDados.CDSVenda);

  // Posicionamento de Foco
  EdtClienteCPF.SetFocus;
end;

procedure TFormVenda.SpdFinalizarVendaClick(Sender: TObject);
var
  FDia:Integer;
  FData:TDateTime;
begin
  if TMensagem.New.Tipo(MsgPergunta).Texto('Após o fechamento não será possível alterar a venda.'+
    ' Deseja continuar com a operação?') then
  begin
    GrdPrincipal.DataSource := nil;

    // Indicação da data de entrega (10 dias, excluído fim de semana)
    DMDados.EditarDB(DMDados.CDSVenda);

    DMDados.CDSVenda.FieldByName('datavenda').AsDateTime := Date();

    FData := Date();
    FDia := 0;
    while FDia<=10 do
    begin
      FData := FData+1;

      if not (DayOfWeek(FData) in [7,1]) then Inc(FDia,1);
    end;

    DMDados.CDSVenda.FieldByName('dataentrega').AsDateTime := FData;

    // Valores Default
    EdtClienteCpf.Clear;
    EdtClienteNome.Clear;
    PnCorpo.Enabled := False;
    PnCabecalho.Enabled := True;
    LblValor.Caption := 'R$0,00';

    LblProduto.Caption := 'LISTAGEM DE PRODUTOS';

    // Final
    DMDados.NovoDB(DMDados.CDSVenda);

    TMensagem.New.Tipo(MsgInformacao).Texto('A data de entrega será: '+DateToStr(FData));

    EdtClienteCpf.SetFocus;
  end;
end;

procedure TFormVenda.SpdCancelarVendaClick(Sender: TObject);
begin
  if TMensagem.New.Tipo(MsgPergunta).Texto('Todos lançamento serão perdidos.'+
    ' Deseja continuar com a operação?') then
  begin
    CancelarVenda;

    DMDados.NovoDB(DMDados.CDSVenda);

    EdtClienteCpf.SetFocus;
  end;
end;

end.
