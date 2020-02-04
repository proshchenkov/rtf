unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Print1: TMenuItem;
    RichEdit1: TRichEdit;
    Save1: TMenuItem;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    Font1: TMenuItem;
    Format1: TMenuItem;
    Quit1: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    N1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    N2: TMenuItem;
    Found1: TMenuItem;
    Replace1: TMenuItem;
    SelectAll1: TMenuItem;
    N3: TMenuItem;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    SaveDialog1: TSaveDialog;
    procedure Print1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure Found1Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure Replace1Click(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm1.Found1Click(Sender: TObject);
begin
  FindDialog1.Position := Point(RichEdit1.Left + RichEdit1.Width,
    RichEdit1.Top);
  FindDialog1.Execute;
end;

procedure TForm1.Replace1Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.SelectAll1Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
end;

procedure TForm1.Undo1Click(Sender: TObject);
begin
  RichEdit1.Undo;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  RichEdit1.CopyToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  RichEdit1.ClearSelection;
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
    RichEdit1.Print('');
end;

procedure TForm1.Quit1Click(Sender: TObject);
begin
  Close;
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
    RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.rtf');
end;

end.
