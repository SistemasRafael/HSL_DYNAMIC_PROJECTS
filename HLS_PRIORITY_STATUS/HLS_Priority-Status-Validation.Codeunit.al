codeunit 90010 "HLSPriorityStatusValidation"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnBeforeApprovalEntryInsert', '', false, false)]
    local procedure OnBeforeApprovalEntryInsert(
        var ApprovalEntry: Record "Approval Entry";
        ApprovalEntryArgument: Record "Approval Entry";
        WorkflowStepArgument: Record "Workflow Step Argument";
        ApproverId: Code[50];
        var IsHandled: Boolean)
    var
        EOSPurchaseHeader: Record "EOS Purch. Request Header";
        RecordIdToApprove: RecordID;
    begin
        if ApprovalEntry."Table ID" = Database::"EOS Purch. Request Header" then begin

            RecordIdToApprove := ApprovalEntry."Record ID to Approve";

            if not EOSPurchaseHeader.Get(RecordIdToApprove) then begin

                IsHandled := true;

            end else begin

                if EOSPurchaseHeader."Code" = '' then begin

                    Error('El campo "Priority Status" es obligatorio');

                end;

            end;
        end;
    end;
}