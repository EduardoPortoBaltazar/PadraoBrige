unit Compra.Model;

interface

uses
  System.Classes,
  Generics.Collections,
  Compra.Modelo.Types,
  Compra.Model.Nota,
  Compra.Model.Produto,
  Compra.Model.Interfaces;


type
  TCompraModel = class(TInterfacedObject, iSource<TModelNota>)

  private
     FListaNota: TObjectList<TModelNota>;
     FLog: Tlog;
     procedure AddNotas;
  public
     function Exportar (Value: iProcessarCompra<TModelNota>): iSource<TModelNota>;
     procedure EscreveLog(Value: Tlog);

     constructor Create;
     destructor Destroy; override;
     class function New: iSource<TModelNota>;

  end;


implementation


{ TCompraModel }

procedure TCompraModel.AddNotas;
var
  LNota: TModelNota;
  lProduto: TModelProduto;
begin
  LNota := TModelNota.Create;
  LNota.Fornecedor := 'DISTRUBUIDORA MATIAS';
  LNota.Numero := '666';
  LNota.Total := 100;

  lProduto := TModelProduto.Create;
  lProduto.Codigo := '666';
  lProduto.Descricao := 'SAPATO 36';

  LNota.Itens.Add(lProduto);
  FListaNota.Add(LNota);


  LNota := TModelNota.Create;
  LNota.Fornecedor := 'VIA BRASIL';
  LNota.Numero := '777';
  LNota.Total := 375.15;

  
  lProduto := TModelProduto.Create;
  lProduto.Codigo := '777';
  lProduto.Descricao := 'MANTO ROSA';

  LNota.Itens.Add(lProduto);
  FListaNota.Add(LNota);

end;

constructor TCompraModel.Create;
begin
  FListaNota := TObjectList<TModelNota>.Create;
  AddNotas;
end;

destructor TCompraModel.Destroy;
begin
  FListaNota.Free;
  inherited;
end;

procedure TCompraModel.EscreveLog(Value: Tlog);
begin
  FLog := Value;
end;

function TCompraModel.Exportar(Value: iProcessarCompra<TModelNota>): iSource<TModelNota>;
var
  i: Integer;
begin
  Result := Self;  
  
  for I := 0 to Pred(FListaNota.Count) do
    Value.Validacao(FListaNota[i]);              
end;

class function TCompraModel.New: iSource<TModelNota>;
begin
  Result := Self.Create;
end;

end.
