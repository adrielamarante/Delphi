program Camadas;

uses
  Vcl.Forms,
  UnitCadastro in 'UnitCadastro.pas',
  UnitControlador in 'UnitControlador.pas',
  UnitFachada in 'UnitFachada.pas',
  UnitPrincipal in 'UnitPrincipal.pas' {Form1},
  UnitRepositorio in 'UnitRepositorio.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
