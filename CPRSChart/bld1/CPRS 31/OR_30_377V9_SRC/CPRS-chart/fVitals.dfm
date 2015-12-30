inherited frmVitals: TfrmVitals
  Left = 224
  Top = 211
  BorderIcons = [biSystemMenu]
  Caption = 'Vitals'
  ClientHeight = 462
  ClientWidth = 633
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 633
    Height = 272
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lblNoResults: TStaticText
      Left = 241
      Top = 71
      Width = 271
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'No measurement to graph for this date range.'
      TabOrder = 2
    end
    object chtChart: TChart
      Left = 117
      Top = 0
      Width = 516
      Height = 272
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AllowPanning = pmNone
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Legend.Alignment = laTop
      Legend.Inverted = True
      Legend.Shadow.HorizSize = 2
      Legend.Shadow.VertSize = 2
      Title.Text.Strings = (
        'test name')
      Title.Visible = False
      OnClickLegend = chtChartClickLegend
      OnClickSeries = chtChartClickSeries
      OnUndoZoom = chtChartUndoZoom
      LeftAxis.Title.Caption = 'units'
      View3D = False
      Zoom.Allow = False
      Align = alClient
      BevelOuter = bvNone
      PopupMenu = popChart
      TabOrder = 1
      OnMouseDown = chtChartMouseDown
      ColorPaletteIndex = 13
      object serTestY: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Visible = False
        SeriesColor = clBlue
        Title = 'Mean'
        Brush.BackColor = clDefault
        Pointer.Brush.Color = clBlue
        Pointer.Brush.Gradient.EndColor = clBlue
        Pointer.Draw3D = False
        Pointer.Gradient.EndColor = clBlue
        Pointer.InflateMargins = True
        Pointer.Style = psDiamond
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object serTestX: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Visible = False
        SeriesColor = clBlue
        Title = 'Dialstolic'
        Brush.BackColor = clDefault
        Pointer.Brush.Color = clBlue
        Pointer.Brush.Gradient.EndColor = clBlue
        Pointer.Draw3D = False
        Pointer.Gradient.EndColor = clBlue
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object serTest: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Visible = False
        SeriesColor = clBlue
        Title = 'Systolic'
        Brush.BackColor = clDefault
        Pointer.Brush.Gradient.EndColor = clBlue
        Pointer.Gradient.EndColor = clBlue
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object serTime: TPointSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Callout.Length = 8
        Marks.Visible = False
        SeriesColor = clSilver
        ShowInLegend = False
        Title = 'Time'
        ClickableLine = False
        Pointer.Draw3D = False
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 3
        Pointer.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object pnlLeft: TORAutoPanel
      Left = 0
      Top = 0
      Width = 117
      Height = 272
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 0
      object lstDates: TORListBox
        Left = 1
        Top = 31
        Width = 115
        Height = 162
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Items.Strings = (
          '1^Today'
          '8^One Week'
          '15^Two Weeks'
          '31^One Month'
          '183^Six Months'
          '366^One Year'
          '732^Two Years'
          '66666^All Results'
          'S^Date Range')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = lstDatesClick
        Caption = 'Select Vitals from:'
        ItemTipColor = clWindow
        LongList = False
        Pieces = '2'
      end
      object pnlLeftClient: TORAutoPanel
        Left = 1
        Top = 193
        Width = 115
        Height = 84
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelOuter = bvNone
        TabOrder = 2
        object chkValues: TCheckBox
          Left = 11
          Top = 10
          Width = 94
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Values'
          TabOrder = 0
          OnClick = chkValuesClick
        end
        object chk3D: TCheckBox
          Left = 11
          Top = 52
          Width = 94
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '3D'
          TabOrder = 2
          OnClick = chk3DClick
        end
        object chkZoom: TCheckBox
          Left = 11
          Top = 31
          Width = 94
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Zoom'
          TabOrder = 1
          OnClick = chkZoomClick
        end
      end
      object pnlEnterVitals: TPanel
        Left = 1
        Top = 1
        Width = 115
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Caption = 'pnlEnterVitals'
        TabOrder = 0
        OnResize = pnlEnterVitalsResize
        object btnEnterVitals: TButton
          Left = 10
          Top = 0
          Width = 92
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Enter Vitals'
          TabOrder = 0
          OnClick = btnEnterVitalsClick
        end
      end
    end
  end
  object pnlBottom: TPanel [1]
    Left = 0
    Top = 272
    Width = 633
    Height = 190
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object grdVitals: TCaptionStringGrid
      Left = 118
      Top = 1
      Width = 514
      Height = 188
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Color = clCream
      ColCount = 6
      Ctl3D = True
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnSelectCell = grdVitalsSelectCell
      Caption = 'Vitals Data'
      ColWidths = (
        64
        64
        64
        64
        64
        64)
    end
    object pnlButtons: TPanel
      Left = 1
      Top = 1
      Width = 117
      Height = 188
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        117
        188)
      object lstVitals: TCaptionListBox
        Left = 0
        Top = 20
        Width = 117
        Height = 146
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Style = lbOwnerDrawFixed
        Anchors = [akLeft, akTop, akRight, akBottom]
        Items.Strings = (
          'Temperature'
          'Pulse'
          'Respiration'
          'Blood Pressure'
          'Height'
          'Weight'
          'Pain')
        TabOrder = 0
        OnClick = lstVitalsClick
        Caption = 'Vitals'
      end
    end
  end
  inherited amgrMain: TVA508AccessibilityManager
    Data = (
      (
        'Component = pnlTop'
        'Status = stsDefault')
      (
        'Component = lblNoResults'
        'Status = stsDefault')
      (
        'Component = chtChart'
        'Status = stsDefault')
      (
        'Component = pnlLeft'
        'Status = stsDefault')
      (
        'Component = lstDates'
        'Status = stsDefault')
      (
        'Component = pnlLeftClient'
        'Status = stsDefault')
      (
        'Component = chkValues'
        'Status = stsDefault')
      (
        'Component = chk3D'
        'Status = stsDefault')
      (
        'Component = chkZoom'
        'Status = stsDefault')
      (
        'Component = pnlEnterVitals'
        'Status = stsDefault')
      (
        'Component = btnEnterVitals'
        'Status = stsDefault')
      (
        'Component = pnlBottom'
        'Status = stsDefault')
      (
        'Component = grdVitals'
        'Status = stsDefault')
      (
        'Component = pnlButtons'
        'Status = stsDefault')
      (
        'Component = lstVitals'
        'Status = stsDefault')
      (
        'Component = frmVitals'
        'Status = stsDefault'))
  end
  object popChart: TPopupMenu
    OnPopup = popChartPopup
    Left = 37
    Top = 317
    object popValues: TMenuItem
      Caption = 'Values'
      OnClick = popValuesClick
    end
    object pop3D: TMenuItem
      Caption = '3D'
      OnClick = pop3DClick
    end
    object popZoom: TMenuItem
      Caption = 'Zoom Enabled'
      OnClick = popZoomClick
    end
    object popZoomBack: TMenuItem
      Caption = 'Zoom Back'
      OnClick = popZoomBackClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object popCopy: TMenuItem
      Caption = 'Copy'
      OnClick = popCopyClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object popDetails: TMenuItem
      Caption = 'Details'
      OnClick = popDetailsClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object popPrint: TMenuItem
      Caption = 'Print'
      OnClick = popPrintClick
    end
  end
  object calVitalsRange: TORDateRangeDlg
    DateOnly = True
    Instruction = 'Enter a date range -'
    LabelStart = 'Begin Date'
    LabelStop = 'End Date'
    RequireTime = False
    Format = 'mmm d,yy'
    Left = 74
    Top = 320
  end
  object dlgWinPrint: TPrintDialog
    Left = 146
    Top = 324
  end
end
