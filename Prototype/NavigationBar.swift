//
//  NavigationBar.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/19/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    var title : String
//    var function : () -> Void
    @ObservedObject var router : ViewRouter
    var body: some View {
            HStack{
                Image(systemName: "sidebar.left")
                    .font(.title)
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 20)
                    .padding(.trailing)
                    .onTapGesture {
//                        self.function()
                        self.router.isShowMenu.toggle()
                }
                
                Text(title)
                    .font(.title)
                    .bold()
                
                Spacer()
                    
                }
            .frame(height: 60)
            .padding(.horizontal)
            .background(Color.white)
     
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Home", router: ViewRouter())
    }
}
