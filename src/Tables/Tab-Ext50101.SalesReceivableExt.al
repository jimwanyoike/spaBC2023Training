namespace spaBCTraining.spaBCTraining;

using Microsoft.Sales.Setup;
using Microsoft.Foundation.NoSeries;

tableextension 50101 "Sales&ReceivableExt" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Customer Commission Nos"; Code[30])
        {
            Caption = 'Customer Commission Nos';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;

        }
    }
}
