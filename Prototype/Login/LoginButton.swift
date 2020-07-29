//
//  LoginButton.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/29/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct LoginButton: View {
    
    @Binding var isOnSecreen : Bool
    
    var body: some View {
        VStack(spacing : 20){
            
            Button(action: {}){
                Text("Log In")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 60)
                    .background(Color("PrimaryColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            Button(action: {}){
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth : 3)
                    .fill(Color("PrimaryColorOpacity"))
                    .frame(width: UIScreen.main.bounds.width - 50, height: 60)
                    .overlay(Text("Create an account")
                        .foregroundColor(Color("PrimaryColor"))
                        .fontWeight(.medium))
            }
            
            Button(action: {}){
                Text("I want to go as Guest")
                    .font(.headline)
                    .foregroundColor(Color("PrimaryColor"))
            }
            
        }
        .offset(y: isOnSecreen ? 0 : 300)
        .animation(.spring(dampingFraction: 0.7))
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                self.isOnSecreen.toggle()
            }
        }
    }
}

struct LoginButton_Previews: PreviewProvider {
    
    @State static var isVisible = false
    
    static var previews: some View {
        LoginButton(isOnSecreen: $isVisible)
    }
}
