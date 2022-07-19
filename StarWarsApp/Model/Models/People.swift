//
//  People.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 17.07.2022.
//

import Foundation

struct People: Codable {
    let name: String
    let birth: String
    let height: String
    let gender: String
    let weight: String
    let hair: String
    let skin: String
    let eye: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case birth = "birth_year"
        case height = "height"
        case gender = "gender"
        case weight = "mass"
        case hair = "hair_color"
        case skin = "skin_color"
        case eye =  "eye_color"
    }
    
}

struct AllPeople: Codable {
    let allPeople: [People]
    
    enum CodingKeys: String, CodingKey {
        case allPeople = "results"
    }
}
