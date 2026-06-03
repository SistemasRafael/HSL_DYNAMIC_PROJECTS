tableextension 90005 "HLS Priority Status Table Ext" extends "EOS Purch. Request Header"
{
    fields
    {
        field(90005; "Code"; code[100])
        {
            Caption = 'HLS Priority Status';
            DataClassification = SystemMetadata;
            TableRelation = "HLS Priority Status"."Code" Where(Blocked = const(false));
        }
    }
}