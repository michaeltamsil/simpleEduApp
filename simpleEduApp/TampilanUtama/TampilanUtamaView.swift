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
                Spacer()
                Button("Daftar"){
                    
                }.foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("green"))
                .cornerRadius(10)
                .padding()
                
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
            }
        }
        
    }
}

struct TampilanUtamaView_Previews: PreviewProvider {
    static var previews: some View {
        TampilanUtamaView()
    }
}
