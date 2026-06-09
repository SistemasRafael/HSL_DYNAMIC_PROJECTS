page 90006 "HLSPriorityStatusCard"
{
    Caption = 'HLS Priority Status';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "HLS Priority Status";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec."Code")
                {
                    caption = 'Code';
                }

                field("Description"; Rec."Description")
                {
                    caption = 'Description';
                }
                field("Blocked"; Rec."Blocked")
                {
                    caption = 'Blocked';
                }
            }
        }
    }
}