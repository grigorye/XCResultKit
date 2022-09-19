//
//  ActivityLogAnalyzerControlFlowStep.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 05/10/2019.
//

import Foundation

//- ActivityLogAnalyzerStep
//  * Kind: object
//  * Properties:
//    + parentIndex: Int
//
//      - ActivityLogAnalyzerControlFlowStep
//        * Supertype: ActivityLogAnalyzerStep
//        * Kind: object
//        * Properties:
//          + title: String
//          + startLocation: DocumentLocation?
//          + endLocation: DocumentLocation?
//          + edges: [ActivityLogAnalyzerControlFlowStepEdge]

public struct ActivityLogAnalyzerControlFlowStep: XCResultObjectGenerated {
    public let parentIndex: Int
    public let title: String
    public let startLocation: DocumentLocation?
    public let endLocation: DocumentLocation?
    public let edges: [ActivityLogAnalyzerControlFlowStepEdge]
}
