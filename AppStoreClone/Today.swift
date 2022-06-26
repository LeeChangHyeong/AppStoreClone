//
//  Today.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct Today: View {
    var animation: Namespace.ID
    @EnvironmentObject var detail : DetailViewModel
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("6월 28일 일요일")
                            .foregroundColor(Color(.systemGray))
                        
                        Text("투데이")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .font(.largeTitle)
                    }
                }
                .padding()
                
                ForEach(items) { item in
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.selectedItem = item
                                detail.show.toggle()
                            }
                        }
                }
            }
            .padding(.bottom)
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}
