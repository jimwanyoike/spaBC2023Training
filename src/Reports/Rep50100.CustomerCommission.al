namespace spaBCTraining.spaBCTraining;

report 50100 CustomerCommission
{
    ApplicationArea = All;
    Caption = 'CustomerCommission';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Customer Commision.RDL';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(CustomerCommission; CustomerCommission)
        {
            column(ComissionAmount; "Comission Amount")
            {
            }
            column(Comments; Comments)
            {
            }
            column(CommisionNo; "Commision No")
            {
            }
            column(CommisionPercentage; "Commision Percentage")
            {
            }
            column(CommissionDate; "Commission Date")
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column(CustomerNo; "Customer No")
            {
            }
            column(No; No)
            {
            }
            column(SalesAmount; "Sales Amount")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
