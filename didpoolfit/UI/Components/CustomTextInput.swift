//
//  CustomTextInput.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 4/10/23.
//

import SwiftUI

struct CustomTextInput: View {
    
    let placeHolder: String
    @State var inputText: String = ""
    
    var body: some View {
        HStack{
            Image(systemName: "person")
                .padding([.leading], 15)
                .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255))
            TextField(text: $inputText) {
                Text(placeHolder)
                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255))
            }.padding([.vertical], 15)
        }
        .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255))
        .cornerRadius(14)
        .padding([.bottom], 15)
    }
}

struct CustomTextInput_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextInput(placeHolder: "Full Name")
    }
}
