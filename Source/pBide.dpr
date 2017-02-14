program pBide;

uses
  Vcl.Forms,
  uBide in 'uBide.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
