unit ClassCliente;

interface

uses ClassPessoa;

type
   //Essa Classe Herda todos os atributos e metodos de TPessoa.
   TCliente = class(TPessoa)
   private
      FvalorCredito: Currency;
      procedure SetvalorCredito(const Value: Currency);
   public
      constructor Create;overload;
      constructor Create(value:String);overload;
      constructor Create(value:Tpessoa);overload;
      property valorCredito:Currency read FvalorCredito write SetvalorCredito;
      //Reescreve a fun��o da Classe Pai.
      function RetornaNome:String; override;
      //Implementando o metodo, assinado na classe TPessoa(PAI);
      function MetodoAbstrado:String; override;
   end;
implementation

{ TCliente }

constructor TCliente.Create;
begin
   Nome := 'Novo Cliente';
end;

constructor TCliente.Create(value: String);
begin
   Nome := Value;
end;

constructor TCliente.Create(value: Tpessoa);
begin
   Nome := Value.Nome;
   dataNasc := Value.dataNasc;
   Sexo := Value.Sexo;
end;

function TCliente.MetodoAbstrado: String;
begin
   result := 'Eu sou o metodo abstract da Classe TPessoa(PAI)'+#13+
   'Implementado na classe TCliente(Filho)'+#13+
   'Sem ter a necessidade de ter o metodo implementado na classe pai'+#13+
   'Apenas a sua Assinatura na classe PAI � o Suficiente!!!';
end;

function TCliente.RetornaNome: String;
begin
   //Significa que o metodo � herdado.
   //se ele esta antes da implementa��o, significa que primeiro ele vai na
   //classe aonde esse metodo esta implementado, e executa ele, antes de continuar
   //a implementa��o abaixo..
   inherited;
   result := 'Eu sou filha de da Class'+Nome;
end;

procedure TCliente.SetvalorCredito(const Value: Currency);
begin
  FvalorCredito := Value;
end;

end.
