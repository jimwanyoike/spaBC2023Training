namespace spaBCTraining.spaBCTraining;

page 50101 CustomerCommissionCard
{
    ApplicationArea = All;
    Caption = 'CustomerCommissionCard';
    PageType = Card;
    SourceTable = CustomerCommission;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
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
                field("Sales Amount"; Rec."Sales Amount")
                {

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
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CalculateCommision)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Calculate;
                trigger OnAction()
                var
                    commissionCU: Codeunit "CustomerCodeunit";
                begin
                    commissionCU.CalculateCustomerCommision(Rec);

                end;
            }
        }
    }
}
