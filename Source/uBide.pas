unit uBide;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ChromeTabs, SynEdit, SynMemo,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, SynEditHighlighter,
  SynHighlighterBat, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Samples.Spin, ShellAPI,
  Vcl.ExtDlgs, Vcl.Themes;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    SplitView1: TSplitView;
    synm1: TSynMemo;
    synbtsyn1: TSynBatSyn;
    lbl1: TLabel;
    img1: TImage;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    se1: TSpinEdit;
    chksyntax: TCheckBox;
    chklinehighlight: TCheckBox;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    dlgOpen1: TOpenDialog;
    chkwordwrap: TCheckBox;
    trckbr1: TTrackBar;
    lbl4: TLabel;
    btn8: TButton;
    cbbthemelist: TComboBox;
    lbl5: TLabel;
    btn9: TButton;
    btn10: TButton;
    dlgSave1: TSaveDialog;
    procedure img1Click(Sender: TObject);
    procedure se1Change(Sender: TObject);
    procedure chksyntaxClick(Sender: TObject);
    procedure chklinehighlightClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure chkwordwrapClick(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbbthemelistChange(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn10Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://github.com/Inforcer25?tab=repositories', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  sfilename : string;
begin
  {sfilename := InputBox('File name', 'Please give your project a name', 'BatchIDE');
  sfilename := sfilename + '.bat';
  synm1.Lines.SaveToFile(sfilename);}

  if dlgSave1.Execute then
    begin
      sfilename := dlgSave1.FileName;
      synm1.Lines.SaveToFile(sfilename);
    end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  synm1.Lines.SaveToFile('BatchIDEexecute.bat');
  ShellExecute(Handle, 'open', 'BatchIDEexecute.bat', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  synm1.Undo;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  synm1.Redo;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://www.tutorialspoint.com/batch_script/', nil, nil, SW_SHOWNORMAL);
  ShellExecute(Handle, 'open', 'http://www.wikihow.com/Write-a-Batch-File', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    synm1.Lines.LoadFromFile(dlgOpen1.FileName);
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  trckbr1.Position := 230;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  synm1.Clear;
  synm1.Lines.Add('@echo off');
end;

procedure TForm1.cbbthemelistChange(Sender: TObject);
begin
  TStyleManager.SetStyle(cbbthemelist.Text);
end;

procedure TForm1.chklinehighlightClick(Sender: TObject);
begin
  if chklinehighlight.Checked then
    synm1.ActiveLineColor := clSilver
  else
    synm1.ActiveLineColor := clNone;
end;

procedure TForm1.chksyntaxClick(Sender: TObject);
begin
  if chksyntax.Checked then
    synbtsyn1.Enabled := True
  else
    synbtsyn1.Enabled := False;
end;

procedure TForm1.chkwordwrapClick(Sender: TObject);
begin
  if chkwordwrap.Checked then
    synm1.WordWrap := True
  else
    synm1.WordWrap := False;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Are you sure you want to exit? ALL UNSAVED PROGRESS WILL BE LOST!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose:= True
  else
    CanClose:= False;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  stylename : string;
begin
  for stylename in TStylemanager.StyleNames do
    cbbthemelist.Items.Add(stylename);

  cbbthemelist.ItemIndex := cbbthemelist.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.img1Click(Sender: TObject);
begin
  if SplitView1.Opened then
    SplitView1.Close
  else
    SplitView1.Open;
end;

procedure TForm1.se1Change(Sender: TObject);
begin
  synm1.Font.Size := se1.Value;
end;

procedure TForm1.trckbr1Change(Sender: TObject);
begin
  AlphaBlendValue := trckbr1.Position;
end;

end.
