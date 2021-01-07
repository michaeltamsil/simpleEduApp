//
//  KontenView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct KontenView: View {
    var body: some View {
        VStack{
        
            TabView {
                KontenBerandaView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                
                KontenKelasView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                    }
                
                KontenLainnyaView()
                    .tabItem {
                        Image(systemName: "person.fill")
                    }
            }
        }
    }
}

struct KontenView_Previews: PreviewProvider {
    static var previews: some View {
        KontenView()
    }
}
