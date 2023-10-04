//
//  ContentView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("logo_splash")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
