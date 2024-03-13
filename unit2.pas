unit Unit2;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls, Tabs,
  Buttons, ExtCtrls;

type
  TMultPageDlg = class(TForm)
    ButtonPanel: TPanel;
    TabSet: TTabSet;
    Notebook: TNotebook;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    HelpBtn: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure TabSetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MultPageDlg: TMultPageDlg;

implementation

{$R *.DFM}

procedure TMultPageDlg.FormCreate(Sender: TObject);
begin
  { make the number of Tabs = number of Pages,
    and have the same names }
  TabSet.Tabs := Notebook.Pages;
end;

procedure TMultPageDlg.TabSetClick(Sender: TObject);
begin
  { set visible Page to which Tab was clicked }
  Notebook.PageIndex := TabSet.TabIndex;
end;

end.
