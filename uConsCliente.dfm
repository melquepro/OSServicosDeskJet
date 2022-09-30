object FrmConsCli: TFrmConsCli
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consultar Clientes'
  ClientHeight = 422
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 232
    Top = 53
    Width = 143
    Height = 13
    Caption = 'Digite CPF/CNPJ ou NOME:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 6
    Width = 740
    Height = 29
  end
  object Label2: TLabel
    Left = 15
    Top = 13
    Width = 142
    Height = 16
    Caption = 'CONSULTA DE CLIENTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 99
    Width = 742
    Height = 312
    BiDiMode = bdLeftToRight
    DataSource = DM.dsCadCliente
    DrawingStyle = gdsGradient
    FixedColor = clSilver
    GradientEndColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clInfoText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLI'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 232
    Top = 72
    Width = 516
    Height = 21
    TabOrder = 1
    TextHint = 'Digite o CPF/CNPJ ou NOME que deseja localizar'
    OnKeyPress = Edit1KeyPress
  end
  object RadioGroup1: TRadioGroup
    Left = 6
    Top = 47
    Width = 207
    Height = 57
    Caption = 'Consultar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'CPF/CNPJ'
      'NOME')
    ParentFont = False
    TabOrder = 2
  end
end
