
import SwiftUI

struct MascotaView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    @State private var pregunta1 = ""
    @State private var pregunta2 = ""
    @State private var pregunta3 = ""
    @State private var pregunta4 = ""
    @State private var pregunta5 = ""
    
    @State private var currentMessage = 0
    
    let messages = [
        "Pedir ayuda no es un signo de debilidad, sino de fortaleza.",
        "Eres más fuerte de lo que crees.",
        "Sé paciente contigo mismo. Nada en la naturaleza florece todo el año.",
        "Un paso a la vez; mereces ver la luz.",
        "Tu valor no se mide por los momentos difíciles, sino por la fuerza con la que los superas.",
        "Recuerda, no estás solo en este viaje. Siempre hay luz al final del túnel.",
        "Cada día es una nueva oportunidad para empezar de nuevo.",
        "No importa lo lento que vayas, siempre y cuando no te detengas.",
        "La paz comienza en tu interior. Dedica tiempo para cuidar de ti.",
        "Lo que parece imposible hoy, es solo un desafío esperando ser superado.",
        "Los pequeños logros son grandes victorias. Celebra cada paso.",
        "Tu mente es más poderosa de lo que imaginas. Confía en tu capacidad para sanar.",
        "Recuerda que el descanso también es parte del progreso.",
        "Hoy es el primer día del resto de tu vida. Hazlo contar.",
        "No tienes que ser perfecto, solo ser auténtico y seguir adelante.",
        "El autocuidado no es egoísmo, es necesario para ser la mejor versión de ti mismo.",
        "Los días grises también pasan. Mantente fuerte y sigue adelante.",
        "A veces, la única forma de avanzar es dejando ir lo que no te sirve.",
        "La resiliencia no es la capacidad de evitar caer, sino la de levantarse una y otra vez.",
        "La paz interior se cultiva en el momento presente. Disfruta el ahora.",
        "Tu mente es un jardín. Planta pensamientos positivos y verás florecer tu bienestar.",
        "Escribe tu propia historia. Tú eres el autor de tu vida.",
        "La transformación comienza con un pequeño paso. Da ese paso hoy.",
        "Los desafíos son oportunidades disfrazadas de dificultades.",
        "Lo que eres hoy no es lo que serás mañana. Tu futuro está lleno de posibilidades.",
        "Cree en ti mismo y todo será posible.",
        "La cura para el agotamiento no es el descanso, sino la renovación del alma.",
        "Hoy, elige el amor propio. Es el primer paso hacia una vida más plena."
    ]

    
    var body: some View {
        VStack {
            Image("Doggo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            Text(messages[currentMessage])
                .padding()
                .foregroundColor(.black)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [colorBG[0], colorBG[1]]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(colorLet1[0], lineWidth: 2)
                )
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 6.0, repeats: true) { _ in
                        currentMessage = (currentMessage + 1) % messages.count
                    }
                }
            HStack {
                Text("¿Cómo te has estado sintiendo emocionalmente en los últimos días?")
                    .font(.headline)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                TextField("Ingrese Respuesta", text: $pregunta1)
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
            }
            HStack {
                Text("¿Cuántas horas duermes cada noche y cómo te sientes al despertar?")
                    .font(.headline)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                TextField("Ingrese Respuesta", text: $pregunta2)
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
            }
            HStack {
                Text("¿Qué tan frecuente es tu actividad física durante la semana (caminar, hacer ejercicio, etc.)?")
                    .font(.headline)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                TextField("Ingrese Respuesta", text: $pregunta3)
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
            }
            HStack {
                Text("¿Tienes tiempo para ti mismo cada día para relajarte o practicar actividades que disfrutes?")
                    .font(.headline)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                TextField("Ingrese Respuesta", text: $pregunta5)
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
            }
            HStack {
                Text("¿Hay algo en tu vida que te esté causando estrés o ansiedad de manera continua?")
                    .font(.headline)
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                TextField("Ingrese Respuesta", text: $pregunta4)
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
            }
            Button (action: {
                
            }) {
                ZStack {
                    Rectangle()
                        .frame(width: 280,height: 40)
                        .cornerRadius(10)
                        .foregroundStyle(colorIcons[0])
                    Text("Ingresar Respuestas")
                        .font(.title3)
                        .foregroundStyle(colorLet1[1])
                        .bold()
                }
            }
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var colorBG: [Color] = [.init(red: 1.0, green: 1.0, blue: 1.0), .init(red: 0.9, green: 0.95, blue: 1.0)]
    @Previewable @State var colorLet1: [Color] = [.init(red: 0.5, green: 0.5, blue: 0.5), .init(red: 0.25, green: 0.25, blue: 0.25)]
    @Previewable @State var colorLet2: [Color] = [.init(red: 0.4, green: 0.6, blue: 0.4), .init(red: 0.6, green: 0.75, blue: 1.0)]
    @Previewable @State var colorIcons: [Color] = [.init(red: 0.5, green: 0.6, blue: 0.9), .init(red: 0.6, green: 0.9, blue: 0.5)]
    
    MascotaView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons)
}
