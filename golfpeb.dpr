program Golfpeb;

uses
  Forms,
  Golf in 'GOLF.PAS' {Gofl},
  Spiller in 'SPILLER.PAS' {Spillerindtastning},
  Hold in 'HOLD.PAS' {HoldIndtastning},
  Score in 'SCORE.PAS' {Scores},
  Opsaet in 'OPSAET.PAS' {Opsaetng},
  Indlaest in 'INDLAEST.PAS' {Indlaes},
  Result in 'RESULT.PAS' {Res};

{$R *.RES}

begin
  Application.CreateForm(TGofl, Gofl);
  Application.CreateForm(TSpillerindtastning, Spillerindtastning);
  Application.CreateForm(THoldIndtastning, HoldIndtastning);
  Application.CreateForm(TScores, Scores);
  Application.CreateForm(TOpsaetng, Opsaetng);
  Application.CreateForm(TIndlaes, Indlaes);
  Application.CreateForm(TRes, Res);
  Application.Run;
end.
