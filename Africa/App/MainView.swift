//
//  MainView.swift
//  Africa
//
//  Created by Valentina Olariaga on 25/3/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // el color y la imagen en la preview la pongo como defecto en la info de la app
        // cuando selecciono una tab se me cambia automaticamente el color ya que el color universal de la app es el amarillo que seleccione en assets
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem{
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
