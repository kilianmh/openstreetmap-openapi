//
// MapElement.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MapElement: Codable, Hashable {

    public var type: MapElementType
    public var id: Double
    public var timestamp: Date
    public var version: Double
    public var changeset: Double
    public var user: String
    public var uid: Double
    public var tags: [String: String]?

    public init(type: MapElementType, id: Double, timestamp: Date, version: Double, changeset: Double, user: String, uid: Double, tags: [String: String]? = nil) {
        self.type = type
        self.id = id
        self.timestamp = timestamp
        self.version = version
        self.changeset = changeset
        self.user = user
        self.uid = uid
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case timestamp
        case version
        case changeset
        case user
        case uid
        case tags
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(version, forKey: .version)
        try container.encode(changeset, forKey: .changeset)
        try container.encode(user, forKey: .user)
        try container.encode(uid, forKey: .uid)
        try container.encodeIfPresent(tags, forKey: .tags)
    }
}

