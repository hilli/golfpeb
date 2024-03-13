unit Indlaest;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DB, DBTables;

type
  TIndlaes = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Options: TTable;
    Database1: TDatabase;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Create;
    function Returned:String;
  end;

var
  Indlaes: TIndlaes;
  Valgt : String;

implementation

{$R *.DFM}

procedure TIndlaes.Create; { Kaldes før ShowModal}
begin
     Options.Active := True; { Åben DB }
     Options.First;
     ComboBox1.Text:=Options.FieldByName('Turneringsnavn').AsString;
     Options.Next;
     while NOT Options.EOF do
     begin
          ComboBox1.Items.Add(Options.FieldByName('Turneringsnavn').AsString);
          Options.Next;
     end;
end;

procedure TIndlaes.Button1Click(Sender: TObject);
begin
     if (Sender as TButton).Tag = 1 then { OK button valgt}
        Valgt := ComboBox1.Text
     else                                { Annuler Button Valgt}
        Valgt := '';
     Options.Active := False; { Luk DB }
     Close;
end;

function TIndlaes.Returned:String; { Kaldes efter ShowModal}
begin
     Returned := Valgt;
end;

end.
