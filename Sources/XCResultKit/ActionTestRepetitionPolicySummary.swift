//
//  ActionTestRepetitionPolicySummary.swift
//  
//
//  Created by Tyler Vick on 12/21/21.
//

import Foundation

public struct ActionTestRepetitionPolicySummary: XCResultObjectGenerated {
    
    public let iteration: Int
    public let totalIterations: Int
    public let repetitionMode: RepetitionMode?

}

public enum RepetitionMode: String, XCResultObject {
    case none = "None"
    case runUntilFailure = "RunUntilFailure"
    case runRetryOnFailure = "RunRetryOnFailure"
    case upUntilMaximumRepetitions = "FixedIterations"
    
    init?(_ json: [String : AnyObject]) {
        // Ensure we have the correct type here
        guard let type = json["_type"] as? [String: AnyObject], let name = type["_name"] as? String, name == "String" else {
            logError("Incorrect type, expecting String")
            return nil
        }

        guard let actualValue = json["_value"] as? NSString else {
            logError("Unable to get string value")
            return nil
        }

        self.init(rawValue: actualValue as String)
    }
}
