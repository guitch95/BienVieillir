//
//  DetenteView.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 11/06/2026.
//

import Combine
import SwiftUI

struct DetenteView: View {
    @State private var startAnimation = false
    @State private var showBreatheView = false

    // Counter
    @State private var timerCount: CGFloat = 0
    @State private var breathAction = "Expirer..."
    @State private var count = 0

    var body: some View {
        ZStack {
            Color(.displayP3, red: 0.97, green: 0.96, blue: 0.93)
                .ignoresSafeArea()

            VStack(spacing: 100) {
                Text(breathAction)
                    .font(.title)
                    .foregroundStyle(.black)
                    .padding(.top, 50)
                    .opacity(showBreatheView ? 1 : 0)
                    .animation(.easeInOut, value: breathAction)
                    .animation(.easeInOut, value: showBreatheView)

                ZStack {
                    ForEach(1...8, id: \.self) { index in
                        Circle()
                            .fill(.teal.opacity(0.5))
                            .frame(width: 200, height: 200)
                            .offset(x: startAnimation ? 0 : 75)
                            .rotationEffect(.init(degrees: Double(index * 45)))
                            .rotationEffect(
                                .init(degrees: startAnimation ? -45 : 0)
                            )
                    }

                }
                .frame(height: 300)
                .scaleEffect(startAnimation ? 0.8 : 1)
                .overlay(content: {
                    Text("\(count == 0 ? 3 : count)")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .animation(.easeInOut, value: count)
                        .opacity(showBreatheView ? 1 : 0)

                })
                .padding(.bottom, 40)
                .onReceive(
                    Timer.publish(every: 0.01, on: .main, in: .common)
                        .autoconnect()
                ) { _ in
                    if showBreatheView {
                        if timerCount > 5 {
                            timerCount = 0
                            breathAction =
                                breathAction == "Inspirer..."
                                ? "Expirer..." : "Inspirer..."
                            withAnimation(.easeInOut(duration: 5).delay(0.1)) {
                                startAnimation.toggle()
                            }
                        } else {
                            timerCount += 0.01
                        }

                        count = 5 - Int(timerCount)

                    } else {
                        timerCount = 0
                    }
                }

                Button {
                    startBreathing()
                } label: {
                    Text(showBreatheView ? "Terminer" : "Commencer")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.vertical, 15)
                        .frame(width: 300)
                        .background(
                            .teal,
                            in: RoundedRectangle(cornerRadius: 12)
                        )

                }

            }

        }
    }

    func startBreathing() {
        withAnimation(
            .interactiveSpring(
                response: 0.6,
                dampingFraction: 0.7,
                blendDuration: 0.7
            )
        ) {
            showBreatheView.toggle()
        }

        if showBreatheView {
            withAnimation(.easeInOut(duration: 5).delay(0.05)) {
                startAnimation = true
            }
        }
    }
}

#Preview {
    DetenteView()
}
