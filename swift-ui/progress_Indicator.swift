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
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                       VStack (alignment: .trailing ){
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }}
            .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            
            //circle
            Circle()   .strokeBorder(lineWidth: 20)
            
            HStack {
                       Text("Speaker 1 of 3")
                Spacer( )
                       Button(action: {}) {
                           Image(systemName: "forward.fill")
                       }
            } .accessibilityLabel("Next speaker")
                .padding()
        
        }
        
        //next Question Ansert task
        VStack {
            Text("Inventory")
                .font(.title)
            HStack {
                Label("Paperclips", systemImage: "paperclip.circle.fill")
                Text("3")
            }
        }
        
        //accebility code
        Button(action: {}) {
            Label("Skip song", systemImage: "forward")
        }
        .accessibilityLabel(Text("Skip song"))
        
        
        
    }
}

struct progress_Indicator_Previews: PreviewProvider {
    static var previews: some View {
        progress_Indicator()
    }
}
