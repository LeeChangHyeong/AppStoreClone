//
//  DetailViewModel.swift
//  AppStoreClone
//
//  Created by 이창형 on 2022/06/26.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Published var selectedItem = TodayItem(title: "", category: "", overlay: "", contentImage: "", logo: "")
    
    @Published var show = false
}
