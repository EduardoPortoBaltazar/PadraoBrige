unit Fbrige;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Brige.Brige.Model.SPED.C100, Brige.Model.SPED.C180, Brige.Model.Venda;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  TModelVenda.New
    .Exportar(TModelSPEDC100.New)
    .Exportar(TModelSPEDC180.New);

end;

end.
