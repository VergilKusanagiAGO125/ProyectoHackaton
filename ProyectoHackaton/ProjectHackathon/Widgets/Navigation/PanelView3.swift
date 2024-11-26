//
//  ContactView.swift
//  ProjectHackathon
//
//  Created by CEDAM33 on 25/11/24.
//

import SwiftUI

struct PanelView3: View {
    let lstcontactos: [StructEspecialista] = [
        StructEspecialista(user: Especialistas(nombre: "Ariel", apellido_1: "Gonzalez", apellido_2: "Ordaz", edad: 23, email: "ariel@hotmail.com", password: "1234", telefono: "5512345678")),
        StructEspecialista(user: Especialistas(nombre: "Cynthia", apellido_1: "Madrigal", apellido_2: "Gonzalez", edad: 20, email: "ariel@hotmail.com", password: "12345", telefono: "5512345678")),
        StructEspecialista(user: Especialistas(nombre: "Angel Gabriel", apellido_1: "Castro", apellido_2: "Gonzalez", edad: 21, email: "ariel@hotmail.com", password: "123456", telefono: "5512345678")),
        StructEspecialista(user: Especialistas(nombre: "Oscar", apellido_1: "Garcia", apellido_2: "Acosta", edad: 22, email: "ariel@hotmail.com", password: "1234567", telefono: "5512345678"))
    ]
    
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var strpanel: StructPanel
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: colorBG, startPoint: .bottomLeading, endPoint: .topLeading)
                    .ignoresSafeArea()
                
                List(lstcontactos, id: \.id) { contacto in
                    NavigationLink(destination: ContactDetailView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, myUser: contacto.user)) {
                        ContactView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, myUser: contacto.user)
                            .padding(.all, 4)
                    }
                }
                .navigationTitle(strpanel.titulo)
                .foregroundColor(.black)
                .listStyle(InsetListStyle())
            }
        }
    }
}

struct ContactView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var myUser = Especialistas(nombre: "Ariel", apellido_1: "Gonzalez", apellido_2: "Ordaz", edad: 23, email: "ariel@hotmail.com", password: "1234", telefono: "5512345678")
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(colorIcons[0])
                Spacer()
                Text("\(myUser.nombre) \(myUser.apellido_1) \(myUser.apellido_2)").font(.title2)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
            }
        }
        .padding()
        .padding(.horizontal, 10)
        .background(Gradient(colors: colorBG))
        .cornerRadius(10)
    }
}

struct ContactDetailView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var myUser = Especialistas(nombre: "Ariel", apellido_1: "Gonzalez", apellido_2: "Ordaz", edad: 23, email: "ariel@hotmail.com", password: "1234", telefono: "5512345678")
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 160, height: 160)
                .foregroundStyle(colorIcons[1])
            Text("\(myUser.nombre) \(myUser.apellido_1) \(myUser.apellido_2)")
                .font(.title2)
                .foregroundStyle(colorLet1[0])
            HStack (alignment: .bottom) {
                Text("Edad: ")
                    .font(.title2)
                    .padding(.horizontal, 20)
                    .foregroundStyle(colorLet1[0])
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundStyle(colorIcons[0])
                        .frame(height: 30)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                    Text("\(myUser.readEdad)")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .foregroundStyle(colorLet1[1])
                }
            }
            HStack (alignment: .bottom) {
                Text("Correo: ")
                    .font(.title2)
                    .padding(.horizontal, 20)
                    .foregroundStyle(colorLet1[0])
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundStyle(colorIcons[0])
                        .frame(height: 30)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                    Text("\(myUser.readEmail)")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .foregroundStyle(colorLet1[1])
                }
            }
            HStack (alignment: .bottom) {
                Text("Telefono: ")
                    .font(.title2)
                    .padding(.horizontal, 20)
                    .foregroundStyle(colorLet1[0])
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundStyle(colorIcons[0])
                        .frame(height: 30)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                    Text("\(myUser.readTelefono)")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .foregroundStyle(colorLet1[1])
                }
            }
            Button (action: {
                
            }) {
                ZStack {
                    Rectangle()
                        .frame(width: 280,height: 40)
                        .cornerRadius(10)
                        .foregroundStyle(colorIcons[0])
                    Text("Contactar Con Especialista")
                        .font(.title3)
                        .foregroundStyle(colorLet1[1])
                        .bold()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var colorBG: [Color] = [.init(red: 1.0, green: 1.0, blue: 1.0), .init(red: 0.9, green: 0.95, blue: 1.0)]
    @Previewable @State var colorLet1: [Color] = [.init(red: 0.5, green: 0.5, blue: 0.5), .init(red: 0.25, green: 0.25, blue: 0.25)]
    @Previewable @State var colorLet2: [Color] = [.init(red: 0.4, green: 0.6, blue: 0.4), .init(red: 0.6, green: 0.75, blue: 1.0)]
    @Previewable @State var colorIcons: [Color] = [.init(red: 0.5, green: 0.6, blue: 0.9), .init(red: 0.6, green: 0.9, blue: 0.5)]
    
    PanelView3(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: StructPanel(idPanel: 1, titulo: "Panel De Ejemplo", icono: "house.fill"))
}
