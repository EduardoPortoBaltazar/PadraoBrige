program ProjectBrige;

uses
  Vcl.Forms,
  Fbrige in 'Fbrige.pas' {Form1},
  Brige.Model.Interfaces in 'Controller\Brige.Model.Interfaces.pas',
  Brige.Model.Venda in 'Controller\Brige.Model.Venda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
