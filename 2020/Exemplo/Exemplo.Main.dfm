object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 151
    Top = 13
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object edtNome: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtNome'
  end
  object edtSobrenome: TEdit
    Left = 151
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtNome'
  end
  object btnAdd: TButton
    Left = 278
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object Button1: TButton
    Left = 359
    Top = 30
    Width = 106
    Height = 25
    Caption = 'Export to JSON'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 61
    Width = 248
    Height = 120
    DataSource = dsPessoas
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 278
    Top = 61
    Width = 211
    Height = 120
    TabOrder = 5
  end
  object mtPessoas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 96
    Top = 112
    object mtPessoasnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mtPessoassobrenome: TStringField
      FieldName = 'sobrenome'
      Size = 50
    end
  end
  object dsPessoas: TDataSource
    DataSet = mtPessoas
    Left = 216
    Top = 136
  end
end
