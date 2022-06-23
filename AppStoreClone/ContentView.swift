//
//  ContentView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            Text("투데이")
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("투데이")
                }
            Text("게임")
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("게임")
                }
            AppView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("앱")
                }
            Text("Arcade")
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("Arcade")
                }
            Text("검색")
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("검색")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
