object Form1: TForm1
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Simple Batch IDE'
  ClientHeight = 727
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 73
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1126
      73)
    object img1: TImage
      Left = 24
      Top = 21
      Width = 33
      Height = 31
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000002B744558744372656174696F6E2054696D65
        0053756E20322041756720323031352031373A30353A3430202D30363030AB9D
        78EE0000000774494D4507DF0802160936B3167602000000097048597300002E
        2300002E230178A53F760000000467414D410000B18F0BFC61050000003B4944
        415478DAEDD3310100200C0341EA5F3454020BA1C3BD81DC925A9F2B00809180
        DD3D19EB00AE00C9000066BE00201900C0CC1700240300003859BE2421B37CDF
        370000000049454E44AE426082}
      OnClick = img1Click
    end
    object lbl5: TLabel
      Left = 632
      Top = 22
      Width = 81
      Height = 29
      Caption = 'Theme:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 1033
      Top = 16
      Width = 75
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Close'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn4: TButton
      Left = 109
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Undo'
      TabOrder = 1
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 206
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Redo'
      TabOrder = 2
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 305
      Top = 16
      Width = 192
      Height = 41
      Caption = 'Learn more about batch'
      TabOrder = 3
      OnClick = btn6Click
    end
    object cbbthemelist: TComboBox
      Left = 727
      Top = 23
      Width = 265
      Height = 27
      TabOrder = 4
      OnChange = cbbthemelistChange
    end
    object btn9: TButton
      Left = 520
      Top = 16
      Width = 73
      Height = 41
      Caption = 'Clear'
      TabOrder = 5
      OnClick = btn9Click
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 73
    Width = 200
    Height = 654
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    OpenedWidth = 200
    ParentFont = False
    Placement = svpLeft
    TabOrder = 1
    DesignSize = (
      200
      654)
    object lbl1: TLabel
      Left = 8
      Top = 630
      Width = 177
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'Made by Adriaan Boshoff'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 55
      Top = 224
      Width = 92
      Height = 29
      Caption = 'Settings:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 36
      Top = 272
      Width = 70
      Height = 19
      Caption = 'Font Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 24
      Top = 422
      Width = 152
      Height = 29
      Caption = 'Transparency:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn2: TButton
      Left = 56
      Top = 88
      Width = 90
      Height = 49
      Caption = 'Save'
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 55
      Top = 152
      Width = 91
      Height = 49
      Caption = 'Execute'
      TabOrder = 1
      OnClick = btn3Click
    end
    object se1: TSpinEdit
      Left = 112
      Top = 269
      Width = 53
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 100
      MinValue = 10
      ParentFont = False
      TabOrder = 2
      Value = 10
      OnChange = se1Change
    end
    object chksyntax: TCheckBox
      Left = 19
      Top = 310
      Width = 161
      Height = 27
      Caption = 'Syntax Highlighting'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = chksyntaxClick
    end
    object chklinehighlight: TCheckBox
      Left = 17
      Top = 343
      Width = 167
      Height = 34
      Caption = 'Highlight Active Line'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      OnClick = chklinehighlightClick
    end
    object btn7: TButton
      Left = 55
      Top = 22
      Width = 90
      Height = 49
      Caption = 'Open'
      TabOrder = 5
      OnClick = btn7Click
    end
    object chkwordwrap: TCheckBox
      Left = 49
      Top = 383
      Width = 102
      Height = 17
      Caption = 'Word Wrap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = chkwordwrapClick
    end
    object trckbr1: TTrackBar
      Left = 7
      Top = 465
      Width = 186
      Height = 45
      Max = 255
      Min = 100
      Position = 255
      TabOrder = 7
      OnChange = trckbr1Change
    end
    object btn8: TButton
      Left = 39
      Top = 504
      Width = 121
      Height = 49
      Caption = 'Just Right'
      TabOrder = 8
      OnClick = btn8Click
    end
    object btn10: TButton
      Left = 45
      Top = 576
      Width = 111
      Height = 41
      Caption = 'Github'
      TabOrder = 9
      OnClick = btn10Click
    end
  end
  object synm1: TSynMemo
    Left = 200
    Top = 73
    Width = 926
    Height = 654
    Align = alClient
    ActiveLineColor = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 2
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Highlighter = synbtsyn1
    Lines.Strings = (
      '@echo off'
      'echo Hello World'
      'pause')
    WantTabs = True
    FontSmoothing = fsmNone
  end
  object synbtsyn1: TSynBatSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clBlue
    KeyAttri.Foreground = clBlue
    Left = 560
    Top = 240
  end
  object dlgOpen1: TOpenDialog
    Left = 504
    Top = 249
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'bat'
    FileName = 'BatchProject'
    Left = 592
    Top = 336
  end
end
