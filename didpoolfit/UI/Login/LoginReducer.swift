//
//  LoginReducer.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 5/10/23.
//

import Foundation
import ComposableArchitecture

struct LoginRegisterReducer: Reducer {
    struct State: Equatable {
        var showLogin = true
    }
    
    enum Action {
        case showLogin
        case showRegister
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .showLogin:
            state.showLogin = true
            return .none
            
        case .showRegister:
            state.showLogin = false
            return .none
        }
    }
}
