//
//  Unused buttons.swift
//  Code Organizer
//
//  Created by 90306584 on 10/1/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI

struct Unused_buttons: View {
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        Button(action:{self.viewRouter.currentPage = "sprites"}) {
              Text("Sprites")
               .font(.headline)
               .padding(.all)
        }
               .border(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(width: 200.0, height: 60.0, alignment: .topLeading)




           Button(action: {self.viewRouter.currentPage = "UI alignments"}) {
             Text("UI alignments")
              .font(.headline)
              .padding(.all)
              }
              .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
              .frame(width: 400.0, height: 60.0, alignment: .bottomTrailing)
                  
            

        Button(action: {self.viewRouter.currentPage = "Buttons"}) {
            Text("Buttons")
            .font(.headline)
            .padding(.all)
            }
            .border(Color.pink, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(width: 100.0, height: 60.0, alignment: .bottomTrailing)
    }
}

struct Unused_buttons_Previews: PreviewProvider {
    static var previews: some View {
        Unused_buttons(viewRouter: ViewRouter())
    }
}
