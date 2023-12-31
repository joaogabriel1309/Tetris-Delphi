unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, jogabilidade, Peca,
  Vcl.StdCtrls, mapa;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PaintBox: TPaintBox;
    Timer: TTimer;
    PanelMenu: TPanel;
    ButtonIniciar: TButton;
    Button1: TButton;
    ButtonSair: TButton;
    Button3: TButton;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonIniciarClick(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fJogabilidade: TJogabilidade;
  fPeca: TPeca;
  fExistePecaGuardada: Boolean;
  fPosicaoX,fPosicaoY: Integer;
  GlobalTamanhoBloco: Integer;
  GlobalMapa: Array[1..10, 1..20] of Integer;
  GlobalPaceAtual:  array[1..2,1..4] of Integer;

const
  CNT_VELOCIDADE = 1000;

implementation

{$R *.dfm}

procedure TForm1.ButtonIniciarClick(Sender: TObject);
begin
   fExistePecaGuardada := false;
   fJogabilidade.IniciarJogo;
end;

procedure TForm1.ButtonSairClick(Sender: TObject);
begin
   self.Close();
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      38: fPeca.MoverPecaCima;
      40: fPeca.MoverPecaBaixo;
      39: fPeca.MoverPecaDireita;
      37: fPeca.MoverPecaEsqueda;
      76:
      begin
         fPeca.GuardarPeca;
         fExistePecaGuardada := true;
      end;
      74:
      begin
         if fExistePecaGuardada then
         begin
            fPeca.UtilizarPecaGuardada;
            fExistePecaGuardada := false;
         end;
      end;
   end;
   //ShowMessage(IntToStr(key));
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   Timer.Interval := CNT_VELOCIDADE;
   Timer.Enabled := true;
//   fPosicaoX := 0;
//   fPosicaoY := 0;

end;

procedure TForm1.PaintBoxPaint(Sender: TObject);
var
  BlockSize: Integer;
  x, y: Integer;
begin
  //
end;

procedure TForm1.TimerTimer(Sender: TObject);
var
  I: Integer;
begin
   //mover a pe�a
   PaintBox.Canvas.FillRect(fPeca.CriarPeca(PaintBox, 1));
   fJogabilidade.Animancao;
end;

end.
