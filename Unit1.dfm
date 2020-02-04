object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1088#1077#1076#1072#1082#1090#1086#1088
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
    Height = 235
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 0
    Zoom = 100
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 235
    Width = 535
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object File1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N15: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100
        ShortCut = 16462
        OnClick = N15Click
      end
      object Open1: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = Save1Click
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        ShortCut = 16464
        OnClick = Print1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 16465
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object N4: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ShortCut = 16474
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        ShortCut = 16472
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 16451
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        ShortCut = 16470
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ShortCut = 46
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N11: TMenuItem
        Caption = #1053#1072#1081#1090#1080
        ShortCut = 16454
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100
        ShortCut = 16466
        OnClick = N12Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
        ShortCut = 16449
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1042#1088#1077#1084#1103' '#1080' '#1076#1072#1090#1072
        ShortCut = 116
        OnClick = N14Click
      end
    end
    object N1: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      object Font1: TMenuItem
        Caption = #1064#1088#1080#1092#1090
        OnClick = Font1Click
      end
    end
    object N19: TMenuItem
      Caption = #1042#1080#1076
      object N20: TMenuItem
        Caption = #1057#1090#1088#1086#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
        OnClick = N20Click
      end
    end
    object N21: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N22: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ShortCut = 112
        OnClick = N22Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #1058#1077#1082#1089#1090' (*.txt)|*.txt|'#1058#1077#1082#1089#1090' '#1089' '#1092#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077#1084' (*.rtf)|*.rtf|'#1042#1089#1077' '#1092#1072 +
      #1081#1083#1099'|*.*'
    Left = 88
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      #1058#1077#1082#1089#1090' (*.txt)|*.txt|'#1058#1077#1082#1089#1090' '#1089' '#1092#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077#1084' (*.rtf)|*.rtf|'#1042#1089#1077' '#1092#1072 +
      #1081#1083#1099'|*.*'
    Left = 88
    Top = 72
  end
  object PrintDialog1: TPrintDialog
    Left = 88
    Top = 184
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
end
