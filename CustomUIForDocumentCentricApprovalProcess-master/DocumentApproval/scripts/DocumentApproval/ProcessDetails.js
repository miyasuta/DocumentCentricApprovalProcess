
// get the current step
var currentStep = $.context.approvalInfo.numberOfCompletedSteps;

// calculate due date
var dueDuration = $.context.ApprovalSteps[currentStep].DueDuration;
if (isNaN(dueDuration) || dueDuration < 0) {
    throw new Error("Value for DueDuration returned from rule needs to be a positive number, but was " + dueDuration);
}

var rel = 0;
if (!isNaN($.context.createdDate)) {
    rel = new Date() - new Date($.context.createdDate);
}

var minutes = Math.max(0, Math.round(dueDuration * 24 * 60));
rel = Math.max(0, Math.floor(rel / 60 / 1000)); // convert already passed time to minutes (no fractions, and if it's already in the past: zero)
$.context.rel = rel;
minutes -= rel;

if (isNaN(minutes)) {
    throw new Error("Internal error calculating Due Date");
}
$.context.step.dueDuration = "PT" + minutes + "M"; // minutes may be >60 according to the standard

// calculate final approval due date
var lastStep = $.context.approvalInfo.numberOfApprovalSteps - 1;
$.context.finalDueDate = new Date($.context.ApprovalSteps[lastStep].DueDate);

// Prepare User Task
$.context.comments = "";

// set approval step data
var approvalStepData = {
    ApproverUserName: $.context.ApprovalSteps[currentStep].ApproverData.UserName,
    ApproverEmail: $.context.ApprovalSteps[currentStep].ApproverData.EmailID,
    ApproverFirstName: $.context.ApprovalSteps[currentStep].ApproverData.FirstName,
    ApproverLastName: $.context.ApprovalSteps[currentStep].ApproverData.LastName,
    WatcherUserName: $.context.ApprovalSteps[currentStep].WatcherData.UserName ? $.context.ApprovalSteps[currentStep].WatcherData.UserName : "",
    WatcherEmail: $.context.ApprovalSteps[currentStep].WatcherData.EmailID ? $.context.ApprovalSteps[currentStep].WatcherData.EmailID : "",
    WatcherFirstName: $.context.ApprovalSteps[currentStep].WatcherData.FirstName ? $.context.ApprovalSteps[currentStep].WatcherData.FirstName : "",
    WatcherLastName: $.context.ApprovalSteps[currentStep].WatcherData.LastName ? $.context.ApprovalSteps[currentStep].WatcherData.LastName : "",
    StepName: $.context.ApprovalSteps[currentStep].StepName,
    CommentForApprover: $.context.ApprovalSteps[currentStep].CommentForApprover,
    DueDateFormatted: $.context.ApprovalSteps[currentStep].DueDateFormatted
}

$.context.step.approvalStepData = approvalStepData;
$.context.step.isHistoryProcessed = false;