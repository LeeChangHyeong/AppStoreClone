//
//  AppViewFullScreenView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/23.
//

import SwiftUI

struct AppViewFullScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("batmanMain")
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height/1.8)
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .padding()
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                }
                .statusBar(hidden: true)
                Text("안녕하세요")
                Text("안녕하세요")
                Text("안녕하세요")
                Text("안녕하세요")
                Text("안녕하세요")
                Text("안녕하세요")
                Text("안녕하세요")
                Image("batmanMain")
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height/1.8)
            }
        }
        .ignoresSafeArea()
    }
}

struct AppViewFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AppViewFullScreenView()
    }
}
