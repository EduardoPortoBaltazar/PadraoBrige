program ProjectBrige;

uses
  Vcl.Forms,
  Fbrige in 'Fbrige.pas' {Form1},
  Brige.Model.Interfaces in 'Controller\Brige.Model.Interfaces.pas',
  Brige.Model.Venda in 'Controller\Brige.Model.Venda.pas',
  Brige.Brige.Model.SPED.C100 in 'Controller\Brige.Brige.Model.SPED.C100.pas',
  Brige.Model.SPED.C180 in 'Controller\Brige.Model.SPED.C180.pas',
  Compra.Model.Interfaces in 'Compra.Model.Interfaces.pas',
  Compra.Model.Produto in 'Model\Compra.Model.Produto.pas',
  Compra.Model.Nota in 'Model\Compra.Model.Nota.pas',
  Compra.Model in 'Controller\Compra.Model.pas',
  Compra.Model.Validacao.Nota in 'Controller\Compra.Model.Validacao.Nota.pas',
  Compra.Modelo.Types in 'Model\Compra.Modelo.Types.pas',
  Compra.Model.CalculoCusto.Nota in 'Controller\Compra.Model.CalculoCusto.Nota.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
