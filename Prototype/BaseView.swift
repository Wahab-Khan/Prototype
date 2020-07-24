//
//  BaseView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/23/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct BaseView<T>: View where T : View {
    
    var function : () -> Void
    
//    @State var isShowMenu : Bool = false
    
    let content: T
    
    public init(@ViewBuilder content: () -> T) {
        self.content = content()
        self.function = {}
    }
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors:[Color("PrimaryColor"),Color("PrimaryColorOpacity")]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
            
//            SideMenu(function: { item in self.changeStateOfMenu(title: item)})
//                .offset(x : isShowMenu ? 0 : -70)
//                .animation(.easeInOut)
            
            content
//                .modifier(MyButtonStyle(isShowMenu: isShowMenu))
//                .onTapGesture {
//                    self.isShowMenu.toggle()
//            }
        }
    }
    
//    func changeStateOfMenu(title : String){
//        self.isShowMenu = false
//        print(title)
//        self.function()
//    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView{
            EmptyView()
        }
    }
}


struct ShadeView : View {
    var body : some View {
        Text("")
    }
}


//struct MyButtonStyle: ViewModifier {
//    var isShowMenu : Bool
//
//    func body(content: Content) -> some View {
//        content
//            .cornerRadius(isShowMenu ? 30 : 0)
//            .scaleEffect(isShowMenu ? 0.7 : 1)
//            .offset(x : isShowMenu ? 200 : 0)
//            .animation(.easeInOut)
//            .edgesIgnoringSafeArea(.all)
//    }
//}
