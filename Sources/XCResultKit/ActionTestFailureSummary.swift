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
public struct ActionTestFailureSummary: XCResultObject {
    public let message: String?
    public let fileName: String?
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
    

    public init?(_ json: [String: AnyObject]) {
        message = xcOptional(element: "message", from: json)
        fileName = xcOptional(element: "fileName", from: json)
        lineNumber = xcOptional(element: "lineNumber", from: json) ?? 0
        isPerformanceFailure = xcOptional(element: "isPerformanceFailure", from: json) ?? false
        issueType = xcOptional(element: "issueType", from: json)
        detailedDescription = xcOptional(element: "detailedDescription", from: json)
        attachments = xcArray(element: "attachments", from: json)
            .ofType(ActionTestAttachment.self)
        sourceCodeContext = xcOptional(element: "sourceCodeContext", from: json)
        timestamp = xcOptional(element: "timestamp", from: json)
        isTopLevelFailure = xcOptional(element: "isTopLevelFailure", from: json) ?? false
        do {
            uuid = try xcRequired(element: "uuid", from: json)
        } catch {
            logError("Error parsing ActionTestFailureSummary: \(error.localizedDescription)")
            return nil
        }
    }
}
