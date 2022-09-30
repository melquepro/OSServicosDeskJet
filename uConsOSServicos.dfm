object FrmConsOS: TFrmConsOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consultar'
  ClientHeight = 422
  ClientWidth = 796
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
    Width = 262
    Height = 13
    Caption = 'Digite C'#211'D. SERVI'#199'O ou DATA DA SOLICITA'#199#195'O'
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
    Width = 780
    Height = 29
  end
  object Label2: TLabel
    Left = 15
    Top = 13
    Width = 146
    Height = 16
    Caption = 'CONSULTA DE SERVI'#199'OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 106
    Width = 782
    Height = 312
    BiDiMode = bdLeftToRight
    DataSource = DM.dsCadOS
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
        FieldName = 'COD_SERV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'C'#243'd. Servi'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SOLICITACAO'
        Title.Caption = 'Dt. Solicita'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_SERVICO'
        Title.Caption = 'Descri'#231#227'o do Servi'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_SERVICO'
        Title.Caption = 'Tipo de Servi'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_EQUIPAMENTO'
        Title.Caption = 'Tipo de Equipamento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor do Servi'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clInfoText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 232
    Top = 72
    Width = 556
    Height = 21
    TabOrder = 1
    TextHint = 'Digite C'#211'D. SERVI'#199'O ou DATA DA SOLICITA'#199#195'O'
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
      'C'#243'd. Servi'#231'o'
      'Data da Solicita'#231#227'o')
    ParentFont = False
    TabOrder = 2
  end
end
