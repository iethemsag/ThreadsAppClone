//
//  User.swift
//  ThreadsApp
//
//  Created by Ibrahim Ethem Sag on 26.01.2024.
//

import Foundation


struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
