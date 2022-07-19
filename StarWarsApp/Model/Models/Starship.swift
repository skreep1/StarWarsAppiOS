//
//  Planet.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 18.07.2022.
//

import Foundation

struct Starship: Codable {
    let name: String
    let model: String
    let manufacturer: String
    let speed: String
    let lenght: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case model = "model"
        case manufacturer = "manufacturer"
        case speed = "max_atmosphering_speed"
        case lenght = "length"
    }
    
}

struct AllStarship: Codable {
    let allStarship: [Starship]
    
    enum CodingKeys: String, CodingKey {
        case allStarship = "results"
    }
}
