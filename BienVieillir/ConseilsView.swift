//
//  conseilsView.swift
//  BienVieillir
//
//  Created by Issa on 11/06/2026.
//

import SwiftUI

struct ConseilsView: View {
    @Environment(ViewModel.self) private var vm

    var body: some View {
        ZStack {
            Color(.displayP3, red: 0.97, green: 0.96, blue: 0.93)
                .ignoresSafeArea()
            VStack(spacing: 12) {
                Text("Nos Conseils")
                    .font(.title.bold())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 12) {
                        ForEach(vm.arrOfConseil) { conseil in
                            VStack(alignment: .leading) {
                                Text(conseil.title)
                                    .font(.headline)
                                    .frame(height: 60)

                                Text(conseil.description)
                                    .lineSpacing(8)
                                Spacer()
                            }
                            .frame(width: 200, height: 250)
                            .padding()
                            .background(.background.secondary)
                            .clipShape(.rect(cornerRadius: 25))

                        }
                    }
                }
                .padding(.bottom)

                Text("Nos Ressources")
                    .font(.title.bold())

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 12) {
                        ForEach(vm.arrOfActivity) { activite in
                            VStack(alignment: .leading) {
                                Text(activite.name)
                                    .font(.headline)
                                    .frame(height: 60)

                                Text(activite.description)
                                    .lineSpacing(8)
                                Spacer()
                            }
                            .frame(width: 200, height: 250)
                            .padding()
                            .background(.background.secondary)
                            .clipShape(.rect(cornerRadius: 25))
                        }
                    }
                }
            }
            .padding()
        }
    }
}
#Preview {
    ConseilsView()
        .environment(ViewModel())
}
