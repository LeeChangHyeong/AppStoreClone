//
//  TodayItem.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

struct TodayItem: Identifiable {
    var id = UUID().uuidString
    var title: String
    var category: String
    var overlay: String
    var contentImage: String
    var logo: String
}

var items = [
    
    TodayItem(title: "배트맨", category: "히어로 영화", overlay: "올해의 영화", contentImage: "batmanMain", logo: "batman"),
    
    TodayItem(title: "배트맨", category: "히어로 영화", overlay: "올해의 영화", contentImage: "batmanMain", logo: "batman")
    
]
