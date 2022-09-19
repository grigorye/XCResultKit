//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ActionRecord
//    * Kind: object
//* Properties:
//+ schemeCommandName: String
//+ schemeTaskName: String
//+ title: String?
//+ startedTime: Date
//+ endedTime: Date
//+ runDestination: ActionRunDestinationRecord
//+ buildResult: ActionResult
//+ actionResult: ActionResult

import Foundation

public struct ActionRecord: XCResultObjectGenerated {
    public let schemeCommandName: String
    public let schemeTaskName: String
    public let title: String?
    public let startedTime: Date
    public let endedTime: Date
    public let runDestination: ActionRunDestinationRecord
    public let buildResult: ActionResult
    public let actionResult: ActionResult
}
