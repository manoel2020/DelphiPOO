unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ClassePessoa, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   Pessoa1 : TPessoa;
   Pessoa2 : TPessoa;
begin
   Pessoa1 := TPessoa.Create;
   Pessoa2 := TPessoa.Create;
   try
      Pessoa1.nome := 'Pessoa1';
      Pessoa1.DataNasc := '07/06/1995';
      Pessoa2.nome := 'Pessoa2';
      Pessoa2.DataNasc := '13/06/1991';
      ShowMessage(Pessoa1.nome+' - '+IntToStr(Pessoa1.Idade));
      ShowMessage(Pessoa2.nome+' - '+IntToStr(Pessoa2.Idade));
   finally
      Pessoa1.Free;
   end;

end;

end.
