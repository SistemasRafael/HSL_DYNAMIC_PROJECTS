page 90000 "LogPendingApprovalNotification"
{
    Caption = 'Log Pending Approval Notification';
    PageType = List;
    Editable = false;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "LogPendingApprovalNotification";
    SourceTableView = sorting("Entry No.") order(descending);

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("To"; Rec."To")
                {
                }
                field("Date and Time"; Rec."Date and Time")
                {
                }
            }
        }
    }
}