//
// PinResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PinResponse: Codable, JSONEncodable, Hashable {
    /** Duration of the request in human-readable format */
    public var duration: String

    public init(duration: String) {
        self.duration = duration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case duration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(duration, forKey: .duration)
    }
}

