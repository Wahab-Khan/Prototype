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
    var isSelected = false
    
    var body: some View {

        VStack {
            HeaderView()
            
            
            HStack {
                
                VStack {
                    ForEach(menuData) { item in
                        MenuItem(icon: item.icon,
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
            
            HStack(){
                MenuItem(icon: "timelapse", title: "Setting")
                MenuItem(icon: "xmark.shield.fill", title: "Logout")
            }
            .frame(maxWidth: .infinity, alignment: .top)
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
    var isSeleted : Bool = true
    
//    @State
    var icon = ""
//    @State
    var title = ""
    
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
            .cornerRadius(10)
            .padding(.horizontal)
    }
}


struct Menu : Identifiable {
    let id = UUID()
    let name : String
    let icon : String
}

let menuData = [
    Menu(name: "Home", icon: "house.fill"),
    Menu(name: "Finance Report", icon: "dollarsign.circle.fill"),
    Menu(name: "My Companys", icon: "house.fill"),
    Menu(name: "Home", icon: "house.fill"),
    Menu(name: "Home", icon: "house.fill"),
    Menu(name: "Home", icon: "house.fill"),
    Menu(name: "Finance Report", icon: "dollarsign.circle.fill"),
    Menu(name: "My Companys", icon: "house.fill"),
    Menu(name: "Home", icon: "house.fill"),
    Menu(name: "Home", icon: "house.fill")
]

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("Profile")
                .resizable()
                .frame(width: 80.0, height: 80.0)
                .clipShape(Circle())
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text("Johnny")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
                Text("CTO")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .bold()
                
            }
            Spacer()
        }.padding(.leading).padding(.leading)
    }
}
