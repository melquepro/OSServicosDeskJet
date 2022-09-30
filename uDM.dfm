object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 399
  Width = 571
  object Database: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Melque\Desktop\OS & Servi'#231'os Deskjet\base.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Transaction = Transaction
    UpdateTransaction = Transaction
    Left = 48
    Top = 16
  end
  object qryCadCliente: TFDQuery
    Connection = Database
    SQL.Strings = (
      'SELECT * FROM CLIENTE WHERE COD_CLI=COD_CLI')
    Left = 40
    Top = 88
    object qryCadClienteCOD_CLI: TFDAutoIncField
      FieldName = 'COD_CLI'
      Origin = 'COD_CLI'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qryCadClienteCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 19
    end
    object qryCadClienteNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object qryCadClienteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object qryCadClienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 28
    end
    object qryCadClienteCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object qryCadClienteTELFONE: TWideStringField
      FieldName = 'TELFONE'
      Origin = 'TELFONE'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 13
    end
    object qryCadClienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 13
    end
    object qryCadClienteDATA_CAD: TSQLTimeStampField
      FieldName = 'DATA_CAD'
      Origin = 'DATA_CAD'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCadClienteOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qryCadClienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
  end
  object Transaction: TFDTransaction
    Connection = Database
    Left = 112
    Top = 24
  end
  object dsCadCliente: TDataSource
    DataSet = qryCadCliente
    Left = 128
    Top = 96
  end
  object qryCadOS: TFDQuery
    Connection = Database
    Transaction = Transaction
    UpdateTransaction = Transaction
    SQL.Strings = (
      'SELECT * FROM SERVICOS WHERE COD_SERV = COD_SERV')
    Left = 40
    Top = 144
    object qryCadOSCOD_SERV: TFDAutoIncField
      FieldName = 'COD_SERV'
      Origin = 'COD_SERV'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qryCadOSCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'COD_CLI'
    end
    object qryCadOSCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 15
    end
    object qryCadOSNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object qryCadOSDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryCadOSDESCRICAO_SERVICO: TWideStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = 'DESCRICAO_SERVICO'
      Size = 255
    end
    object qryCadOSTIPO_EQUIPAMENTO: TWideStringField
      FieldName = 'TIPO_EQUIPAMENTO'
      Origin = 'TIPO_EQUIPAMENTO'
      Size = 30
    end
    object qryCadOSTIPO_SERVICO: TWideStringField
      FieldName = 'TIPO_SERVICO'
      Origin = 'TIPO_SERVICO'
      Size = 30
    end
    object qryCadOSDATA_SOLICITACAO: TSQLTimeStampField
      FieldName = 'DATA_SOLICITACAO'
      Origin = 'DATA_SOLICITACAO'
    end
    object qryCadOSVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = 'R$ ###,###,##0.00'
      EditFormat = 'R$ ###,###,##0.00'
    end
  end
  object dsCadOS: TDataSource
    DataSet = qryCadOS
    Left = 120
    Top = 152
  end
  object QUsu: TFDQuery
    Connection = Database
    SQL.Strings = (
      'SELECT LOGIN,SENHA FROM USU')
    Left = 192
    Top = 160
    object QUsuLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 15
    end
    object QUsuSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 10
    end
  end
  object dsUsu: TDataSource
    DataSet = QUsu
    Left = 240
    Top = 168
  end
end
