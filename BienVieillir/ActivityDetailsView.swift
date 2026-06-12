//
//  ActivityDetailsView.swift
//  BienVieillir
//
//  Created by Apprenant123 on 11/06/2026.
//

import SwiftUI

struct ActivityDetailsView: View {
    @Environment(ViewModel.self) private var vm
    
    let colums = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundScreen")
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVGrid(columns: colums, spacing: 16) {
                        ForEach (vm.arrOfActivity) { activite in
                            NavigationLink(destination: OneActivityDetailView(activity: activite)) {
                                VStack {
                                    Text(activite.name)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(.black)
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .background(Color.orange.opacity(0.7))
                                .cornerRadius(12)
                                
                            }
                        }
                    }
                    .padding()
                }
            }
                .navigationTitle("Activités à choisir")
                .navigationBarTitleDisplayMode(.large)
            }
                
                
                
            }
        }
#Preview {
    ActivityDetailsView()
        .environment(ViewModel())
}
