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
                    VStack {
                        NavigationBar(title: "Home")
                            List(0 ..< 10) { item in
                                Text("this is test \(item)")
                            }
                    }
            }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
