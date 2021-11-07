object FormVenda: TFormVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 452
  ClientWidth = 637
  Color = clScrollBar
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
  object PnCorpo: TPanel
    Left = 0
    Top = 72
    Width = 637
    Height = 380
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PnCorpo'
    Color = cl3DLight
    Enabled = False
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object LblProduto: TLabel
      Left = 16
      Top = 15
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
    object SpdFinalizarVenda: TSpeedButton
      Left = 420
      Top = 13
      Width = 99
      Height = 28
      Caption = 'F&inalizar Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpdFinalizarVendaClick
    end
    object SpdCancelarVenda: TSpeedButton
      Left = 524
      Top = 13
      Width = 99
      Height = 28
      Caption = 'Ca&ncelar Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpdCancelarVendaClick
    end
    object BtnInserir: TBitBtn
      Left = 138
      Top = 325
      Width = 105
      Height = 34
      Caption = '&Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A4
        7158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A37085BD9D
        85BD9D85BD9D85BD9D85BD9D85BD9D56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF56A26C84D5B15ED09D5ED09D5ED09D5ED09D70C79C53A06AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF53A0698CD8B662D19F62D19F62D19F62D19F73C89E50
        9E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA67D2A267D2A267D2
        A267D2A275C9A04D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6097DDBE
        6CD3A56CD3A56CD3A56CD3A57ACBA24A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49975C99DEC072D5A872D5A872D5A872D5A87FCBA546955AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4593579ADFC078D6AC78D6AC78D6AC78D6AC84CDA942
        9155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A370
        56A26C53A069509D654D9A6049975C4593573E8E5098DEBF7ED8B07ED8B07ED8
        B07ED8B08ACFAB3E8E5042915546955A4A985E4D9B63509E6753A06A56A26E58
        A47158A471A7E6CA74CAA072C89D74C99F78CBA17ECBA482CCA888CFAA8ED0AD
        85DAB485DAB485DAB485DAB477C9A072C89D74C99F78CBA17ECBA482CCA888CF
        AA8ED0AD85BD9D58A47158A471A7E6CA8CDCB88CDCB88CDCB88CDCB88CDCB88C
        DCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB8
        8CDCB88CDCB88CDCB88CDCB885BD9D58A47158A471A7E6CA93DDBC93DDBC93DD
        BC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93
        DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC85BD9D58A47158A471A7E6CA
        99DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DF
        C099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC085BD9D58
        A47158A471A7E6CAA0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4
        A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1
        C4A0E1C485BD9D58A47158A471A7E6CA94DDBD98DEBF9ADFC099DEC097DDBE92
        DBBA8CD8B684D5B1A7E3C8A7E3C8A7E3C8A7E3C87AD0A69ADFC09ADFC099DEC0
        97DDBE92DBBA8CD8B684D5B185BD9D58A47158A47156A26E53A06A509E674D9B
        634A985E46955A4291553E8E508CD8B6ADE5CCADE5CCADE5CCADE5CC80D1A93E
        8E5045935749975C4D9A60509D6553A06956A26C58A37058A471FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45935792DBBAB3E6D0B3E6D0B3E6
        D0B3E6D087D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C97DDBE
        B9E8D3B9E8D3B9E8D3B9E8D38CD2AE46955AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4D9A6099DEC0BEE9D6BEE9D6BEE9D6BEE9D691D3B14A985EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF509D659ADFC0C3EAD9C3EAD9C3EAD9C3EAD996D3B24D
        9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A06998DEBFC7EBDBC7EBDBC7EB
        DBC7EBDB9BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C94DDBD
        CAECDDCAECDDCAECDDCAECDD9ED5B753A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF58A370A7E6CAA7E6CAA7E6CAA7E6CAA7E6CAA7E6CA56A26EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A47158A47158A47158
        A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BtnInserirClick
    end
    object BtnEditar: TBitBtn
      Left = 266
      Top = 325
      Width = 105
      Height = 34
      Caption = '&Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A07458A1795EA39A87
        BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AAA8B27C6C9D866AB3
        977BBF8D6EB98164B1836DB4E8E4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDEDDDCC3
        C3C3939393929094BAB1CAAE99D89277CC8067BE9B8CCBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFD
        FFC8D6DEBAB9B98C8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF919194BABABEA8A6
        B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFAFDFF8CCDF42099EE289AF52C9CFC3BA3FE8EC9FDE4EAF4
        AEAEB16C6C6E6F6F715D5A8C675FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8BCCF41F99F0289AF5309DFA39A0FE41
        A4FF50AFFF7DBEEEA6A9AE5F5F6039393A3D3D3C7472D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319C
        FA399FFE42A4FF4FAEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8ECEF41E99EE
        279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF68DD5F45D7F877979
        78FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
        CEF41E9AEF279BF5309DFA399FFD42A5FF4EADFF58B7FB64C0F770CAF684D6F8
        8CDBFFDFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF97D1F61E9AED269BF42F9DFA389FFD41A4FF4DACFF57B6FC63C0F76F
        C9F583D6F88FDBFEB7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4
        FC61BEF96BC8F67CD3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C9CF7359EFC3DA1FF
        48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E6FA46B2F130A3F32498F631
        9CFB3CA1FF46A8FF52B0FD5EBBF969C5F679D0F68EDAFCA8E0FFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F1FFB0E5FFAFE4
        FDA1DDFD79C8FD42A5FF44A5FF51B1FD5CBBF968C4F679CFF58DDAFDA6E0FFF9
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B1E6FFC6F0FFDCF9FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDA
        FCA4DFFFF4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8F2FF98DAFE6EC8F7
        75CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFA6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCE
        F5FFBAEDFF90DAFB8CDBFD9DDCFFEDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB889BA2A2C4CFB9EC
        FABCF2FFBBEFFFC1F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8
        948B87787A7A95B9C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99E2FF97E1FFDBF3FF
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCF393939454133869297D0E9F3E4F8FFF4
        FCFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBFBFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = BtnEditarClick
    end
    object BtnExcluir: TBitBtn
      Left = 394
      Top = 325
      Width = 105
      Height = 34
      Caption = 'E&xcluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
        616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
        4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
        7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
        5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
        FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
        55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
        40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
        F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
        65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
        3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
        E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
        6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
        6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      OnClick = BtnExcluirClick
    end
    object GrdPrincipal: TDBGrid
      Left = 16
      Top = 46
      Width = 607
      Height = 216
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Calibri'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'produto_nome'
          Title.Caption = 'Produto'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'produto_precovenda'
          Title.Caption = 'Pre'#231'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Caption = 'Quantidade'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Caption = 'Total'
          Width = 80
          Visible = True
        end>
    end
    object PnTotal: TPanel
      Left = 16
      Top = 268
      Width = 607
      Height = 35
      BevelOuter = bvNone
      Caption = 'PnTotal'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 4
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
  end
  object PnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PnCabecalho'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
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
    object EdtClienteCpf: TMaskEdit
      Left = 16
      Top = 27
      Width = 165
      Height = 29
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
      OnExit = EdtClienteCPFExit
    end
    object EdtClienteNome: TEdit
      Left = 200
      Top = 27
      Width = 309
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
    object BtnVender: TBitBtn
      Left = 518
      Top = 27
      Width = 105
      Height = 29
      Caption = ' &Vender'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF2F9FDD8EBF7C6E2F3C4E1F3CCE5F5DFEFF9FCFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBDCCD63CABE503AEEB00C0F700CBFE00CDFF00C7FC
        00B9F30AA8E869B9E8E8EBECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99C0D808B5F300CFFF00C5FB03B5F005
        AFED06A9E805AFED02BCF500CCFE00CCFE21AAEBDDE0E2FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E8ED09B1F000BBF523A8
        E264C4E768DAF35EDFF963E5FB5DDEF86BD5F050B8E20DA7E500CAFD48AFE5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5BAC7
        08AAEA6ECCEA8DF6FF3CDDFF27D7FF1ED5FF16D2FF0ED0FF05CEFF2BDAFF90F2
        FB38ACE0029CE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFA4BAC75CBFE8A3FBFF5CE4FF58E3FF50E2FF46E0FF3FDCFF36DBFF
        2CD9FF22D5FF26D7FFABFEFF1A90D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFC1CD92E6F8A0F8FF85F0FF7EEDFF75ECFF6B
        EAFF64E6FF5AE5FF53E3FF49DFFF3DDCFFA1FCFF46B1E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEC0CC64BAEB2DAFEA0BACEE0AAEEF19A9E752B7E3BCFFFFACFB
        FFA3F8FF9AF6FF92F4FF88F0FF81EFFF77EDFF6EE9FF73ECFFAEFBFD61B5E5FF
        FFFFFFFFFFFFFFFFDDE1E332ABE905BDF800CFFF00CEFF00CDFF00CDFF00CEFF
        00B3F05BBBE5BEFFFEBFFFFFBBFFFFB6FEFFAFFBFFA7FAFFA0F8FFA5FBFFA0F2
        FB51B3E8ECEEEFFFFFFFFFFFFFFAFBFC1EA6E700CFFF02B5F011A7E53EB6E64C
        BBE64CBBE647B9E523AEE504A1E412A4E359BCE587DAF097E7F8A6F2FC94E6F8
        75D1EF58B9E996BED7FDFDFDFFFFFFFFFFFFFFFFFFCEE6F600BBF526A5E07CD9
        F070EDFF40E0FF21D7FF1BD5FF21D9FF46E4FF7AE8F94BB8E401B1EE29A7E3BF
        CED7A7BCC9C3D1DAE8EEF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1F4
        2EA7DFA8FBFE55E3FF42DEFF3CDDFF28C1F118AAE50FA8E60AA7E509A5E53CB8
        E72C9AD62DA2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC2E0F397E9F68FF4FF73ECFF59D5F5169FE004B7F200CDFF00CDFF
        00CDFF00CDFF00CDFF00CCFF07B1ED53B4EAEDEFF0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD2E9F793E6F4AAFCFF80E0F507A1E300D0FF01
        BAF409A6E627AFE636B5E735B5E71EACE505A9E800C2F900CDFF31ACE9F5F6F7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF4AADE4B9FCFD42B4
        E400BDF728A6E079D7EF74ECFE48E2FF31DCFF2CDBFF49E3FF6BE7FA6BCBE915
        A6E202C3FB99B1C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ECEEEF67BAEB159CDC51B9E4A1FBFF48E0FF38DBFF31D9FF29D7FF20D4FF16D2
        FF0DCFFF24D7FF9BF6FC2AAAE585A1B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF339EDEB8FFFF75ECFF68E8FF61E5FF57E4FF
        50E2FF47E0FF3DDCFF36DBFF2AD8FF54E4FF92EBF983A0B3FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CB6E8BFFFFF97F4FF8F
        F3FF86EFFF7CEEFF75ECFF6BE8FF64E7FF5BE5FF50E2FF68E8FFA0F5FD8FAABB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDCD
        D778D3F1BDFFFFB3FCFFABFBFFA3F8FF9AF6FF92F4FF89F0FF7FEEFF7BEEFFAB
        FFFF4EB6E9EDEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFEFEA8C5D763BAE3A3ECF7B5FAFFB7FEFFB6FFFFB0FEFFA9FB
        FFA7F6FC90E2F660B1DAD0DAE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFCF4F4F4E0E3E58DB4CB72B5D870B7D4
        71B9D46FB9D36EB6D574B7DAA0B4C1EFF1F2F4F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9
        FAFAEDEEEFE8E9EAE5E7E7E4E5E6E8E9EAEFF0F0FBFCFCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      OnClick = BtnVenderClick
    end
  end
  object DSVENDA: TDataSource
    DataSet = DMDados.CDSVenda
    Left = 232
    Top = 112
  end
  object DSVendaItem: TDataSource
    DataSet = DMDados.CDSVendaItem
    Left = 104
    Top = 64
  end
end