//
//  AppView.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
                        AppViewTopView(firstText: "같이 즐겨요", secondText: "2022년 최고의 영화", title: "더 배트맨", image: "batman")
                    }.padding(.horizontal)
                }
                .onAppear {
                    UIScrollView.appearance().isPagingEnabled = true
                }
                Divider()
                    .background(Color(.systemGray))
                    .padding(.top)
                HStack {
                    Text("무료 앱 순위")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Spacer()
                    Button {
                        
                    } label: {
                        Text("모두 보기")
                    }
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            ForEach(1..<3) { num in
                                AppListView(rank: num)
                                Divider()
                                    .background(Color(.systemGray))
                                    .padding(.leading, 65)
                            }
                            AppListView(rank: 3)
                        }
                        .padding(.leading)
                        VStack {
                            ForEach(4..<6) { num in
                                AppListView(rank: num)
                                Divider()
                                    .background(Color(.systemGray))
                                    .padding(.leading, 65)
                            }
                            AppListView(rank: 6)
                        }
                        VStack {
                            ForEach(7..<9) { num in
                                AppListView(rank: num)
                                Divider()
                                    .background(Color(.systemGray))
                                    .padding(.leading, 65)
                            }
                            AppListView(rank: 9)
                        }
                        VStack {
                            ForEach(10..<12) { num in
                                AppListView(rank: num)
                                Divider()
                                    .background(Color(.systemGray))
                                    .padding(.leading, 65)
                            }
                            AppListView(rank: 12)
                        }
                        VStack {
                            ForEach(13..<15) { num in
                                AppListView(rank: num)
                                Divider()
                                    .background(Color(.systemGray))
                                    .padding(.leading, 65)
                            }
                            AppListView(rank: 15)
                        }
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
