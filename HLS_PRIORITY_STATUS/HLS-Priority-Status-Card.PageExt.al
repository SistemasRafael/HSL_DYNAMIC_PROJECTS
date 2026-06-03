pageextension 90007 "HLSPriorityStatusCardPageExt" extends "EOS Purchase Request"
{
    layout
    {
        addafter("Approved Date")
        {
            field("Code"; Rec."Code")
            {
                ApplicationArea = All;
                Caption = 'Priority Status';
            }
        }
    }
}