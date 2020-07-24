//
//  BgView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/22/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct BgView<Content>: View where Content: View {
    private let bgImage = Image.init(systemName: "m.circle.fill")
    let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body : some View {
        ZStack {
            bgImage
                .resizable()
                .opacity(0.2)
            content
        }
    }
}


struct BgView_Previews: PreviewProvider {
    static var previews: some View {
//        BgView(content: EmptyView())
       BgView {
            Button(action: {
                print("Button1 clicked")
            }) {
                Text("Button 1")
            }
            .modifier(BaseViewStyle(isShowMenu: false))

//        Button(action: {
//            print("Button1 clicked")
//        }) {
//            Text("Button 1")
//        }
//        .modifier(MyButtonStyle())

        }
        
    }
}


//struct MyButtonStyle: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .padding(.all)
//            .padding(.all)
//            .padding(.all)
//            .padding(.all)
//            .background(Color.red)
//            .foregroundColor(Color.white)
//            .font(.largeTitle)
//            .cornerRadius(10)
//            .shadow(radius: 3)
//    }
//}
