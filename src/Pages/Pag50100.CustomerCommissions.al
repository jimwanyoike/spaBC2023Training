namespace spaBCTraining.spaBCTraining;

page 50100 CustomerCommissions
{
    ApplicationArea = All;
    Caption = 'CustomerCommissions';
    PageType = List;
    SourceTable = CustomerCommission;
    UsageCategory = Lists;
    CardPageId = CustomerCommissionCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                    Visible = false;
                }
                field("Commission No"; Rec."Commision No")
                {

                }
                field("Customer No"; Rec."Customer No")
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }

                field("Comission Amount"; Rec."Comission Amount")
                {
                    ToolTip = 'Specifies the value of the Comission Amount field.';
                }
                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.';
                }
                field("Commision Percentage"; Rec."Commision Percentage")
                {
                    ToolTip = 'Specifies the value of the Commision Percentage field.';
                }
                field("Commission Date"; Rec."Commission Date")
                {
                    ToolTip = 'Specifies the value of the Commission Date field.';
                }
                field("Sales Amount"; Rec."Sales Amount")
                {

                }


            }
        }
    }
}
