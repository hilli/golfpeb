unit Opsaet;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls, Tabs,
  Buttons, ExtCtrls, Spin;

type
  TOpsaetng = class(TForm)
    ButtonPanel: TPanel;
    TabSet: TTabSet;
    Notebook: TNotebook;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    HelpBtn: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    SpinEdit2: TSpinEdit;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    GroupBox4: TGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure TabSetClick(Sender: TObject);
    procedure CheckB(Sender: TObject);
    procedure CheckA(Sender: TObject);
    procedure CheckPro(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Opsaetng: TOpsaetng;

implementation

{$R *.DFM}

procedure TOpsaetng.FormCreate(Sender: TObject);
begin
  { make the number of Tabs = number of Pages,
    and have the same names }
  TabSet.Tabs := Notebook.Pages;
end;

procedure TOpsaetng.TabSetClick(Sender: TObject);
begin
  { set visible Page to which Tab was clicked }
  Notebook.PageIndex := TabSet.TabIndex;
end;

procedure TOpsaetng.CheckB(Sender: TObject);
begin
     if CheckBox3.Checked then
        CheckBox4.Enabled := True
     else
        CheckBox4.Enabled := False;
end;

procedure TOpsaetng.CheckA(Sender: TObject);
begin
     if CheckBox2.Checked then
     begin
        CheckBox5.Enabled := True;
        SpinEdit4.Enabled := True;
        SpinEdit4.Value := 18;
        CheckBox3.Enabled := True;
        if CheckBox3.Checked then
           CheckBox4.Enabled := True;
     end
     else
     begin
        if CheckBox1.Checked = False then
           CheckBox5.Enabled := False;
        SpinEdit4.Value := 0;
        SpinEdit4.Enabled := False;
        CheckBox3.Enabled := False;
        CheckBox4.Enabled := False;
     end;
end;

procedure TOpsaetng.CheckPro(Sender: TObject);
begin
     if CheckBox6.Checked then
     begin
       SpinEdit5.Value := 18;
       SpinEdit5.Enabled := True
     end
     else
     begin
       SpinEdit5.Value := 0;
       SpinEdit5.Enabled := False;
     end;
end;

end.
