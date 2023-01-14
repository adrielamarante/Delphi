unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitFachada;

type
  TForm1 = class(TForm)
    btnSomar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    lblRes: TLabel;
    btnSubtrair: TButton;
    lblNum1: TLabel;
    lblNum2: TLabel;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CarregarVariaveis(var LValor1: Integer; var LValor2: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomarClick(Sender: TObject);
var
  LValor1, LValor2, LTotal: integer;
begin
  CarregarVariaveis(LValor1, LValor2);
  //Executando procedimento
  LTotal := TFachada.GetInstance.Somar(LValor1, LValor2);
  //Exibindo total
  lblRes.Caption := IntToStr(LTotal);
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
var
  LValor1, LValor2, LTotal: integer;
begin
  CarregarVariaveis(LValor1, LValor2);
  //Executando procedimento
  LTotal := TFachada.GetInstance.Subtrair(LValor1, LValor2);
  //Exibindo total
  lblRes.Caption := IntToStr(LTotal);
end;

procedure TForm1.CarregarVariaveis(var LValor1: Integer; var LValor2: Integer);
begin
  //Carregando variáveis
  LValor1 := StrToInt(Edit1.Text);
  LValor2 := StrToInt(Edit2.Text);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFachada.DestroyInstance;
end;

end.
