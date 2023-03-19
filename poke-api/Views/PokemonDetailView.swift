//
//  PokemonDetailView.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 19/3/23.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: pokemon.sprites.front_default)) { phase in
                if let image = phase.image {
                    image.resizable().frame(width: 200, height: 200)
                }
            }
            
            Text(pokemon.name.capitalized)
        }
        
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon(id: 1, name: "charizard", sprites: Image(front_default:"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png")))
    }
}
