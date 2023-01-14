unit UnitFachada;

interface

uses
  UnitControlador, System.SysUtils;

Type
  TFachada = class
    private
      class var FInstance: TFachada;
      constructor Create;
      destructor Destroy;

    public
      FControlador: TControlador;
      class function GetInstance: TFachada; overload;
      class procedure DestroyInstance;
      function Somar(AValor1, AValor2: Integer): integer;
      function Subtrair(AValor1, AValor2: Integer): integer;

  end;
implementation

{ TFachada }

constructor TFachada.Create;
begin
  inherited;
end;

destructor TFachada.Destroy;
begin
  FreeAndNil(FControlador);
end;

class procedure TFachada.DestroyInstance;
begin
  FreeAndNil(FInstance);
end;

class function TFachada.GetInstance: TFachada;
begin
  //Instanciando a fachada
  if FInstance = nil then
    FInstance := TFachada.Create;
  Result := FInstance;
end;

function TFachada.Somar(AValor1, AValor2: Integer): integer;
begin
  FControlador := TControlador.Create;
  try
    Result := FControlador.Somar(AValor1, AValor2);
  finally
    FreeAndNil(FControlador);
  end;
end;

function TFachada.Subtrair(AValor1, AValor2: Integer): integer;
begin
  FControlador := TControlador.Create;
  Try
    Result := FControlador.Subtrair(AValor1, AValor2);
  Finally
    FreeAndNil(FControlador);
  End;
end;

end.
