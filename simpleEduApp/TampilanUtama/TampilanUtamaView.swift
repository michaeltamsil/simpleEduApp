//
//  TampilanUtamaView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct TampilanUtamaView: View {
    
    @State var isActiveDaftarView: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Daftar")
                        .fontWeight(.bold)
                })
                .buttonStyle(ButtonPrimary())
                
                

                HStack {
                    Text("Sudah punya akun ?")
                    NavigationLink(
                        destination: DaftarView(),
                        isActive: $isActiveDaftarView,
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
