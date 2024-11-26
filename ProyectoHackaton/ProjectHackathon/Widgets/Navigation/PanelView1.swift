import SwiftUI

struct PanelView1: View {
    private let consejosList: [ConsejosItem] = [
        ConsejosItem(consejoPhto: "💤", name: "Descansar correctamente", description: "Dormir bien es fundamental para mantener nuestra salud mental. Intenta dormir al menos 8 horas diarias y seguir una rutina consistente para mejorar tu bienestar emocional y físico.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "🧘‍♀️", name: "Practicar mindfulness", description: "El mindfulness o la atención plena ayuda a reducir el estrés y la ansiedad. Practicar la meditación o la respiración consciente diariamente puede mejorar tu estado de ánimo y claridad mental.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🏃‍♂️", name: "Hacer ejercicio regularmente", description: "El ejercicio físico libera endorfinas, las hormonas de la felicidad. Practicar actividades como correr, nadar o hacer yoga puede reducir el estrés y mejorar tu bienestar mental.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "🌱", name: "Alimentación saludable", description: "Una dieta balanceada rica en frutas, verduras, y grasas saludables puede tener un impacto positivo en tu salud mental, ayudando a reducir síntomas de ansiedad y depresión.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "📚", name: "Leer o aprender algo nuevo", description: "El aprendizaje constante no solo es estimulante para el cerebro, sino que también puede aumentar tu autoestima y mantener tu mente activa y positiva.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "💬", name: "Hablar con alguien de confianza", description: "Hablar sobre tus sentimientos con amigos, familiares o un terapeuta puede aliviar el estrés, reducir la ansiedad y proporcionarte una sensación de apoyo y conexión.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🌸", name: "Pasar tiempo al aire libre", description: "Estar en contacto con la naturaleza, incluso en pequeños paseos, puede mejorar tu estado de ánimo, reducir la ansiedad y aumentar la sensación de calma y bienestar.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🎶", name: "Escuchar música relajante", description: "La música puede ser una herramienta poderosa para mejorar tu estado emocional. Escuchar música suave o tus canciones favoritas puede disminuir los niveles de estrés y ayudarte a relajarte.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🛁", name: "Cuidar de ti mismo", description: "Dedica tiempo para ti mismo, ya sea tomando un baño relajante, practicando un hobby o simplemente descansando. El autocuidado es esencial para mantener tu salud mental en equilibrio.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🤝", name: "Fomentar relaciones saludables", description: "Mantener relaciones positivas y de apoyo con los demás es clave para tu bienestar emocional. Rodearte de personas que te apoyen puede ayudarte a manejar mejor el estrés y la ansiedad.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "📝", name: "Escribir un diario", description: "Escribir sobre tus pensamientos y sentimientos puede ayudarte a procesar tus emociones y reducir el estrés. Es una forma terapéutica de reflexionar sobre tu día y organizar tus ideas.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "☀️", name: "Exponerte al sol", description: "La luz solar ayuda a mejorar el estado de ánimo y la producción de vitamina D, que es esencial para la salud mental. Intenta pasar al menos 15-20 minutos al aire libre cada día.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "💪", name: "Practicar afirmaciones positivas", description: "Repetir afirmaciones positivas puede ayudar a cambiar la forma en que te percibes a ti mismo y aumentar tu autoestima. Intenta decir cosas positivas sobre ti mismo cada mañana.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🛌", name: "Desconectar de los dispositivos", description: "Pasar demasiado tiempo frente a pantallas puede afectar tu salud mental. Intenta desconectar de tus dispositivos al menos 30 minutos antes de dormir para mejorar la calidad de tu descanso.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🎨", name: "Practicar actividades creativas", description: "La creatividad no solo es divertida, también puede ser terapéutica. Pintar, dibujar, o hacer manualidades pueden ayudarte a liberar tensiones y a expresar emociones de manera saludable.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "📅", name: "Organizar tu día", description: "Tener una rutina diaria puede reducir la sensación de caos y estrés. Planea tu día con anticipación para sentirte más organizado y menos abrumado por las tareas.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🧑‍⚕️", name: "Buscar ayuda profesional", description: "Si sientes que el estrés, la ansiedad o cualquier otro problema emocional se vuelve abrumador, no dudes en buscar el apoyo de un terapeuta o consejero. La ayuda profesional es clave para tu bienestar mental.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🌿", name: "Realizar actividades de jardinería", description: "La jardinería puede ser una excelente forma de desconectar, relajarte y conectar con la naturaleza. Además, cuidar de las plantas tiene un efecto calmante y terapéutico.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🌈", name: "Establecer metas realistas", description: "Fijarte objetivos alcanzables puede darte un sentido de propósito y satisfacción. Establece metas pequeñas y celebra los logros, por más pequeños que sean, para mantenerte motivado.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🥑", name: "Comer alimentos ricos en omega-3", description: "El omega-3 es un nutriente que puede mejorar la función cerebral y reducir la inflamación. Incluye alimentos como el pescado, las nueces o las semillas de chía en tu dieta.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "🧑‍🍳", name: "Cocinar tus propias comidas", description: "Preparar tus propios alimentos te permite controlar lo que comes y evitar ingredientes procesados. Además, es una actividad que puede ayudarte a relajarte.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🏞️", name: "Realizar caminatas al aire libre", description: "Salir a caminar en la naturaleza es una excelente forma de reducir el estrés y mejorar tu salud física. Aprovecha cualquier oportunidad para dar un paseo.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "📖", name: "Leer libros inspiradores", description: "Leer libros que te inspiren y te motiven puede ayudarte a mantener una actitud positiva y a encontrar nuevas perspectivas sobre la vida.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🎧", name: "Escuchar podcasts educativos", description: "Escuchar podcasts sobre temas que te interesen o que te ayuden a aprender algo nuevo puede ser una excelente forma de mantener tu mente activa y motivada.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "👥", name: "Unirte a un grupo de apoyo", description: "Unirte a un grupo de apoyo o comunidad con personas que compartan intereses similares puede proporcionarte un sentido de pertenencia y apoyo emocional.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🎥", name: "Ver películas o series que te inspiren", description: "Disfrutar de películas que te inspiren o te hagan sentir bien puede ser una excelente forma de relajarte y mejorar tu estado de ánimo.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🚴‍♂️", name: "Practicar ciclismo", description: "El ciclismo es una excelente forma de ejercicio cardiovascular que puede ayudarte a mejorar tu salud física y reducir el estrés.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "🧘", name: "Practicar yoga o estiramientos", description: "El yoga y los estiramientos no solo mejoran tu flexibilidad, sino que también son ideales para reducir el estrés, mejorar la circulación y equilibrar tus emociones.", category: "Bienestar físico"),
        ConsejosItem(consejoPhto: "🕯️", name: "Crear un ambiente relajante en casa", description: "Transformar tu hogar en un lugar tranquilo con iluminación suave, velas y música relajante puede ser beneficioso para tu bienestar emocional.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🌻", name: "Tener plantas en casa", description: "Las plantas no solo mejoran el aire, sino que también tienen un efecto positivo en tu bienestar emocional al añadir color y vida a tu espacio.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🎮", name: "Jugar juegos que te distraigan", description: "Los videojuegos o juegos de mesa pueden ser una forma divertida y efectiva de desconectar y relajarte después de un día estresante.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "💅", name: "Hacer una rutina de cuidado personal", description: "Dedica tiempo para ti mismo realizando una rutina de cuidado personal, como manicure, pedicure o skincare. Esto puede aumentar tu autoestima y mejorar tu bienestar emocional.", category: "Hábitos de vida"),
        ConsejosItem(consejoPhto: "🥳", name: "Celebrar tus logros, grandes o pequeños", description: "Reconocer y celebrar tus logros, por pequeños que sean, puede aumentar tu motivación y tu bienestar emocional.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🌍", name: "Practicar la gratitud diaria", description: "Tomarte un momento cada día para reflexionar sobre las cosas por las que estás agradecido puede mejorar tu bienestar emocional y ayudarte a mantener una actitud positiva.", category: "Bienestar emocional"),
        ConsejosItem(consejoPhto: "🍃", name: "Desconectar de la tecnología", description: "Pasar tiempo sin dispositivos electrónicos te ayudará a reducir el estrés digital, mejorar la concentración y disfrutar del momento presente.", category: "Bienestar emocional")
    ]

    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var strpanel: StructPanel
    
    var groupedConsejos: [String: [ConsejosItem]] {
        Dictionary(grouping: consejosList, by: { $0.category })
    }
    
    var body: some View {
        NavigationView {
            List(groupedConsejos.keys.sorted(), id: \.self) { category in
                NavigationLink(destination: CategoryDetailView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, category: category, consejos: groupedConsejos[category]!)) {
                        Text(category)
                            .font(.title2)
                            .foregroundStyle(colorLet1[0])
                            .bold()
                            .padding()
                }
            }
            .navigationTitle("Categorías de Consejos")
            .foregroundColor(.black)
            .listStyle(InsetListStyle())
        }
    }
}

