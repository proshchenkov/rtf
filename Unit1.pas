unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Print1: TMenuItem;
    RichEdit1: TRichEdit;
    Open1: TMenuItem;
    Save1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    Font1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    StatusBar1: TStatusBar;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    N21: TMenuItem;
    N22: TMenuItem;
    procedure Print1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
  mySearchTypes: TSearchTypes;
  myFindOptions: TFindOptions;
begin
  mySearchTypes := [];
  with RichEdit1 do
  begin
    if frMatchCase in FindDialog1.Options then
      mySearchTypes := mySearchTypes + [stMatchCase];
    if frWholeWord in FindDialog1.Options then
      mySearchTypes := mySearchTypes + [stWholeWord];
    if SelLength <> 0 then
      StartPos := SelStart + SelLength
    else
      StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(FindDialog1.FindText, StartPos, ToEnd, mySearchTypes);
    if FoundAt <> -1 then
    begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(FindDialog1.FindText);
    end
    else
      Beep;
  end;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  FontDialog1.Font.Name := RichEdit1.SelAttributes.Name;
  FontDialog1.Font.Color := RichEdit1.SelAttributes.Color;
  FontDialog1.Font.Charset := RichEdit1.SelAttributes.Charset;
  FontDialog1.Font.Size := RichEdit1.SelAttributes.Size;
  FontDialog1.Font.Style := RichEdit1.SelAttributes.Style;
  if not FontDialog1.Execute then
    exit;
  RichEdit1.SelAttributes.Name := FontDialog1.Font.Name;
  RichEdit1.SelAttributes.Color := FontDialog1.Font.Color;
  RichEdit1.SelAttributes.Charset := FontDialog1.Font.Charset;
  RichEdit1.SelAttributes.Size := FontDialog1.Font.Size;
  RichEdit1.SelAttributes.Style := FontDialog1.Font.Style;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  FindDialog1.Position := Point(RichEdit1.Left + RichEdit1.Width,
    RichEdit1.Top);
  FindDialog1.Execute;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
  RichEdit1.Text := RichEdit1.Text + FormatDateTime('hh.nn', Time) + ' ' +
    DateToStr(Date);
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  RichEdit1.Text := '';
end;

procedure TForm1.N20Click(Sender: TObject);
begin
  if StatusBar1.Visible = False then
  begin
    StatusBar1.Visible := True;
    N20.Checked := True;
  end
  else
  begin
    StatusBar1.Visible := False;
    N20.Checked := False;
  end;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
  MessageDlg('Текстовый редактор', mtInformation, [mbOK], 0);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if MessageDlg('Выйти?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  RichEdit1.Undo;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  RichEdit1.CopyToClipboard;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  RichEdit1.ClearSelection;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    RichEdit1.Lines.LoadFromFile(OpenDialog1.filename);
    StatusBar1.Panels[0].Text := OpenDialog1.filename;
  end;
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
    RichEdit1.Print('');
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
var
  SelPos: Integer;
begin
  with TReplaceDialog(Sender) do
  begin
    SelPos := Pos(FindText, RichEdit1.Lines.Text);
    if SelPos > 0 then
    begin
      RichEdit1.SelStart := SelPos - 1;
      RichEdit1.SelLength := Length(FindText);
      RichEdit1.SelText := ReplaceText;
    end
    else
      MessageDlg(Concat('Could not find "', FindText, '" in RichEdit1.'),
        mtError, [mbOK], 0);
  end;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    RichEdit1.Lines.LoadFromFile(SaveDialog1.filename);
    StatusBar1.Panels[0].Text := SaveDialog1.filename;
  end;
end;

end.
