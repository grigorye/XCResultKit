//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ActionRunDestinationRecord
//    * Kind: object
//* Properties:
//+ displayName: String
//+ targetArchitecture: String
//+ targetDeviceRecord: ActionDeviceRecord
//+ localComputerRecord: ActionDeviceRecord
//+ targetSDKRecord: ActionSDKRecord

import Foundation

public struct ActionRunDestinationRecord: XCResultObjectGenerated {
    public let displayName: String
    public let targetArchitecture: String
    public let targetDeviceRecord: ActionDeviceRecord
    public let localComputerRecord: ActionDeviceRecord
    public let targetSDKRecord: ActionSDKRecord
}
