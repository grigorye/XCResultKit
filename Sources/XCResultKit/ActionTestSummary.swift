//
//  ActionTestSummary.swift
//  
//
//  Created by David House on 7/5/19.
//
//- ActionTestSummary
//    * Supertype: ActionTestSummaryIdentifiableObject
//* Kind: object
//* Properties:
//+ testStatus: String
//+ duration: Double
//+ performanceMetrics: [ActionTestPerformanceMetricSummary]
//+ failureSummaries: [ActionTestFailureSummary]
//+ activitySummaries: [ActionTestActivitySummary]

import Foundation

public struct ActionTestSummary: XCResultObjectGenerated {
    public let name: String
    public let identifier: String
    public let testStatus: String
    // sourcery: defaultValue = 0
    public let duration: Double
    public let performanceMetrics: [ActionTestPerformanceMetricSummary]
    public let failureSummaries: [ActionTestFailureSummary]
    public let activitySummaries: [ActionTestActivitySummary]
    public let repetitionPolicySummary: ActionTestRepetitionPolicySummary?
}