struct CategoryDetailView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var category: String
    var consejos: [ConsejosItem]
    
    var body: some View {
        List(consejos) { consejosItem in
            NavigationLink(destination: DetailsView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, consejosItem: consejosItem)) {
                HStack {
                    ConsejosCircleView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, consejosItem: consejosItem)
                    Text(consejosItem.name)
                        .font(.title2)
                        .foregroundStyle(colorLet1[0])
                        .bold()
                        .padding()
                }
                .padding(6)
            }
        }
        .navigationTitle("Consejos de \(category)")
        .foregroundColor(.black)
        .listStyle(InsetListStyle())
    }
}

struct ConsejosCircleView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    let consejosItem: ConsejosItem
    
    var body: some View {
        ZStack {
            Text(consejosItem.consejoPhto)
                .shadow(radius: 3)
                .font(.largeTitle)
                .foregroundStyle(colorLet1[0])
                .frame(width: 65, height: 65)
                .overlay(
                    Circle()
                        .stroke(colorLet2[0], lineWidth: 5)
                )
        }
    }
}

struct DetailsView: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    let consejosItem: ConsejosItem
    
    var body: some View {
        VStack {
            HStack {
                ConsejosCircleView(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, consejosItem: consejosItem)
                    .padding(.trailing, 5)
                
                Text(consejosItem.name)
                    .font(.largeTitle)
                    .foregroundStyle(colorLet2[1])
                    .bold()
                    .padding()
                Spacer()
            }
            
            Text(consejosItem.description)
                .font(.callout)
                .foregroundStyle(colorLet2[0])
                .bold()
                .padding(.top)
                .padding()
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(consejosItem.name), displayMode: .inline)
    }
}

#Preview {
    @Previewable @State var colorBG: [Color] = [.init(red: 1.0, green: 1.0, blue: 1.0), .init(red: 0.9, green: 0.95, blue: 1.0)]
    @Previewable @State var colorLet1: [Color] = [.init(red: 0.5, green: 0.5, blue: 0.5), .init(red: 0.25, green: 0.25, blue: 0.25)]
    @Previewable @State var colorLet2: [Color] = [.init(red: 0.4, green: 0.6, blue: 0.4), .init(red: 0.6, green: 0.75, blue: 1.0)]
    @Previewable @State var colorIcons: [Color] = [.init(red: 0.5, green: 0.6, blue: 0.9), .init(red: 0.6, green: 0.9, blue: 0.5)]
    
    PanelView1(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: StructPanel(idPanel: 1, titulo: "Panel De Ejemplo", icono: "house.fill"))
}
