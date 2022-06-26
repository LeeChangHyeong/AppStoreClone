//
//  Detail.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct Detail: View {
    @ObservedObject var detail : DetailViewModel
    @State var scale : CGFloat = 1
    var animation: Namespace.ID
    var body: some View {
        ScrollView{
            VStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                    Image(detail.selectedItem.contentImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                    HStack {
                        Text(detail.selectedItem.overlay)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        Spacer(minLength: 0)
                        Button {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.show.toggle()
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top,UIApplication.shared.windows.first!.safeAreaInsets.top + 10)
                    
                }
                .gesture(DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                HStack {
                    Image(detail.selectedItem.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(detail.selectedItem.title)
                            .fontWeight(.bold)
                        
                        Text(detail.selectedItem.category)
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
                .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
                .padding()
                
                Text("배트맨배트맨배트맨배트맨배트맨배트맨배트맨배트맨배트맨배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n배트맨\n")
                    .padding()
                Spacer()
            }
        }
        .scaleEffect(scale)
        .ignoresSafeArea(.all, edges: .top)
    }
    func onChanged(value: DragGesture.Value){
        
        let scale = value.translation.height / UIScreen.main.bounds.height
        
        self.scale = 1 - scale
        
    }
    
    func onEnded(value: DragGesture.Value){
        
        withAnimation(.spring()){
            
            
            scale = 1
        }
        
    }

}

