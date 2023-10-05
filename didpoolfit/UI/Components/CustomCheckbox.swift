//
//  CustomCheckbox.swift
//  didpoolfit
//
//  Created by Jacinto Montava on 5/10/23.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255))
                configuration.label
                    .font(.system(size: 13))
                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255))
            }
        })
    }
}
