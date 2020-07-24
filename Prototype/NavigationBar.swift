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
    var body: some View {
//        VStack {
            HStack{
                HStack {
                    Image(systemName: "sidebar.left")
                        .font(.title)
                }
                .frame(width: 50.0, height: 50.0)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 20)
                .padding(.trailing)
                .onTapGesture {
                    
                }
                
                Text(title)
                    .font(.title)
                    .bold()
                
                Spacer()
                    
            }.padding(.horizontal)
     
//        }.background(Color.blue)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Home")
    }
}


//protocol MenuTapped {
//    openSide
//}
