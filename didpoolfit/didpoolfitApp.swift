//
//  didpoolfitApp.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI

@main
struct didpoolfitApp: App {
    var body: some Scene {
        WindowGroup {
            LoginContentView(store: .init(initialState: .init(showLogin: true), reducer: {LoginRegisterReducer()}))
        }
    }
}
