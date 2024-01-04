//
//  TravelItemView.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import SwiftUI

struct TravelItemView: View {
    @Environment (\.horizontalSizeClass) var horizontalSize
    var isMobile: Bool {
        return horizontalSize == .compact //.regular == ipad
    }
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: isMobile ? 124 : 200)
                .aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 10))
                    
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: isMobile ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: isMobile ? 14 : 24))
            }
        }.padding(.vertical, 4)
    }
}

#Preview {
    TravelItemView(viagem: viagens[0])
}
