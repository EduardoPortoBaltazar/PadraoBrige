unit Compra.Model.Interfaces;

interface

uses
  Compra.Modelo.Types;

type
  iProcessarCompra<t> = interface;

  iSource<t> = interface
    ['{33311241-1A71-47B5-890C-4A7FBCE3F70B}']
    function Exportar (Value: iProcessarCompra<t>): iSource<t>;
  end;

  iProcessarCompra<t> = interface
    ['{AB9DC479-AAAB-4582-ABB2-7F68740918E3}']
    procedure Validacao(Value: t);
  end;

implementation

end.
