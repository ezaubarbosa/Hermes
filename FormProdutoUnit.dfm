object FormProduto: TFormProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 392
  ClientWidth = 611
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
  object LblTitulo: TLabel
    Left = 16
    Top = 7
    Width = 38
    Height = 18
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object GrdPrincipal: TDBGrid
    Left = 16
    Top = 66
    Width = 569
    Height = 249
    DataSource = DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
  end
  object EdtPesquisa: TEdit
    Left = 16
    Top = 29
    Width = 449
    Height = 30
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BtnPesquisar: TBitBtn
    Left = 480
    Top = 29
    Width = 105
    Height = 30
    Caption = '&Localizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFF6F6F6
      999999F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDFDFDF8B8B8B676767606165DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8D8D8D676767CACACACDCDCD636568DFDFDFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF585858898989B6B6B6DEDEDED2D2
      D267696DDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF606367
      909090B6B6B6DEDEDED2D2D26B6E72DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFDFDFDF66686C909090B6B6B6DEDEDED3D3D3707377DFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6A6D71909090B6B6B6DEDEDED3
      D3D375787CE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6D71
      76909090B5B5B5DEDEDEC2C4C57E8590FFFFFFFFFFFFFFFFFFFFFFFFEAEAEAD4
      D4D4D2D2D2EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDFDFDF72767B8E8E8EAAABAC94979AA8A9A9D1D1D1ECECEC8181
      814545453A3A3A3636363333333030303939397E7E7EF9F9F9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF797A7A7F80819A9B9B767676
      5757574B4B4B57514A8A7054A87E52AC7C4CA675469B6E417D5E404039323535
      35D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7DCE3EC
      EDEE979797595959535353807260BF996CC29666BF9161BB8D5AB88854B2814E
      A977459D6C3E69523C303030D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9E9E9E5D5D5D897C6BCBA87FCBA477C59C6CC39766C0
      9361BD8E5CBC8C58B88752AE7B499F6C3D69523C3D3D3DFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F736F69CCAF89D9BD9BCDA9
      7DC7A071C59B6AC29665C09361BD8F5CBB8B58B88753AD7A489D6C3E443D3692
      9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF737373A89881
      DCC29FE2CEB3D0AF84CAA375C79F70C59B6AC19665BF9260BD8E5CBB8B58B684
      51A876447F6042494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9
      E9E9747474CDB490E4CFB4E6D4BCD4B58DCCA87ACAA374C79F6FC49A6AC29664
      BF915FBD8E5CBA8A56B2814F9B6D403A3A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFD0D0D0797979DAC099E8D6BEE8D8C1D9BD99D0AE81CCA779C9
      A374C79E6EC49969C19564C0915FBD8E5BB98955A573443E3E3EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D67E7E7EDCC29CE9D9C0EBDCC6DFC8
      A9D3B489CEAB7FCBA778C9A273C69D6DC49969C19564BF915FBC8C59B2804F43
      4343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF838383D4BD9B
      E7D6BCECDECAE7D5BDDBBF99D1B185CEAB7DCCA678C9A173C69D6DC39968C194
      62BD905DAE85574C4C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF919191B9AA95E4CFAFECDDC8ECDDC8E3CEB1D7BB93D2B083CEAA7DCBA577
      C8A272C69D6DC39868C09463907659686868FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B995928DDAC5A2E7D4B8ECDEC8EADBC6E3CDAFD9
      BC96D2B186CEAB7FCAA578C8A171C69D6CBD956667615AB7B7B7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC959595AEA393DFC9A5E6D4
      B8EBDCC6EADBC6E5D1B6DCC3A0D5B78FCFAC81CAA677C7A0718B7A67737373FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6
      919191AFA494DBC4A2E3CEAEE7D5BAE7D6BDE5D2B7DFC9A9D7B993CAA87F9384
      726F6F6FF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFEAEAEA9A9A9A999590BBAC96D3BD9ADBC29BD9BE97CCB28F
      AE9C83837E78868686F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC9C9C9C8D8D8D88
      8888868686858585959595CACACAFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    TabOrder = 2
    OnClick = BtnPesquisarClick
  end
  object BtnInserir: TBitBtn
    Left = 56
    Top = 338
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
    TabOrder = 3
    OnClick = BtnInserirClick
  end
  object BtnEditar: TBitBtn
    Left = 184
    Top = 338
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
    TabOrder = 4
    OnClick = BtnEditarClick
  end
  object BtnExcluir: TBitBtn
    Left = 312
    Top = 338
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
    TabOrder = 5
    OnClick = BtnExcluirClick
  end
  object BtnFechar: TBitBtn
    Left = 440
    Top = 338
    Width = 109
    Height = 34
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
      9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C317C0C317C000A4D
      3B68AC33599D3152962B488C21397D15286C0A185C020C4F010D510312570416
      5D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A317D0C
      0D0F0C0D0F0011564477BB4F82C75A8DD26295DA6699DE6598DD679ADF6497DC
      6295DA5787CC426EB32E55991D3F84001257FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0C35820E10120E0F120018613467AB3164A8396CB03F72B6487BBE51
      84C85A8DD25A8DD25E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
      A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
      206BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13141713131700226D
      3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA82B5EA22B5EA22B5E
      A22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFF002FE6FFFFFFFFFFFF13429015
      161A14161A0024703467AB2A5DA12B5EA22B5EA22A5DA12E5CA25A8DD22E5CA5
      2B5EA22B5EA22B5EA22655993B6DB2002571FFFFFFFFFFFFFFFFFF002FE60018
      DAFFFFFF16469417181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28
      569B5588CD2C59A22B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFF
      FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
      A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
      29760033EE0033EE0033EE002FE61669FF095EFE0400B41B1E231B1E23002A78
      3669AD295CA0295B9F245296194085163C844B7EC328549D2B5EA22A5CA02350
      9413387B4072B7012B790033EE5DA2FF3F87FF2876FF1569FF095EFE0055FE08
      009D1E2026002C7A2B599F1D478A1B4488153B7F0E2C700E2E75487BC026529A
      1D498D1A438713367A0B286C4274B9012D7B0033EE599FFF4089FF2874FF1568
      FF095EFE0055FE0052FD070081002E7D142669142669477ABF477ABF477ABF47
      7ABF477ABF477ABF477ABF477ABF477ABF477ABF4376BB012F7E0033EE5DA2FF
      3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
      AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
      30800033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08009D25282F003182
      6EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A285B9F285B9F285B
      9F2B5EA2477ABF0132830033EE0033EE0033EE002CE61569FF095DFE0400B428
      2A32272A32003384386BAF24579B275A9E275A9E275A9E2F60A45487CC2B57A0
      275A9E275A9E275A9E245599497CC1013485FFFFFFFFFFFFFFFFFF002CE61668
      FF0109CB2560B12A2D35292C35003586386BAF24579B26599D26599D25589C2C
      5BA05E91D62D5BA426599D25589C24579B204F924A7DC2013687FFFFFFFFFFFF
      FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
      9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
      378AFFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D313A2D313A00388B
      386BAF21549824579B24579B20509325509773A6EB3563AF23569A23569A2153
      97163D804D80C501398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B130
      323C2F323D00398C386BAF205397235699205194163F811C448B7CAFF43868B4
      2255992152961842850C2B6C4E81C7013A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF2560B131353E30353E003B8E3668AC194A8E18458811367708225E10
      307882B5FA3C6DBA143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
      A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
      3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B1343841343841003D91
      6497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB78ACF26398E0497F
      CA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B125
      60B12560B1003E935388D0437BC53C75C1316BB9215DAD124EA1054297034195
      0845990D4A9D134FA21854A71E5AAB235EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAED
      F2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    TabOrder = 6
    OnClick = BtnFecharClick
  end
  object DSProduto: TDataSource
    DataSet = DMDados.CDSProduto
    Left = 232
    Top = 112
  end
end