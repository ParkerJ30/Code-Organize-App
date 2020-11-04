//
//  ContentView.swift
//  Code Organizor
//
//  Created by 90306584 on 9/10/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var viewRouter: ViewRouter
    @State var selectedValue = 0
    @State var PageName:String = "sprites"
    var body: some View {
     
    
       VStack {
        Text("Code Organizer")
        .font(.title)
        .fontWeight(.heavy)
        .frame(width: 217.0, height: 68.0)
        
        Picker(selection: $selectedValue, label: Text("someText")){
                        Text("Sprites").tag(0)
                        Text("UI alignments").tag(1)
                        Text("Buttons").tag(2)
                      
                    }.pickerStyle(WheelPickerStyle())
       
        
        
      

        Button(action: {
            if selectedValue == 0 {
                PageName = "sprites"
            }else if selectedValue == 1 {
                PageName = "UI alignments"
            }else if selectedValue == 2 {
                PageName = "Buttons"
                
            }
            viewRouter.currentPage = PageName
        }){
              Text("Go")
                }
       }
    }
}

       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}



