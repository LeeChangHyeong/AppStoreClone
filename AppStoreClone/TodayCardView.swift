//
//  TodayCardView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct TodayCardView: View {
    var item: TodayItem
    var animation: Namespace.ID
    @Environment(\.colorScheme) var color
    var body: some View {
        VStack{
            Image(item.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: item.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            
            HStack{
                Image(item.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.title)
                        .fontWeight(.bold)
                    
                    Text(item.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button {
                        
                    } label: {
                        Text("받기")
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Color.primary.opacity(0.1))
                            .clipShape(Capsule())
                    }
                    Text("인 앱 결제")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .matchedGeometryEffect(id: item.id, in: animation)
            .padding()
        }
        .background(color == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
    }
}
