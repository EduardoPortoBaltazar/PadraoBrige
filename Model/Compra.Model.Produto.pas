unit Compra.Model.Produto;

interface

uses
  System.Classes;

type
  TModelProduto = class

  private
    FCodigo: string;
    FDescricao: string;
    FQuantidade: Double;

  public
    property Codigo: string read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property Quantidade: Double read FQuantidade write FQuantidade;


  end;

implementation

end.
