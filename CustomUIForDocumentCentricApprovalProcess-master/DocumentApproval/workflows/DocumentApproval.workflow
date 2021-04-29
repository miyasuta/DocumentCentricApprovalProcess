{
	"contents": {
		"0d83f99f-4a35-4511-9c3d-e9fac4b596be": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "DocumentApproval",
			"subject": "${context.Title} ${context.RequestId}",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "FinalDueDate",
				"label": "Approve Due Date",
				"type": "string",
				"value": "${context.finalDueDate}"
			}, {
				"id": "ApprovalStatus",
				"label": "Approval Status",
				"type": "string",
				"value": "${context.approvalStatus}"
			}, {
				"id": "CurrentApprovalStep",
				"label": "Approval Step",
				"type": "string",
				"value": "${context.step.approvalStepData.StepName}"
			}, {
				"id": "NumberOfSteps",
				"label": "Number of Steps",
				"type": "string",
				"value": "${context.numberOfApprovalStepsString}"
			}, {
				"id": "ApproverEmailID",
				"label": "Approver Email",
				"type": "string",
				"value": "${context.step.approvalStepData.ApproverEmail}"
			}, {
				"id": "CurrentApprover",
				"label": "Approver",
				"type": "string",
				"value": "${context.step.approvalStepData.ApproverUserName}"
			}, {
				"id": "Requester",
				"label": "Requester",
				"type": "string",
				"value": "${context.Requester.FirstName}"
			}, {
				"id": "RequestID",
				"label": "Request ID",
				"type": "string",
				"value": "${context.RequestId}"
			}],
			"name": "DocumentApproval",
			"documentation": "Multi-step approval process to review and approve documents",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Process"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End Process"
				},
				"ef8256fa-e30e-449e-8aa4-49a55464bf93": {
					"name": "BoundaryTimerEvent1"
				},
				"ec9cd427-bdc5-4bff-a77c-ef6d2f7a19ca": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"2640bbc5-8457-45c5-a109-cd3f2bdc16c8": {
					"name": "Initialize Workflow"
				},
				"3666a8d4-473e-4624-a216-cfcc11e0c164": {
					"name": "merge"
				},
				"f870f84d-b553-46cf-ac54-0b9ad50a74a0": {
					"name": "Process Request Details"
				},
				"d89d3fad-a694-4238-a6d1-7ccfcf80a9c1": {
					"name": "Notify Approver"
				},
				"d50d04bb-3a60-4877-8034-bbba3cb4abad": {
					"name": "Approval Task"
				},
				"bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e": {
					"name": "decision"
				},
				"15322a3a-e70f-46f9-8e1d-74aa74b1e37b": {
					"name": "Notify Requester About Request Rejection"
				},
				"6a423883-2501-432d-876f-9368c2bc47d5": {
					"name": "Process Approval Result"
				},
				"0cb38a26-77c2-4241-b0fc-94ab3652d391": {
					"name": "Notify Requester About Request Approval"
				},
				"02f2b135-4049-471a-ada0-57c3f3f881ee": {
					"name": "Notify Requester About Rework"
				},
				"17d4bee6-7331-4e2f-9590-eb9470773e45": {
					"name": "Rework Task"
				},
				"7fe57128-a286-4219-bab2-c26c696a7d7b": {
					"name": "rework decision"
				},
				"30696301-743f-4016-9d30-de8a5bdf8832": {
					"name": "fully approved?"
				},
				"0bf5de74-3127-4a19-9c49-0f78e6e28363": {
					"name": "Notify Requester About Full Approval"
				},
				"b45c82b4-6256-49d4-a6d0-062550301e17": {
					"name": "Process Rework Result"
				},
				"8402446e-8c91-414e-baee-ca92d595c2d1": {
					"name": "Notify Approver (Due Date)"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"f1255548-fbfa-4b45-9167-b1a200b5e353": {
					"name": "SequenceFlow4"
				},
				"6238812d-a41d-4218-b483-c71468117ed0": {
					"name": "SequenceFlow5"
				},
				"88c48301-b74c-4fe4-a3b7-a8aa82fa1230": {
					"name": "SequenceFlow8"
				},
				"9080803b-e830-4dc7-938a-d75bfd8f22cb": {
					"name": "SequenceFlow9"
				},
				"05ca8209-c851-4c46-ac06-0612a2ddc7b5": {
					"name": "SequenceFlow10"
				},
				"3ed62327-aa47-4517-bcf5-bf5f5250092e": {
					"name": "SequenceFlow16"
				},
				"25025220-29e6-4e80-9170-8944b8e56c77": {
					"name": "reject"
				},
				"90ad0a6d-55a6-44b0-b6af-3109e64bf712": {
					"name": "SequenceFlow19"
				},
				"152531ae-8dce-456f-869f-703422edb233": {
					"name": "rework"
				},
				"b81aafff-ec87-47f3-a91b-4896667d3b89": {
					"name": "SequenceFlow24"
				},
				"33278f04-146e-4c98-9275-bd0be9416097": {
					"name": "SequenceFlow25"
				},
				"f02fce77-f26f-487e-95a1-9768023fdea4": {
					"name": "reapprove"
				},
				"d8f91c8c-2548-4f5d-9387-537ce887de24": {
					"name": "terminate"
				},
				"30b9a56e-9955-4785-afa1-3170da624959": {
					"name": "approve"
				},
				"f95ad3cd-a6c4-4463-a5f9-8a31be75ba49": {
					"name": "no"
				},
				"db3d8655-b800-472d-92d8-f2b1d958095a": {
					"name": "yes"
				},
				"a1659c2c-bc39-4602-af19-d4bec42711c4": {
					"name": "SequenceFlow32"
				},
				"d21cef00-7e63-4722-a1e7-809bdb765fca": {
					"name": "SequenceFlow33"
				},
				"356cb54a-9d6a-4677-95d3-febff33d7fc6": {
					"name": "SequenceFlow34"
				},
				"baab2024-a604-48e5-b924-1de3619f0b9d": {
					"name": "SequenceFlow37"
				},
				"7b1b114f-3507-44db-b7b7-ca8d29f65c3d": {
					"name": "SequenceFlow41"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Process",
			"sampleContextRefs": {
				"7f36ece3-b080-4682-92c2-7321995db263": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End Process"
		},
		"ef8256fa-e30e-449e-8aa4-49a55464bf93": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundarytimerevent1",
			"name": "BoundaryTimerEvent1",
			"attachedToRef": "d50d04bb-3a60-4877-8034-bbba3cb4abad",
			"eventDefinitions": {
				"93804803-b93c-4188-a771-8596a4105415": {}
			}
		},
		"ec9cd427-bdc5-4bff-a77c-ef6d2f7a19ca": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"2640bbc5-8457-45c5-a109-cd3f2bdc16c8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentApproval/Initialize.js",
			"id": "scripttask2",
			"name": "Initialize Workflow"
		},
		"3666a8d4-473e-4624-a216-cfcc11e0c164": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "merge"
		},
		"f870f84d-b553-46cf-ac54-0b9ad50a74a0": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentApproval/ProcessDetails.js",
			"id": "scripttask3",
			"name": "Process Request Details"
		},
		"d89d3fad-a694-4238-a6d1-7ccfcf80a9c1": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask4",
			"name": "Notify Approver",
			"mailDefinitionRef": "f266d9c2-494c-4cf8-8e43-b49f057c04b3"
		},
		"d50d04bb-3a60-4877-8034-bbba3cb4abad": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Request ${context.Title}  ${context.RequestId}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://DocumentCentricApproval.comsapbpmDocumentCentricTaskUI/com.sap.bpm.DocumentCentricTaskUI",
			"recipientUsers": "${context.step.approvalStepData.ApproverUserName}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Approval Task",
			"dueDateRef": "93804803-b93c-4188-a771-8596a4105415"
		},
		"bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "decision",
			"default": "30b9a56e-9955-4785-afa1-3170da624959"
		},
		"15322a3a-e70f-46f9-8e1d-74aa74b1e37b": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask5",
			"name": "Notify Requester About Request Rejection",
			"mailDefinitionRef": "3157aace-4bfc-446c-a930-ec353a21efa3"
		},
		"6a423883-2501-432d-876f-9368c2bc47d5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentApproval/ProcessApprovalResult.js",
			"id": "scripttask5",
			"name": "Process Approval Result"
		},
		"0cb38a26-77c2-4241-b0fc-94ab3652d391": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask6",
			"name": "Notify Requester About Request Approval",
			"documentation": "",
			"mailDefinitionRef": "bbc5a866-34f2-41f6-bf01-fdad1de280b0"
		},
		"02f2b135-4049-471a-ada0-57c3f3f881ee": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask7",
			"name": "Notify Requester About Rework",
			"mailDefinitionRef": "15d978a7-269c-412c-be7a-a17b9cdb8ca4"
		},
		"17d4bee6-7331-4e2f-9590-eb9470773e45": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework Required for Request  ${context.Title}  ${context.RequestId} ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://DocumentCentricApproval.comsapbpmDocumentCentricReworkUI/com.sap.bpm.DocumentCentricReworkUI",
			"recipientUsers": "${context.Requester.UserId} ",
			"id": "usertask2",
			"name": "Rework Task"
		},
		"7fe57128-a286-4219-bab2-c26c696a7d7b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "rework decision",
			"default": "f02fce77-f26f-487e-95a1-9768023fdea4"
		},
		"30696301-743f-4016-9d30-de8a5bdf8832": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "fully approved?",
			"default": "f95ad3cd-a6c4-4463-a5f9-8a31be75ba49"
		},
		"0bf5de74-3127-4a19-9c49-0f78e6e28363": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask8",
			"name": "Notify Requester About Full Approval",
			"mailDefinitionRef": "02183f0e-8a16-4f9c-8244-db9946562733"
		},
		"b45c82b4-6256-49d4-a6d0-062550301e17": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentApproval/PleaseReworkResult.js",
			"id": "scripttask7",
			"name": "Process Rework Result"
		},
		"8402446e-8c91-414e-baee-ca92d595c2d1": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask9",
			"name": "Notify Approver (Due Date)",
			"mailDefinitionRef": "1c20c9c8-8d38-4956-9a9f-a050d66cd2e2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "2640bbc5-8457-45c5-a109-cd3f2bdc16c8"
		},
		"f1255548-fbfa-4b45-9167-b1a200b5e353": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "2640bbc5-8457-45c5-a109-cd3f2bdc16c8",
			"targetRef": "3666a8d4-473e-4624-a216-cfcc11e0c164"
		},
		"6238812d-a41d-4218-b483-c71468117ed0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "3666a8d4-473e-4624-a216-cfcc11e0c164",
			"targetRef": "f870f84d-b553-46cf-ac54-0b9ad50a74a0"
		},
		"88c48301-b74c-4fe4-a3b7-a8aa82fa1230": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "f870f84d-b553-46cf-ac54-0b9ad50a74a0",
			"targetRef": "d89d3fad-a694-4238-a6d1-7ccfcf80a9c1"
		},
		"9080803b-e830-4dc7-938a-d75bfd8f22cb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "d89d3fad-a694-4238-a6d1-7ccfcf80a9c1",
			"targetRef": "d50d04bb-3a60-4877-8034-bbba3cb4abad"
		},
		"05ca8209-c851-4c46-ac06-0612a2ddc7b5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "d50d04bb-3a60-4877-8034-bbba3cb4abad",
			"targetRef": "6a423883-2501-432d-876f-9368c2bc47d5"
		},
		"3ed62327-aa47-4517-bcf5-bf5f5250092e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "6a423883-2501-432d-876f-9368c2bc47d5",
			"targetRef": "bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e"
		},
		"25025220-29e6-4e80-9170-8944b8e56c77": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStatus == \"reject\"}",
			"id": "sequenceflow18",
			"name": "reject",
			"sourceRef": "bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e",
			"targetRef": "15322a3a-e70f-46f9-8e1d-74aa74b1e37b"
		},
		"90ad0a6d-55a6-44b0-b6af-3109e64bf712": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "15322a3a-e70f-46f9-8e1d-74aa74b1e37b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"152531ae-8dce-456f-869f-703422edb233": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStatus == \"rework\"}",
			"id": "sequenceflow22",
			"name": "rework",
			"sourceRef": "bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e",
			"targetRef": "02f2b135-4049-471a-ada0-57c3f3f881ee"
		},
		"b81aafff-ec87-47f3-a91b-4896667d3b89": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "02f2b135-4049-471a-ada0-57c3f3f881ee",
			"targetRef": "17d4bee6-7331-4e2f-9590-eb9470773e45"
		},
		"33278f04-146e-4c98-9275-bd0be9416097": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "17d4bee6-7331-4e2f-9590-eb9470773e45",
			"targetRef": "b45c82b4-6256-49d4-a6d0-062550301e17"
		},
		"f02fce77-f26f-487e-95a1-9768023fdea4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "reapprove",
			"sourceRef": "7fe57128-a286-4219-bab2-c26c696a7d7b",
			"targetRef": "d89d3fad-a694-4238-a6d1-7ccfcf80a9c1"
		},
		"d8f91c8c-2548-4f5d-9387-537ce887de24": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStatus == \"terminated\"}",
			"id": "sequenceflow27",
			"name": "terminate",
			"sourceRef": "7fe57128-a286-4219-bab2-c26c696a7d7b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"30b9a56e-9955-4785-afa1-3170da624959": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "approve",
			"sourceRef": "bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e",
			"targetRef": "30696301-743f-4016-9d30-de8a5bdf8832"
		},
		"f95ad3cd-a6c4-4463-a5f9-8a31be75ba49": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "no",
			"sourceRef": "30696301-743f-4016-9d30-de8a5bdf8832",
			"targetRef": "0cb38a26-77c2-4241-b0fc-94ab3652d391"
		},
		"db3d8655-b800-472d-92d8-f2b1d958095a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalInfo.numberOfCompletedSteps == context.approvalInfo.numberOfApprovalSteps}",
			"id": "sequenceflow31",
			"name": "yes",
			"sourceRef": "30696301-743f-4016-9d30-de8a5bdf8832",
			"targetRef": "0bf5de74-3127-4a19-9c49-0f78e6e28363"
		},
		"a1659c2c-bc39-4602-af19-d4bec42711c4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "0cb38a26-77c2-4241-b0fc-94ab3652d391",
			"targetRef": "3666a8d4-473e-4624-a216-cfcc11e0c164"
		},
		"d21cef00-7e63-4722-a1e7-809bdb765fca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow33",
			"name": "SequenceFlow33",
			"sourceRef": "0bf5de74-3127-4a19-9c49-0f78e6e28363",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"356cb54a-9d6a-4677-95d3-febff33d7fc6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "b45c82b4-6256-49d4-a6d0-062550301e17",
			"targetRef": "7fe57128-a286-4219-bab2-c26c696a7d7b"
		},
		"baab2024-a604-48e5-b924-1de3619f0b9d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow37",
			"name": "SequenceFlow37",
			"sourceRef": "ef8256fa-e30e-449e-8aa4-49a55464bf93",
			"targetRef": "8402446e-8c91-414e-baee-ca92d595c2d1"
		},
		"7b1b114f-3507-44db-b7b7-ca8d29f65c3d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "SequenceFlow41",
			"sourceRef": "8402446e-8c91-414e-baee-ca92d595c2d1",
			"targetRef": "ec9cd427-bdc5-4bff-a77c-ef6d2f7a19ca"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"2a089a85-9a63-4020-bb2b-67864d921fd1": {},
				"49f61823-4cbf-44e3-bd48-11049bd6b318": {},
				"f4f16165-bef9-4429-978b-0ed928935db9": {},
				"5078b2d6-c81d-4609-a0df-7d40a9d29f9c": {},
				"29835d3c-8529-472a-bf0e-15a0c5c0dc08": {},
				"bb73bb55-4935-48ea-9e16-aa706d8b0959": {},
				"929d271b-a566-4a16-b5e2-ee7601f293b3": {},
				"8944b604-4763-4fb2-a900-19c58ebf5508": {},
				"cb6ad78f-a382-465e-ac06-92b089a072a1": {},
				"2df1ff00-15ad-40dc-bd11-1e2321d6abe2": {},
				"13348894-1e34-47e1-9038-ac46ff34642e": {},
				"0c9e27e6-34c5-43a0-8536-8ab346701f36": {},
				"97bff90c-fd35-48ef-8098-a7942e142ace": {},
				"7bb63dd0-5b8d-4afb-a991-04ec6bfc4c93": {},
				"fbf98524-a56e-4e51-8141-095cd096f03f": {},
				"9e3a779f-7efb-4564-885a-a81f96326b83": {},
				"08eb6b58-698a-4b04-b62d-5bbe5860f354": {},
				"d24700c4-3dce-4eed-9832-b608b6466ec8": {},
				"84012214-0a0b-4a3c-9782-e6aaf4acd740": {},
				"36f7e3d6-37e1-4766-856d-88471d296b82": {},
				"a928ec60-624c-4adb-99ad-4e084304d0d1": {},
				"53860897-6d90-4de6-9d7a-b83073fb130d": {},
				"83c4a1f2-2538-4aef-825d-313117d094fe": {},
				"f7753a08-2fdf-4351-81b4-5e6447393428": {},
				"9974938b-15f5-4938-a0bc-147e67837d41": {},
				"e71f88a5-a610-48c8-87c2-0673f956747b": {},
				"87829338-df3e-4885-97d4-a6737690c245": {},
				"dffac938-8ea7-48aa-86fa-04bfcb094100": {},
				"e6d8c662-b28a-4d6f-9eb5-5ab1e51b0c15": {},
				"1f54b871-4a32-4a59-bbdb-c9a214b57667": {},
				"c89fa4d6-24b7-465c-aa5a-631adb683e28": {},
				"4dbaf250-bc85-402a-9772-54f2323729cb": {},
				"5f36b5fc-f898-4fe1-a6bd-0f215f791fe4": {},
				"2a5a65e7-ad98-41d8-937e-ec39df4aaaa7": {},
				"bc3d3665-c0a3-4b84-a0d8-5339f99ffc25": {},
				"df4b4532-7f05-4092-843e-97fab0695bc5": {},
				"d25eef97-1136-4c3c-80a6-42c75917b747": {},
				"b6965c90-dca1-4bcb-afa0-c5bee84dbe32": {}
			}
		},
		"7f36ece3-b080-4682-92c2-7321995db263": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/DocumentApproval/StartPayload.json",
			"id": "default-start-context"
		},
		"93804803-b93c-4188-a771-8596a4105415": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "${context.step.dueDuration}",
			"id": "timereventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1300,
			"y": 99,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "2a089a85-9a63-4020-bb2b-67864d921fd1",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"2a089a85-9a63-4020-bb2b-67864d921fd1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "2640bbc5-8457-45c5-a109-cd3f2bdc16c8"
		},
		"49f61823-4cbf-44e3-bd48-11049bd6b318": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,115.4375 370.37073643296924,115.4375",
			"sourceSymbol": "2a089a85-9a63-4020-bb2b-67864d921fd1",
			"targetSymbol": "f4f16165-bef9-4429-978b-0ed928935db9",
			"object": "f1255548-fbfa-4b45-9167-b1a200b5e353"
		},
		"f4f16165-bef9-4429-978b-0ed928935db9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 349.37073643296924,
			"y": 93.125,
			"object": "3666a8d4-473e-4624-a216-cfcc11e0c164"
		},
		"5078b2d6-c81d-4609-a0df-7d40a9d29f9c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "370.37073643296924,115.6875 489.75,115.6875",
			"sourceSymbol": "f4f16165-bef9-4429-978b-0ed928935db9",
			"targetSymbol": "29835d3c-8529-472a-bf0e-15a0c5c0dc08",
			"object": "6238812d-a41d-4218-b483-c71468117ed0"
		},
		"29835d3c-8529-472a-bf0e-15a0c5c0dc08": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 439.75,
			"y": 87.25,
			"width": 100,
			"height": 60,
			"object": "f870f84d-b553-46cf-ac54-0b9ad50a74a0"
		},
		"bb73bb55-4935-48ea-9e16-aa706d8b0959": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "489.75,117.3125 627.625,117.3125",
			"sourceSymbol": "29835d3c-8529-472a-bf0e-15a0c5c0dc08",
			"targetSymbol": "929d271b-a566-4a16-b5e2-ee7601f293b3",
			"object": "88c48301-b74c-4fe4-a3b7-a8aa82fa1230"
		},
		"929d271b-a566-4a16-b5e2-ee7601f293b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 577.625,
			"y": 87.375,
			"width": 100,
			"height": 60,
			"object": "d89d3fad-a694-4238-a6d1-7ccfcf80a9c1"
		},
		"8944b604-4763-4fb2-a900-19c58ebf5508": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "627.625,117.40625 768.0625,117.40625",
			"sourceSymbol": "929d271b-a566-4a16-b5e2-ee7601f293b3",
			"targetSymbol": "cb6ad78f-a382-465e-ac06-92b089a072a1",
			"object": "9080803b-e830-4dc7-938a-d75bfd8f22cb"
		},
		"cb6ad78f-a382-465e-ac06-92b089a072a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 718.0625,
			"y": 87.4375,
			"width": 100,
			"height": 60,
			"object": "d50d04bb-3a60-4877-8034-bbba3cb4abad",
			"symbols": {
				"7a3352f0-5d28-4065-9d97-c25451b2ef06": {}
			}
		},
		"2df1ff00-15ad-40dc-bd11-1e2321d6abe2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "768.0625,117.21875 904,117.21875",
			"sourceSymbol": "cb6ad78f-a382-465e-ac06-92b089a072a1",
			"targetSymbol": "97bff90c-fd35-48ef-8098-a7942e142ace",
			"object": "05ca8209-c851-4c46-ac06-0612a2ddc7b5"
		},
		"13348894-1e34-47e1-9038-ac46ff34642e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 995.78125,
			"y": 95.96875,
			"object": "bd5d7e41-b9a4-4a35-a8ff-4a07a7d0d49e"
		},
		"0c9e27e6-34c5-43a0-8536-8ab346701f36": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1114,
			"y": 87,
			"width": 100,
			"height": 60,
			"object": "15322a3a-e70f-46f9-8e1d-74aa74b1e37b"
		},
		"97bff90c-fd35-48ef-8098-a7942e142ace": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 854,
			"y": 87,
			"width": 100,
			"height": 60,
			"object": "6a423883-2501-432d-876f-9368c2bc47d5"
		},
		"7bb63dd0-5b8d-4afb-a991-04ec6bfc4c93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "904,116.984375 1016.78125,116.984375",
			"sourceSymbol": "97bff90c-fd35-48ef-8098-a7942e142ace",
			"targetSymbol": "13348894-1e34-47e1-9038-ac46ff34642e",
			"object": "3ed62327-aa47-4517-bcf5-bf5f5250092e"
		},
		"fbf98524-a56e-4e51-8141-095cd096f03f": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 847.890625,
			"y": -130.015625,
			"width": 100,
			"height": 60,
			"object": "0cb38a26-77c2-4241-b0fc-94ab3652d391"
		},
		"9e3a779f-7efb-4564-885a-a81f96326b83": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1016.890625,117 1163.890625,117",
			"sourceSymbol": "13348894-1e34-47e1-9038-ac46ff34642e",
			"targetSymbol": "0c9e27e6-34c5-43a0-8536-8ab346701f36",
			"object": "25025220-29e6-4e80-9170-8944b8e56c77"
		},
		"08eb6b58-698a-4b04-b62d-5bbe5860f354": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1164,118.25 1317,118.25",
			"sourceSymbol": "0c9e27e6-34c5-43a0-8536-8ab346701f36",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "90ad0a6d-55a6-44b0-b6af-3109e64bf712"
		},
		"d24700c4-3dce-4eed-9832-b608b6466ec8": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 967,
			"y": 220,
			"width": 100,
			"height": 60,
			"object": "02f2b135-4049-471a-ada0-57c3f3f881ee"
		},
		"84012214-0a0b-4a3c-9782-e6aaf4acd740": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1016.890625,116.96875 1016.890625,250",
			"sourceSymbol": "13348894-1e34-47e1-9038-ac46ff34642e",
			"targetSymbol": "d24700c4-3dce-4eed-9832-b608b6466ec8",
			"object": "152531ae-8dce-456f-869f-703422edb233"
		},
		"36f7e3d6-37e1-4766-856d-88471d296b82": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 967,
			"y": 322,
			"width": 100,
			"height": 60,
			"object": "17d4bee6-7331-4e2f-9590-eb9470773e45"
		},
		"a928ec60-624c-4adb-99ad-4e084304d0d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1017,250 1017,352",
			"sourceSymbol": "d24700c4-3dce-4eed-9832-b608b6466ec8",
			"targetSymbol": "36f7e3d6-37e1-4766-856d-88471d296b82",
			"object": "b81aafff-ec87-47f3-a91b-4896667d3b89"
		},
		"53860897-6d90-4de6-9d7a-b83073fb130d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 995.5,
			"y": 537,
			"object": "7fe57128-a286-4219-bab2-c26c696a7d7b"
		},
		"83c4a1f2-2538-4aef-825d-313117d094fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1017,352 1017,457",
			"sourceSymbol": "36f7e3d6-37e1-4766-856d-88471d296b82",
			"targetSymbol": "5f36b5fc-f898-4fe1-a6bd-0f215f791fe4",
			"object": "33278f04-146e-4c98-9275-bd0be9416097"
		},
		"f7753a08-2fdf-4351-81b4-5e6447393428": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1016.5,558 626,558 626,117.375",
			"sourceSymbol": "53860897-6d90-4de6-9d7a-b83073fb130d",
			"targetSymbol": "929d271b-a566-4a16-b5e2-ee7601f293b3",
			"object": "f02fce77-f26f-487e-95a1-9768023fdea4"
		},
		"9974938b-15f5-4938-a0bc-147e67837d41": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1016.5,556 1317,556 1317,122",
			"sourceSymbol": "53860897-6d90-4de6-9d7a-b83073fb130d",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d8f91c8c-2548-4f5d-9387-537ce887de24"
		},
		"e71f88a5-a610-48c8-87c2-0673f956747b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 996.28125,
			"y": -29.03125,
			"object": "30696301-743f-4016-9d30-de8a5bdf8832"
		},
		"87829338-df3e-4885-97d4-a6737690c245": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1017.03125,116.96875 1017.03125,-8.03125",
			"sourceSymbol": "13348894-1e34-47e1-9038-ac46ff34642e",
			"targetSymbol": "e71f88a5-a610-48c8-87c2-0673f956747b",
			"object": "30b9a56e-9955-4785-afa1-3170da624959"
		},
		"dffac938-8ea7-48aa-86fa-04bfcb094100": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1017.28125,-8.03125 972.0859375,-8.03125 972.0859375,-100.015625 902,-100.015625",
			"sourceSymbol": "e71f88a5-a610-48c8-87c2-0673f956747b",
			"targetSymbol": "fbf98524-a56e-4e51-8141-095cd096f03f",
			"object": "f95ad3cd-a6c4-4463-a5f9-8a31be75ba49"
		},
		"e6d8c662-b28a-4d6f-9eb5-5ab1e51b0c15": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1080,
			"y": -130,
			"width": 100,
			"height": 60,
			"object": "0bf5de74-3127-4a19-9c49-0f78e6e28363"
		},
		"1f54b871-4a32-4a59-bbdb-c9a214b57667": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1017.28125,-7 1059.140625,-7 1059.140625,-100 1132,-100",
			"sourceSymbol": "e71f88a5-a610-48c8-87c2-0673f956747b",
			"targetSymbol": "e6d8c662-b28a-4d6f-9eb5-5ab1e51b0c15",
			"object": "db3d8655-b800-472d-92d8-f2b1d958095a"
		},
		"c89fa4d6-24b7-465c-aa5a-631adb683e28": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "897.890625,-100.015625 369,-100.015625 369,113.125",
			"sourceSymbol": "fbf98524-a56e-4e51-8141-095cd096f03f",
			"targetSymbol": "f4f16165-bef9-4429-978b-0ed928935db9",
			"object": "a1659c2c-bc39-4602-af19-d4bec42711c4"
		},
		"4dbaf250-bc85-402a-9772-54f2323729cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1125.75,-105 1317.375,-105 1317.375,115",
			"sourceSymbol": "e6d8c662-b28a-4d6f-9eb5-5ab1e51b0c15",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d21cef00-7e63-4722-a1e7-809bdb765fca"
		},
		"5f36b5fc-f898-4fe1-a6bd-0f215f791fe4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 967,
			"y": 427,
			"width": 100,
			"height": 60,
			"object": "b45c82b4-6256-49d4-a6d0-062550301e17"
		},
		"2a5a65e7-ad98-41d8-937e-ec39df4aaaa7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1016.75,457 1016.75,558",
			"sourceSymbol": "5f36b5fc-f898-4fe1-a6bd-0f215f791fe4",
			"targetSymbol": "53860897-6d90-4de6-9d7a-b83073fb130d",
			"object": "356cb54a-9d6a-4677-95d3-febff33d7fc6"
		},
		"bc3d3665-c0a3-4b84-a0d8-5339f99ffc25": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 718.0625,
			"y": 195.4375,
			"width": 100,
			"height": 60,
			"object": "8402446e-8c91-414e-baee-ca92d595c2d1"
		},
		"df4b4532-7f05-4092-843e-97fab0695bc5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "768.0625,163.4375 768.0625,225.4375",
			"sourceSymbol": "7a3352f0-5d28-4065-9d97-c25451b2ef06",
			"targetSymbol": "bc3d3665-c0a3-4b84-a0d8-5339f99ffc25",
			"object": "baab2024-a604-48e5-b924-1de3619f0b9d"
		},
		"d25eef97-1136-4c3c-80a6-42c75917b747": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 750.0625,
			"y": 286.9375,
			"width": 35,
			"height": 35,
			"object": "ec9cd427-bdc5-4bff-a77c-ef6d2f7a19ca"
		},
		"b6965c90-dca1-4bcb-afa0-c5bee84dbe32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "767.8125,225.4375 767.8125,304.4375",
			"sourceSymbol": "bc3d3665-c0a3-4b84-a0d8-5339f99ffc25",
			"targetSymbol": "d25eef97-1136-4c3c-80a6-42c75917b747",
			"object": "7b1b114f-3507-44db-b7b7-ca8d29f65c3d"
		},
		"7a3352f0-5d28-4065-9d97-c25451b2ef06": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 752.0625,
			"y": 131.4375,
			"object": "ef8256fa-e30e-449e-8aa4-49a55464bf93"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 7,
			"sequenceflow": 41,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 2,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 7,
			"mailtask": 10,
			"exclusivegateway": 6
		},
		"f266d9c2-494c-4cf8-8e43-b49f057c04b3": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.step.approvalStepData.ApproverEmail}",
			"subject": "Approval requested for \"${context.Title}\"",
			"text": "Dear ${context.step.approvalStepData.ApproverFirstName} ${context.step.approvalStepData.ApproverLastName},\n\nYou are assigned as the approver for the step \"${context.step.approvalStepData.StepName}\" of the request \"${context.Title}\". Please submit your decision regarding this request before ${context.step.approvalStepData.DueDateFormatted}.\n\nThank you!",
			"id": "maildefinition1"
		},
		"bbc5a866-34f2-41f6-bf01-fdad1de280b0": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.Requester.Email}",
			"cc": "${context.step.approvalStepData.WatcherEmail}",
			"subject": "Approval of Request \"${context.Title}\"",
			"text": "Dear ${context.Requester.FirstName} ${context.Requester.LastName},\n\nPlease note that your request \"${context.Title}\", request ID: ${context.RequestId} has been approved by ${context.step.approvalStepData.ApproverUserName} on the step \"${context.step.approvalStepData.StepName}\".",
			"id": "maildefinition2"
		},
		"3157aace-4bfc-446c-a930-ec353a21efa3": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "${context.Requester.Email}",
			"subject": "Rejection of Request \"${context.Title}\"",
			"text": "Dear ${context.Requester.FirstName} ${context.Requester.LastName},\n\nPlease note that your request \"${context.Title}\", request ID: ${context.RequestId} has been rejected by ${context.step.approvalStepData.ApproverUserName} on the step \"${context.step.approvalStepData.StepName}\" .",
			"id": "maildefinition3"
		},
		"15d978a7-269c-412c-be7a-a17b9cdb8ca4": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "${context.Requester.Email}",
			"subject": "Request \"${context.Title}\" Has To Be Reworked",
			"text": "Dear ${context.Requester.FirstName} ${context.Requester.LastName},\n\nPlease note that your request \"${context.Title}\", request ID: ${context.RequestId} has been sent to rework by ${context.step.approvalStepData.ApproverUserName} on the step \"${context.step.approvalStepData.StepName}\".",
			"id": "maildefinition4"
		},
		"02183f0e-8a16-4f9c-8244-db9946562733": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition5",
			"to": "${context.Requester.Email}",
			"cc": "${context.step.approvalStepData.WatcherEmail}",
			"subject": "Full Approval of Request \"${context.Title}\"",
			"text": "Dear ${context.Requester.FirstName} ${context.Requester.LastName},\n\nPlease note that your request \"${context.Title}\", request ID: ${context.RequestId} has been fully approved.",
			"id": "maildefinition5"
		},
		"1c20c9c8-8d38-4956-9a9f-a050d66cd2e2": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition6",
			"to": "${context.step.approvalStepData.ApproverEmail}",
			"subject": "Approval requested for \"${context.Title}\"",
			"text": "Dear ${context.step.approvalStepData.ApproverFirstName} ${context.step.approvalStepData.ApproverLastName},\n\nYou are assigned as the approver for the step \"${context.step.approvalStepData.StepName}\" of the request \"${context.Title}\", request ID: ${context.RequestId}. Please submit your decision regarding this request before ${context.step.approvalStepData.DueDateFormatted}.\n\nThank you!",
			"id": "maildefinition6"
		}
	}
}