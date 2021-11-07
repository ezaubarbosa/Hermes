unit FormProdutoCadUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Buttons;

type
  TFormProdutoCad = class(TForm)
    LblNome: TLabel;
    LblCodigoBarra: TLabel;
    LblPrecoCusto: TLabel;
    LblUnidade: TLabel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    DSProduto: TDataSource;
    LblPrecoVenda: TLabel;
    EdtCodigoBarra: TDBEdit;
    EdtNome: TDBEdit;
    CmbUnidade: TDBComboBox;
    EdtPrecoCusto: TDBEdit;
    EdtPrecoVenda: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutoCad: TFormProdutoCad;

implementation

{$R *.dfm}

uses
  DMDadosUnit, ClassesUnit;

procedure TFormProdutoCad.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutoCad.BtnSalvarClick(Sender: TObject);
var
  FNRegistro:Boolean;
begin
  FNRegistro :=  DMDados.CDSProduto.State in [dsInsert];

  if DMDados.GravarDB(DMDados.CDSProduto) then
  begin
    TMensagem.New.Tipo(MsgInformacao).Texto('Registro Salvo!');

    if FNRegistro then
    begin
      DMDados.NovoDB(DMDados.CDSProduto);
      EdtCodigoBarra.SetFocus;
    end else Close;
  end;
end;

procedure TFormProdutoCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMDados.CDSProduto.Cancel;
end;

procedure TFormProdutoCad.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormProdutoCad.FormShow(Sender: TObject);
begin
  // Posicionamento de Foco
  EdtCodigoBarra.SetFocus;
end;

end.
