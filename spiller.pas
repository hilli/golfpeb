unit Spiller;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Spin, StdCtrls, ExtCtrls, DB, DBTables;

type
  TSpillerindtastning = class(TForm)
    ScrollBar1: TScrollBar;
    SpinEdit1: TSpinEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Navn: TEdit;
    Label3: TLabel;
    Tilknytning: TEdit;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Table1: TTable;
    DataSource2: TDataSource;
    Table2: TTable;
    procedure Button1Click(Sender: TObject);
    procedure OpdaterScrollBar(Sender: TObject);
    procedure OpdaterSpinEdit(Sender: TObject);
    procedure ErPro(Sender: TObject);
    procedure ErAma(Sender: TObject);
  private
    { Private declarations }
  public
  Constructor Create;
    { Public declarations }
  end;

var
  Spillerindtastning: TSpillerindtastning;
  MaxSpillerAntal : Integer;

implementation

{$R *.DFM}

Constructor TSpillerindtastning.Create;
begin
     MaxSpillerAntal := Table2.FieldByName('MaxAntalSpillere').AsInteger;
     ScrollBar1.Max := MaxSpillerAntal;
end;


procedure TSpillerindtastning.Button1Click(Sender: TObject);
begin
   CLose;
end;

procedure TSpillerindtastning.OpdaterScrollBar(Sender: TObject);
begin
     ScrollBar1.Position := SpinEdit1.Value;
     if SpinEdit1.Value < 1 then
       SpinEdit1.Value := 1;
     if SpinEdit1.Value > MaxSpillerAntal then
        SpinEdit1.Value := MaxSpillerAntal;
end;

procedure TSpillerindtastning.OpdaterSpinEdit(Sender: TObject);
begin
     SpinEdit1.Value := ScrollBar1.Position;
end;

procedure TSpillerindtastning.ErPro(Sender: TObject);
begin
     if RadioButton2.Checked then
     begin
       Label4.Visible := False;
       SpinEdit2.Visible := False;
     end;
end;

procedure TSpillerindtastning.ErAma(Sender: TObject);
begin
     if RadioButton1.Checked then
     begin
       Label4.Visible := True;
       SpinEdit2.Visible := True;
     end;
end;

end.
