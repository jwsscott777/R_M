//
//  RMEpisode.swift
//  R_M
//
//  Created by JWSScott777 on 12/27/22.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
