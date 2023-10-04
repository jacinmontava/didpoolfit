//
//  RegisterView.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            CustomTextInput(placeHolder: "Full Name")
            CustomTextInput(placeHolder: "Phone Number")
            CustomTextInput(placeHolder: "Email")
            CustomTextInput(placeHolder: "Password")
        }.padding(20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
