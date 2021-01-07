//
//  LabelStyle.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct LabelStylePrimary: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        return Text("halo")
    }
    
//    func makeBody(configuration: Configuration) -> some View {
//        Text(configuration.title)
//            .foregroundColor(.white)
//            .frame(maxWidth: .infinity)
//            .padding()
//            .background(Color("green"))
//            .cornerRadius(10)
//
//
//    }
}
