//
//  NavigationView.swift
//  Navigations in SwiftUI at 2025
//
//  Created by Ahmet Bostancıklıoğlu on 1.02.2025.
//

import SwiftUI

struct NavigationView2: View {
    var model =  Model(bol: true)
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home Screen")
                    .font(.largeTitle)
                
                
                
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Go to Detail View 1")
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                }
                .padding(.bottom, 40)
                 
            }
            .navigationTitle("Home")
   
        }
    }
}

#Preview {
    NavigationView2()
}
