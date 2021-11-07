unit DMDadosUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, MidasLib;

type
  TDMDados = class(TDataModule)
    CDSCliente: TClientDataSet;
    CDSClientecpf: TStringField;
    CDSClientenome: TStringField;
    CDSClienteendereco: TStringField;
    CDSClientebairro: TStringField;
    CDSClientecidade: TStringField;
    CDSClienteuf: TStringField;
    CDSProduto: TClientDataSet;
    CDSProdutocodigobarra: TStringField;
    CDSProdutonome: TStringField;
    CDSProdutoprecocusto: TFloatField;
    CDSProdutoprecovenda: TFloatField;
    CDSProdutounidade: TStringField;
    CDSVenda: TClientDataSet;
    CDSVendaid: TAutoIncField;
    CDSVendacliente_cpf: TStringField;
    CDSVendadataentrega: TDateField;
    CDSVendaItem: TClientDataSet;
    AutoIncField1: TAutoIncField;
    CDSVendaItemproduto_codigobarra: TStringField;
    CDSVendaItemproduto_nome: TStringField;
    CDSVendaItemproduto_precovenda: TFloatField;
    CDSVendaItemquantidade: TIntegerField;
    CDSVendaItemtotal: TFloatField;
    CDSVendaItemvenda_id: TIntegerField;
    CDSVendacliente_nome: TStringField;
    CDSVendaItemtotalgeral: TAggregateField;
    CDSVendadatavenda: TDateField;
    CDSVendanvenda: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSVendaBeforeDelete(DataSet: TDataSet);
    procedure CDSClienteBeforeDelete(DataSet: TDataSet);
    procedure CDSProdutoBeforeDelete(DataSet: TDataSet);
    procedure CDSVendaBeforePost(DataSet: TDataSet);
    procedure CDSVendaAfterClose(DataSet: TDataSet);
    procedure CDSVendaItemAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    FFechar:Boolean;

    property Fechar:Boolean read FFechar write FFechar;
  public
    { Public declarations }
    function GravarDB(FValue:TClientDataSet):Boolean;
    function EditarDB(FValue:TClientDataSet):Boolean;
    function ExcluirDB(FValue:TClientDataSet):Boolean;
    function NovoDB(FValue:TClientDataSet):Boolean;
    function PesquisarStr(FClientDataSet:TClientDataSet;FConteudo:String;FCampo:String;
      FTipo:String = '%'):Boolean;

    procedure AbrirDB(FValue:TClientDataSet);
    procedure FecharDB(FValue:TClientDataSet; FFechar_:Boolean = True);
  end;

var
  DMDados: TDMDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  StrUtils, System.Variants, ClassesUnit;

{$R *.dfm}

procedure TDMDados.AbrirDB(FValue: TClientDataSet);
begin
  if not FValue.Active then FValue.Open;
end;

procedure TDMDados.CDSClienteBeforeDelete(DataSet: TDataSet);
begin
  // Verificação para Integridade de Dados
  if PesquisarStr(CDSVenda,CDSCliente.FieldByName('cpf').AsString,
    'cliente_cpf','=') then
  begin
    FecharDB(CDSVenda,False);
    raise Exception.Create('Registro Utilizado na Tabela de Vendas');
  end;

  FecharDB(CDSVenda,False);
end;

procedure TDMDados.CDSProdutoBeforeDelete(DataSet: TDataSet);
var
  FCDS:TClientDataSet;
begin
  if PesquisarStr(CDSVendaItem,CDSProduto.FieldByName('codigobarra').AsString,
    'produto_codigobarra','=') then
  begin
    FecharDB(CDSVendaItem,False);
    raise Exception.Create('Registro Utilizado na Tabela de Vendas');
  end;

  FecharDB(CDSVendaItem,False);
end;

procedure TDMDados.CDSVendaAfterClose(DataSet: TDataSet);
begin
  if Fechar then FecharDB(CDSCliente);
end;

procedure TDMDados.CDSVendaBeforeDelete(DataSet: TDataSet);
begin
  // Exclusão de Todos Itens da Venda
  PesquisarStr(CDSVendaItem,CDSVenda.FieldByName('id').AsString,'venda_id','=');

  while not CDSVendaItem.IsEmpty do
  begin
    CDSVendaItem.Delete;
  end;
end;

procedure TDMDados.CDSVendaBeforePost(DataSet: TDataSet);
var
  FCDS:TClientDataSet;
  FNVenda:Integer;
