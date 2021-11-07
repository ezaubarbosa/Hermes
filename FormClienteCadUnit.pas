unit FormClienteCadUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Data.DB;

type
  TFormClienteCad = class(TForm)
    LblNome: TLabel;
    LblCpf: TLabel;
    LblEndereco: TLabel;
    LblBairro: TLabel;
    LblCidade: TLabel;
    LblUf: TLabel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    DSCliente: TDataSource;
    EdtCpf: TDBEdit;
    EdtNome: TDBEdit;
    EdtEndereco: TDBEdit;
    EdtBairro: TDBEdit;
    EdtCidade: TDBEdit;
    CmbUf: TDBComboBox;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClienteCad: TFormClienteCad;

implementation

{$R *.dfm}

uses
  DMDadosUnit, ClassesUnit;

procedure TFormClienteCad.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormClienteCad.BtnSalvarClick(Sender: TObject);
var
  FNRegistro:Boolean;
begin
  FNRegistro :=  DMDados.CDSCliente.State in [dsInsert];

  if DMDados.GravarDB(DMDados.CDSCliente) then
  begin
    TMensagem.New.Tipo(MsgInformacao).Texto('Registro Salvo!');

    if FNRegistro then
    begin
      DMDados.NovoDB(DMDados.CDSCliente);
      EdtCpf.SetFocus;
    end else Close;
  end;
end;

procedure TFormClienteCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMDados.CDSCliente.Cancel;
end;

procedure TFormClienteCad.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormClienteCad.FormShow(Sender: TObject);
begin
  // Posicionamento de Foco
  EdtCpf.SetFocus;
end;

end.
