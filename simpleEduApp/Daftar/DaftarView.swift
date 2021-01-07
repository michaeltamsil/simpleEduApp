//
//  DaftarView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct DaftarView: View {
    
    @State var alamatEmail: String = ""
    @State var namaLengkap: String = ""
    @State var kataSandi: String = ""
    @State var ketikUlangSandi: String = ""
    @State var isActiveLogin: Bool = false
    
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Group {
                Text("Daftar")
                Text("Silahkan lengkapi data dibawah untuk daftar akun EdLink")
            }
            
            Group{
                Text("Alamat Email")
                TextField("Masukkan alamat email", text: $alamatEmail)
                .keyboardType(.emailAddress)
            }
            
            Group {
                Text("Nama Lengkap")
                TextField("Masukkan nama lengkap", text: $namaLengkap)
                    .keyboardType(.alphabet)
            }
            
            Group {
                Text("Kata Sandi")
                SecureField("Buat Kata Sandi", text: $kataSandi)
                    .keyboardType(.alphabet)

                Text("Ketik Ulang Sandi")
                SecureField("Ketiku Ulang kata sandi", text: $ketikUlangSandi)
                    .keyboardType(.alphabet)
            }
            
            VStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Daftar")
                })
                .buttonStyle(ButtonPrimary())
                HStack {
                    Text("Sudah punya akun?")
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        isActive: $isActiveLogin,
                        label: {
                            Text("Masuk")
                                .foregroundColor(Color("green"))
                        })
                }
            }

        }
        .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
        .padding()
    }
}

struct DaftarView_Previews: PreviewProvider {
    static var previews: some View {
        DaftarView().environment(\.colorScheme, .light)
    }
}
