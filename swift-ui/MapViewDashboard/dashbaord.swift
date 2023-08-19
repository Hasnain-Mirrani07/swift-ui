//
//  dashbaord.swift
//  swift-ui
//
//  Created by mac on 14/08/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .center) {
            MapView( )
            CircleImage( )   .offset(y: -170)
                .padding(.bottom, -50)
            VStack(alignment: .leading) {
                          Text("Turtle Rock")
                              .font(.title)


                          HStack {
                              Text("Joshua Tree National Park")
                              Spacer()
                              Text("California")
                          }
                          .font(.subheadline)
                          .foregroundColor(.secondary)


                          Divider()


                          Text("About Turtle Rock")
                              .font(.title3)
                Text("Descriptive text goes here.").font(.subheadline).foregroundColor(.secondary)
                      }
                      .padding()


                      Spacer()
                  }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