begin
  if CDSVenda.FieldByName('nvenda').IsNull then
  begin
    FCDS := TClientDataSet.Create(nil);
    FCDS.CloneCursor(CDSVenda,True);

    if FCDS.IsEmpty then
    begin
      FNVenda := 1;
    end else
    begin
      FCDS.Last;

      FNVenda := FCDS.FieldByName('nvenda').AsInteger+1;
    end;

    CDSVenda.FieldByName('nvenda').AsInteger := FNVenda;

    FreeAndNil(FCDS);
  end;
end;

procedure TDMDados.CDSVendaItemAfterClose(DataSet: TDataSet);
begin
  if Fechar then FecharDB(CDSProduto);
end;

procedure TDMDados.DataModuleCreate(Sender: TObject);
begin
  // Criação e Limpeza de Tabelas em Memória
  CDSCliente.CreateDataSet;
  CDSCliente.EmptyDataSet;

  CDSProduto.CreateDataSet;
  CDSProduto.EmptyDataSet;

  CDSVenda.CreateDataSet;
  CDSVenda.EmptyDataSet;

  CDSVendaItem.CreateDataSet;
  CDSVendaItem.EmptyDataSet;

  // Active Default
  CDSCliente.Close;
  CDSProduto.Close;
  CDSVenda.Close;
  CDSVendaItem.Close;
end;

function TDMDados.EditarDB(FValue: TClientDataSet): Boolean;
begin
  if not FValue.IsEmpty then
  begin
    FValue.Edit;

    Result := True;
  end else
  begin
    Result := False;
  end;
end;

function TDMDados.ExcluirDB(FValue: TClientDataSet): Boolean;
begin
  if FValue.IsEmpty then
  begin
    Result := False;
  end else
  begin
    FValue.Delete;

    Result := True;
  end;
end;

procedure TDMDados.FecharDB(FValue: TClientDataSet; FFechar_:Boolean = True);
begin
  Fechar := FFechar_;

  if FValue.Active then FValue.Close;

  FValue.Filter := EmptyStr;
  FValue.Filtered := False;
end;

function TDMDados.GravarDB(FValue: TClientDataSet):Boolean;
var
  FContador:Integer;
  FMensagem:String;
  FCampo:TField;
  FLista:TStringList;
begin
  FLista := TStringList.Create;
  FLista.Text := FValue.FieldDefList.Text;

  // Identificação dos Campos Obrigatórios
  for FContador := 0 to Pred(FLista.Count) do
  begin
    FCampo := FValue.FieldByName(FLista.Strings[FContador]);

    if (FCampo.Required) and (Trim(FCampo.AsString).Length=0) then
    begin
      FMensagem := FMensagem+Chr(13)+'- '+FValue.FieldByName(FValue.FieldDefList.
        Strings[FContador]).DisplayLabel;
    end;
  end;

  // Verificação p/ Validação OU Gravar
  if FMensagem<>EmptyStr then
  begin
    TMensagem.New.Tipo(MsgAlerta).Texto('Os seguintes campos são obrigatórios:'+Chr(13)+
      FMensagem);

    Result := False;
  end else
  begin
    try
      FValue.Post;

      Result := True;
    except on E:Exception do
      begin
        case AnsiIndexStr(E.Message,['Key violation.']) of
          0:
          begin
            TMensagem.New.Tipo(MsgAlerta).
              Texto('O Campo '+FValue.FieldByName(FValue.IndexDefs.Items[0].Fields).
                DisplayLabel+' Está Repetido!');
          end;
          else
          begin
            TMensagem.New.Tipo(MsgErro).
              Texto('Ocorreu o Seguinte Erro: '+E.Message);
          end;
        end;

        Result := False;
      end;
    end;
  end;

  FreeAndNil(FLista);
end;

function TDMDados.NovoDB(FValue: TClientDataSet): Boolean;
begin
  try
    FValue.Append;

    Result := True;
  except on E:Exception do
    begin
      TMensagem.New.Tipo(MsgAlerta).Texto('Ocorreu o Seguinte Erro: '+E.Message);

      Result := False;
    end;
  end;
end;

function TDMDados.PesquisarStr(FClientDataSet:TClientDataSet;FConteudo:String;FCampo:String;
FTipo:String = '%'):Boolean;
begin
  if Trim(FConteudo).Length<>0 then
  begin
    if FTipo='%' then FClientDataSet.Filter := FCampo+' LIKE '+QuotedStr('%'+FConteudo+'%');
    if FTipo='=' then FClientDataSet.Filter := FCampo+' = '+QuotedStr(FConteudo);

    FClientDataSet.Filtered := True;

    if not FClientDataSet.Active then FClientDataSet.Open;

    Result := not FClientDataSet.IsEmpty;
  end else
  begin
    FClientDataSet.Filtered := False;

    Result := True;
  end;
end;

end.
