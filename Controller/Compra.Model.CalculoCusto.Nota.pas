unit Compra.Model.CalculoCusto.Nota;

interface

uses
  System.Classes,
  Compra.Modelo.Types,
  Compra.Model.Nota,
  Compra.Model.Interfaces;


type
  TModelCalculoCustoNota = class (TInterfacedObject, iProcessarCompra<TModelNota>)
  private

  public
    Flog: Tlog;
    procedure Validacao(Value: TModelNota);

    constructor Create(Alog: Tlog);
    destructor Destroy; override;
    class function New(Alog: Tlog): iProcessarCompra<TModelNota>;
end;


implementation

uses
  System.SysUtils;

{ TModelCalculoCustoNota }

constructor TModelCalculoCustoNota.Create(Alog: Tlog);
begin
  Flog := Alog;
end;

destructor TModelCalculoCustoNota.Destroy;
begin

  inherited;
end;

class function TModelCalculoCustoNota.New(Alog: Tlog): iProcessarCompra<TModelNota>;
begin
  Result := Self.Create(Alog);
end;

procedure TModelCalculoCustoNota.Validacao(Value: TModelNota);
begin
  Flog('Total da Nota:' +  FormatCurr('#,##0.00', Value.Total));
end;

end.
