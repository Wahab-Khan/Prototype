//
//  ViewRouter.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/23/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    
    @Published var currentPage : String = "Home"
    @Published var isShowMenu : Bool = false
//    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
//    var currentPage : String = "Page1" {
//        willSet{
//            self.objectWillChange.send(self)
//        }
//    }
    
}
