namespace spaBCTraining.spaBCTraining;

codeunit 50100 CustomerCodeunit
{
    procedure CalculateCustomerCommision(var CustomerCommission: Record CustomerCommission)
    var
        myInt: Integer;
    begin
        CustomerCommission."Comission Amount" := (CustomerCommission."Commision Percentage" / 100) * CustomerCommission."Sales Amount";
    end;

}
