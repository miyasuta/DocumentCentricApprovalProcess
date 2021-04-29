
var approvalInfo = {
    numberOfApprovalSteps: $.context.ApprovalSteps.length,
    numberOfCompletedSteps: 0
};

$.context.approvalInfo = approvalInfo;
$.context.step = {};
$.context.approvalHistory = [];
$.context.approvalStatus = "InProgress"
$.context.numberOfApprovalStepsString = approvalInfo.numberOfApprovalSteps.toString();
