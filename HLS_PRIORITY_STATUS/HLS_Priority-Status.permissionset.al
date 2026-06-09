permissionset 90001 "HLSPriorityStatus"
{
    Assignable = true;
    Permissions = tabledata "HLS Priority Status" = RIMD,
        table "HLS Priority Status" = X,
        codeunit HLSPriorityStatusValidation = X,
        page HLSPriorityStatusCard = X,
        page HLSPriorityStatusList = X;
}