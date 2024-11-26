//
//  SwiftUIViewRegistro.swift
//  a
//
//  Created by CEDAM34 on 25/11/24.
//

import SwiftUI

struct SignUpView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    @Binding var index: Int
    @Binding var isLogin: Bool
    @Binding var isUser: Bool
    @Binding var nameUser: String
    @Binding var usuarios: [Usuario]
    
    @State var activarBoton = 0
    
    @State private var nombre = ""
    @State private var apellido1 = ""
    @State private var apellido2 = ""
    @State private var genero = ""
    @State private var edad = ""
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var confirmpasswordText = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    @State private var isConfirmValidPassword = true
    
    var body: some View {
        VStack {
            Text("Creacion De Cuenta")
                .font(.largeTitle)
                .foregroundStyle(colorLet2[1])
                .padding(.horizontal, 20)
            
            TextField("Nombre", text: $nombre, prompt: Text("Ingrese Nombre")
                .foregroundStyle(colorLet2[0]))
            .textFieldStyle(PlainTextFieldStyle())
            .foregroundStyle(.black)
            .padding()
            .padding(.horizontal, 10)
            .background(.clear)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .padding(.horizontal, 15)
            }
            
            TextField("Apellido 1", text: $apellido1, prompt: Text("Ingrese Apellido 1")
                .foregroundStyle(colorLet2[0]))
            .textFieldStyle(PlainTextFieldStyle())
            .foregroundStyle(.black)
            .padding()
            .padding(.horizontal, 10)
            .background(.clear)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .padding(.horizontal, 15)
            }
            
            TextField("Apellido 2", text: $apellido2, prompt: Text("Ingrese Apellido 2")
                .foregroundStyle(colorLet2[0]))
            .textFieldStyle(PlainTextFieldStyle())
            .foregroundStyle(.black)
            .padding()
            .padding(.horizontal, 10)
            .background(.clear)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .padding(.horizontal, 15)
            }
            
            TextField("Edad", text: $edad, prompt: Text("Ingrese Edad")
                .foregroundStyle(colorLet2[0]))
            .textFieldStyle(PlainTextFieldStyle())
            .foregroundStyle(.black)
            .padding()
            .padding(.horizontal, 10)
            .background(.clear)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .padding(.horizontal, 15)
            }
            
            TextField("Email", text: $emailText, prompt: Text("Ingrese Email")
                .foregroundStyle(colorLet2[0]))
            .textFieldStyle(PlainTextFieldStyle())
            .foregroundStyle(.black)
            .padding()
            .padding(.horizontal, 10)
            .background(.clear)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
                    .padding(.horizontal, 15)
            }
            SecureField("passwordText", text: $passwordText, prompt: Text("Ingrese Contraseña")
                .foregroundStyle(colorLet2[0]))
                .textFieldStyle(PlainTextFieldStyle())
                .foregroundStyle(.black)
                .padding()
                .padding(.horizontal, 6)
                .background(.clear)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                        .padding(.horizontal, 15)
                }
            SecureField("Confirrmar contraseña", text: $confirmpasswordText, prompt: Text("Confirmar contraseña")
                .foregroundStyle(colorLet2[0]))
                .textFieldStyle(PlainTextFieldStyle())
                .foregroundStyle(.black)
                .padding()
                .padding(.horizontal, 6)
                .background(.clear)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                        .padding(.horizontal, 15)
                }
            
            if(nombre.isEmpty || apellido1.isEmpty || apellido2.isEmpty || edad.isEmpty || emailText.isEmpty || passwordText.isEmpty || confirmpasswordText.isEmpty) {
                
            }
            else {
                if(passwordText == confirmpasswordText){
                    Text("Datos correctos")
                    Button(action: {}) {
                        ZStack {
                            Rectangle()
                                .frame(width: 250, height: 50)
                                .cornerRadius(15)
                            
                            Text("Iniciar Sesión")
                                .font(.title)
                                .foregroundStyle(Color.white)
                        }
                    }
                }else{
                    Text("Datos erroneos")
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
    @Previewable @State var isLogin: Bool = true
    @Previewable @State var isUser: Bool = false
    @Previewable @State var nameUser: String = ""
    @Previewable @State var usuarios: [Usuario] = [Usuario(nombre: "Gerardo", apellido_1: "Lopez", apellido_2: "Lopez", edad: 18, email: "prueba@hotmail.com", password: "0000", telefono: "5511111111")]
    
    SignUpView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios)
}

