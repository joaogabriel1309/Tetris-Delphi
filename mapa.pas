unit mapa;

interface

type
  TMapa = class(TObject)
  private

  public
    procedure CriarMapaNormal;

  end;

implementation

uses
  main;

{ TMapa }

procedure TMapa.CriarMapaNormal;
var
  I,J: Integer;
begin
   for I := 1 to 10 do
   begin
      for J := 1 to 20 do
         GlobalMapa[I,J] := 0;
   end;
end;

end.
