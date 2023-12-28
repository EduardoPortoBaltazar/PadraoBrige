unit Compra.Model.Validacao.Nota;

interface

uses
  System.Classes,
  Compra.Modelo.Types,
  Compra.Model.Nota,
  Compra.Model.Interfaces;

type
  TModelValidacaoNota = class (TInterfacedObject, iProcessarCompra<TModelNota>)
  private
     
  public
    Flog: Tlog;
    procedure Validacao(Value: TModelNota);

    constructor Create(Alog: Tlog);
    destructor Destroy; override;
    class function New(Alog: Tlog): iProcessarCompra<TModelNota>;
end;


implementation

{ TModelValidacaoNota }

constructor TModelValidacaoNota.Create(Alog: Tlog);
begin
  Flog := Alog;
end;

destructor TModelValidacaoNota.Destroy;
begin

  inherited;
end;

class function TModelValidacaoNota.New(Alog: Tlog): iProcessarCompra<TModelNota>;
begin
  Result := Self.Create(Alog);
end;

procedure TModelValidacaoNota.Validacao(Value: TModelNota);
begin
  Flog(Value.Fornecedor);
  Flog(Value.Numero);
end;

end.
