//
//  AppView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ScrollView() {
            HStack {
                Text("앱")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
                Image(systemName: "person.crop.circle")
                    .font(.largeTitle)
                    .padding()
            }
            ScrollView(.horizontal) {
                HStack {
                    AppViewTopView()
                    AppViewTopView()
                    AppViewTopView()
                    AppViewTopView()
                    AppViewTopView()
                    AppViewTopView()
                    AppViewTopView()
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
