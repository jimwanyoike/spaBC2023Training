namespace spaBCTraining.spaBCTraining;

using Microsoft.Sales.Setup;

pageextension 50102 "Sales&ReceivableExt" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Customer Commission Nos"; Rec."Customer Commission Nos")
            {

            }
        }
    }
}
