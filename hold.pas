unit Hold;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, Spin;

type
  THoldIndtastning = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label3: TLabel;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create;
    { Public declarations }
  end;

var
  HoldIndtastning: THoldIndtastning;

implementation

{$R *.DFM}

constructor  THoldIndtastning.Create;
begin
     ListBox1.ItemIndex := 0;
end;

procedure THoldIndtastning.BitBtn1Click(Sender: TObject);
var
   index : Integer;
begin
     index := ListBox1.Itemindex;
     if ListBox2.Items.Count < 4 then
     begin
        ListBox2.Items.Add(ListBox1.Items[index]);
        ListBox1.Items.Delete(index);
        ListBox2.ItemIndex := 0;
        if ListBox2.Items.Count = 4 then
           BitBtn1.Enabled := False;
     end;
     if ListBox1.Items.Count = 0 then
        BitBtn1.Enabled := False
     else
     begin
          if ListBox1.Items.Count > index then
             ListBox1.ItemIndex := index
          else
              ListBox1.ItemIndex := index - 1;
     end;
     if ListBox2.Items.Count > 0 then
        BitBtn2.Enabled := True;
end;

procedure THoldIndtastning.BitBtn2Click(Sender: TObject);
var
   index : Integer;
begin
     index := ListBox2.Itemindex;
     ListBox1.Items.Add(ListBox2.Items[index]);
     ListBox2.Items.Delete(index);
     if ListBox2.Items.Count = 0 then
        BitBtn2.Enabled := False
     else
     begin
          if ListBox2.Items.Count > index then
             ListBox2.ItemIndex := index
          else
              ListBox2.ItemIndex := index - 1;
     end;
     if ListBox1.Items.Count > 0 then
        BitBtn1.Enabled := True;
end;

procedure THoldIndtastning.Button1Click(Sender: TObject);
begin
     Close;
end;

end.
