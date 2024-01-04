//
//  ContentView.swift
//  Travel
//
//  Created by Felipe Assis on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    

 
    
    
    var body: some View {
        GeometryReader {
            view in
            VStack {
                VStack {
                    Text("Alura viagens").foregroundStyle(.white).font(.custom("Avenir Black", size: 20)).padding(.top, 64)
                    Text("ESPECIAL").foregroundStyle(.white).font(.custom("Avenir Book", size: 20)).frame( maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                    Text("BRASIL").foregroundStyle(.white).font(.custom("Avenir Black", size: 24)).frame( maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Color.purple)
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Porto Alegre")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//VStack / HStack / ZStack (pilha)
