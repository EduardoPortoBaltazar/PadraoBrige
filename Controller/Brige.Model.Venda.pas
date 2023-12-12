unit Brige.Model.Venda;

interface

uses
  Brige.Model.Interfaces, System.Generics.Collections;

type
  TModelVenda = class(TInterfacedObject, iSource<TVenda>)
  private
    FLista: TList<TVenda>;
    procedure AddItens;

  public
    function Exportar(Value: iExport<TVenda>): iSource<TVenda>;

    constructor Create;
    destructor Destroy; override;
    class function New: iSource<TVenda>;
  end;

implementation

{ TModelVenda }

procedure TModelVenda.AddItens;
var
  LVenda: TVenda;
begin
  LVenda.COO := 10;
  LVenda.Itens := 2;
  LVenda.Total := 20;
  FLista.Add(LVenda);
end;

constructor TModelVenda.Create;
begin
  FLista := TList<TVenda>.Create;
end;

destructor TModelVenda.Destroy;
begin
  FLista.Free;

  inherited;
end;

function TModelVenda.Exportar(Value: iExport<TVenda>): iSource<TVenda>;
var
  I: Integer;
begin
  Result := Self;
  for I := 0 to Pred(FLista.Count) do
    Value.GerarRegistros(FLista.Items[i]) ;

end;

class function TModelVenda.New: iSource<TVenda>;
begin
  Result := Self.Create;
end;

end.
