namespace spaBCTraining.spaBCTraining;

using Microsoft.Sales.Customer;

pageextension 50101 Customer_Ext extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(CustomerPercentage; Rec.CustomerPercentage)
            {

            }
            field(Commission; Rec.Commission)
            {

            }
            field(Comments; Rec.Comments)
            {

            }
            field("Sales Amount"; Rec."Sales Amount")
            {

            }
        }
    }
    actions
    {

    }
}
