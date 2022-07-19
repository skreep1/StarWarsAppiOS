//
//  PlanetsRequest.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 18.07.2022.
//

import Foundation

class StarshipRequest {
    
    private let starshipUrl = "https://swapi.dev/api/starships/"
    
        func fetchStarship(comp: @escaping ([Starship]) -> ()) {
            let api = URL(string: starshipUrl)
            
            URLSession.shared.dataTask(with: api!) { data, response, error in
                if error != nil { print("error")
                    return
                }
                
                do {
                let result =  try JSONDecoder().decode(AllStarship.self, from: data!)
                    comp(result.allStarship)
                } catch {
                    
                }
            } .resume()
        }
    }
