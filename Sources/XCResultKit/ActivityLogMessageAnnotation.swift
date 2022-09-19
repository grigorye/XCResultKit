//
//  ActivityLogMessageAnnotation.swift
//  XCResultKit
//
//  Created by Pierre Felgines on 03/10/2019.
//

import Foundation

//- ActivityLogMessageAnnotation
//  * Kind: object
//  * Properties:
//    + title: String
//    + location: DocumentLocation?

public struct ActivityLogMessageAnnotation: XCResultObjectGenerated {
    public let title: String
    public let location: DocumentLocation?
}
