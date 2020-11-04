//
//  ButtonsView.swift
//  Code Organizor
//
//  Created by 90306584 on 9/22/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI

struct ButtonsView: View {
     @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        Button(action: {self.viewRouter.currentPage = "Menu"} ) {
            Text("Main Menu")
                .font(.headline)
                .frame(width: 217.0, height: 700.0, alignment:.top)
        }
        TabView {
            Text("UI Code")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("UI")
                }
            Text("Button Actions Code")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Actions")
                }
            Text("Button Actions Code")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Action pt. 2")
                }
        }
        .font(.headline)
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(viewRouter: ViewRouter())
    }
}
