//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- TestFailureIssueSummary
//    * Supertype: IssueSummary
//* Kind: object
//* Properties:
//+ testCaseName: String

import Foundation

public struct TestFailureIssueSummary: XCResultObjectGenerated {
    public let testCaseName: String
    public let issueType: String
    public let message: String
    public let producingTarget: String?
    public let documentLocationInCreatingWorkspace: DocumentLocation?
}
