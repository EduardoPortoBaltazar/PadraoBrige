unit Brige.Model.SPED.C180;

interface

uses
  Brige.Model.Interfaces, System.Classes, system.SysUtils;

type
  TModelSPEDC180 = class (TInterfacedObject, iExport<TVenda>)
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

{ TModelSPEDC180 }

constructor TModelSPEDC180.Create;
begin
  Farquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    Farquivo.LoadFromFile(ARQUIVO);

  Farquivo.Add('C190|0|1');
end;

destructor TModelSPEDC180.Destroy;
begin
  Farquivo.Free;
  inherited;
end;

function TModelSPEDC180.GerarRegistros(Value: TVenda): iExport<TVenda>;
begin
  Result := Self;
  Farquivo.Add(Format('C190|%d|%d|%f|333502', [Value.COO, Value.Itens, Value.Total]));
  Farquivo.SaveToFile(ARQUIVO);
end;

class function TModelSPEDC180.New: iExport<TVenda>;
begin
  Result := Self.Create;
end;

end.

