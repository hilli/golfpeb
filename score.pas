unit Score;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Spin, ExtCtrls, Mask, Grids, DBGrids, DB,
  DBTables, DBLookup;

type
  TScores = class(TForm)
    Panel1: TPanel;
    SpillerBox: TListBox;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    LNavn: TLabel;
    LTilknytning: TLabel;
    LStatus: TLabel;
    LHCP: TLabel;
    GroupBox2: TGroupBox;
    LHold: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Hul1: TMaskEdit;
    Hul2: TMaskEdit;
    Hul3: TMaskEdit;
    Hul4: TMaskEdit;
    Hul5: TMaskEdit;
    Hul6: TMaskEdit;
    Hul7: TMaskEdit;
    Hul8: TMaskEdit;
    Hul9: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Hul10: TMaskEdit;
    Label22: TLabel;
    Hul11: TMaskEdit;
    Label23: TLabel;
    Hul12: TMaskEdit;
    Label24: TLabel;
    Hul13: TMaskEdit;
    Label25: TLabel;
    Hul14: TMaskEdit;
    Label26: TLabel;
    Hul15: TMaskEdit;
    Label27: TLabel;
    Hul16: TMaskEdit;
    Label28: TLabel;
    Hul17: TMaskEdit;
    Label29: TLabel;
    Hul18: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    Spiller: TTable;
    DataSource2: TDataSource;
    Hold: TTable;
    DataSource3: TDataSource;
    Brutto: TTable;
    Database1: TDatabase;
    procedure Button3Click(Sender: TObject);
    procedure Hul1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaksEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Hul18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Opdater(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure OpdaterSpilleroplysninger( index: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create;
    { Public declarations }
  end;

var
  Scores: TScores;

implementation

{$R *.DFM}

constructor TScores.Create;
begin
     Spiller.Active := True;
     Spiller.First;
     SpillerBox.Items.Clear;
     while NOT Spiller.EOF do
     begin
          SpillerBox.Items.Add(
            Format('%2S',[Spiller.FieldByName('SpillerNummer').AsString]) +
            ' ' +
            Spiller.FieldByName('Spillernavn').AsString);
          Spiller.Next;
     end;
     if NOT SpillerBox.Items.Count = 0 then
        SpillerBox.ItemIndex := 1 ;
     OpdaterSpilleroplysninger( 1 );
end;

procedure TScores.Button3Click(Sender: TObject);
begin
     { Opdater DB }
     Close;
end;

procedure TScores.Hul1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul2.SetFocus;
end;

procedure TScores.MaksEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul3.SetFocus;
end;

procedure TScores.Hul3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul4.SetFocus;
end;

procedure TScores.Hul4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul5.SetFocus;
end;

procedure TScores.Hul5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul6.SetFocus;
end;

procedure TScores.Hul6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul7.SetFocus;
end;

procedure TScores.Hul7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul8.SetFocus;
end;

procedure TScores.Hul8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul9.SetFocus;
end;

procedure TScores.Hul9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul10.SetFocus;
end;

procedure TScores.Hul10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul11.SetFocus;
end;

procedure TScores.Hul11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul12.SetFocus;
end;

procedure TScores.Hul12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul13.SetFocus;
end;

procedure TScores.Hul13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul14.SetFocus;
end;

procedure TScores.Hul14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul15.SetFocus;
end;

procedure TScores.Hul15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul16.SetFocus;
end;

procedure TScores.Hul16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul17.SetFocus;
end;

procedure TScores.Hul17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Hul18.SetFocus;
end;

procedure TScores.Hul18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_RETURN then
        Button1.SetFocus;
end;

procedure TScores.Opdater(Sender: TObject);
var
   index : Integer;
begin
     Index := SpillerBox.ItemIndex + 1; { Spiller valgt i listbox }
     SpinEdit1.Value := Index;          { Opdater Spillernummer i spinEdit }
     OpdaterSpilleroplysninger( index );
end;

procedure TScores.OpdaterSpilleroplysninger( index: Integer);
var
   i: Integer;
begin
     Spiller.Active := True; { Opdatering af spilleroplysninger }
     Hold.Active := True;
     if Spiller.FindKey([index]) then
     begin
          LNavn.Caption := Spiller.FieldByName('Spillernavn').AsString;
          if Hold.FindKey([Spiller.FieldByName('HoldNummer').AsString]) then
             LHold.Caption := Hold.FieldByName('HoldNummer').AsString;
          LTilknytning.Caption := Spiller.FieldByName('Tilknytning').AsString;
          if Spiller.FieldByName('Amatoer').AsBoolean = True then
             LStatus.Caption := 'Amatør'
          else
              LStatus.Caption := 'Professionel';
          LHCP.Caption := Spiller.FieldByName('HCP').AsString;
     end;
     Spiller.Active := False;
     Hold.Active := False;
     { Opdatering af huller }
     if Brutto.FindKey([ index ]) then
     begin
          Hul1.Text := Brutto.FieldByName('Hul1').AsString;
          Hul2.Text := Brutto.FieldByName('Hul2').AsString;
          Hul3.Text := Brutto.FieldByName('Hul3').AsString;
          Hul4.Text := Brutto.FieldByName('Hul4').AsString;
          Hul5.Text := Brutto.FieldByName('Hul5').AsString;
          Hul6.Text := Brutto.FieldByName('Hul6').AsString;
          Hul7.Text := Brutto.FieldByName('Hul7').AsString;
          Hul8.Text := Brutto.FieldByName('Hul8').AsString;
          Hul9.Text := Brutto.FieldByName('Hul9').AsString;
          Hul10.Text := Brutto.FieldByName('Hul10').AsString;
          Hul11.Text := Brutto.FieldByName('Hul11').AsString;
          Hul12.Text := Brutto.FieldByName('Hul12').AsString;
          Hul13.Text := Brutto.FieldByName('Hul13').AsString;
          Hul14.Text := Brutto.FieldByName('Hul14').AsString;
          Hul15.Text := Brutto.FieldByName('Hul15').AsString;
          Hul16.Text := Brutto.FieldByName('Hul16').AsString;
          Hul17.Text := Brutto.FieldByName('Hul17').AsString;
          Hul18.Text := Brutto.FieldByName('Hul18').AsString;
     end
     else
     begin
          Hul1.Text := '';
          Hul2.Text := '';
          Hul3.Text := '';
          Hul4.Text := '';
          Hul5.Text := '';
          Hul6.Text := '';
          Hul7.Text := '';
          Hul8.Text := '';
          Hul9.Text := '';
          Hul10.Text := '';
          Hul11.Text := '';
          Hul12.Text := '';
          Hul13.Text := '';
          Hul14.Text := '';
          Hul15.Text := '';
          Hul16.Text := '';
          Hul17.Text := '';
          Hul18.Text := '';
     end;
end;

procedure TScores.SpinEdit1Change(Sender: TObject);
begin
     Spiller.Active := True;
     if SpinEdit1.Value < 1 then
        SpinEdit1.Value := 1;
     if SpinEdit1.Value > SpillerBox.Items.Count then
        SpinEdit1.Value := SpillerBox.Items.Count;
     SpillerBox.ItemIndex := SpinEdit1.Value - 1;
     OpdaterSpilleroplysninger( SpinEdit1.Value );
end;

procedure TScores.Button1Click(Sender: TObject); { Næste spiller }
begin
     if NOT (SpinEdit1.Value = SpillerBox.Items.Count) then
     begin
        SpinEdit1.Value := SpinEdit1.Value + 1;
        SpillerBox.ItemIndex := SpinEdit1.Value - 1;
        { Opdater DB }
        OpdaterSpilleroplysninger( SpinEdit1.Value );
     end;
end;

procedure TScores.Button2Click(Sender: TObject);
begin
     if NOT (SpinEdit1.Value = 1) then
     begin
        SpinEdit1.Value := SpinEdit1.Value - 1;
        SpillerBox.ItemIndex := SpinEdit1.Value - 1;
        { Opdater DB }
        OpdaterSpilleroplysninger( SpinEdit1.Value );
     end;
end;

end.
