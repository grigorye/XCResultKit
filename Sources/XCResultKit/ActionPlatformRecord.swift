//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ActionPlatformRecord
//    * Kind: object
//* Properties:
//+ identifier: String
//+ userDescription: String

import Foundation

public struct ActionPlatformRecord: XCResultObjectGenerated, Encodable {
    public let identifier: String
    public let userDescription: String

    enum CodingKeys: String, CodingKey {
        case identifier
        case userDescription
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(userDescription, forKey: .userDescription)
    }
}
