unit jogabilidade;

interface

uses
  mapa;

type

  TJogabilidade = class
  public
    procedure IniciarJogo;
    procedure PausarJogo;
    procedure Animancao;
end;

var
  fMapa: TMapa;

implementation

uses
  main;

{ TJogabilidade }

procedure TJogabilidade.Animancao;
var
  O: Integer;
  I: Integer;
  J: Integer;
  fPrincipal: TForm1
begin
   for O := 1 to 2 do
   begin
      for J := 1 to 4 do
         fPecaAtual[O,J] := fPecaAtual[O,J] + 1;
   end;
   for I := 1 to 4 do
   begin
      fRect.Left := fPecaAtual[1,I] * fTamanhoBloco;
      fRect.Top := fPecaAtual[2,I] * fTamanhoBloco;
      fRect.Right := fRect.Left + fTamanhoBloco;
      fRect.Bottom := fRect.Top + fTamanhoBloco;
      fPaintBox.Canvas.Brush.Color := CNT_VERMELHO;
      fPaintBox.Canvas.FillRect(fRect);
   end;

end;

procedure TJogabilidade.IniciarJogo;
begin
   fMapa.CriarMapaNormal;
end;

procedure TJogabilidade.PausarJogo;
begin

end;

end.
