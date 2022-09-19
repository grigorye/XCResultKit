//
//  File.swift
//  
//
//  Created by David House on 7/3/19.
//
//- ActionTestPlanRunSummary
//    * Supertype: ActionAbstractTestSummary
//* Kind: object
//* Properties:
//+ testableSummaries: [ActionTestableSummary]

import Foundation

public struct ActionTestPlanRunSummary: XCResultObjectGenerated {
    public var name: String
    public let testableSummaries: [ActionTestableSummary]
}
