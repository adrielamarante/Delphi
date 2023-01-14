unit UnitControlador;

interface

uses
  UnitCadastro, System.SysUtils;

Type
 TControlador = class
   private
      FCadastro: TCadastro;
   public
      constructor Create;
      Destructor Destroy;
      function Somar(AValor1, AValor2: integer): Integer;
      function Subtrair(AValor1, AValor2: integer): Integer;
 end;

implementation

{ TControlador }

constructor TControlador.Create;
begin
  FCadastro := TCadastro.Create;
end;

destructor TControlador.Destroy;
begin
  FreeAndNil(FCadastro);
end;

function TControlador.Somar(AValor1, AValor2: integer): Integer;
begin
  Result := FCadastro.Somar(AValor1, AValor2);
end;

function TControlador.Subtrair(AValor1, AValor2: integer): Integer;
begin
  Result := FCadastro.Subtrair(AValor1, AValor2);
end;

end.
