object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblRes: TLabel
    Left = 424
    Top = 56
    Width = 36
    Height = 14
    Caption = 'lblRes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNum1: TLabel
    Left = 104
    Top = 39
    Width = 115
    Height = 14
    Caption = 'Digite o numero 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNum2: TLabel
    Left = 105
    Top = 66
    Width = 115
    Height = 14
    Caption = 'Digite o numero 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSomar: TButton
    Left = 222
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object Edit1: TEdit
    Left = 222
    Top = 37
    Width = 155
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 222
    Top = 64
    Width = 155
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object btnSubtrair: TButton
    Left = 303
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
end
