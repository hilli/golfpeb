�
 TBEREGN 0I  TPF0TBeregnBeregnLeft?TopeWidth�Height�ActiveControlDBGrid1CaptionBeregn
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.Style PixelsPerInch`
OnActivateFormActivate
TextHeight TDBGridDBGrid1LeftxTopWidth9Height� 
DataSourceDataSource1TabOrder TitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSystemTitleFont.Style   TDBNavigatorDBNavigator1LeftxTopXWidth� Height
DataSourceDataSource1TabOrder  TDBGridDBGrid2LeftxTop� Width9Height� 
DataSourceDataSource4TabOrderTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSystemTitleFont.Style   TDBEditDBEdit1LeftxTop0Width� Height	DataFieldSpillerNummer
DataSourceDataSource4	MaxLength TabOrder  TDataSourceDataSource1DataSetQuery3Left Top  TTableTable1Active	DatabaseNameGOLFDB	TableNameNETA1.DBLeftHTop  TDataSourceDataSource2DataSetTable2Left Top0  TTableTable2Active	DatabaseNameGOLFDB	TableNameNETB1.DBLeftHTop0  TDataSourceDataSource3DataSetTable3Left TopX  TTableTable3Active	DatabaseNameGOLFDB	TableNameNETC1.DBLeftHTopX  TDataSourceDataSource4DataSetQuery1Left Top�   TTableTable4Active	DatabaseNameGOLFDB	TableNameBRUT1.DBLeftHTop�   TDataSourceDataSource5DataSetTable5Left Top�   TTableTable5Active	DatabaseNameGOLFDB	TableNameHOLD.DBLeftHTop�   TDataSourceDataSource6DataSetQuery2Left Top�   TTableTable6Active	DatabaseNameGOLFDB	TableName
SPILLER.DBLeftHTop�   TQueryQuery1DatabaseNameGOLFDBSQL.Strings;Select * From Brut1 Where SpillerNummer Like :AktuelSpiller Params.Data
     AktuelSpiller        Left Top�   TQueryQuery2Active	DatabaseNameGOLFDBSQL.Strings=Select * From Spiller Where SpillerNummer Like :AktuelSpiller Params.Data
     AktuelSpiller        LeftHTop�   TQueryQuery3Active	DatabaseNameGOLFDBSQL.Strings;Select * From NETA1 Where SpillerNummer Like :AktuelSpiller Params.Data
     AktuelSpiller        Left Top    