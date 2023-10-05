//
//  RegisterView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var isOn = false
    
    var body: some View {
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
            Button(action:{},
                   label:{
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .padding(18)
                        .foregroundColor(Color.white)
                        .fontWeight(Font.Weight.heavy)
                    })
                .background(Color(red: 107 / 255, green: 80 / 255, blue: 246 / 255))
                .cornerRadius(99)
        }.padding(20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
