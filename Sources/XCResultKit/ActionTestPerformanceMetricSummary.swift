//
//  ActionTestPerformanceMetricSummary.swift
//  
//
//  Created by David House on 7/5/19.
//
//- ActionTestPerformanceMetricSummary
//    * Kind: object
//* Properties:
//+ displayName: String
//+ unitOfMeasurement: String
//+ measurements: [Double]
//+ identifier: String?
//+ baselineName: String?
//+ baselineAverage: Double?
//+ maxPercentRegression: Double?
//+ maxPercentRelativeStandardDeviation: Double?
//+ maxRegression: Double?
//+ maxStandardDeviation: Double?

import Foundation

public struct ActionTestPerformanceMetricSummary: XCResultObjectGenerated {
    public let displayName: String
    public let unitOfMeasurement: String
    public let measurements: [Double]
    public let identifier: String?
    public let baselineName: String?
    public let baselineAverage: Double?
    public let maxPercentRegression: Double?
    public let maxPercentRelativeStandardDeviation: Double?
    public let maxRegression: Double?
    public let maxStandardDeviation: Double?
}
