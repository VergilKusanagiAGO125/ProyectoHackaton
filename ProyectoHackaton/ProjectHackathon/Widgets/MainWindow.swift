//
//  MainWindow.swift
//  ProjectHackathon
//
//  Created by CEDAM33 on 25/11/24.
//

import SwiftUI

struct SpashView: View {
    @State var colorBG: [Color] = [.init(red: 1.0, green: 1.0, blue: 1.0), .init(red: 0.9, green: 0.95, blue: 1.0)]
    @State var colorLet1: [Color] = [.init(red: 0.5, green: 0.5, blue: 0.5), .init(red: 0.25, green: 0.25, blue: 0.25)]
    @State var colorLet2: [Color] = [.init(red: 0.3, green: 0.6, blue: 0.25), .init(red: 0.5, green: 0.6, blue: 0.9)]
    @State var colorIcons: [Color] = [.init(red: 0.25, green: 0.3, blue: 0.6), .init(red: 0.6, green: 0.9, blue: 0.5)]
    
    @State private var showing = true
    
    var body: some View {
        ZStack {
            if showing == true {
                VStack {
                    ZStack {
                        LinearGradient(colors: colorBG, startPoint: .bottomLeading, endPoint: .topLeading).ignoresSafeArea()
                        VStack {
                            Text("Bienvenido A")
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

struct MainWindow: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    @State var index: Int = 1
    @State var isLogin: Bool = false
    @State var isUser: Bool = false
    @State var nameUser: String = ""
    @State var usuarios: [Usuario] = [Usuario(nombre: "Gerardo", apellido_1: "Lopez", apellido_2: "Lopez", edad: 18, email: "prueba@hotmail.com", password: "0000", telefono: "5511111111")]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: colorBG, startPoint: .bottomLeading, endPoint: .topLeading).ignoresSafeArea()
            VStack {
                NavigatorView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios)
            }
        }
    }
}

#Preview {
    @Previewable @State var colorBG: [Color] = [.init(red: 1.0, green: 1.0, blue: 1.0), .init(red: 0.9, green: 0.95, blue: 1.0)]
    @Previewable @State var colorLet1: [Color] = [.init(red: 0.5, green: 0.5, blue: 0.5), .init(red: 0.25, green: 0.25, blue: 0.25)]
    @Previewable @State var colorLet2: [Color] = [.init(red: 0.4, green: 0.6, blue: 0.4), .init(red: 0.6, green: 0.75, blue: 1.0)]
    @Previewable @State var colorIcons: [Color] = [.init(red: 0.5, green: 0.6, blue: 0.9), .init(red: 0.6, green: 0.9, blue: 0.5)]
    
    SpashView()
}
