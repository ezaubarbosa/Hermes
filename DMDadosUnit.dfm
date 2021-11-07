object DMDados: TDMDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 79
  Width = 334
  object CDSCliente: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Chave'
        Fields = 'cpf'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'Chave'
    PacketRecords = 2
    Params = <>
    StoreDefs = True
    BeforeDelete = CDSClienteBeforeDelete
    Left = 24
    Top = 16
    object CDSClientecpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Required = True
      EditMask = '999.999.999-99;1; '
      Size = 14
    end
    object CDSClientenome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 255
    end
    object CDSClienteendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Visible = False
      Size = 255
    end
    object CDSClientebairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Visible = False
      Size = 255
    end
    object CDSClientecidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Visible = False
      Size = 255
    end
    object CDSClienteuf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Visible = False
      Size = 2
    end
  end
  object CDSProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'chave'
        Fields = 'codigobarra'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'chave'
    Params = <>
    StoreDefs = True
    BeforeDelete = CDSProdutoBeforeDelete
    Left = 104
    Top = 16
    object CDSProdutocodigobarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'codigobarra'
      Required = True
      Visible = False
      Size = 255
    end
    object CDSProdutonome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 255
    end
    object CDSProdutounidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Visible = False
      Size = 255
    end
    object CDSProdutoprecocusto: TFloatField
      DisplayLabel = 'Pre'#231'o de Custo'
      FieldName = 'precocusto'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object CDSProdutoprecovenda: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'precovenda'
      Required = True
      Visible = False
      DisplayFormat = '#,##0.00'
    end
  end
  object CDSVenda: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Chave'
        Fields = 'nvenda'
        Options = [ixUnique]
      end
      item
        Name = 'Chave2'
        Fields = 'id'
        Options = [ixPrimary]
      end>
    IndexName = 'Chave'
    Params = <>
    StoreDefs = True
    AfterClose = CDSVendaAfterClose
    BeforePost = CDSVendaBeforePost
    BeforeDelete = CDSVendaBeforeDelete
    Left = 184
    Top = 16
    object CDSVendaid: TAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Visible = False
    end
    object CDSVendanvenda: TIntegerField
      DisplayLabel = 'N'#186' de Venda'
      FieldName = 'nvenda'
    end
    object CDSVendacliente_cpf: TStringField
      DisplayLabel = 'CPF do Cliente'
      FieldName = 'cliente_cpf'
      EditMask = '999.999.999-99;1; '
      Size = 14
    end
    object CDSVendacliente_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_nome'
      LookupDataSet = CDSCliente
      LookupKeyFields = 'cpf'
      LookupResultField = 'nome'
      KeyFields = 'cliente_cpf'
      Visible = False
      Size = 255
      Lookup = True
    end
    object CDSVendadatavenda: TDateField
      DisplayLabel = 'Data de Venda'
      FieldName = 'datavenda'
    end
    object CDSVendadataentrega: TDateField
      DisplayLabel = 'Data de Entrega'
      FieldName = 'dataentrega'
    end
  end
  object CDSVendaItem: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'chave'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'chave'
    Params = <>
    StoreDefs = True
    AfterClose = CDSVendaItemAfterClose
    Left = 264
    Top = 16
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Visible = False
    end
    object CDSVendaItemproduto_codigobarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'produto_codigobarra'
      Required = True
      Visible = False
      Size = 255
    end
    object CDSVendaItemproduto_nome: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'produto_nome'
      LookupDataSet = CDSProduto
      LookupKeyFields = 'codigobarra'
      LookupResultField = 'nome'
      KeyFields = 'produto_codigobarra'
      Required = True
      Size = 255
      Lookup = True
    end
    object CDSVendaItemproduto_precovenda: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldKind = fkLookup
      FieldName = 'produto_precovenda'
      LookupDataSet = CDSProduto
      LookupKeyFields = 'codigobarra'
      LookupResultField = 'precovenda'
      KeyFields = 'produto_codigobarra'
      Required = True
      DisplayFormat = '#,##0.00'
      Lookup = True
    end
    object CDSVendaItemquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Required = True
    end
    object CDSVendaItemtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
    end
    object CDSVendaItemvenda_id: TIntegerField
      DisplayLabel = 'Venda N'#186
      FieldName = 'venda_id'
      Visible = False
    end
    object CDSVendaItemtotalgeral: TAggregateField
      DisplayLabel = 'Total Geral'
      FieldName = 'totalgeral'
      Active = True
      DisplayName = ''
      Expression = 'SUM(total)'
    end
  end
end
