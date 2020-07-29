//
//  LoginView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/29/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var isOnSecreen = false
    var body: some View {
        
        VStack(spacing: 10){
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("Welcome to \n Argaam")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("PrimaryColor"))
                
                Text("Get uptodate information of Gulf Market")
                    .font(.headline)
                    .foregroundColor(Color("PrimaryColorOpacity"))
            }
            .padding(.all,10)
            .opacity(isOnSecreen ? 1 : 0)
        
            LoginButton(isOnSecreen: $isOnSecreen)
            
        }.frame(width: UIScreen.main.bounds.width)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
