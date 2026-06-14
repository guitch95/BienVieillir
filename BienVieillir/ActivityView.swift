//
//  ActivityView.swift
//  BienVieillir
//
//  Created by apprenant144 on 11/06/2026.
//

import SwiftUI

struct ActivityView: View {
    @Environment(ViewModel.self) private var vm
    var body: some View {
        ZStack {
            Color.creme
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack(spacing: 20) {
                        Image(.bernard)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(5)
                            .overlay(.sauge, in: .circle.stroke(lineWidth: 3))
                        VStack(alignment: .leading) {
                            Text("Bonjour")
                                .font(.title2)
                            Text("Bernard")
                                .font(.title)
                                .bold()
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }

                VStack(alignment: .leading) {
                    Text("Suivi hebdomadaire")
                        .foregroundStyle(.sauge)
                        .fontWeight(.semibold)
                        .font(.title2)
                    Gauge(value: Double(vm.arrOfMeetings.count) / 5.0) {
                        HStack {
                            Text("Activités à venir cette semaine")
                                .font(.headline)
                            Spacer()
                        }
                    } currentValueLabel: {
                        Text("\(vm.arrOfMeetings.count) / 5")
                    }
                    .frame(height: 60)
                    .padding()
                    .background(
                        .sauge.opacity(0.2),
                        in: .rect(cornerRadius: 12)
                    )
                }
                .padding()
                .tint(.sauge.opacity(0.6))

                Text("Mes activités à venir")
                    .foregroundStyle(.sauge)
                    .fontWeight(.semibold)
                    .font(.title2)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ScrollView {
                    ForEach(vm.arrOfMeetings) { meeting in
                        VStack(alignment: .leading) {
                            HStack(spacing: 24) {
                                Image(systemName: "person")
                                    .font(.title)
                                VStack(alignment: .leading) {
                                    Text(meeting.name)
                                    Text("\(meeting.date) \(meeting.time)")
                                }
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 80)
                        .background(.white, in: .rect(cornerRadius: 12))
                        .overlay(
                            .gray,
                            in: .rect(cornerRadius: 12).stroke(lineWidth: 2)
                        )
                    }
                }
                .padding()

            }

        }
    }
}

#Preview {
    ActivityView()
        .environment(ViewModel())
}
