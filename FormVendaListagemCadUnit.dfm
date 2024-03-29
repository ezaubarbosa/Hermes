object FormVendaListagemCad: TFormVendaListagemCad
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Visualiza'#231#227'o'
  ClientHeight = 439
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblClienteCPF: TLabel
    Left = 16
    Top = 4
    Width = 85
    Height = 18
    Caption = 'CPF do Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object LblTraco: TLabel
    Left = 188
    Top = 32
    Width = 5
    Height = 18
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object LblProduto: TLabel
    Left = 16
    Top = 79
    Width = 216
    Height = 24
    Caption = 'LISTAGEM DE PRODUTOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtClienteCpf: TMaskEdit
    Left = 16
    Top = 27
    Width = 165
    Height = 29
    Enabled = False
    EditMask = '999.999.999-99;1; '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 0
    Text = '   .   .   -  '
  end
  object EdtClienteNome: TEdit
    Left = 200
    Top = 27
    Width = 423
    Height = 30
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object GrdPrincipal: TDBGrid
    Left = 16
    Top = 110
    Width = 607
    Height = 216
    DataSource = DSVendaItem
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'produto_nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto_precovenda'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Width = 80
        Visible = True
      end>
  end
  object PnTotal: TPanel
    Left = 16
    Top = 332
    Width = 607
    Height = 35
    BevelOuter = bvNone
    Caption = 'PnTotal'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 3
    object LblTotal: TLabel
      Left = 8
      Top = 4
      Width = 63
      Height = 27
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LblValor: TLabel
      Left = 522
      Top = 4
      Width = 75
      Height = 27
      Alignment = taRightJustify
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object BtnInserir: TBitBtn
    Left = 518
    Top = 389
    Width = 105
    Height = 34
    Caption = '&Aceitar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DED3A2BCA6789678688A69688A
      69789678A2BDA7D0DED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C5B3305F322B592C2B5629
      3B7043447D50447D503B70432B56292B592C305F32AFC5B3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE8E0688F6C2C5D2E3F
      784A6BB68B86DBB187DEB384D8AE84D8AE87DEB386DBB16BB68B3F784A2C5D2E
      688E6CDDE8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E0D42F64
      372C613370B78E8EDFB77ED1A469BD855AB47459B27159B2715AB47469BD857E
      D1A48EDFB770B78E2C61332F6337D0E0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      DDE9E12F683A38734488D3AC8AD7AE61B87C50AE6654B16C56B26E56B26E56B2
      6E56B26E54B16C50AE6661B87C8AD7AE88D2AC3874442F683ADDE9E1FFFFFFFF
      FFFFFFFFFFFFFFFF6896722B67388DD4AF8AD6AD55B16C56B06E59B27259B272
      59B27259B27259B27259B27259B27259B27256B06E55B16C8AD6AD8DD4AF2B67
      37699673FFFFFFFFFFFFFFFFFFB1CBB82A6A397BBD9796DCB65AB1705BB4715D
      B5745DB5745DB57455B16D4FAE675DB5735DB5745DB5745DB5745DB5745BB471
      5AB17096DCB67BBD972A6938B1CCB9FFFFFFFFFFFF2F7544428659A6E5C76CBD
      845BB3715EB6755EB6755EB5754EAE6780C693CAE9D241A95D5DB5745EB6755E
      B6755EB6755EB6755BB3716ABD84A6E5C74286592E7443FFFFFFD2E4D828713E
      84C4A097D8B358B16E61B67961B67961B67851AF698BCB9BFFFFFFFFFFFFD1EB
      D94DAD665FB57761B67961B67961B67961B67958B16E97D8B384C4A028713ED3
      E4D9A6C9B124743EB0E6CB7DC69662B67766B97C65B87B4EAE68A0D6AFFFFFFF
      FFFFFFFFFFFFFFFFFFDFF1E349AC6463B77966B97C66B97C66B97C62B6777DC6
      96B0E6CB24743EA7CAB376AD8A408D5CB5E7D16DBC8367B97B68B97D5FB576B5
      DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F5ED58B37065B87A69BA7D
      69BA7D67B97B6DBC83B5E7D1408D5C76AC8A67A37E4D996EB3E5CD6DBB826ABA
      7F68B97D7CC490FFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFF2
      F9F456B06E67B87D6CBB816ABA7F6DBB82B3E5CD4D996E67A37E66A77F509C6F
      B9E6D071BD866DBB826FBB8465B77C76C289FFFFFFFFFFFF99D2A851AF6AFFFF
      FFFFFFFFFFFFFFFFFFFFFAFDFA68B87D69B87F6DBB8271BD86B9E6D0509C6F66
      A77F75B18E409564C3EBDA76BF8B70BD8572BE8772BE8768B87E85C9969FD3AD
      61B6796BBA8171C087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76C18A6DBB8276BF
      8BC3EBDA40956474B18EA6D0B820854AC4EADB8ECEA270BD8474C08974C08974
      C08970BD856DBC8274C08974C0896CBB8176C289FFFFFFFFFFFFFFFFFFFFFFFF
      8BCB9C6CBB808ECEA2C4EADB1F8449A8D2BAD3E9DC218B4F99CFB4B2E0C76EBB
      7F79C18A79C18A79C18A79C18A79C18A79C18A79C18A79C18A6EBB818FCD9FFF
      FFFFDDEFE16CBD8072BD856EBB7FB2E0C799CFB4208A4ED4E9DEFFFFFF299459
      45A26FCFEDE588CB9C77BF897CC28E7CC28E7CC28E7CC28E7CC28E7CC28E7CC2
      8E7CC28E72BD8586CA986AB97E7AC08C77BF8988CB9CCFEDE545A26F279358FF
      FFFFFFFFFFB1D9C32091549ED2B8C6E8DC7AC28B7BC18D7DC2907DC2907DC290
      7DC2907DC2907DC2907DC2907DC2907AC18D7DC2907BC18D7AC28BC6E8DA9ED2
      B81F9154B2DAC4FFFFFFFFFFFFFFFFFF65B78C209558C7E7D9C4E6D87DC38C7C
      C28D80C49180C49180C49180C49180C49180C49180C49180C4917CC28D7DC38C
      C4E6D8C7E7D920955864B68CFFFFFFFFFFFFFFFFFFFFFFFFDFF0E7259D6036A4
      6CCCE8DFCFEBE193CEA379C38880C69083C79283C79383C79383C79280C69079
      C38893CEA3CFEBE1CCE8DF36A46C249D5FDFF1E8FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFD3ECDF24A0631F9D5EA9D9C4E4F3F3C9E6DBA4D5B48CCB9B89C99A89C9
      9A8CCB9BA4D5B4C9E6DBE4F3F3A9D9C41F9D5E24A062D3ECDFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E862BE931B9F5F48B17FACDCC8E7F2F4
      EBF5F6E3F0F0E3F0F0EBF5F6E7F2F4ACDCC848B17F1B9F5F63BE93DFF1E9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2DFCA26
      A86D1BA26318A26141B27F57BA8D57BA8D41B27F18A1611BA26325A76CB2DFCA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD5EEE3AADDC672C9A162C39762C39772C9A1ABDDC6D6
      EFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    TabOrder = 4
    OnClick = BtnInserirClick
  end
  object DSVendaItem: TDataSource
    DataSet = DMDados.CDSVendaItem
    Left = 104
    Top = 64
  end
end
