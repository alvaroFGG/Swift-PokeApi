//
//  Pokemon.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 14/3/23.
//

import Foundation


struct PokemonList: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let sprites: Image
}

struct Image: Codable {
    var front_default: String
}
