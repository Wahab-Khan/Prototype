//
//  MyCompanys.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/23/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct MyCompanys: View {
    
    @ObservedObject var router : ViewRouter
    
    var body: some View {
        NavigationView{
                VStack {
                    NavigationBar(title: "My Compnayes", router: router)
                        List(0 ..< 10) { item in
                            Text("Hello, Companys! \(item)")
                        }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct MyCompanys_Previews: PreviewProvider {
    static var previews: some View {
        MyCompanys(router: ViewRouter())
    }
}
