object frmSelectLocalRemote: TfrmSelectLocalRemote
  Left = 0
  Top = 0
  Caption = 'Remote Sites'
  ClientHeight = 205
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 441
    Height = 201
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 101
      Height = 13
      Caption = 'Laboratory Locations'
    end
    object btnSelect: TButton
      Left = 274
      Top = 170
      Width = 75
      Height = 25
      Caption = '&Select'
      Enabled = False
      ModalResult = 8
      TabOrder = 0
      OnClick = btnSelectClick
    end
    object btnClose: TButton
      Left = 355
      Top = 170
      Width = 75
      Height = 25
      Caption = 'Close'
      ModalResult = 8
      TabOrder = 1
    end
    object CaptionCheckListBox1: TCaptionCheckListBox
      Left = 8
      Top = 40
      Width = 401
      Height = 124
      OnClickCheck = CaptionCheckListBox1ClickCheck
      ItemHeight = 13
      Items.Strings = (
        'Fayetteville VA Medical Center (565)'
        'Salisbury - W.G. Hefner VA Medical Center (659)')
      TabOrder = 2
      Caption = ''
    end
  end
end
