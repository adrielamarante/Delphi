unit UnitRepositorio;

interface

type
  TRepositorio = class
    private
    public
      function Somar(AValor1, AValor2: Integer): Integer;
      function Subtrair (Avalor1, AValor2: Integer): Integer;
  end;

implementation

{ TRepositorio }

function TRepositorio.Somar(AValor1, AValor2: Integer): Integer;
begin
  Result := AValor1 + AValor2;
end;

function TRepositorio.Subtrair(Avalor1, AValor2: Integer): Integer;
begin
  Result := AValor1 - AValor2;
end;

end.
