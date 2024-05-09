namespace spaBCTraining.spaBCTraining;

using Microsoft.Sales.Customer;

tableextension 50100 Customer_Ext extends Customer
{
    fields
    {
        field(50100; CustomerPercentage; Decimal)
        {
            Caption = 'CustomerPercentage';
            DataClassification = ToBeClassified;
        }
        field(50101; Commission; Decimal)
        {
            Caption = 'Commission';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum(CustomerCommission."Comission Amount" where("Customer No" = field("No.")));
        }
        field(50102; Comments; Text[100])
        {
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(50103; "Sales Amount"; Decimal)
        {
            Caption = 'Sales Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum(CustomerCommission."Sales Amount" where("Customer No" = field("No.")));
        }
    }
}
