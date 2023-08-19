//
//  image.swift
//  swift-ui
//
//  Created by mac on 14/08/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image")
           .resizable()
           .clipShape(Circle())
                   .overlay {
                       Circle().stroke(.white, lineWidth: 4)
                   }
                   .shadow(radius: 7).frame(width: 250)
    }
}


struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
