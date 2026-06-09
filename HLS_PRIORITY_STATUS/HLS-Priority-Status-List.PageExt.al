pageextension 90005 "HLSPriorityStatusListPageExt" extends "EOS Purchase Request List"
{
    layout
    {
        addafter("EOS Document Class Code")
        {
            field("Priority Status"; Rec."Code")
            {
                ApplicationArea = All;
                Caption = 'Priority Status';
            }
        }
    }
}