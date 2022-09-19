// Generated using Sourcery 1.8.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
extension ActionDeviceRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
            isConcreteDevice = try xcRequired(element: "isConcreteDevice", from: json)
            operatingSystemVersion = try xcRequired(element: "operatingSystemVersion", from: json)
            operatingSystemVersionWithBuildNumber = try xcRequired(element: "operatingSystemVersionWithBuildNumber", from: json)
            nativeArchitecture = try xcRequired(element: "nativeArchitecture", from: json)
            modelName = try xcRequired(element: "modelName", from: json)
            modelCode = try xcRequired(element: "modelCode", from: json)
            modelUTI = try xcRequired(element: "modelUTI", from: json)
            identifier = try xcRequired(element: "identifier", from: json)
            isWireless = xcOptional(element: "isWireless", from: json)
            cpuKind = xcOptional(element: "cpuKind", from: json)
            cpuCount = xcOptional(element: "cpuCount", from: json)
            cpuSpeedInMhz = xcOptional(element: "cpuSpeedInMhz", from: json)
            busSpeedInMhz = xcOptional(element: "busSpeedInMhz", from: json)
            ramSizeInMegabytes = xcOptional(element: "ramSizeInMegabytes", from: json)
            physicalCPUCoresPerPackage = xcOptional(element: "physicalCPUCoresPerPackage", from: json)
            logicalCPUCoresPerPackage = xcOptional(element: "logicalCPUCoresPerPackage", from: json)
            platformRecord = try xcRequired(element: "platformRecord", from: json)
        } catch {
            logError("Error parsing ActionDeviceRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionPlatformRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            identifier = try xcRequired(element: "identifier", from: json)
            userDescription = try xcRequired(element: "userDescription", from: json)
        } catch {
            logError("Error parsing ActionPlatformRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            schemeCommandName = try xcRequired(element: "schemeCommandName", from: json)
            schemeTaskName = try xcRequired(element: "schemeTaskName", from: json)
            title = xcOptional(element: "title", from: json)
            startedTime = try xcRequired(element: "startedTime", from: json)
            endedTime = try xcRequired(element: "endedTime", from: json)
            runDestination = try xcRequired(element: "runDestination", from: json)
            buildResult = try xcRequired(element: "buildResult", from: json)
            actionResult = try xcRequired(element: "actionResult", from: json)
        } catch {
            logError("Error parsing ActionRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionResult: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            resultName = try xcRequired(element: "resultName", from: json)
            status = try xcRequired(element: "status", from: json)
            metrics = try xcRequired(element: "metrics", from: json)
            issues = try xcRequired(element: "issues", from: json)
            coverage = try xcRequired(element: "coverage", from: json)
            timelineRef = xcOptional(element: "timelineRef", from: json)
            logRef = xcOptional(element: "logRef", from: json)
            testsRef = xcOptional(element: "testsRef", from: json)
            diagnosticsRef = xcOptional(element: "diagnosticsRef", from: json)
        } catch {
            logError("Error parsing ActionResult: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionRunDestinationRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            displayName = try xcRequired(element: "displayName", from: json)
            targetArchitecture = try xcRequired(element: "targetArchitecture", from: json)
            targetDeviceRecord = try xcRequired(element: "targetDeviceRecord", from: json)
            localComputerRecord = try xcRequired(element: "localComputerRecord", from: json)
            targetSDKRecord = try xcRequired(element: "targetSDKRecord", from: json)
        } catch {
            logError("Error parsing ActionRunDestinationRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionSDKRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
            identifier = try xcRequired(element: "identifier", from: json)
            operatingSystemVersion = try xcRequired(element: "operatingSystemVersion", from: json)
            isInternal = xcOptional(element: "isInternal", from: json)
        } catch {
            logError("Error parsing ActionSDKRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestActivitySummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            title = try xcRequired(element: "title", from: json)
            activityType = try xcRequired(element: "activityType", from: json)
            uuid = try xcRequired(element: "uuid", from: json)
            start = xcOptional(element: "start", from: json)
            finish = xcOptional(element: "finish", from: json)
            attachments = xcArray(element: "attachments", from: json)
                .ofType(ActionTestAttachment.self)
            subactivities = xcArray(element: "subactivities", from: json)
                .ofType(ActionTestActivitySummary.self)
        } catch {
            logError("Error parsing ActionTestActivitySummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestAttachment: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            uniformTypeIdentifier = try xcRequired(element: "uniformTypeIdentifier", from: json)
            name = xcOptional(element: "name", from: json)
            timestamp = xcOptional(element: "timestamp", from: json)
            lifetime = try xcRequired(element: "lifetime", from: json)
            inActivityIdentifier = try xcRequired(element: "inActivityIdentifier", from: json)
            filename = xcOptional(element: "filename", from: json)
            payloadRef = xcOptional(element: "payloadRef", from: json)
            payloadSize = try xcRequired(element: "payloadSize", from: json)
        } catch {
            logError("Error parsing ActionTestAttachment: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestFailureSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            message = xcOptional(element: "message", from: json)
            fileName = xcOptional(element: "fileName", from: json) ?? String()
            lineNumber = xcOptional(element: "lineNumber", from: json) ?? 0
            isPerformanceFailure = xcOptional(element: "isPerformanceFailure", from: json) ?? false
            uuid = try xcRequired(element: "uuid", from: json)
            issueType = xcOptional(element: "issueType", from: json)
            detailedDescription = xcOptional(element: "detailedDescription", from: json)
            attachments = xcArray(element: "attachments", from: json)
                .ofType(ActionTestAttachment.self)
            sourceCodeContext = xcOptional(element: "sourceCodeContext", from: json)
            timestamp = xcOptional(element: "timestamp", from: json)
            isTopLevelFailure = xcOptional(element: "isTopLevelFailure", from: json) ?? false
        } catch {
            logError("Error parsing ActionTestFailureSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestMetadata: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
            identifier = try xcRequired(element: "identifier", from: json)
            testStatus = try xcRequired(element: "testStatus", from: json)
            duration = xcOptional(element: "duration", from: json)
            summaryRef = xcOptional(element: "summaryRef", from: json)
            performanceMetricsCount = xcOptional(element: "performanceMetricsCount", from: json)
            failureSummariesCount = xcOptional(element: "failureSummariesCount", from: json)
            activitySummariesCount = xcOptional(element: "activitySummariesCount", from: json)
        } catch {
            logError("Error parsing ActionTestMetadata: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestPerformanceMetricSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            displayName = try xcRequired(element: "displayName", from: json)
            unitOfMeasurement = try xcRequired(element: "unitOfMeasurement", from: json)
            measurements = xcArray(element: "measurements", from: json)
                .ofType(Double.self)
            identifier = xcOptional(element: "identifier", from: json)
            baselineName = xcOptional(element: "baselineName", from: json)
            baselineAverage = xcOptional(element: "baselineAverage", from: json)
            maxPercentRegression = xcOptional(element: "maxPercentRegression", from: json)
            maxPercentRelativeStandardDeviation = xcOptional(element: "maxPercentRelativeStandardDeviation", from: json)
            maxRegression = xcOptional(element: "maxRegression", from: json)
            maxStandardDeviation = xcOptional(element: "maxStandardDeviation", from: json)
        } catch {
            logError("Error parsing ActionTestPerformanceMetricSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestPlanRunSummaries: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            summaries = xcArray(element: "summaries", from: json)
                .ofType(ActionTestPlanRunSummary.self)
        } catch {
            logError("Error parsing ActionTestPlanRunSummaries: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestPlanRunSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
            testableSummaries = xcArray(element: "testableSummaries", from: json)
                .ofType(ActionTestableSummary.self)
        } catch {
            logError("Error parsing ActionTestPlanRunSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestRepetitionPolicySummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            iteration = try xcRequired(element: "iteration", from: json)
            totalIterations = try xcRequired(element: "totalIterations", from: json)
            repetitionMode = xcOptional(element: "repetitionMode", from: json)
        } catch {
            logError("Error parsing ActionTestRepetitionPolicySummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
            identifier = try xcRequired(element: "identifier", from: json)
            testStatus = try xcRequired(element: "testStatus", from: json)
            duration = xcOptional(element: "duration", from: json) ?? 0
            performanceMetrics = xcArray(element: "performanceMetrics", from: json)
                .ofType(ActionTestPerformanceMetricSummary.self)
            failureSummaries = xcArray(element: "failureSummaries", from: json)
                .ofType(ActionTestFailureSummary.self)
            activitySummaries = xcArray(element: "activitySummaries", from: json)
                .ofType(ActionTestActivitySummary.self)
            repetitionPolicySummary = xcOptional(element: "repetitionPolicySummary", from: json)
        } catch {
            logError("Error parsing ActionTestSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestSummaryGroup: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = xcOptional(element: "name", from: json)
            identifier = xcOptional(element: "identifier", from: json)
            duration = try xcRequired(element: "duration", from: json)
            subtestGroups = xcArray(element: "subtests", from: json)
                .ofType(ActionTestSummaryGroup.self)
            subtests = xcArray(element: "subtests", from: json)
                .ofType(ActionTestMetadata.self)
        } catch {
            logError("Error parsing ActionTestSummaryGroup: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionTestableSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            projectRelativePath = xcOptional(element: "projectRelativePath", from: json)
            targetName = xcOptional(element: "targetName", from: json)
            testKind = xcOptional(element: "testKind", from: json)
            tests = xcArray(element: "tests", from: json)
                .ofType(ActionTestSummaryGroup.self)
            diagnosticsDirectoryName = xcOptional(element: "diagnosticsDirectoryName", from: json)
            failureSummaries = xcArray(element: "failureSummaries", from: json)
                .ofType(ActionTestFailureSummary.self)
            testLanguage = xcOptional(element: "testLanguage", from: json)
            testRegion = xcOptional(element: "testRegion", from: json)
        } catch {
            logError("Error parsing ActionTestableSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActionsInvocationRecord: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            metadataRef = xcOptional(element: "metadataRef", from: json)
            metrics = try xcRequired(element: "metrics", from: json)
            issues = try xcRequired(element: "issues", from: json)
            actions = xcArray(element: "actions", from: json)
                .ofType(ActionRecord.self)
            archive = xcOptional(element: "archive", from: json)
        } catch {
            logError("Error parsing ActionsInvocationRecord: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogAnalyzerControlFlowStep: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            parentIndex = try xcRequired(element: "parentIndex", from: json)
            title = try xcRequired(element: "title", from: json)
            startLocation = xcOptional(element: "startLocation", from: json)
            endLocation = xcOptional(element: "endLocation", from: json)
            edges = xcArray(element: "edges", from: json)
                .ofType(ActivityLogAnalyzerControlFlowStepEdge.self)
        } catch {
            logError("Error parsing ActivityLogAnalyzerControlFlowStep: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogAnalyzerControlFlowStepEdge: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            startLocation = xcOptional(element: "startLocation", from: json)
            endLocation = xcOptional(element: "endLocation", from: json)
        } catch {
            logError("Error parsing ActivityLogAnalyzerControlFlowStepEdge: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogAnalyzerEventStep: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            parentIndex = try xcRequired(element: "parentIndex", from: json)
            title = try xcRequired(element: "title", from: json)
            location = xcOptional(element: "location", from: json)
            description = try xcRequired(element: "description", from: json)
            callDepth = try xcRequired(element: "callDepth", from: json)
        } catch {
            logError("Error parsing ActivityLogAnalyzerEventStep: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogAnalyzerResultMessage: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            type = try xcRequired(element: "type", from: json)
            title = try xcRequired(element: "title", from: json)
            shortTitle = xcOptional(element: "shortTitle", from: json)
            category = xcOptional(element: "category", from: json)
            location = try xcRequired(element: "location", from: json)
            annotations = xcArray(element: "annotations", from: json)
                .ofType(ActivityLogMessageAnnotation.self)
            controlFlowSteps = xcArray(element: "steps", from: json)
                .ofType(ActivityLogAnalyzerControlFlowStep.self)
            eventSteps = xcArray(element: "steps", from: json)
                .ofType(ActivityLogAnalyzerEventStep.self)
            resultType = xcOptional(element: "resultType", from: json)
            keyEventIndex = try xcRequired(element: "keyEventIndex", from: json)
        } catch {
            logError("Error parsing ActivityLogAnalyzerResultMessage: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogAnalyzerWarningMessage: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            type = try xcRequired(element: "type", from: json)
            title = try xcRequired(element: "title", from: json)
            shortTitle = xcOptional(element: "shortTitle", from: json)
            category = xcOptional(element: "category", from: json)
            location = try xcRequired(element: "location", from: json)
            annotations = xcArray(element: "annotations", from: json)
                .ofType(ActivityLogMessageAnnotation.self)
        } catch {
            logError("Error parsing ActivityLogAnalyzerWarningMessage: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogCommandInvocationSection: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            domainType = try xcRequired(element: "domainType", from: json)
            title = try xcRequired(element: "title", from: json)
            startTime = xcOptional(element: "startTime", from: json)
            duration = try xcRequired(element: "duration", from: json)
            result = xcOptional(element: "result", from: json)
            subsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogMajorSection.self)
            unitTestSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogUnitTestSection.self)
            commandInvocationSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogCommandInvocationSection.self)
            targetBuildSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogTargetBuildSection.self)
            messages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogMessage.self)
            resultMessages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerResultMessage.self)
            warningMessage = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerWarningMessage.self)
            commandDetails = try xcRequired(element: "commandDetails", from: json)
            emittedOutput = xcOptional(element: "emittedOutput", from: json)
            exitCode = xcOptional(element: "exitCode", from: json)
        } catch {
            logError("Error parsing ActivityLogCommandInvocationSection: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogMajorSection: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            domainType = try xcRequired(element: "domainType", from: json)
            title = try xcRequired(element: "title", from: json)
            startTime = xcOptional(element: "startTime", from: json)
            duration = try xcRequired(element: "duration", from: json)
            result = xcOptional(element: "result", from: json)
            subsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogMajorSection.self)
            unitTestSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogUnitTestSection.self)
            commandInvocationSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogCommandInvocationSection.self)
            targetBuildSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogTargetBuildSection.self)
            messages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogMessage.self)
            resultMessages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerResultMessage.self)
            warningMessage = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerWarningMessage.self)
            subtitle = xcOptional(element: "subtitle", from: json)
        } catch {
            logError("Error parsing ActivityLogMajorSection: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogMessage: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            type = try xcRequired(element: "type", from: json)
            title = try xcRequired(element: "title", from: json)
            shortTitle = xcOptional(element: "shortTitle", from: json)
            category = xcOptional(element: "category", from: json)
            location = xcOptional(element: "location", from: json)
            annotations = xcArray(element: "annotations", from: json)
                .ofType(ActivityLogMessageAnnotation.self)
        } catch {
            logError("Error parsing ActivityLogMessage: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogMessageAnnotation: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            title = try xcRequired(element: "title", from: json)
            location = xcOptional(element: "location", from: json)
        } catch {
            logError("Error parsing ActivityLogMessageAnnotation: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogSection: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            domainType = try xcRequired(element: "domainType", from: json)
            title = try xcRequired(element: "title", from: json)
            startTime = xcOptional(element: "startTime", from: json)
            duration = try xcRequired(element: "duration", from: json)
            result = xcOptional(element: "result", from: json)
            subsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogMajorSection.self)
            unitTestSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogUnitTestSection.self)
            commandInvocationSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogCommandInvocationSection.self)
            targetBuildSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogTargetBuildSection.self)
            messages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogMessage.self)
            resultMessages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerResultMessage.self)
            warningMessage = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerWarningMessage.self)
        } catch {
            logError("Error parsing ActivityLogSection: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogTargetBuildSection: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            domainType = try xcRequired(element: "domainType", from: json)
            title = try xcRequired(element: "title", from: json)
            startTime = xcOptional(element: "startTime", from: json)
            duration = try xcRequired(element: "duration", from: json)
            result = xcOptional(element: "result", from: json)
            subsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogMajorSection.self)
            unitTestSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogUnitTestSection.self)
            commandInvocationSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogCommandInvocationSection.self)
            targetBuildSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogTargetBuildSection.self)
            messages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogMessage.self)
            resultMessages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerResultMessage.self)
            warningMessage = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerWarningMessage.self)
            subtitle = xcOptional(element: "subtitle", from: json)
            productType = xcOptional(element: "productType", from: json)
        } catch {
            logError("Error parsing ActivityLogTargetBuildSection: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ActivityLogUnitTestSection: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            domainType = try xcRequired(element: "domainType", from: json)
            title = try xcRequired(element: "title", from: json)
            startTime = xcOptional(element: "startTime", from: json)
            duration = xcOptional(element: "duration", from: json)
            result = xcOptional(element: "result", from: json)
            subsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogMajorSection.self)
            unitTestSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogUnitTestSection.self)
            commandInvocationSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogCommandInvocationSection.self)
            targetBuildSubsections = xcArray(element: "subsections", from: json)
                .ofType(ActivityLogTargetBuildSection.self)
            messages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogMessage.self)
            resultMessages = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerResultMessage.self)
            warningMessage = xcArray(element: "messages", from: json)
                .ofType(ActivityLogAnalyzerWarningMessage.self)
            testName = xcOptional(element: "testName", from: json)
            suiteName = xcOptional(element: "suiteName", from: json)
            summary = xcOptional(element: "summary", from: json)
            emittedOutput = xcOptional(element: "emittedOutput", from: json)
            performanceTestOutput = xcOptional(element: "performanceTestOutput", from: json)
            testsPassedString = xcOptional(element: "testsPassedString", from: json)
            runnablePath = xcOptional(element: "runnablePath", from: json)
            runnableUTI = xcOptional(element: "runnableUTI", from: json)
        } catch {
            logError("Error parsing ActivityLogUnitTestSection: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ArchiveInfo: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            path = xcOptional(element: "path", from: json)
        } catch {
            logError("Error parsing ArchiveInfo: \(error.localizedDescription)")
            return nil
        }
    }
}

