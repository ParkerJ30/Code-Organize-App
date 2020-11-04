//
//  SpritesView.swift
//  Code Organizor
//
//  Created by 90306584 on 9/21/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI

struct SpritesView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
       
        VStack {
        
        Button(action: {self.viewRouter.currentPage = "Menu"} ) {
            Text("Main Menu")
                .font(.headline)
                .frame(width: 217.0, height: 20.0, alignment:.top)
            }
            TabView {
                Text("UI Code")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("UI")
                    }
                Text("Controlled Movement Code")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Cont. Mov.")
                    }
                Text("Random Movement Code")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Rand. Mov.")
                    }
            }
            .font(.headline)
            
    }
  }
}
struct SpritesView_Previews: PreviewProvider {
    static var previews: some View {
        SpritesView(viewRouter: ViewRouter())
    }
}

