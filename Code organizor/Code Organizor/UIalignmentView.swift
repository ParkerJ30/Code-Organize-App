//
//  UIalignmentView.swift
//  Code Organizor
//
//  Created by 90306584 on 9/22/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI

struct UIalignmentView: View {
     @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        Button(action: {self.viewRouter.currentPage = "Menu"} ) {
            Text("Main Menu")
                .font(.headline)
                .frame(width: 217.0, height: 700.0, alignment:.top)
        }

        
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/){
            Text("Stacks")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Stacks")
                }.tag(1)
            Text("Colors")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Colors")
                }
            Text("Fonts")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Fonts").tag(2)
                }
            Text("Borders")
                .tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Borders").tag(3)
        }
        .font(.headline)
        }
    }
    

struct UIalignmentView_Previews: PreviewProvider {
    static var previews: some View {
        UIalignmentView(viewRouter: ViewRouter())
    }
}
}