extension CodeCoverageInfo: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            hasCoverageData = xcOptional(element: "hasCoverageData", from: json)
            reportRef = xcOptional(element: "reportRef", from: json)
            archiveRef = xcOptional(element: "archiveRef", from: json)
        } catch {
            logError("Error parsing CodeCoverageInfo: \(error.localizedDescription)")
            return nil
        }
    }
}

extension DocumentLocation: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            url = try xcRequired(element: "url", from: json)
            concreteTypeName = try xcRequired(element: "concreteTypeName", from: json)
        } catch {
            logError("Error parsing DocumentLocation: \(error.localizedDescription)")
            return nil
        }
    }
}

extension IssueSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            issueType = try xcRequired(element: "issueType", from: json)
            message = try xcRequired(element: "message", from: json)
            producingTarget = xcOptional(element: "producingTarget", from: json)
            documentLocationInCreatingWorkspace = xcOptional(element: "documentLocationInCreatingWorkspace", from: json)
        } catch {
            logError("Error parsing IssueSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension Reference: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            id = try xcRequired(element: "id", from: json)
            targetType = xcOptional(element: "targetType", from: json)
        } catch {
            logError("Error parsing Reference: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ResultIssueSummaries: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            analyzerWarningSummaries = xcArray(element: "analyzerWarningSummaries", from: json)
                .ofType(IssueSummary.self)
            errorSummaries = xcArray(element: "errorSummaries", from: json)
                .ofType(IssueSummary.self)
            testFailureSummaries = xcArray(element: "testFailureSummaries", from: json)
                .ofType(TestFailureIssueSummary.self)
            warningSummaries = xcArray(element: "warningSummaries", from: json)
                .ofType(IssueSummary.self)
        } catch {
            logError("Error parsing ResultIssueSummaries: \(error.localizedDescription)")
            return nil
        }
    }
}

