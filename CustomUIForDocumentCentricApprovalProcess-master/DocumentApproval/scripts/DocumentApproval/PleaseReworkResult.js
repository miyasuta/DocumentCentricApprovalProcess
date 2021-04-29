var decision = {
    "UserName": $.context.Requester.UserId,
    "StepName": $.context.step.approvalStepData.StepName,
    "Decision": $.context.approvalStatus,
    "Comments": $.context.comments
};
$.context.lastComment = $.context.comments;

$.context.approvalHistory.push(decision);
$.context.comments = "";