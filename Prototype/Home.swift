//
//  Home.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/19/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
 
        NavigationView{
            VStack{
                NavigationBar(title: "Home")
//                NavigationLink(destination: Text("1")){
                    List(0 ..< 100) { item in
                        ListItem()
                        .listRowInsets(EdgeInsets())
                    }
//                    .offset(y:-18)
//                }.buttonStyle(PlainButtonStyle())
            }
        }
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarTitle("Home")
//        .navigationBarHidden(true)

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
