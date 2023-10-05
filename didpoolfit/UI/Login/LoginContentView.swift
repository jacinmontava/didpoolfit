//
//  LoginContentView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 5/10/23.
//

import SwiftUI
import ComposableArchitecture

struct LoginContentView: View {
    let store: StoreOf<LoginRegisterReducer>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            if viewStore.showLogin {
                LoginView(store: .init(initialState: .init(showLogin: true), reducer: {LoginRegisterReducer()}))
            } else {
                RegisterView(store: .init(initialState: .init(showLogin: false), reducer: {LoginRegisterReducer()}))
            }
        }
    }
}

struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView(store: .init(initialState: .init(showLogin: false), reducer: {LoginRegisterReducer()}))
    }
}
