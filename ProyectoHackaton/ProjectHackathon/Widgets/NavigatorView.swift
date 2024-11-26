//
//  NavigatorView.swift
//  ProjectHackathon
//
//  Created by CEDAM33 on 25/11/24.
//

import SwiftUI

struct NavigatorView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    let lstStructPanel: [StructPanel] = [
        StructPanel(idPanel: 1, titulo: "Consejos", icono: "accessibility.fill"),
        StructPanel(idPanel: 2, titulo: "Menu Principal", icono: "house.fill"),
        StructPanel(idPanel: 3, titulo: "Especialistas En Salud Mental", icono: "message.fill")
    ]
    
    @Binding var index: Int
    @Binding var isLogin: Bool
    @Binding var isUser: Bool
    @Binding var nameUser: String
    @Binding var usuarios: [Usuario]
    
    @State var siguiente: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                if(isLogin == false) {
                    Button(action: {
                        self.index = 3
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160,height: 40)
                                .cornerRadius(10)
                                .foregroundStyle(self.index == 3 ? colorIcons[0]: colorIcons[1])
                            Text("Crear Cuenta")
                                .font(.title3)
                                .foregroundStyle(self.index == 3 ? colorLet2[0]: colorLet2[1])
                                .bold()
                        }
                    }
                    .padding(10)
                    Button(action: {
                        self.index = 4
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160,height: 40)
                                .cornerRadius(10)
                                .foregroundStyle(self.index == 4 ? colorIcons[0]: colorIcons[1])
                            Text("Iniciar Sesión")
                                .font(.title3)
                                .foregroundStyle(self.index == 4 ? colorLet2[0]: colorLet2[1])
                                .bold()
                        }
                    }
                    .padding(10)
                } else {
                    Text("Usuario: \(nameUser)")
                        .font(.title3)
                        .foregroundStyle(self.index == 3 ? colorLet2[0]: colorLet2[1])
                        .bold()
                    Button(action: {
                        self.index = 1
                        isLogin = false
                        isUser = false
                        nameUser = ""
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160,height: 40)
                                .cornerRadius(10)
                                .foregroundStyle(self.index == 3 ? colorIcons[0]: colorIcons[1])
                            Text("Cerrar Sesión")
                                .font(.title3)
                                .foregroundStyle(self.index == 3 ? colorLet2[0]: colorLet2[1])
                                .bold()
                        }
                    }
                }
            }
            
            Group {
                if(self.index == 0) {
                    PanelView1(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: lstStructPanel[0])
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
                else if(self.index == 1) {
                    PanelView2(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: lstStructPanel[1], index: $index, siguiente: $siguiente)
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
                else if(self.index == 2) {
                    PanelView3(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: lstStructPanel[2])
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
                else if(self.index == 3) {
                    SignUpView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios)
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
                else if(self.index == 4) {
                    LogInView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios, emailAddress: "", password: "")
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
                else if(self.index == 5) {
                    MascotaView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons)
                        .background(Color.clear)
                        .transition(.move(edge: .trailing))
                }
            }
            .animation(.easeInOut, value: self.index)
            
            Spacer()
            HStack {
                Button(action: {
                        self.index = 0
                    }) {
                        Image(systemName: "\(lstStructPanel[0].icono)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(self.index == 0 ? colorIcons[0]: colorIcons[1])
                    }
                    .padding(10)
                Button(action: {
                        self.index = 1
                    }) {
                        Image(systemName: "\(lstStructPanel[1].icono)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(self.index == 1 ? colorIcons[0]: colorIcons[1])
                    }
                    .padding(10)
                Button(action: {
                        self.index = 2
                    }) {
                        Image(systemName: "\(lstStructPanel[2].icono)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(self.index == 2 ? colorIcons[0]: colorIcons[1])
                    }
                    .padding(10)
            }
            .padding()
            .padding(.horizontal)
        }
    }
}

struct SpashLogOut: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    @State private var showing = true
    
    var body: some View {
        ZStack {
            if showing == true {
                VStack {
                    ZStack {
                        LinearGradient(colors: colorBG, startPoint: .bottomLeading, endPoint: .topLeading).ignoresSafeArea()
                        VStack {
                            Text("Cerrando Sesion")
                                .font(.largeTitle)
                                .foregroundStyle(colorLet1[0])
                            ZStack {
                                Image("Logo1")
                                    .resizable()
                                    .frame(width: 250, height: 250)
                                Text("Escucha tu mente, transforma tu vida.")
                                    .font(.subheadline)
                                    .foregroundStyle(colorLet1[0])
                                    .offset(y: 25)
                            }
                        }
                    }
                }
            } else {
                MainWindow(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons)
                    .transition(.opacity)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    showing = false
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
    @Previewable @State var index: Int = 1
    @Previewable @State var isLogin: Bool = false
    @Previewable @State var isUser: Bool = false
    @Previewable @State var nameUser: String = ""
    @Previewable @State var usuarios: [Usuario] = [Usuario(nombre: "Gerardo", apellido_1: "Lopez", apellido_2: "Lopez", edad: 18, email: "prueba@hotmail.com", password: "0000", telefono: "5511111111")]
    
    NavigatorView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios)
}
