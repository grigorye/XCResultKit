// Generated using Sourcery 1.8.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Output Generated from
// Name: Xcode Result Types
// Version: 3.39
// Signature: PS0lrtUj8Aw=

// ActionAbstractTestSummary
public class ActionAbstractTestSummary {
    public let name: String?
}

// ActionDeviceRecord
public struct ActionDeviceRecord {
    public let name: String
    public let isConcreteDevice: Bool
    public let operatingSystemVersion: String
    public let operatingSystemVersionWithBuildNumber: String
    public let nativeArchitecture: String
    public let modelName: String
    public let modelCode: String
    public let modelUTI: String
    public let identifier: String
    public let isWireless: Bool
    public let cpuKind: String
    public let cpuCount: Int?
    public let cpuSpeedInMHz: Int?
    public let busSpeedInMHz: Int?
    public let ramSizeInMegabytes: Int?
    public let physicalCPUCoresPerPackage: Int?
    public let logicalCPUCoresPerPackage: Int?
    public let platformRecord: ActionPlatformRecord
}

// ActionPlatformRecord
public struct ActionPlatformRecord {
    public let identifier: String
    public let userDescription: String
}

// ActionRecord
public struct ActionRecord {
    public let schemeCommandName: String
    public let schemeTaskName: String
    public let title: String?
    public let startedTime: Date
    public let endedTime: Date
    public let runDestination: ActionRunDestinationRecord
    public let buildResult: ActionResult
    public let actionResult: ActionResult
    public let testPlanName: String?
}

// ActionResult
public struct ActionResult {
    public let resultName: String
    public let status: String
    public let metrics: ResultMetrics
    public let issues: ResultIssueSummaries
    public let coverage: CodeCoverageInfo
    public let timelineRef: Reference?
    public let logRef: Reference?
    public let testsRef: Reference?
    public let diagnosticsRef: Reference?
    public let consoleLogRef: Reference?
}

// ActionRunDestinationRecord
public struct ActionRunDestinationRecord {
    public let displayName: String
    public let targetArchitecture: String
    public let targetDeviceRecord: ActionDeviceRecord
    public let localComputerRecord: ActionDeviceRecord
    public let targetSDKRecord: ActionSDKRecord
}

// ActionSDKRecord
public struct ActionSDKRecord {
    public let name: String
    public let identifier: String
    public let operatingSystemVersion: String
    public let isInternal: Bool
}

// ActionTestActivitySummary
public struct ActionTestActivitySummary {
    public let title: String
    public let activityType: String
    public let uuid: String
    public let start: Date?
    public let finish: Date?
    public let attachments: Array<ActionTestAttachment>
    public let subactivities: Array<ActionTestActivitySummary>
    public let failureSummaryIDs: Array<String>
    public let expectedFailureIDs: Array<String>
}

// ActionTestAttachment
public struct ActionTestAttachment {
    public let uniformTypeIdentifier: String
    public let name: String?
    public let uuid: String?
    public let timestamp: Date?
    public let userInfo: SortedKeyValueArray?
    public let lifetime: String
    public let inActivityIdentifier: Int
    public let filename: String?
    public let payloadRef: Reference?
    public let payloadSize: Int
}

// ActionTestConfiguration
public struct ActionTestConfiguration {
    public let values: SortedKeyValueArray
}

// ActionTestExpectedFailure
public struct ActionTestExpectedFailure {
    public let uuid: String
    public let failureReason: String?
    public let failureSummary: ActionTestFailureSummary?
    public let isTopLevelFailure: Bool
}

// ActionTestFailureSummary
public struct ActionTestFailureSummary {
    public let message: String?
    public let fileName: String
    public let lineNumber: Int
    public let isPerformanceFailure: Bool
    public let uuid: String
    public let issueType: String?
    public let detailedDescription: String?
    public let attachments: Array<ActionTestAttachment>
    public let associatedError: TestAssociatedError?
    public let sourceCodeContext: SourceCodeContext?
    public let timestamp: Date?
    public let isTopLevelFailure: Bool
}

// ActionTestMetadata
public class ActionTestMetadata: ActionTestSummaryIdentifiableObject {
    public let testStatus: String
    public let duration: Double?
    public let summaryRef: Reference?
    public let performanceMetricsCount: Int
    public let failureSummariesCount: Int
    public let activitySummariesCount: Int
}

// ActionTestNoticeSummary
public struct ActionTestNoticeSummary {
    public let message: String?
    public let fileName: String
    public let lineNumber: Int
    public let timestamp: Date?
}

