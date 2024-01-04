//
//  Travel.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import Foundation

struct Viagem: Hashable, Codable, Identifiable {
    var id: Int
    var titulo: String
    var imagem: String
    var quantidadeDeDias: String
    var valor: String
    var coordenada: Coordenada
}

struct Coordenada: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
