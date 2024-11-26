//
//  ListPanelView.swift
//  ProjectHackathon
//
//  Created by CEDAM33 on 25/11/24.
//

import SwiftUI

struct PanelView2: View {
    @Binding var colorBG: [Color]
    @Binding var colorLet1: [Color]
    @Binding var colorLet2: [Color]
    @Binding var colorIcons: [Color]
    
    var strpanel: StructPanel
    
    @Binding var index: Int
    @Binding var siguiente: Bool
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .bottom) {
                    Text("\(strpanel.titulo)")
                        .font(.largeTitle)
                        .foregroundStyle(colorLet1[0])
                        .padding(.horizontal, 20)
                    Spacer()
                }
                Spacer()
                Text("PRESIONA ESTE BOTON SI TE SIENTES MAL")
                    .foregroundStyle(colorLet1[0])
                    .bold()
                    .padding()
                HStack (alignment: .center) {
                    Button(action: {
                        index = 5
                        siguiente = true
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 200, height: 200)
                                .foregroundStyle(Color.init(red: 0.85, green: 0.85, blue: 0.85))
                            Circle()
                                .frame(width: 180, height: 180)
                                .foregroundStyle(Color.init(red: 0.95, green: 0.15, blue: 0.25))
                        }
                    }
                }
                Spacer()
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
    @Previewable @State var siguiente: Bool = false
    
    PanelView2(colorBG: $colorBG, colorLet1: $colorLet1, colorLet2: $colorLet2, colorIcons: $colorIcons, strpanel: StructPanel(idPanel: 1, titulo: "Panel De Ejemplo", icono: "house.fill"), index: $index, siguiente: $siguiente)
}
