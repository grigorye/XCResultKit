//
//  File.swift
//  
//
//  Created by David House on 7/3/19.
//
//- ActionTestMetadata
//    * Supertype: ActionTestSummaryIdentifiableObject
//* Kind: object
//* Properties:
//+ testStatus: String
//+ duration: Double?
//+ summaryRef: Reference?
//+ performanceMetricsCount: Int
//+ failureSummariesCount: Int
//+ activitySummariesCount: Int

import Foundation

public struct ActionTestMetadata: XCResultObjectGenerated {
    public let name: String
    public let identifier: String
    public let testStatus: String
    public let duration: Double?
    public let summaryRef: Reference?
    public let performanceMetricsCount: Int?
    public let failureSummariesCount: Int?
    public let activitySummariesCount: Int?
}
