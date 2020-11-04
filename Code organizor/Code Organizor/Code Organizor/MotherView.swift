//
//  Motherview.swift
//  Code Organizor
//
//  Created by 90306584 on 9/21/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "sprites" {
                SpritesView(viewRouter: viewRouter)
                
            } else if viewRouter.currentPage == "UI alignments" {
               UIalignmentView(viewRouter: viewRouter)
                
            } else if viewRouter.currentPage == "Buttons" {
                ButtonsView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Menu" {
                ContentView(viewRouter: viewRouter)
            } else {
                ContentView(viewRouter: viewRouter)
            }

        }
    }
}

struct Motherview_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
