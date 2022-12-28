//
//  RMLocation.swift
//  R_M
//
//  Created by JWSScott777 on 12/28/22.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
