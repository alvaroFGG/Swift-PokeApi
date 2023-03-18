//
//  PokemonListView.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 18/3/23.
//

import SwiftUI

struct PokemonListView: View {
    let pokemons: [Pokemon]
    
    var body: some View {
        
        List{
            ForEach(pokemons) { pokemon in
                HStack{
                    
                    AsyncImage(url: URL(string: pokemon.sprites.front_default)) { phase in
                        if let image = phase.image {
                            image
                        }
                    }
                    
                    Text(pokemon.name.capitalized)
                }
            }
        }
            
        
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView(pokemons: [Pokemon]())
    }
}
