//
//  AppListView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct AppListView: View {
    var rank: Int
    var body: some View {
        HStack {
            Image("batman")
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
                .cornerRadius(20)
                
            VStack {
            Text("\(rank)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
            }
           
            VStack(alignment:.leading) {
            Text("배트맨")
                    .font(.title3)
                Text("더 배트맨 너무 재밌어요dhdhdhdhddddddddd")
                    .foregroundColor(Color(.systemGray))
                    .font(.caption)
                Spacer()
            }
            .padding(.trailing,10)
            Spacer()
            Button {
                
            } label: {
                Text("받기")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.horizontal, 23)
                    .padding(.vertical, 4)
                    .background(Color(.systemGray4))
                    .cornerRadius(20)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 30)
    }
}

//struct AppListView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppListView()
//    }
//}
