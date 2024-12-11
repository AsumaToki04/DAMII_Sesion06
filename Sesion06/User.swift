//
//  User.swift
//  Sesion06
//
//  Created by DAMII on 10/12/24.
//

import Foundation

struct User: Codable, Identifiable { // Serializar, Único UI
    let id: Int
    let name: String
    let email: String
    let phone: String
    let website: String
    let address: Address
}
