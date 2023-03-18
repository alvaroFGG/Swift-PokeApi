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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView(pokemons: [Pokemon]())
    }
}