// ActionTestPerformanceMetricSummary
public struct ActionTestPerformanceMetricSummary {
    public let displayName: String
    public let unitOfMeasurement: String
    public let measurements: Array<Double>
    public let identifier: String?
    public let baselineName: String?
    public let baselineAverage: Double?
    public let maxPercentRegression: Double?
    public let maxPercentRelativeStandardDeviation: Double?
    public let maxRegression: Double?
    public let maxStandardDeviation: Double?
    public let polarity: String?
}

// ActionTestPlanRunSummaries
public struct ActionTestPlanRunSummaries {
    public let summaries: Array<ActionTestPlanRunSummary>
}

// ActionTestPlanRunSummary
public class ActionTestPlanRunSummary: ActionAbstractTestSummary {
    public let testableSummaries: Array<ActionTestableSummary>
}

// ActionTestRepetitionPolicySummary
public struct ActionTestRepetitionPolicySummary {
    public let iteration: Int?
    public let totalIterations: Int?
    public let repetitionMode: String?
}

// ActionTestSummary
public class ActionTestSummary: ActionTestSummaryIdentifiableObject {
    public let testStatus: String
    public let duration: Double
    public let performanceMetrics: Array<ActionTestPerformanceMetricSummary>
    public let failureSummaries: Array<ActionTestFailureSummary>
    public let expectedFailures: Array<ActionTestExpectedFailure>
    public let skipNoticeSummary: ActionTestNoticeSummary?
    public let activitySummaries: Array<ActionTestActivitySummary>
    public let repetitionPolicySummary: ActionTestRepetitionPolicySummary?
    public let configuration: ActionTestConfiguration?
}

// ActionTestSummaryGroup
public class ActionTestSummaryGroup: ActionTestSummaryIdentifiableObject {
    public let duration: Double
    public let subtests: Array<ActionTestSummaryIdentifiableObject>
}

// ActionTestSummaryIdentifiableObject
public class ActionTestSummaryIdentifiableObject: ActionAbstractTestSummary {
    public let identifier: String?
    public let identifierURL: String?
}

// ActionTestableSummary
public class ActionTestableSummary: ActionAbstractTestSummary {
    public let identifierURL: String?
    public let projectRelativePath: String?
    public let targetName: String?
    public let testKind: String?
    public let tests: Array<ActionTestSummaryIdentifiableObject>
    public let diagnosticsDirectoryName: String?
    public let failureSummaries: Array<ActionTestFailureSummary>
    public let testLanguage: String?
    public let testRegion: String?
}

// ActionsInvocationMetadata
public struct ActionsInvocationMetadata {
    public let creatingWorkspaceFilePath: String
    public let uniqueIdentifier: String
    public let schemeIdentifier: EntityIdentifier?
}

// ActionsInvocationRecord
public struct ActionsInvocationRecord {
    public let metadataRef: Reference?
    public let metrics: ResultMetrics
    public let issues: ResultIssueSummaries
    public let actions: Array<ActionRecord>
    public let archive: ArchiveInfo?
}

// ActivityLogAnalyzerControlFlowStep
public class ActivityLogAnalyzerControlFlowStep: ActivityLogAnalyzerStep {
    public let title: String
    public let startLocation: DocumentLocation?
    public let endLocation: DocumentLocation?
    public let edges: Array<ActivityLogAnalyzerControlFlowStepEdge>
}

// ActivityLogAnalyzerControlFlowStepEdge
public struct ActivityLogAnalyzerControlFlowStepEdge {
    public let startLocation: DocumentLocation?
    public let endLocation: DocumentLocation?
}

// ActivityLogAnalyzerEventStep
public class ActivityLogAnalyzerEventStep: ActivityLogAnalyzerStep {
    public let title: String
    public let location: DocumentLocation?
    public let description: String
    public let callDepth: Int
}

// ActivityLogAnalyzerResultMessage
public class ActivityLogAnalyzerResultMessage: ActivityLogMessage {
    public let steps: Array<ActivityLogAnalyzerStep>
    public let resultType: String?
    public let keyEventIndex: Int
}

// ActivityLogAnalyzerStep
public class ActivityLogAnalyzerStep {
    public let parentIndex: Int
}

// ActivityLogAnalyzerWarningMessage
public class ActivityLogAnalyzerWarningMessage: ActivityLogMessage {
}

