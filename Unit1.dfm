object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1072#1083#1075#1086#1088#1080#1090#1084#1072
  ClientHeight = 254
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 535
    Height = 254
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    Zoom = 100
    ExplicitTop = -6
    ExplicitHeight = 235
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object File1: TMenuItem
      Caption = #1060#1072#1081#1083
      object Save1: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = Save1Click
      end
      object Print1: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        ShortCut = 16464
        OnClick = Print1Click
      end
      object Quit1: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 27
      end
    end
    object Edit1: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object Undo1: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ShortCut = 16474
        OnClick = Undo1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        ShortCut = 16470
        OnClick = Paste1Click
      end
      object Delete1: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ShortCut = 46
        OnClick = Delete1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Found1: TMenuItem
        Caption = #1053#1072#1081#1090#1080
        ShortCut = 16454
        OnClick = Found1Click
      end
      object Replace1: TMenuItem
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100
        ShortCut = 16466
        OnClick = Replace1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object SelectAll1: TMenuItem
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
        ShortCut = 16449
        OnClick = SelectAll1Click
      end
    end
    object Format1: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      object Font1: TMenuItem
        Caption = #1064#1088#1080#1092#1090
        OnClick = Font1Click
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 88
    Top = 16
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 88
    Top = 128
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 16
    Top = 72
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = FindDialog1Find
    OnReplace = ReplaceDialog1Replace
    Left = 16
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    Filter = #1058#1077#1082#1089#1090' '#1089' '#1092#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077#1084' (*.rtf)|*.rtf'
    Left = 88
    Top = 72
  end
end
