//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ResultMetrics
//    * Kind: object
//* Properties:
//+ analyzerWarningCount: Int
//+ errorCount: Int
//+ testsCount: Int
//+ testsFailedCount: Int
//+ warningCount: Int

import Foundation

public struct ResultMetrics: XCResultObjectGenerated {
    public let analyzerWarningCount: Int?
    public let errorCount: Int?
    public let testsCount: Int?
    public let testsFailedCount: Int?
    public let warningCount: Int?
    public let testsSkippedCount: Int?
}
