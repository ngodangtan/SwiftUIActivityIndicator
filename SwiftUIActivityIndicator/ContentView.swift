//
//  ContentView.swift
//  SwiftUIActivityIndicator
//
//  Created by Ngo Dang tan on 22/01/2021.
//

import SwiftUI
import ActivityIndicatorView

struct ContentView: View {
    @State var loading = false
    var body: some View {
        NavigationView {
            VStack {
                ActivityIndicatorView(isVisible: $loading, type: .default)
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
              
                ActivityIndicatorView(isVisible: $loading, type: .rotatingDots)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                
                Button(action: {
                    self.loading = true
                }, label: {
                    Text("Load Data")
                        .bold()
                        .frame(width: 220, height: 50, alignment: .center)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                })
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
