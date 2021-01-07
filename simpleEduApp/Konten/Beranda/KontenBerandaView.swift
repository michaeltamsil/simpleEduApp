//
//  KontenBerandaView.swift
//  simpleEduApp
//
//  Created by michael tamsil on 07/01/21.
//

import SwiftUI

struct KontenBerandaView: View {
    
    @State var isActiveConnectCollagueAccount: Bool = false
    var body: some View {
        ScrollView {
            VStack( alignment: .leading){
                Text("Beranda")
                HStack(alignment: .top) {
                    VStack{
                        Image(systemName: "book.fill")
                        Text("""
Data
Akademik
""").multilineTextAlignment(.center)
                            .font(.subheadline)
                    }.frame(maxWidth:.infinity)
                    
                    
                    VStack {
                        Image(systemName: "building.2.fill")
                        Text("Akreditasi")
                            .font(.subheadline)
                    }.frame(maxWidth:.infinity)
                    
                    VStack {
                        Image(systemName: "person.2.fill")
                        Text("""
Akreditasi
Prodi
""").multilineTextAlignment(.center)
                            .font(.subheadline)
                    }.frame(maxWidth:.infinity)
                    
                }.frame(maxHeight: 70)
                .padding(.bottom)
                
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    isActive: $isActiveConnectCollagueAccount,
                    label: {
                        HStack{
                            Image(systemName: "exclamationmark.circle")
                            VStack {
                                Text("""
                                    Sambungkan Akun
                                    Perguruan Tinggi
                                    """)
                            }
                            Spacer()
                            Image(systemName: "arrow.right")
                        }.background(Color("yellow"))
                    }
                )
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Semua")
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Kelas")
                    })
                    Button(action: {}, label: {
                        Text("Berita")
                    })
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
        }
    }
}

struct KontenBerandaView_Previews: PreviewProvider {
    static var previews: some View {
        KontenBerandaView()
    }
}
