
var decision = {
    "UserName": $.context.step.approvalStepData.ApproverUserName,
    "WatcherUserName": $.context.step.approvalStepData.WatcherUserName,
    "StepName": $.context.step.approvalStepData.StepName,
    "Decision": $.context.approvalStatus,
    "Comments": $.context.comments
};
$.context.lastComment = $.context.comments;

$.context.approvalHistory.push(decision);
$.context.comments = "";

if ($.context.approvalStatus == "approve") {
    $.context.approvalInfo.numberOfCompletedSteps += 1;
}