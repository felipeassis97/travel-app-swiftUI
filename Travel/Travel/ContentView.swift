//
//  ContentView.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    @Environment (\.horizontalSizeClass) var horizontalSize
    var isMobile: Bool {
        return horizontalSize == .compact //.regular == ipad
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: isMobile ? 220 : 315, alignment: .top)
                    
                    List(viagens) { viagem in
                        NavigationLink(destination: MapView(destiny: viagem.titulo, coordinate: viagem.coordenada)) {
                            TravelItemView(viagem: viagem)
                        }
                    }
                }
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
