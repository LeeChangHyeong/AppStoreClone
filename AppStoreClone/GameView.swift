//
//  GameView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/23.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("hello")
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
