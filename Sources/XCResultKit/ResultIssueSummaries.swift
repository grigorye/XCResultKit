//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ResultIssueSummaries
//    * Kind: object
//* Properties:
//+ analyzerWarningSummaries: [IssueSummary]
//+ errorSummaries: [IssueSummary]
//+ testFailureSummaries: [TestFailureIssueSummary]
//+ warningSummaries: [IssueSummary]

import Foundation

public struct ResultIssueSummaries: XCResultObjectGenerated {
    public let analyzerWarningSummaries: [IssueSummary]
    public let errorSummaries: [IssueSummary]
    public let testFailureSummaries: [TestFailureIssueSummary]
    public let warningSummaries: [IssueSummary]
}
