//
//  ContentView.swift
//  test4
//
//  Created by mac on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
   // @static private var alerPressed = false
    var body: some View {
        Screen(imgName: "house", title: "First Screen", screenTitle: "first Button")
       
    }
}


struct Screen: View{
    static private var isPress = false
    let imgName:String
    let title:String
    let screenTitle:String
    
    var body: some View{
        NavigationView{
            VStack {
                Button {
               
                } label: {
                    Text("This is Alet Button").frame(width: 200,height: 50,alignment: .center).foregroundColor(Color.white
                    ).background(Color.green).cornerRadius(10)
                }

                Image(systemName: imgName).resizable().frame(width: 200,height: 200,alignment: .center)
                    .padding()
               
                Text(title).font(.system(size: 32,weight: .light,design: .default))
                
                      NavigationLink(destination:  Screen(imgName: "bus", title: "2nd Screen", screenTitle: "2nd Button"),
                                     label: {
                          ContinueButton(color: .green)
                       })
                
            }        .navigationTitle(screenTitle)
}
    }
}



//butoon style
struct ContinueButton: View{
    let color:Color
    var body: some View{
        Text("continue").frame(width: 200,height: 50,alignment: .center)
            .background(color).foregroundColor(Color.white).cornerRadius(20)
    
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
