//
//  AppView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        //        NavigationView {
        //
        //            Form {
        //
        //            }
        //            .navigationTitle("SwiftUI")
        //        }
        NavigationView{
            ScrollView() {
                ScrollView(.horizontal) {
                    HStack {
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
                            .padding(.horizontal)
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
//                        AppViewTopView()
//                            .padding(.horizontal)
//                        AppViewTopView()
//                        AppViewTopView()
//                            .padding(.horizontal)
//                        AppViewTopView()
//                        AppViewTopView()
//                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("앱")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ContentView()) {
                        Image(systemName: "person.crop.circle").font(.title)
                    }
                }
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
