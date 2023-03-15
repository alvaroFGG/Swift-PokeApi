//
//  PokemonFetcher.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 15/3/23.
//

import Foundation


class PokemonFetcher: ObservableObject {
    
    @Published var pokemons = [Pokemon]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init(){
        fetchPokemons()
    }
    
    func fetchPokemons() {
        
        isLoading = true
        
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=20&offset=0")!
        
        let task = URLSession.shared.dataTask(with: url) {[unowned self] (data, response, error) in
            self.isLoading = false
            
            let decoder = JSONDecoder()
            if let data = data {
                do{
                    let pokemons = try decoder.decode([Pokemon].self, from: data)
                    print(pokemons)
                    self.pokemons = pokemons
                }catch {
                    print(error)
                }
            }
        }
    }
}
