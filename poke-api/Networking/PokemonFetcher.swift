//
//  PokemonFetcher.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 18/3/23.
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
        
        for index in 1...100{
            let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(index)")!
            
            let task = URLSession.shared.dataTask(with: url) {[unowned self] (data, response, error) in
                
                let decoder = JSONDecoder()
                if let data = data {
                    do{
                        
                        let pokemon = try decoder.decode(Pokemon.self, from: data)

                        DispatchQueue.main.async {
                            self.pokemons.append(pokemon)
                        }
                        
                    }catch {
                        print(error)
                    }
                }
            }
            
            task.resume()
        }
        
        isLoading = false
        
        
        
        
        
    }
}
