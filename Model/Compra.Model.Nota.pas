unit Compra.Model.Nota;

interface

uses
  System.Classes,
  Compra.Model.Produto,
  Generics.Collections;

type
  TModelNota = class

  private
    FFornecedor: string;
    FNumero: string;
    FTotal: Currency;
    FItens: TObjectList<TModelProduto>;

  public
    property Fornecedor: string read FFornecedor write FFornecedor;
    property Numero: string read FNumero write FNumero;
    property Total: Currency read FTotal write FTotal;
    property Itens: TObjectList<TModelProduto> read FItens write FItens;

    constructor Create;
    destructor Destroy; override;
end;


implementation

{ TModelNota }

constructor TModelNota.Create;
begin
  FItens := TObjectList<TModelProduto>.Create;
end;

destructor TModelNota.Destroy;
begin
  FItens.Free;
  inherited;
end;

end.
