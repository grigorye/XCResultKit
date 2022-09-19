//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- ActionDeviceRecord
//    * Kind: object
//* Properties:
//+ name: String
//+ isConcreteDevice: Bool
//+ operatingSystemVersion: String
//+ operatingSystemVersionWithBuildNumber: String
//+ nativeArchitecture: String
//+ modelName: String
//+ modelCode: String
//+ modelUTI: String
//+ identifier: String
//+ isWireless: Bool
//+ cpuKind: String
//+ cpuCount: Int?
//+ cpuSpeedInMHz: Int?
//+ busSpeedInMHz: Int?
//+ ramSizeInMegabytes: Int?
//+ physicalCPUCoresPerPackage: Int?
//+ logicalCPUCoresPerPackage: Int?
//+ platformRecord: ActionPlatformRecord

import Foundation

public struct ActionDeviceRecord: XCResultObjectGenerated, Encodable {
    public let name: String
    public let isConcreteDevice: Bool
    public let operatingSystemVersion: String
    public let operatingSystemVersionWithBuildNumber: String
    public let nativeArchitecture: String
    public let modelName: String
    public let modelCode: String
    public let modelUTI: String
    public let identifier: String
    public let isWireless: Bool?
    public let cpuKind: String?
    public let cpuCount: Int?
    public let cpuSpeedInMhz: Int?
    public let busSpeedInMhz: Int?
    public let ramSizeInMegabytes: Int?
    public let physicalCPUCoresPerPackage: Int?
    public let logicalCPUCoresPerPackage: Int?
    public let platformRecord: ActionPlatformRecord
    
    enum CodingKeys: String, CodingKey {
        case name
        case isConcreteDevice
        case operatingSystemVersion
        case operatingSystemVersionWithBuildNumber
        case nativeArchitecture
        case modelName
        case modelCode
        case modelUTI
        case identifier
        case isWireless
        case cpuKind
        case cpuCount
        case cpuSpeedInMhz
        case busSpeedInMhz
        case ramSizeInMegabytes
        case physicalCPUCoresPerPackage
        case logicalCPUCoresPerPackage
        case platformRecord
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(isConcreteDevice, forKey: .isConcreteDevice)
        try container.encode(operatingSystemVersion, forKey: .operatingSystemVersion)
        try container.encode(operatingSystemVersionWithBuildNumber, forKey: .operatingSystemVersionWithBuildNumber)
        try container.encode(nativeArchitecture, forKey: .nativeArchitecture)
        try container.encode(modelName, forKey: .modelName)
        try container.encode(modelCode, forKey: .modelCode)
        try container.encode(modelUTI, forKey: .modelUTI)
        try container.encode(identifier, forKey: .identifier)
        try container.encodeIfPresent(isWireless, forKey: .isWireless)
        try container.encodeIfPresent(cpuKind, forKey: .cpuKind)
        try container.encode(isConcreteDevice, forKey: .isConcreteDevice)
        try container.encodeIfPresent(cpuCount, forKey: .cpuCount)
        try container.encodeIfPresent(cpuSpeedInMhz, forKey: .cpuSpeedInMhz)
        try container.encodeIfPresent(busSpeedInMhz, forKey: .busSpeedInMhz)
        try container.encodeIfPresent(ramSizeInMegabytes, forKey: .ramSizeInMegabytes)
        try container.encodeIfPresent(physicalCPUCoresPerPackage, forKey: .physicalCPUCoresPerPackage)
        try container.encodeIfPresent(logicalCPUCoresPerPackage, forKey: .logicalCPUCoresPerPackage)
        try container.encode(platformRecord, forKey: .platformRecord)
    }

}
