import SwiftUI

struct LogInView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    @Binding var index: Int
    @Binding var isLogin: Bool
    @Binding var isUser: Bool
    @Binding var nameUser: String
    @Binding var usuarios: [Usuario]
    
    @State var emailAddress: String
    @State var password: String
    @State var loginError: String?

    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                Text("Inicio De Sesión")
                    .font(.largeTitle)
                    .foregroundStyle(colorLet2[1])
                    .padding(.horizontal, 20)
                
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(colorLet2[0])
                    .padding()
                Spacer()
            }

            VStack {
                TextField("Correo Electronico", text: $emailAddress)
                    .textFieldStyle(PlainTextFieldStyle())
                    .foregroundStyle(.black)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(.clear)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                            .padding(.horizontal, 15)
                    }

                SecureField("Contraseña", text: $password)
                    .textFieldStyle(PlainTextFieldStyle())
                    .foregroundStyle(.black)
                    .padding()
                    .padding(.horizontal, 6)
                    .background(.clear)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                            .padding(.horizontal, 15)
                    }

                if let loginError = loginError {
                    Text(loginError)
                        .foregroundColor(.red)
                        .font(.caption)
                        .padding()
                }

                Button(action: {
                    authenticateUser()
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 50)
                            .cornerRadius(15)
                            .foregroundStyle(colorIcons[0])
                        
                        Text("Iniciar Sesión")
                            .font(.title)
                            .foregroundStyle(colorLet1[0])
                    }
                }
                .padding(.vertical, 6)
                .padding()
                
                Button(action: {}, label: {
                    Label {
                        Text("Iniciar sesión con Google")
                            .foregroundStyle(Color.black)
                            .padding()
                    } icon: {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                            .padding(.leading, 10)
                    }
                    .frame(width: 270, height: 50)
                    .background(colorIcons[0])
                    .clipShape(.rect(cornerRadius: 12))
                    .shadow(radius: 6)
                })
                
                Button(action: {}, label: {
                    Label {
                        Text("Iniciar sesión con Facebook")
                            .foregroundStyle(Color.black)
                            .padding()
                            .foregroundStyle(colorLet2[0])
                    } icon: {
                        Image("FacebookLogo")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                            .padding(.leading, 10)
                    }
                    .frame(width: 270, height: 50)
                    .background(colorIcons[0])
                    .clipShape(.rect(cornerRadius: 12))
                    .shadow(radius: 6)
                })
            }
            .padding(.horizontal, 24)
        }
    }

    private func authenticateUser() {
        if let user = usuarios.first(where: { $0.email == emailAddress && $0.password == password }) {
            index = 1
            isLogin = true
            isUser = true
            nameUser = user.nombre
            loginError = nil
        } else {
            loginError = "Correo Electronico y/o Usuario Incorrecto"
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
    @Previewable @State var usuarios: [Usuario] = [
        Usuario(nombre: "Gerardo", apellido_1: "Lopez", apellido_2: "Lopez", edad: 18, email: "prueba@hotmail.com", password: "0000", telefono: "5511111111")
    ]
    
    LogInView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, index: $index, isLogin: $isLogin, isUser: $isUser, nameUser: $nameUser, usuarios: $usuarios, emailAddress: "", password: "")
}
