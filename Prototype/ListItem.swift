//
//  ListItem.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/25/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack (spacing: 12.0){
            
            Image("Profile")
                .resizable()
                .frame(width: 80.0, height: 80.0)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            
            
            VStack(alignment: .leading,spacing: 8) {
                
                Text("Company name")
                    .font(.headline)
//                    .padding(.bottom)
                    
                
                Text("This is the Text Only to fill Lists ... Dont read it ... if u do then you are ass hole ... now get lost ")
                    .lineLimit(2)
                    .lineSpacing(4)
                    .font(.subheadline)
                
                Text("20 Jun")
                    .font(.caption)
                    .foregroundColor(.gray)
//                    .padding(.top)
            }
                
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
