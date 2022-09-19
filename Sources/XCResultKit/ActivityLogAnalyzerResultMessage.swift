//
//  ActivityLogAnalyzerResultMessage.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 05/10/2019.
//

import Foundation

//- ActivityLogAnalyzerResultMessage
//* Supertype: ActivityLogMessage
//* Kind: object
//* Properties:
//  + steps: [ActivityLogAnalyzerStep]
//  + resultType: String?
//  + keyEventIndex: Int

public struct ActivityLogAnalyzerResultMessage: XCResultObjectGenerated {
    public let type: String
    public let title: String
    public let shortTitle: String?
    public let category: String?
    public let location: DocumentLocation
    public let annotations: [ActivityLogMessageAnnotation]
    // sourcery: element = steps
    public let controlFlowSteps: [ActivityLogAnalyzerControlFlowStep]
    // sourcery: element = steps
    public let eventSteps: [ActivityLogAnalyzerEventStep]
    public let resultType: String?
    public let keyEventIndex: Int
}