// ActivityLogCommandInvocationSection
public class ActivityLogCommandInvocationSection: ActivityLogSection {
    public let commandDetails: String
    public let emittedOutput: String
    public let exitCode: Int?
}

// ActivityLogMajorSection
public class ActivityLogMajorSection: ActivityLogSection {
    public let subtitle: String
}

// ActivityLogMessage
public class ActivityLogMessage {
    public let type: String
    public let title: String
    public let shortTitle: String?
    public let category: String?
    public let location: DocumentLocation?
    public let annotations: Array<ActivityLogMessageAnnotation>
}

// ActivityLogMessageAnnotation
public struct ActivityLogMessageAnnotation {
    public let title: String
    public let location: DocumentLocation?
}

// ActivityLogSection
public class ActivityLogSection {
    public let domainType: String
    public let title: String
    public let startTime: Date?
    public let duration: Double
    public let result: String?
    public let location: DocumentLocation?
    public let subsections: Array<ActivityLogSection>
    public let messages: Array<ActivityLogMessage>
}

// ActivityLogTargetBuildSection
public class ActivityLogTargetBuildSection: ActivityLogMajorSection {
    public let productType: String?
}

// ActivityLogUnitTestSection
public class ActivityLogUnitTestSection: ActivityLogSection {
    public let testName: String?
    public let suiteName: String?
    public let summary: String?
    public let emittedOutput: String?
    public let performanceTestOutput: String?
    public let testsPassedString: String?
    public let wasSkipped: Bool
    public let runnablePath: String?
    public let runnableUTI: String?
}

// ArchiveInfo
public struct ArchiveInfo {
    public let path: String?
}

// CodeCoverageInfo
public struct CodeCoverageInfo {
    public let hasCoverageData: Bool
    public let reportRef: Reference?
    public let archiveRef: Reference?
}

// ConsoleLogItem
public struct ConsoleLogItem {
    public let adaptorType: String?
    public let kind: String?
    public let timestamp: Double
    public let content: String
}

// ConsoleLogSection
public struct ConsoleLogSection {
    public let title: String
    public let items: Array<ConsoleLogItem>
}

// DocumentLocation
public struct DocumentLocation {
    public let url: String
    public let concreteTypeName: String
}

// EntityIdentifier
public struct EntityIdentifier {
    public let entityName: String
    public let containerName: String
    public let entityType: String
    public let sharedState: String
}

// IssueSummary
public class IssueSummary {
    public let issueType: String
    public let message: String
    public let producingTarget: String?
    public let documentLocationInCreatingWorkspace: DocumentLocation?
}

// ObjectID
public struct ObjectID {
    public let hash: String
}

// Reference
public struct Reference {
    public let id: String
    public let targetType: TypeDefinition?
}

// ResultIssueSummaries
public struct ResultIssueSummaries {
    public let analyzerWarningSummaries: Array<IssueSummary>
    public let errorSummaries: Array<IssueSummary>
    public let testFailureSummaries: Array<TestFailureIssueSummary>
    public let warningSummaries: Array<IssueSummary>
}

// ResultMetrics
public struct ResultMetrics {
    public let analyzerWarningCount: Int
    public let errorCount: Int
    public let testsCount: Int
    public let testsFailedCount: Int
    public let testsSkippedCount: Int
    public let warningCount: Int
}

// SortedKeyValueArray
public struct SortedKeyValueArray {
    public let storage: Array<SortedKeyValueArrayPair>
}

// SortedKeyValueArrayPair
public struct SortedKeyValueArrayPair {
    public let key: String
    public let value: Any
}

// SourceCodeContext
public struct SourceCodeContext {
    public let location: SourceCodeLocation?
    public let callStack: Array<SourceCodeFrame>
}

// SourceCodeFrame
public struct SourceCodeFrame {
    public let addressString: String?
    public let symbolInfo: SourceCodeSymbolInfo?
}

// SourceCodeLocation
public struct SourceCodeLocation {
    public let filePath: String?
    public let lineNumber: Int?
}

// SourceCodeSymbolInfo
public struct SourceCodeSymbolInfo {
    public let imageName: String?
    public let symbolName: String?
    public let location: SourceCodeLocation?
}

// TestAssociatedError
public struct TestAssociatedError {
    public let domain: String?
    public let code: Int?
    public let userInfo: SortedKeyValueArray?
}

// TestFailureIssueSummary
public class TestFailureIssueSummary: IssueSummary {
    public let testCaseName: String
}

// TypeDefinition
public struct TypeDefinition {
    public let name: String
    public let supertype: TypeDefinition?
}

