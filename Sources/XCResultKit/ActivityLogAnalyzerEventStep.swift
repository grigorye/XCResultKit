//
//  ActivityLogAnalyzerEventStep.swift
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
//        - ActivityLogAnalyzerEventStep
//          * Supertype: ActivityLogAnalyzerStep
//          * Kind: object
//          * Properties:
//            + title: String
//            + location: DocumentLocation?
//            + description: String
//            + callDepth: Int

public struct ActivityLogAnalyzerEventStep: XCResultObjectGenerated {
    public let parentIndex: Int
    public let title: String
    public let location: DocumentLocation?
    public let description: String
    public let callDepth: Int
}
