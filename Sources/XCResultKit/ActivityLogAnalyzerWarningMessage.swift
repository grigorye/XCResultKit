//
//  ActivityLogAnalyzerWarningMessage.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 05/10/2019.
//

import Foundation

//- ActivityLogAnalyzerWarningMessage
// * Supertype: ActivityLogMessage
// * Kind: object

public struct ActivityLogAnalyzerWarningMessage: XCResultObjectGenerated {
    public let type: String
    public let title: String
    public let shortTitle: String?
    public let category: String?
    public let location: DocumentLocation
    public let annotations: [ActivityLogMessageAnnotation]
}
