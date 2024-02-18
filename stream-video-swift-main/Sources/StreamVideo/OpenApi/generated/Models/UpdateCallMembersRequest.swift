//
// UpdateCallMembersRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateCallMembersRequest: Codable, JSONEncodable, Hashable {
    /** List of userID to remove */
    public var removeMembers: [String]?
    /** List of members to update or insert */
    public var updateMembers: [MemberRequest]?

    public init(removeMembers: [String]? = nil, updateMembers: [MemberRequest]? = nil) {
        self.removeMembers = removeMembers
        self.updateMembers = updateMembers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case removeMembers = "remove_members"
        case updateMembers = "update_members"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(removeMembers, forKey: .removeMembers)
        try container.encodeIfPresent(updateMembers, forKey: .updateMembers)
    }
}

