//
//  CustomButton.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 5/10/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
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
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
