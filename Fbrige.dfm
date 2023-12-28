object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object SpeedButton1: TSpeedButton
    Left = 312
    Top = 232
    Width = 23
    Height = 22
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 96
    Width = 177
    Height = 25
    Caption = 'Validar Compra'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Memo1: TMemo
    Left = 272
    Top = 0
    Width = 356
    Height = 442
    Align = alRight
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
