object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 658
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 658
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object PaintBox: TPaintBox
      Left = 1
      Top = 1
      Width = 626
      Height = 656
      Align = alClient
      OnPaint = PaintBoxPaint
      ExplicitLeft = 216
      ExplicitTop = 128
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object PanelMenu: TPanel
      Left = 152
      Top = 176
      Width = 329
      Height = 281
      BiDiMode = bdLeftToRight
      Color = clBtnShadow
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object ButtonIniciar: TButton
        Left = 87
        Top = 112
        Width = 177
        Height = 25
        Caption = 'Iniciar'
        TabOrder = 0
        OnClick = ButtonIniciarClick
      end
      object Button1: TButton
        Left = 87
        Top = 143
        Width = 177
        Height = 25
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
      end
      object ButtonSair: TButton
        Left = 87
        Top = 174
        Width = 177
        Height = 25
        Caption = 'Sair'
        TabOrder = 2
        OnClick = ButtonSairClick
      end
      object Button3: TButton
        Left = 87
        Top = 81
        Width = 177
        Height = 25
        Caption = 'Continuar'
        TabOrder = 3
        Visible = False
      end
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 584
    Top = 24
  end
end
