//
//  ActivityLogSection.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 03/10/2019.
//

import Foundation

//- ActivityLogSection
//  * Kind: object
//  * Properties:
//    + domainType: String
//    + title: String
//    + startTime: Date?
//    + duration: Double
//    + result: String?
//    + subsections: [ActivityLogSection]
//    + messages: [ActivityLogMessage]

public struct ActivityLogSection: XCResultObjectGenerated {
    public let domainType: String
    public let title: String
    public let startTime: Date?
    public let duration: Double
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
}
