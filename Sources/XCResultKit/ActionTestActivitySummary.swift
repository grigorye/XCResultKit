//
//  ActionTestActivitySummary.swift
//  
//
//  Created by David House on 7/5/19.
//
//- ActionTestActivitySummary
//    * Kind: object
//* Properties:
//+ title: String
//+ activityType: String
//+ uuid: String
//+ start: Date?
//+ finish: Date?
//+ attachments: [ActionTestAttachment]
//+ subactivities: [ActionTestActivitySummary]

import Foundation

public struct ActionTestActivitySummary: XCResultObjectGenerated {
    public let title: String
    public let activityType: String
    public let uuid: String
    public let start: Date?
    public let finish: Date?
    public let attachments: [ActionTestAttachment]
    public let subactivities: [ActionTestActivitySummary]
}
