//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- IssueSummary
//    * Kind: object
//* Properties:
//+ issueType: String
//+ message: String
//+ producingTarget: String?
//+ documentLocationInCreatingWorkspace: DocumentLocation?

import Foundation

public struct IssueSummary: XCResultObjectGenerated {
    public let issueType: String
    public let message: String
    public let producingTarget: String?
    public let documentLocationInCreatingWorkspace: DocumentLocation?
}
