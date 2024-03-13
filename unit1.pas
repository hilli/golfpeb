unit Unit1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TBeregn = class(TForm)
    Table1: TTable;
    DataSource2: TDataSource;
    Table2: TTable;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    Table3: TTable;
    DataSource4: TDataSource;
    Table4: TTable;
    DataSource5: TDataSource;
    Table5: TTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DataSource6: TDataSource;
    Table6: TTable;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Beregn: TBeregn;

const pararray : array[1..18] of integer = (4,3,4,5,4,4,5,4,3,4,4,4,3,5,4,4,3,4);
const hcparray : array[1..18] of integer = (15,7,9,3,1,17,11,5,13,10,2,6,18,12,8,4,16,14);

implementation

{$R *.DFM}

procedure TBeregn.FormActivate(Sender: TObject);

  procedure beregnnetto(var BruttoTable : TTable);

    function streger(hcp, hcpkey : integer) : integer;
    begin
      if (hcp mod 18 >= hcpkey) then streger:=hcp div 18 + 1
      else streger:=hcp div 18;
    end;

  var
     hulstr : string[5];
     j,i, bruttosc, score: integer;

    begin
      for j:=1 to BruttoTable.FieldCount do
      begin
      { Der bruges en Query til at udvaelge det tupel i brut1.db, der svarer til spilleren j - kan det ikke goeres simplere?}
        Query1.Close;
        Query1.Prepare;
        Query1.Params[0].AsInteger := j;
        Query1.Open;

      { Der bruges en Query til at udvaelge det tupel i spiller.db, der svarer til spilleren j - kan det ikke goeres simplere?}
        Query2.Close;
        Query2.Prepare;
        Query2.Params[0].AsInteger := j;
        Query2.Open;

      { Der bruges en Query til at udvaelge det tupel i neta1.db, der svarer til spilleren j - kan det ikke goeres simplere?}
        Query3.Close;
        Query3.Prepare;
        Query3.Params[0].AsInteger := j;
        Query3.Open;

        Query1.FieldByName('Sum').AsInteger:=0;
        for i:=1 to 18 do
        begin
          str(i, hulstr);
          hulstr:='Hul'+hulstr;
          bruttosc:=Query1.FieldByName(hulstr).AsInteger;
          if bruttosc=0 then bruttosc:=99;
          score:=
            streger(Query2.FieldByName('HCP').AsInteger, hcparray[i]) +  pararray[i] - bruttosc + 2;
          if score < 0 then score:=0;
          Query3.FieldByName(hulstr).AsInteger:=score;
          Query3.FieldByName('Sum').Asinteger:=Query3.FieldByName('Sum').Asinteger + score;
          { spillere[spillernr].score[rundenr]:=spillere[spillernr].score[rundenr]+score;}
        end;
      end;
    end;
begin
  beregnnetto(Table1);
end;

end.
{procedure beregnholdscore(tmpresult : array of Tresult; holdnr, rundenr : integer);

  function findmax(var tmpresult : array of Tresult; hulnr, holdnr, rundenr : integer) : integer;
  var i, j, index, min, max : integer;
  begin
    for i:=0 to 3 do spillere[turnering.hold[holdnr].spillere[i]].slettet:=false;
    max:=0; min:=30; i:=0;
    for i := 0 to 3 do
      begin
        if (tmpresult[i,rundenr,hulnr].stableford < min) and not spillere[turnering.hold[holdnr].spillere[i]].slettet then
          begin
            min:=tmpresult[i,rundenr,hulnr].stableford;
            index:=i;
          end;
      end;
    spillere[turnering.hold[holdnr].spillere[index]].slettet:=true;
    for i:=0 to 3 do
      if not spillere[turnering.hold[holdnr].spillere[i]].slettet then max:=max+tmpresult[i,rundenr,hulnr].stableford;
    findmax:=max;
    skip;
  end;

var i,max : integer;
begin
  for i:=0 to 3 do spillere[turnering.hold[holdnr].spillere[i]].slettet:=false;
  with turnering.hold[holdnr] do
  begin
    max:=0;
    for i:=1 to 18 do max:=max+findmax(tmpresult, i, holdnr, rundenr);
    score[rundenr]:=max;
    score[3]:=score[1]+score[2];
    skip;
  end;
  skip;
  for i:=0 to 3 do spillere[turnering.hold[holdnr].spillere[i]].slettet:=false;
  rewrite(turneringsfil);
  write(turneringsfil,turnering);
  close(turneringsfil);                                                        }



