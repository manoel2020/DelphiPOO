unit ClassePessoa;

interface
     uses
        System.SysUtils;
type
   TPessoa = class

   private

   public
      nome:string;
      DataNasc: string;
      sexo: string;
      etnia: string;
      function Idade : integer;
   end;
implementation

function TPessoa.Idade : integer;
begin
   Result := Trunc((now - StrToDate(DataNasc))/365.25);
end;

end.
