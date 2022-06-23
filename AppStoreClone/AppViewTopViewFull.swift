//
//  AppViewTopView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/23.
//

import SwiftUI

struct AppViewTopView: View {
    var firstText: String
    var secondText: String
    var title: String
    var image: String
    @State var isTouch = false
    var body: some View {
        VStack {
            Divider()
                .background(Color(.systemGray))
            Text(firstText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .foregroundColor(Color(.systemBlue))
            Text(secondText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
                .foregroundColor(Color(.systemGray))
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height/4)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    isTouch.toggle()
                }
                .fullScreenCover(isPresented: $isTouch, content: {
                                    AppViewFullScreenView()
                                })
        }
    }
}
