                                 unit UnitCadastro;

interface

uses
  UnitRepositorio, System.SysUtils;

type
  TCadastro = class
    private
      FRepositorio: TRepositorio;
      FRepositorio2: TRepositorio;
    public
      constructor Create;
      destructor Destroy;
      function Somar(AValor1, AValor2: Integer): Integer;
      function Subtrair(AValor1, AValor2: Integer): Integer;
  end;

implementation

{ TCadastro }

constructor TCadastro.Create;
begin
  FRepositorio := TRepositorio.Create;
end;

destructor TCadastro.Destroy;
begin
  FreeAndNil(FRepositorio);
end;

function TCadastro.Somar(AValor1, AValor2: Integer): Integer;
begin
  Result := FRepositorio.Somar(AValor1, AValor2);
end;

function TCadastro.Subtrair(AValor1, AValor2: Integer): Integer;
begin
  Result := FRepositorio.Subtrair(AValor1, AValor2);
end;

end.
