unit Fbrige;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Compra.Model,
  Compra.Model.CalculoCusto.Nota, Compra.Model.Validacao.Nota;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EscreveLog(Value: string);
  end;

var
  Form1: TForm1;

implementation

uses
  Brige.Brige.Model.SPED.C100, Brige.Model.SPED.C180, Brige.Model.Venda;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  TModelVenda
    .New
    .Exportar(TModelSPEDC100.New)
    .Exportar(TModelSPEDC180.New);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  TCompraModel
    .New
    .Exportar(TModelValidacaoNota.New(EscreveLog))
    .Exportar(TModelCalculoCustoNota.New(EscreveLog));

end;

procedure TForm1.EscreveLog(Value: string);
begin
  Memo1.Lines.Add(Value);
end;

end.
