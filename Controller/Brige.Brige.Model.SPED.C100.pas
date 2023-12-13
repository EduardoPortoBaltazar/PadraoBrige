unit Brige.Brige.Model.SPED.C100;

interface

uses
  Brige.Model.Interfaces, System.Classes, system.SysUtils;

type
  TModelSPEDC100 = class (TInterfacedObject, iExport<TVenda>)
  private
    Farquivo: TStringList;
  public
     function GerarRegistros(Value: TVenda): iExport<TVenda>;

     constructor Create;
     destructor Destroy; override;
     class function New: iExport<TVenda>;
  end;

implementation

const
  ARQUIVO = 'SPED.TXT';

{ TModelSPEDC100 }

constructor TModelSPEDC100.Create;
begin
  Farquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    Farquivo.LoadFromFile(ARQUIVO);

  Farquivo.Add('C100|0|1');
end;

destructor TModelSPEDC100.Destroy;
begin
  Farquivo.Free;
  inherited;
end;

function TModelSPEDC100.GerarRegistros(Value: TVenda): iExport<TVenda>;
begin
  Result := Self;
  Farquivo.Add(Format('100|%d|%d|%f|333502', [Value.COO, Value.Itens, Value.Total]));
  Farquivo.SaveToFile(ARQUIVO);
end;

class function TModelSPEDC100.New: iExport<TVenda>;
begin
  Result := Self.Create;
end;

end.
