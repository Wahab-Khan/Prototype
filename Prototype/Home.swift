//
//  Home.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/19/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct Home: View {
    
//    var function : () -> Void
    @ObservedObject var router : ViewRouter
    
    var body: some View {
 
        NavigationView{
            VStack{
                NavigationBar(title: "Home", router: router)
                
                    List(0 ..< 100) { item in
                        NavigationLink(destination: DetailView()){
                        ListItem()
                        .listRowInsets(EdgeInsets())
                    }.buttonStyle(PlainButtonStyle())
//                    .offset(y:-18)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }

    }
    
//    func openMenu(){
//        self.function()
//    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(router: ViewRouter())
    }
}
