unit Golf;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, FileCtrl, Menus, Grids, DBGrids, DBTables, DB,
  Spiller, Hold, Score, Opsaet, indlaest;

type
  TGofl = class(TForm)
    MainMenu1: TMainMenu;
    Tunering1: TMenuItem;
    Stamdata1: TMenuItem;
    Spiller1: TMenuItem;
    Holdgen1: TMenuItem;
    Manuel1: TMenuItem;
    Tilfldig1: TMenuItem;
    Ny1: TMenuItem;
    Indls1: TMenuItem;
    Opstning1: TMenuItem;
    N1: TMenuItem;
    Afslut1: TMenuItem;
    Statistik1: TMenuItem;
    Tobefilledout1: TMenuItem;
    Resultater1: TMenuItem;
    Scores1: TMenuItem;
    Arkke1: TMenuItem;
    Brkke1: TMenuItem;
    Crkke1: TMenuItem;
    Pro1: TMenuItem;
    Hold1: TMenuItem;
    Exit: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Table1: TTable;
    Hints1: TMenuItem;
    Label1: TLabel;
    procedure Afslut1Click(Sender: TObject);
    procedure Spiller1Click(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure Manuel1Click(Sender: TObject);
    procedure Scores1Click(Sender: TObject);
    procedure Opstning1Click(Sender: TObject);
    procedure Indls1Click(Sender: TObject);
    procedure Arkke1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Gofl: TGofl;

implementation

{$R *.DFM}

procedure TGofl.Afslut1Click(Sender: TObject);
begin
     Close;
end;

procedure TGofl.Spiller1Click(Sender: TObject);
begin
     SpillerIndtastning.Create;
     Spillerindtastning.Showmodal;
end;

procedure TGofl.ExitClick(Sender: TObject);
begin
       Close;
end;

procedure TGofl.Manuel1Click(Sender: TObject);
begin
     HoldIndtastning.Create;
     HoldIndtastning.ShowModal;
end;

procedure TGofl.Scores1Click(Sender: TObject);
begin
     Scores.Create;
     Scores.ShowModal;
end;

procedure TGofl.Opstning1Click(Sender: TObject);
begin
     Opsaetng.ShowModal;
end;

procedure TGofl.Indls1Click(Sender: TObject);
begin
     indlaes.Create;
     indlaes.ShowModal;
     Label1.Caption := indlaes.Returned;
end;

procedure TGofl.Arkke1Click(Sender: TObject);
begin
     Beregn.ShowModal;
end;

end.
