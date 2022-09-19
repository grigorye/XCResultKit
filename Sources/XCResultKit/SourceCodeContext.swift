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
public struct SourceCodeContext: XCResultObjectGenerated {
    public let location: SourceCodeLocation?
    public let callStack: [SourceCodeFrame]
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeFrame
//  * Kind: object
//  * Properties:
//    + addressString: String?
//    + symbolInfo: SourceCodeSymbolInfo?
public struct SourceCodeFrame: XCResultObjectGenerated {
    public let addressString: String?
    public let symbolInfo: SourceCodeSymbolInfo?
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeLocation
//  * Kind: object
//  * Properties:
//    + filePath: String?
//    + lineNumber: Int?
public struct SourceCodeLocation: XCResultObjectGenerated {
    public let filePath: String?
    public let lineNumber: Int?
}

// xcresulttool version 21016, format version 3.39
//- SourceCodeSymbolInfo
//  * Kind: object
//  * Properties:
//    + imageName: String?
//    + symbolName: String?
//    + location: SourceCodeLocation?
public struct SourceCodeSymbolInfo: XCResultObjectGenerated {
    public let imageName: String?
    public let symbolName: String?
    public let location: SourceCodeLocation?
}
