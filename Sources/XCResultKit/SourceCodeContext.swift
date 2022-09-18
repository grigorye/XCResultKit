//
//  SourceCodeContext.swift
//  
//
//  Created by Tyler Vick on 9/17/22.
//

import Foundation

// xcresulttool version 21016, format version 3.39
//- SourceCodeContext
//  * Kind: object
//  * Properties:
//    + location: SourceCodeLocation?
//    + callStack: [SourceCodeFrame]
public struct SourceCodeContext: XCResultObject {
    public let location: SourceCodeLocation?
    public let callStack: [SourceCodeFrame]
    
    public init(_ json: [String: AnyObject]) {
        location = xcOptional(element: "location", from: json)
        callStack = xcArray(element: "callStack", from: json).ofType(SourceCodeFrame.self)
    }
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeFrame
//  * Kind: object
//  * Properties:
//    + addressString: String?
//    + symbolInfo: SourceCodeSymbolInfo?
public struct SourceCodeFrame: XCResultObject {
    public let addressString: String?
    public let symbolInfo: SourceCodeSymbolInfo?
    
    public init(_ json: [String: AnyObject]) {
        addressString = xcOptional(element: "addressString", from: json)
        symbolInfo = xcOptional(element: "symbolInfo", from: json)
    }
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeLocation
//  * Kind: object
//  * Properties:
//    + filePath: String?
//    + lineNumber: Int?
public struct SourceCodeLocation: XCResultObject {
    public let filePath: String?
    public let lineNumber: Int?
    
    public init(_ json: [String: AnyObject]) {
        filePath = xcOptional(element: "filePath", from: json)
        lineNumber = xcOptional(element: "lineNumber", from: json)
    }
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeSymbolInfo
//  * Kind: object
//  * Properties:
//    + imageName: String?
//    + symbolName: String?
//    + location: SourceCodeLocation?
public struct SourceCodeSymbolInfo: XCResultObject {
    public let imageName: String?
    public let symbolName: String?
    public let location: SourceCodeLocation?
    
    public init(_ json: [String: AnyObject]) {
        imageName = xcOptional(element: "imageName", from: json)
        symbolName = xcOptional(element: "symbolName", from: json)
        location = xcOptional(element: "location", from: json)
    }
}
