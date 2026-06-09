page 90005 "HLSPriorityStatusList"
{
    Caption = 'HLS Priority Status List';
    PageType = List;
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "HLS Priority Status";
    CardPageId = "HLSPriorityStatusCard";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
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

                field("Created By"; Rec."Created By User Name")
                {
                    Editable = false;
                    Caption = 'Created By';
                }

                field("Modified By"; Rec."Modified By User Name")
                {
                    Editable = false;
                    Caption = 'Modified By';
                }

                field("Created Date"; Rec."Created Date")
                {
                    Caption = 'Created Date';
                }

                field("Modified Date"; Rec."Modified Date")
                {
                    Caption = 'Modified Date';
                }
            }
        }
    }
}