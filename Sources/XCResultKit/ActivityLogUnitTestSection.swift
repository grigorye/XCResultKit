//
//  ActivityLogUnitTestSection.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 05/10/2019.
//

import Foundation

//- ActivityLogUnitTestSection
//  * Supertype: ActivityLogSection
//  * Kind: object
//  * Properties:
//    + testName: String?
//    + suiteName: String?
//    + summary: String?
//    + emittedOutput: String?
//    + performanceTestOutput: String?
//    + testsPassedString: String?
//    + runnablePath: String?
//    + runnableUTI: String?

public struct ActivityLogUnitTestSection: XCResultObjectGenerated {
    public let domainType: String
    public let title: String
    public let startTime: Date?
    public let duration: Double?
    public let result: String?
    public let subsections: [ActivityLogMajorSection]
    // sourcery: element = subsections
    public let unitTestSubsections: [ActivityLogUnitTestSection]
    // sourcery: element = subsections
    public let commandInvocationSubsections: [ActivityLogCommandInvocationSection]
    // sourcery: element = subsections
    public let targetBuildSubsections: [ActivityLogTargetBuildSection]
    public let messages: [ActivityLogMessage]
    // sourcery: element = messages
    public let resultMessages: [ActivityLogAnalyzerResultMessage]
    // sourcery: element = messages
    public let warningMessage: [ActivityLogAnalyzerWarningMessage]
    public let testName: String?
    public let suiteName: String?
    public let summary: String?
    public let emittedOutput: String?
    public let performanceTestOutput: String?
    public let testsPassedString: String?
    public let runnablePath: String?
    public let runnableUTI: String?
}
