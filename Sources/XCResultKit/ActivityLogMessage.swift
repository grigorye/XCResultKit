//
//  ActivityLogMessage.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 03/10/2019.
//

import Foundation

//- ActivityLogMessage
//  * Kind: object
//  * Properties:
//    + type: String
//    + title: String
//    + shortTitle: String?
//    + category: String?
//    + location: DocumentLocation?
//    + annotations: [ActivityLogMessageAnnotation]

public struct ActivityLogMessage: XCResultObjectGenerated {
    public let type: String
    public let title: String
    public let shortTitle: String?
    public let category: String?
    public let location: DocumentLocation?
    public let annotations: [ActivityLogMessageAnnotation]
}
