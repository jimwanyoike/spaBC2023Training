table 50100 CustomerCommission
{
    Caption = 'CustomerCommission';
    DataClassification = ToBeClassified;
    LookupPageId = CustomerCommissions;
    DrillDownPageId = CustomerCommissions;
    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer."No.";
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                CopyCustomerData()
            end;
        }
        field(3; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Commission Date"; Date)
        {
            Caption = 'Commission Date';
            DataClassification = CustomerContent;
        }
        field(5; Comments; Text[100])
        {
            Caption = 'Comments';
            DataClassification = CustomerContent;
        }
        field(6; "Commision Percentage"; Decimal)
        {
            Caption = 'Commision Percentage';
            DataClassification = CustomerContent;

        }
        field(7; "Comission Amount"; Decimal)
        {
            Caption = 'Comission Amount';
            DataClassification = CustomerContent;
        }
        field(8; "Sales Amount"; Decimal)
        {
            Caption = 'Sales Amount';
            DataClassification = ToBeClassified;
        }
        field(9; "No. Series"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Commision No"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        salesSetup: Record "Sales & Receivables Setup";

    begin
        salesSetup.Get();
        salesSetup.TestField("Customer Commission Nos");
        NoSeriesMgt.InitSeries(salesSetup."Customer Commission Nos", xRec."No. Series", 0D, "Commision No", "No. Series");
    end;

    local procedure CopyCustomerData()
    var
        customer: Record Customer;
    begin
        if (Customer.get("Customer No")) then begin
            "Customer Name" := customer.Name;
            Comments := customer.Comments;
            "Commision Percentage" := customer.CustomerPercentage;
            // "Sales Amount" := customer."Sales Amount";
        end;
    end;
}
