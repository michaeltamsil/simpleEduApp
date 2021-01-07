//
//  LoginView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI



struct LoginView: View {
    
    @State var alamatEmail: String = ""
    @State var isActiveLupaKataSandi: Bool = false
    @State var isActiveMasuk: Bool = false
    @State var isActiveSiakad: Bool = false
    @State var kataSandi: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
                Text("Masuk")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Selamat datang, masukkan email & kata sandi untuk masuk ke akun anda")
                    .foregroundColor(Color("gray"))
                    .padding(.bottom, 15)
                
                Text("Alamat Email")
                    .fontWeight(.bold)
                TextField("Masukkan alamat email", text: $alamatEmail)
                    .padding(.bottom, 15)
                
                Text("Kata Sandi")
                    .fontWeight(.bold)
                TextField("Masukkan kata sandi", text: $kataSandi)
                    .padding(.bottom, 15)
                
                VStack(alignment: .leading) {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/, 
                        isActive: $isActiveLupaKataSandi,
                        label: {
                            Text("Lupa kata sandi ?")
                                .foregroundColor(Color("green"))
                        })
                }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 15)
                
                Group {
                    NavigationLink(
                        destination: Text("Destinasi stelah berhasil Login"),
                        isActive: $isActiveMasuk,
                        label:{
                            Button(action: {
                                isActiveMasuk = true
                            }, label: {
                                Text("Masuk")
                                    .fontWeight(.bold)
                            })
                            .buttonStyle(ButtonPrimary())
                        })
                        .padding(.bottom)
                    
                    NavigationLink(
                        destination: Text("SIAKAD"),
                        isActive: $isActiveSiakad,
                        label:{
                            Button(action: {
                            }, label: {
                                Text("Siakad")
                                    .fontWeight(.bold)
                            })
                            .buttonStyle(ButtonDefault())
                        })
                        .padding(.bottom)
                    HStack {
                        Text("Belum punya akun?")
                        NavigationLink(
                            destination: DaftarView(),
                            label: {
                                Text("Daftar")
                                    .foregroundColor(Color("green"))
                            })
                    }.frame(maxWidth: .infinity)
                }

                
                
            }.frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .top)
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
