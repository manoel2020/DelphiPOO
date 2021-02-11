program PooEmDelphi;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  ClassPessoa in 'ClassPessoa.pas',
  ClassSQL in 'ClassSQL.pas',
  ClassCliente in 'ClassCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
