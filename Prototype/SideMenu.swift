//
//  SideMenu.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/19/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct SideMenu: View {
    
    @ObservedObject var viewRouter : ViewRouter
    
//    var function: (_ name:String) -> Void
    @State var isSelected = false
    
    var body: some View {

        HStack {
            VStack {
                ForEach(menuData) { item in
                    MenuItem(isSeleted: item.isSelected,
                             icon: item.icon,
                             title: item.name)
                        .onTapGesture {
//                            self.function(item.name)
                            self.viewRouter.currentPage = item.name
                            self.viewRouter.isShowMenu = false
//                            self.isSelected.toggle()
                    }
                }
            }.frame(width: 220, alignment: .leading)
            
            Spacer()
        }
        
    }
    
    struct SideMenu_Previews: PreviewProvider {
        static var previews: some View {
//            SideMenu(function: {item in print(item)})
            SideMenu(viewRouter: ViewRouter())
        }
    }
    
}


struct MenuItem: View {
    
//    @Binding
    var isSeleted : Bool
    
    @State var icon = ""
    @State var title = ""
    
    var body : some View {
        HStack{
            Image(systemName: icon)
                .imageScale(.large)
                .foregroundColor(isSeleted ? Color.white :Color("PrimaryColor"))
                .frame(width: 32.0, height: 32.0)
                .padding(.leading)
            Text(title)
                .font(.headline)
                .foregroundColor(isSeleted ? .white : .black)
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 50 ,
                alignment: .leading)
            .background(isSeleted ? Color("PrimaryColorOpacity") : .clear)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}


struct Menu : Identifiable {
    let id = UUID()
    let name : String
    let icon : String
    var isSelected : Bool
}

let menuData = [
    Menu(name: "Home", icon: "house.fill" , isSelected: true),
    Menu(name: "Finance Report", icon: "dollarsign.circle.fill", isSelected: false),
    Menu(name: "My Companys", icon: "house.fill", isSelected: false),
    Menu(name: "Home", icon: "house.fill", isSelected: false),
    Menu(name: "Home", icon: "house.fill", isSelected: false)
]
