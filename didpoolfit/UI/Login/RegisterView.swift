//
//  RegisterView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI
import ComposableArchitecture

struct RegisterView: View {
    @State private var isOn = false
    let store: StoreOf<LoginRegisterReducer>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("Hey there,")
                    .font(.system(size: 14))
                Text("Create an account")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.bottom], 30)
                CustomTextInput(placeHolder: "Full Name")
                CustomTextInput(placeHolder: "Phone Number")
                CustomTextInput(placeHolder: "Email")
                CustomTextInput(placeHolder: "Password")
                Toggle(isOn: $isOn) {
                    Text("By continuing you accept our Privacy Policy and Term of Use")
                }.toggleStyle(iOSCheckboxToggleStyle())
                Spacer()
                CustomButton()
                HStack {
                    Text("Already have an account?").font(.system(size: 14))
                    Button(action:{ viewStore.send(.showLogin) },
                           label:{
                        Text("Login")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 193 / 255, green: 80 / 255, blue: 246 / 255))
                    })
                }.padding([.top], 20)
            }.padding(20)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(store: .init(initialState: .init(showLogin: false), reducer: {LoginRegisterReducer()}))
    }
}
