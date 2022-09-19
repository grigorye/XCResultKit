//
//  File.swift
//  
//
//  Created by David House on 7/3/19.
//
//- ActionTestSummaryGroup
//    * Supertype: ActionTestSummaryIdentifiableObject
//* Kind: object
//* Properties:
//+ duration: Double
//+ subtests: [ActionTestSummaryIdentifiableObject]

import Foundation

public struct ActionTestSummaryGroup: XCResultObjectGenerated {
    public let name: String?
    public let identifier: String?
    public let duration: Double
    // sourcery: element = subtests
    public let subtestGroups: [ActionTestSummaryGroup]
    public let subtests: [ActionTestMetadata]
}
