//
//  ActivityLogTargetBuildSection.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 05/10/2019.
//

import Foundation

//- ActivityLogTargetBuildSection
//  * Supertype: ActivityLogMajorSection
//  * Kind: object
//  * Properties:
//    + productType: String?

public struct ActivityLogTargetBuildSection: XCResultObjectGenerated {
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
    public let subtitle: String?
    public let productType: String?
}
