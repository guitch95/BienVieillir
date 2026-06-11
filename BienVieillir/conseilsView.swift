//
//  conseilsView.swift
//  BienVieillir
//
//  Created by Issa on 11/06/2026.
//

import SwiftUI

struct conseilsView: View {
    @Environment(ViewModel.self) private var vm
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Nos Conseils")
                .font(.title.bold())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.arrOfConseil) { conseil in
                        VStack(alignment: .leading) {
                            
                            Text(conseil.description)
                                .frame(width: 300, height: 250)
                                .padding()
                                .background(.background.secondary)
                                .clipShape(.rect(cornerRadius: 25))
                                .lineSpacing(5)
                                .overlay(alignment: .topLeading) {
                                    Text(conseil.title)
                                        .padding()
                                        .font(.headline)
                                }
                        }
                    }
                }
            }
            Spacer()
            
            Text("Nos Ressources")
                .font(.title.bold())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.arrOfActivity) { activite in
                        VStack(alignment: .leading) {
                    
                            Text(activite.description)
                                .frame(width: 300, height: 250)
                                .padding()
                                .background(.background.secondary)
                                .clipShape(.rect(cornerRadius: 25))
                                .lineSpacing(5)
                                .overlay(alignment: .topLeading) {
                                    Text(activite.name)
                                        .padding()
                                        .font(.headline)
                                    
                                }
                        }
                    }
                }
            }
        }
        .padding()
    }
        
}
#Preview {
    conseilsView()
        .environment(ViewModel())
}
