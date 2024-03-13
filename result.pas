unit Result;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables;

type
  TRes = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Res: TRes;

implementation

{$R *.DFM}

end.
