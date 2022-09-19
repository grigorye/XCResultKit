//
//  File.swift
//  
//
//  Created by David House on 7/3/19.
//
//- ActionTestableSummary
//    * Supertype: ActionAbstractTestSummary
//* Kind: object
//* Properties:
//+ projectRelativePath: String?
//+ targetName: String?
//+ testKind: String?
//+ tests: [ActionTestSummaryIdentifiableObject]
//+ diagnosticsDirectoryName: String?
//+ failureSummaries: [ActionTestFailureSummary]
//+ testLanguage: String?
//+ testRegion: String?

import Foundation

public struct ActionTestableSummary: XCResultObjectGenerated {
    public let projectRelativePath: String?
    public let targetName: String?
    public let testKind: String?
    public let tests: [ActionTestSummaryGroup]
    public let diagnosticsDirectoryName: String?
    public let failureSummaries: [ActionTestFailureSummary]
    public let testLanguage: String?
    public let testRegion: String?
}
