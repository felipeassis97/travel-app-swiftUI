//
//  HeaderView.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import SwiftUI


struct HeaderView: View {
    @Environment (\.horizontalSizeClass) var horizontalSize
    var isMobile: Bool {
        return horizontalSize == .compact
    }
    
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("Alura viagens").foregroundStyle(.white)
                        .font(.custom("Avenir Black", size: isMobile ? 20 : 30))
                        .padding(.top, isMobile ? 64 : 90)
                    
                    Text("ESPECIAL").foregroundStyle(.white)
                        .font(.custom("Avenir Book", size: isMobile ? 20 : 30))
                        .frame( maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL").foregroundStyle(.white)
                        .font(.custom("Avenir Black", size: isMobile ? 24 : 32))
                        .frame( maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: isMobile ? 200 : 300, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button("Hoteis") {}
                        .font(.custom("Avenir Medium", size: isMobile ? 16 : 24))
                        .foregroundColor(.white)
                        .frame(width: isMobile ? 100 : 150, height: 50)
                        .background(Color.blue)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 10))
                        .offset(x: isMobile ? 50 : view.size.width / 5)
                    Spacer()
                    Button("Pacotes") {}
                        .font(.custom("Avenir Medium", size: isMobile ? 16 : 24))
                        .foregroundColor(.white)
                        .frame(width: isMobile ? 100 : 150, height: 50)
                        .background(Color.orange)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 10))
                       .offset(x: isMobile ? -50 : -view.size.width / 4)
                }
                .offset(y: -40)
            }
        }
    }
}

#Preview {
    HeaderView().previewLayout(.fixed(width: 600, height: 400))
}
