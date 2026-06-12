//
//  ActivityView.swift
//  BienVieillir
//
//  Created by apprenant144 on 11/06/2026.
//

import SwiftUI

struct ActivityView: View {
    
    @Environment(ViewModel.self) private var vm
    @State private var angle: Double = 0
    @State private var fillAmount: CGFloat = 0
    @State private var percentage: Int = 0
    
    var body: some View {
        
        ZStack {
           Color(.displayP3, red: 0.97, green: 0.96, blue: 0.93)
            VStack {
                Section {
                    Image(.avatar)
                        .resizable()
                        .scaledToFit()
                        .frame(width:150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                        .frame(maxWidth: .infinity)
                }
                .padding()
            
                
                Section {
                    
                    Text("Suivi d'activité")
                        .padding(10)
                        .background(.background.secondary)
                        .clipShape(.rect(cornerRadius: 10))
                    
                    HStack (spacing: 24) {
                        
                        ForEach (0..<3, id: \.self) {circle in
                            ZStack {
                            Circle ()
                                .strokeBorder (lineWidth:15)
                                .frame(width:100, height: 100)
                                .foregroundColor(.gray.opacity(0.3))
                            
                            Circle()
                                .trim(from:0, to: fillAmount)
                                .stroke(style: StrokeStyle(lineWidth: 18, lineCap: .round, lineJoin: .round))
                                .frame(width:100, height: 100)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .top, endPoint: .bottom))
                                .rotationEffect(.degrees(-90))
                            
                            // Text affichant le pourcentage
                            HStack(alignment: .bottom, spacing: 0) {
                                Text("\(percentage)\(Text("%").font(.title2))").font(.largeTitle).monospacedDigit()
                            }
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 3)) {
                                    fillAmount = 1
                                    angle += 360
                                }
                                
                                Timer.scheduledTimer(withTimeInterval: 0.026, repeats: true) { timer in
                                    if percentage < 100 {
                                        percentage += 1
                                    } else {
                                        timer.invalidate()

                                    }
                                }
                            }
                        }
                        }
                    }
            }
                
                Section {
                    
                    Text("Activité à venir")
                        .padding(10)
                        .background(.background.secondary)
                        .clipShape(.rect(cornerRadius: 10))
                    
                    ScrollView {
                        
                        VStack (spacing: 16) {
                            ForEach(vm.arrOfActivity)
                            {activite in
                                VStack(alignment: .leading) {
                                    Text(activite.name)
                                    Text(activite.name)
                                    Text(activite.name)
                                }
                                .font(.headline)
                                .frame(width: 320, height: 70, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .background(.background.secondary)
                                .clipShape(.rect(cornerRadius: 25))
//                                .shadow( radius: 11, y: 8)
                            }
                        }
                    }
                    .padding()
                }
            }.padding(48)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ActivityView()
        .environment(ViewModel())
}

