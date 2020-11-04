//
//  View Router.swift
//  Code Organizor
//
//  Created by 90306584 on 9/21/20.
//  Copyright © 2020 90306584. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    var currentPage: String = "main" {
        didSet {
            objectWillChange.send(self)
        }
    }
}
