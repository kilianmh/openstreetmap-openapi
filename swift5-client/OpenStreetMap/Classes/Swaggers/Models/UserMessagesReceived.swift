//
// UserMessagesReceived.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserMessagesReceived: Codable {

    public var count: Int?
    public var unread: Int?

    public init(count: Int?, unread: Int?) {
        self.count = count
        self.unread = unread
    }


}
