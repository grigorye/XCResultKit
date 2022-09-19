//
//  ActionTestAttachment.swift
//  
//
//  Created by David House on 7/5/19.
//
//- ActionTestAttachment
//    * Kind: object
//* Properties:
//+ uniformTypeIdentifier: String
//+ name: String?
//+ timestamp: Date?
//+ userInfo: SortedKeyValueArray?
//+ lifetime: String
//+ inActivityIdentifier: Int
//+ filename: String?
//+ payloadRef: Reference?
//+ payloadSize: Int

import Foundation

public struct ActionTestAttachment: XCResultObjectGenerated {
    public let uniformTypeIdentifier: String
    public let name: String?
    public let timestamp: Date?
    public let lifetime: String
    public let inActivityIdentifier: Int
    public let filename: String?
    public let payloadRef: Reference?
    public let payloadSize: Int
}
