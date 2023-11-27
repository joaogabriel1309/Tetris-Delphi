program ProjectTetires;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  Peca in 'Peca.pas',
  mapa in 'mapa.pas',
  jogador in 'jogador.pas',
  jogabilidade in 'jogabilidade.pas',
  Global in 'Global.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
