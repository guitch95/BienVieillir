//
//  ActivityDetailsView.swift
//  BienVieillir
//
//  Created by Apprenant123 on 11/06/2026.
//

import SwiftUI

struct ActivityDetailsView: View {
    @Environment(ViewModel.self) private var vm
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
        var body: some View {
                NavigationStack {
                    ZStack {
                        Color.creme
                            .ignoresSafeArea()
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(vm.arrOfActivity) { activite in
                                    NavigationLink(value: activite) {
                                        VStack(alignment: .leading, spacing: 12) {
                                            Image(systemName: "person.fill")
                                                .foregroundStyle(.sauge)
                                                .font(.title2)
                                            
                                            Text(activite.name)
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.leading)
                                            
                                            Text(activite.date)
                                            
                                            Text(activite.time)
                                                .font(.subheadline)
                                            
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .frame(height: 180)
                                        .background(.white, in: .rect(cornerRadius: 12))
                                        .overlay(
                                            .gray.opacity(0.3),
                                            in: .rect(cornerRadius: 12).stroke(
                                                lineWidth: 1
                                            )
                                        )
                                        .foregroundStyle(.black)
                                        
                                    }
                                    
                                }
                            }
                            .navigationDestination(
                                for: Activites.self
                            ) { activite in
                                OneActivityDetailView(activity: activite)
                            }
                            
                            .padding()
                        }
                        .scrollIndicators(.hidden)
                        .navigationTitle("Activités")
                    }
                }
            }
        }
#Preview {
    ActivityDetailsView()
        .environment(ViewModel())
}
