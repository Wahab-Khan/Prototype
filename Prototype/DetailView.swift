//
//  DetailView.swift
//  Prototype
//
//  Created by Abdul Wahab on 7/25/20.
//  Copyright © 2020 Abdul Wahab. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var title : String = "Heading"
    var image : String = "Profile"
    var discription : String = "this is shit"
    
    var body: some View {
        VStack {
            Text(title)
                .bold()
                .font(.largeTitle)
            
            Image(image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 30, height: 300)
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)
            
            Text(discription)
                .font(.body)
            
            Spacer()
        }.edgesIgnoringSafeArea(.horizontal)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
