//
//  ContentView.swift
//  poke-api
//
//  Created by Alvaro Fuentenebro on 14/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var pokemonFetcher = PokemonFetcher()
    
    var body: some View {
        
            if (pokemonFetcher.isLoading) {
                LoadingView()
            }else{
                PokemonListView(pokemons: pokemonFetcher.pokemons)
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            ContentView().environmentObject(PokemonFetcher())
        }
    }
}
