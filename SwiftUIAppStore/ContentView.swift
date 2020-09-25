//
//  ContentView.swift
//  SwiftUIAppStore
//
//  Created by Shunsuke Takagi on 9/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                FuturedRow()
                ForEach(1..<3) { _ in
                    CategoryRow()
                }
                
                CategoryList()
                CategoryRow()
            }
            .navigationBarTitle("H1(Title)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
