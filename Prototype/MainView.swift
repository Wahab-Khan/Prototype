//
//  MainView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/23/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var router = "Home"
    
    var currentView = AllViews.home
    
    enum AllViews {
        case home,myCompanys,finencalReport
    }
    
    var body: some View {
        ZStack{
            
//            SideMenu(viewRouter: <#ViewRouter#>)
//                .zIndex(1)
//                .offset(x : isShowMenu ? 0 : -70)
//                .animation(.easeInOut)
            
            BaseView{
                if currentView == .home {
                    Home()
                } else if currentView == .myCompanys {
                    MyCompanys()
                }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
