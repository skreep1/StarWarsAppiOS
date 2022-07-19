//
//  Network.swift
//  StarWarsApp
//
//  Created by Maksim Skrypka on 17.07.2022.
//

import Foundation

class PeopleRequest {
    
    private let peopleUrl = "https://swapi.dev/api/people/"
    
        func fetchPeople(comp: @escaping ([People]) -> ()) {
            let api = URL(string: peopleUrl)
            
            URLSession.shared.dataTask(with: api!) { data, response, error in
                if error != nil { print("error")
                    return
                }
                
                do {
                let result =  try JSONDecoder().decode(AllPeople.self, from: data!)
                    comp(result.allPeople)
                } catch {
                    
                }
            } .resume()
        }
    }

