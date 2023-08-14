//
//  progress_Indicator.swift
//  swift-ui
//
//  Created by mac on 14/08/2023.
//

import SwiftUI

struct progress_Indicator: View {
    var body: some View {
        VStack{
            ProgressView(value: 10, total: 15)
            HStack{
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }}
        
        }
        
    }
}

struct progress_Indicator_Previews: PreviewProvider {
    static var previews: some View {
        progress_Indicator()
    }
}
