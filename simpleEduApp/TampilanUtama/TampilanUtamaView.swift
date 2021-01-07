//
//  TampilanUtamaView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct TampilanUtamaView: View {
    
    @State var isActiveDaftarView: Bool = false
    @State var isActiveLoginView: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: DaftarView(),
                    isActive: $isActiveDaftarView,
                    label:{
                        Button(action: {
                            isActiveDaftarView = true
                        }, label: {
                            Text("Daftar")
                                .fontWeight(.bold)
                        })
                        .buttonStyle(ButtonPrimary())
                    })
                    .padding(.bottom)
                
                HStack {
                    Text("Sudah punya akun?")
                    NavigationLink(
                        destination: LoginView(),
                        isActive: $isActiveLoginView,
                        label: {
                            Text("Masuk")
                                .foregroundColor(Color("green"))
                        })
                    
                }
                .padding(.bottom)
            }.padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            
        }
        
    }
}

struct TampilanUtamaView_Previews: PreviewProvider {
    static var previews: some View {
        TampilanUtamaView()
    }
}
