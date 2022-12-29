//
//  RMGetCharacterResponse.swift
//  R_M
//
//  Created by JWSScott777 on 12/28/22.
//

import Foundation

struct RMGetCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
