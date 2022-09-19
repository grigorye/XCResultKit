//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//  Version: 3.19
//
//   - ActionsInvocationRecord
//      * Kind: object
//      * Properties:
//      + metadataRef: Reference?
//      + metrics: ResultMetrics
//      + issues: ResultIssueSummaries
//      + actions: [ActionRecord]
//      + archive: ArchiveInfo?

import Foundation

public struct ActionsInvocationRecord: XCResultObjectGenerated {
    public let metadataRef: Reference?
    public let metrics: ResultMetrics
    public let issues: ResultIssueSummaries
    public let actions: [ActionRecord]
    public let archive: ArchiveInfo?
}
