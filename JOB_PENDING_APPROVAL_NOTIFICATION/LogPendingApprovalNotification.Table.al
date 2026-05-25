table 90000 "LogPendingApprovalNotification"
{
    Caption = 'Log Pending Approval Notification';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }

        field(2; "To"; Text[2048])
        {
            Caption = 'To';
        }

        field(3; "Date and Time"; DateTime)
        {
            Caption = 'Date and Time';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}