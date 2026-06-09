table 90005 "HLS Priority Status"
{
    Caption = 'HLS Priority Status';
    DataCaptionFields = "Code", "Description";

    fields
    {
        field(1; "Code"; code[100])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }

        field(2; "Entry ID"; Guid)
        {
            Caption = 'Entry ID';
            DataClassification = SystemMetadata;
        }

        field(3; "Description"; Text[2048])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }

        field(4; "Blocked"; boolean)
        {
            Caption = 'Blocked';
            DataClassification = SystemMetadata;
        }

        field(5; "Created Date"; DateTime)
        {
            Caption = 'Created Date';
            DataClassification = SystemMetadata;
        }

        field(6; "Modified Date"; DateTime)
        {
            Caption = 'Modified Date';
            DataClassification = SystemMetadata;
        }

        field(7; "Created By"; Guid)
        {
            Caption = 'Created By';
            DataClassification = SystemMetadata;
            TableRelation = User."User Security ID";
        }

        field(8; "Modified By"; Guid)
        {
            Caption = 'Modified By';
            DataClassification = SystemMetadata;
            TableRelation = User."User Security ID";
        }

        field(9; "Created By User Name"; Text[100])
        {
            Caption = 'Created By User Name';
            FieldClass = FlowField;
            CalcFormula = lookup(User."User Name" where("User Security ID" = field("Created By")));
        }

        field(10; "Modified By User Name"; Text[100])
        {
            Caption = 'Modified By User Name';
            FieldClass = FlowField;
            CalcFormula = lookup(User."User Name" where("User Security ID" = field("Modified By")));
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }

        key(GuidKey; "Entry ID")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Description")
        {
        }
    }

    trigger OnInsert()
    begin
        if IsNullGuid("Entry ID") then begin
            "Entry ID" := CreateGuid();
        end;

        if "Created Date" = 0DT then begin
            "Created Date" := CurrentDateTime();
        end;

        if IsNullGuid("Created By") then begin
            "Created By" := UserSecurityId();
        end;
    end;

    trigger OnModify()
    begin
        "Modified Date" := CurrentDateTime();
        "Modified By" := UserSecurityId();
    end;
}