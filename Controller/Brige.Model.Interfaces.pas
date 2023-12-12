unit Brige.Model.Interfaces;

interface

type
  TVenda = record
      COO: Integer;
      Itens: Integer;
      Total: Currency;
  end;

  iExport <t> = interface;

  iSource<t> = interface
    ['{50CA89E7-70A3-49C0-97FE-22358659164F}']
    function Exportar(Value: iExport<t>): iSource<t>;
  end;

  iExport <t> = interface
  ['{407B7CE5-5671-42DC-B6F0-56B07298381B}']
    function GerarRegistros(Value: t): iExport<t>;
  end;



implementation

end.
