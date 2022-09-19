//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ActionSDKRecord
//    * Kind: object
//* Properties:
//+ name: String
//+ identifier: String
//+ operatingSystemVersion: String
//+ isInternal: Bool

import Foundation

public struct ActionSDKRecord: XCResultObjectGenerated, Encodable {
    public let name: String
    public let identifier: String
    public let operatingSystemVersion: String
    public let isInternal: Bool?

    enum CodingKeys: String, CodingKey {
        case name
        case identifier
        case operatingSystemVersion
        case isInternal
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(operatingSystemVersion, forKey: .operatingSystemVersion)
        try container.encodeIfPresent(isInternal, forKey: .isInternal)
    }
}
