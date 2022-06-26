//
//  Today.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct Today: View {
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
                    
                }
            }
            .background(Color.primary.opacity(0.06).ignoresSafeArea())
        }
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}
