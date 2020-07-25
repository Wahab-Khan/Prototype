//
//  MainAnimationView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/19/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct MainAnimationView: View {
    
    @ObservedObject var router = ViewRouter()
    
    var body: some View {
        
        ZStack{
            BackGroundGradient(isShowMenu: router.isShowMenu)
            
            
            SideMenu(viewRouter: self.router)
                .offset(x : router.isShowMenu ? 0 : -70)
                .animation(.easeInOut)
            
            BlankView()
                .modifier(BlankViewStyle(isShowMenu: router.isShowMenu))
      
            BaseView{
                if router.currentPage == "Home"{
                    Home(router: router)
//                    .modifier(BaseViewStyle(isShowMenu: router.isShowMenu))
                }else if router.currentPage == "Finance Report"{
                    MyCompanys(router: router)
//                    .modifier(BaseViewStyle(isShowMenu: router.isShowMenu))
                }else if router.currentPage == "My Companys"{
                    MyCompanys(router: router)
//                    .modifier(BaseViewStyle(isShowMenu: router.isShowMenu))
                }
                
            }
            .modifier(BaseViewStyle(isShowMenu: router.isShowMenu))
            
            
        }
    }
    
    func toggleMenu(){
        router.isShowMenu.toggle()
    }
}

struct MainAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainAnimationView()
            .previewDevice("iPhone 7")
            
            MainAnimationView()
            .previewDevice("iPhone Xs Max")
        }
    }
}


struct BlankView : View {
    var body : some View{
        
        LinearGradient(gradient: Gradient(colors:[Color("PrimaryColor")
            ,Color("PrimaryColorOpacity")])
            ,startPoint: .top
            ,endPoint: .bottom)
//            .edgesIgnoringSafeArea(isShowMenu ? .all : .horizontal)
    }
}

struct BaseViewStyle: ViewModifier {
    var isShowMenu : Bool

    func body(content: Content) -> some View {
        content
            .cornerRadius(isShowMenu ? 30 : 0)
            .scaleEffect(isShowMenu ? 0.7 : 1)
            .offset(x : isShowMenu ? 200 : 0)
            .animation(.easeInOut)
//            .edgesIgnoringSafeArea(isShowMenu ? .all : .horizontal)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct BlankViewStyle: ViewModifier {
    var isShowMenu : Bool

    func body(content: Content) -> some View {
        content
            .cornerRadius(isShowMenu ? 30 : 0)
            .scaleEffect(isShowMenu ? 0.6 : 1)
            .offset(x : isShowMenu ? 150 : 0)
            .blendMode(.hue)
            .opacity(0.8)
            .animation(.easeInOut(duration: 0.5))
//           .edgesIgnoringSafeArea(isShowMenu ? .all : .horizontal)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct BackGroundGradient: View {
    var isShowMenu : Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors:[Color("PrimaryColorOpacity"),Color("PrimaryColorOpacity")]), startPoint: .top, endPoint: .bottom)
//            .edgesIgnoringSafeArea(.all)
            .edgesIgnoringSafeArea(isShowMenu ? .all : .horizontal)
    }
}
