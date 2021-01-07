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
    @State var isActiveLogin2: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Group {
                    Text("Daftar")
                        .fontWeight(.bold)
                    Text("Silahkan lengkapi data dibawah untuk daftar akun EdLink")
                        .foregroundColor(Color("gray"))
                }
                
                Group{
                    Text("Alamat Email")
                        .fontWeight(.bold)
                    TextField("Masukkan alamat email", text: $alamatEmail)
                        .keyboardType(.emailAddress)
                }
                
                Group {
                    Text("Nama Lengkap")
                        .fontWeight(.bold)
                    TextField("Masukkan nama lengkap", text: $namaLengkap)
                        .keyboardType(.alphabet)
                }
                
                Group {
                    Text("Kata Sandi")
                        .fontWeight(.bold)
                    SecureField("Buat Kata Sandi", text: $kataSandi)
                        .keyboardType(.alphabet)
                    
                    Text("Ketik Ulang Sandi")
                        .fontWeight(.bold)
                    SecureField("Ketiku Ulang kata sandi", text: $ketikUlangSandi)
                        .keyboardType(.alphabet)
                }
                
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Daftar")
                    })
                    .buttonStyle(ButtonPrimary())
                    .padding(.bottom)
                    
                    
                    HStack {
                        Text("Sudah punya akun?")
                        NavigationLink(
                            destination: LoginView(),
                            isActive: $isActiveLogin2,
                            label: {
                                Text("Masuk")
                                    .foregroundColor(Color("green"))
                            })
                    }
                }.padding(.top, 30)
                
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct DaftarView_Previews: PreviewProvider {
    static var previews: some View {
        DaftarView().environment(\.colorScheme, .light)
    }
}
