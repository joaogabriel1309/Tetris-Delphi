unit Peca;

interface

uses
  System.Types, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPeca = class (TObject)
  private

  public
    function CriarPeca(fPaintBox: TPaintBox; peca: Integer): TRect;
    procedure MoverPeca;
    procedure MoverPecaEsqueda;
    procedure MoverPecaDireita;
    procedure MoverPecaCima;
    procedure MoverPecaBaixo;
    procedure GuardarPeca;
    procedure UtilizarPecaGuardada;

  end;

var
  posicaoX, posicaoY: Integer;

const
  CNT_VERMELHO = $000000FF;
  CNT_AZUL = $00FF0000;
  CNT_VERDE = $0000FF00;
  CNT_AMARELO = $FFFF00;

implementation

uses
  main;
{ TPeca }

function TPeca.CriarPeca(fPaintBox: TPaintBox; peca: Integer): TRect;
var
  fTamanhoBloco: Integer;
  fRect: TRect;
  I: Integer;
begin
  fTamanhoBloco := fPaintBox.Width div 20;

  case peca of
    1:
    begin
       [1,1] := 6;
       fPecaAtual[1,2] := 7;
       fPecaAtual[1,3] := 8;
       fPecaAtual[1,4] := 8;
       fPecaAtual[2,1] := 1;
       fPecaAtual[2,2] := 1;
       fPecaAtual[2,3] := 1;
       fPecaAtual[2,4] := 2;
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
    2:
    begin
       fPecaAtual[1,1] := 3;
       fPecaAtual[1,2] := 4;
       fPecaAtual[1,3] := 3;
       fPecaAtual[1,4] := 4;
       fPecaAtual[2,1] := 5;
       fPecaAtual[2,2] := 5;
       fPecaAtual[2,3] := 6;
       fPecaAtual[2,4] := 6;
       for I := 1 to 4 do
       begin
          fRect.Left := fPecaAtual[1,I] * fTamanhoBloco;
          fRect.Top := fPecaAtual[2,I] * fTamanhoBloco;
          fRect.Right := fRect.Left + fTamanhoBloco;
          fRect.Bottom := fRect.Top + fTamanhoBloco;
          fPaintBox.Canvas.Brush.Color := CNT_VERDE;
          fPaintBox.Canvas.FillRect(fRect);
       end;
    end;
    3:
    begin
       fPecaAtual[1,1] := 2;
       fPecaAtual[1,2] := 3;
       fPecaAtual[1,3] := 4;
       fPecaAtual[1,4] := 5;
       fPecaAtual[2,1] := 5;
       fPecaAtual[2,2] := 5;
       fPecaAtual[2,3] := 5;
       fPecaAtual[2,4] := 5;
       for I := 1 to 4 do
       begin
          fRect.Left := fPecaAtual[1,I] * fTamanhoBloco;
          fRect.Top := fPecaAtual[2,I] * fTamanhoBloco;
          fRect.Right := fRect.Left + fTamanhoBloco;
          fRect.Bottom := fRect.Top + fTamanhoBloco;
          fPaintBox.Canvas.Brush.Color := CNT_AZUL;
          fPaintBox.Canvas.FillRect(fRect);
       end;
    end;
    4:
    begin
       fPecaAtual[1,1] := 3;
       fPecaAtual[1,2] := 4;
       fPecaAtual[1,3] := 5;
       fPecaAtual[1,4] := 4;
       fPecaAtual[2,1] := 6;
       fPecaAtual[2,2] := 6;
       fPecaAtual[2,3] := 6;
       fPecaAtual[2,4] := 5;
       for I := 1 to 4 do
       begin
          fRect.Left := fPecaAtual[1,I] * fTamanhoBloco;
          fRect.Top := fPecaAtual[2,I] * fTamanhoBloco;
          fRect.Right := fRect.Left + fTamanhoBloco;
          fRect.Bottom := fRect.Top + fTamanhoBloco;
          fPaintBox.Canvas.Brush.Color := CNT_AMARELO;
          fPaintBox.Canvas.FillRect(fRect);
       end;
    end;
  end;

  Result := fRect;
end;

procedure TPeca.GuardarPeca;
begin
  //
end;

procedure TPeca.MoverPeca;
begin

end;

procedure TPeca.MoverPecaBaixo;
begin
   //
end;

procedure TPeca.MoverPecaCima;
begin
  //
end;

procedure TPeca.MoverPecaDireita;
begin
  //implementar a movimentacao da peca
end;

procedure TPeca.MoverPecaEsqueda;
begin
  //implementar a movimentacao da peca
end;

procedure TPeca.UtilizarPecaGuardada;
begin
  //
end;

end.
