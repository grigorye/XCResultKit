//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//  Version: 3.19
//
//  - Reference
//      * Kind: object
//      * Properties:
//      + id: String
//      + targetType: TypeDefinition?

import Foundation

public struct Reference: XCResultObjectGenerated {
    public let id: String
    public let targetType: TypeDefinition?
}
