//
//  LoginView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 5/10/23.
//

import SwiftUI
import ComposableArchitecture

struct LoginView: View {
    let store: StoreOf<LoginRegisterReducer>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            Button(action:{ viewStore.send(.showRegister) },
                   label:{
                Text("Login")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 193 / 255, green: 80 / 255, blue: 246 / 255))
            })
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(store: .init(initialState: .init(showLogin: true), reducer: {LoginRegisterReducer()}))
    }
}
