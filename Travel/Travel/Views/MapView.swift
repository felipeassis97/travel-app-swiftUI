//
//  MapView.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var destiny: String
    var coordinate: Coordenada
    
    var currentCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
        

    }

    @State var camera: MapCameraPosition = .automatic
    var body: some View {
        Map( position: $camera, interactionModes: [.pan,.pitch]){
            
        //Mark: option 1
            Annotation(destiny, coordinate: currentCoordinate) {
                Image(systemName: "figure.wave")
                    .padding(4)
                    .foregroundStyle(.white)
                    .background(.purple)
                    .cornerRadius(4)
                    .mapStyle(.standard)
            }
        //Mark: option 2
            //Marker(destiny, systemImage: "figure.wave", coordinate: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude))
        }.navigationTitle(destiny)
    }
}

#Preview {
    MapView(destiny: "Atibaia - São Paulo", coordinate: Coordenada(latitude: -23.1171, longitude: -46.5502))
}
