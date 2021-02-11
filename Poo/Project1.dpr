program Project1;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {Form1},
  ClassePessoa in 'ClassePessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
