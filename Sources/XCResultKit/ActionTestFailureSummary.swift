//
//  File.swift
//  
//
//  Created by David House on 7/3/19.

import Foundation

// xcresulttool version 21016, format version 3.39
//- ActionTestFailureSummary
//  * Kind: object
//  * Properties:
//    + message: String?
//    + fileName: String
//    + lineNumber: Int
//    + isPerformanceFailure: Bool
//    + uuid: String
//    + issueType: String?
//    + detailedDescription: String?
//    + attachments: [ActionTestAttachment]
//    + associatedError: TestAssociatedError?
//    + sourceCodeContext: SourceCodeContext?
//    + timestamp: Date?
//    + isTopLevelFailure: Bool
public struct ActionTestFailureSummary: XCResultObjectGenerated {
    public let message: String?
    public let fileName: String
    public let lineNumber: Int
    public let isPerformanceFailure: Bool
    public let uuid: String
    public let issueType: String?
    public let detailedDescription: String?
    public let attachments: [ActionTestAttachment]
    // TestAssociatedError
    public let sourceCodeContext: SourceCodeContext?
    public let timestamp: Date?
    public let isTopLevelFailure: Bool
}
