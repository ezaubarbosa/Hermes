unit ClassesUnit;

interface
  type TTipoMensagem = (MsgInformacao,MsgAlerta,MsgErro,MsgPergunta);

  type TMensagem = class
       private
         { private declarations }
         FTipoMensagem:TTipoMensagem;
       public
         { public declarations }
         constructor Create;
         destructor Destroy; override;

         class function New:TMensagem;

         function Tipo(FValue:TTipoMensagem):TMensagem;
         function Texto(FValue:String):Boolean;
       end;

implementation

{ TMensagem }

uses
  SysUtils, Forms, Windows;

constructor TMensagem.Create;
begin

end;

destructor TMensagem.Destroy;
begin
  inherited;
end;

class function TMensagem.New: TMensagem;
begin
  Result := Self.Create;
end;

function TMensagem.Texto(FValue: String):Boolean;
begin
  case FTipoMensagem of
    MsgInformacao:
    begin
      Application.MessageBox(PChar(FValue),'Informação',
        mb_Ok+mb_IconInformation);

      Result := True;
    end;
    MsgAlerta:
    begin
      Application.MessageBox(PChar(FValue),'Alerta',
        mb_Ok+mb_IconExclamation);

      Result := True;
    end;
    MsgErro:
    begin
      Application.MessageBox(PChar(FValue),'Erro',
        mb_Ok+mb_IconError);

      Result := True;
    end;
    MsgPergunta:
    begin
      if Application.MessageBox(PChar(FValue),'Pergunta',
        MB_YesNo+mb_IconQuestion)=Id_Yes  then Result := True
      else
        Result := False;
    end;
  end;

  FreeAndNil(Self);
end;

function TMensagem.Tipo(FValue: TTipoMensagem): TMensagem;
begin
  FTipoMensagem := FValue;

  Result := Self;
end;

end.
