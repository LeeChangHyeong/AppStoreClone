//
//  AppViewTopView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/23.
//

import SwiftUI

struct AppViewTopView: View {
    var body: some View {
        VStack{
            Divider()
            Text("지금 참여 가능")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("디즈니+")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("닥터 스트레인지: 대혼돈의 멀티버스")
                .frame(maxWidth:.infinity, alignment: .leading)
            Image("IMG_1157")
                .frame(maxWidth:.infinity)
                .background(.black)
                .cornerRadius(20)
        }
        .padding()
    }
}

struct AppViewTopView_Previews: PreviewProvider {
    static var previews: some View {
        AppViewTopView()
    }
}