extension ResultMetrics: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            analyzerWarningCount = xcOptional(element: "analyzerWarningCount", from: json)
            errorCount = xcOptional(element: "errorCount", from: json)
            testsCount = xcOptional(element: "testsCount", from: json)
            testsFailedCount = xcOptional(element: "testsFailedCount", from: json)
            warningCount = xcOptional(element: "warningCount", from: json)
            testsSkippedCount = xcOptional(element: "testsSkippedCount", from: json)
        } catch {
            logError("Error parsing ResultMetrics: \(error.localizedDescription)")
            return nil
        }
    }
}

extension SourceCodeContext: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            location = xcOptional(element: "location", from: json)
            callStack = xcArray(element: "callStack", from: json)
                .ofType(SourceCodeFrame.self)
        } catch {
            logError("Error parsing SourceCodeContext: \(error.localizedDescription)")
            return nil
        }
    }
}

extension SourceCodeFrame: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            addressString = xcOptional(element: "addressString", from: json)
            symbolInfo = xcOptional(element: "symbolInfo", from: json)
        } catch {
            logError("Error parsing SourceCodeFrame: \(error.localizedDescription)")
            return nil
        }
    }
}

extension SourceCodeLocation: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            filePath = xcOptional(element: "filePath", from: json)
            lineNumber = xcOptional(element: "lineNumber", from: json)
        } catch {
            logError("Error parsing SourceCodeLocation: \(error.localizedDescription)")
            return nil
        }
    }
}

extension SourceCodeSymbolInfo: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            imageName = xcOptional(element: "imageName", from: json)
            symbolName = xcOptional(element: "symbolName", from: json)
            location = xcOptional(element: "location", from: json)
        } catch {
            logError("Error parsing SourceCodeSymbolInfo: \(error.localizedDescription)")
            return nil
        }
    }
}

extension TestFailureIssueSummary: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            testCaseName = try xcRequired(element: "testCaseName", from: json)
            issueType = try xcRequired(element: "issueType", from: json)
            message = try xcRequired(element: "message", from: json)
            producingTarget = xcOptional(element: "producingTarget", from: json)
            documentLocationInCreatingWorkspace = xcOptional(element: "documentLocationInCreatingWorkspace", from: json)
        } catch {
            logError("Error parsing TestFailureIssueSummary: \(error.localizedDescription)")
            return nil
        }
    }
}

extension TypeDefinition: XCResultObject {
    public init?(_ json: [String: AnyObject]) {
        do {
            name = try xcRequired(element: "name", from: json)
        } catch {
            logError("Error parsing TypeDefinition: \(error.localizedDescription)")
            return nil
        }
    }
}

