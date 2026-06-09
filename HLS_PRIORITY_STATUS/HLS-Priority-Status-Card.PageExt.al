pageextension 90006 "HLSPriorityStatusCardPageExt" extends "EOS Purchase Request"
{
    layout
    {
        addafter("No.")
        {
            field("Priority Status"; Rec."Code")
            {
                ApplicationArea = All;
                Caption = 'Priority Status';
                ShowMandatory = true;
            }
        }
    }
}