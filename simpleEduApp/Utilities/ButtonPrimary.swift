//
//  ButtonPrimary.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct ButtonPrimary: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("green"))
            .cornerRadius(10)
    }
}
