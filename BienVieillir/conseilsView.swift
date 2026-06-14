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
        ZStack {
            Color.creme
                .ignoresSafeArea()
            
            VStack {
                Text("Nos conseils")
                    .font(.title)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading,
                    )
                    .fontWeight(.semibold)
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 22){
                        ForEach(vm.arrOfConseil) { conseil in
                            VStack(alignment: .leading, spacing: 14) {
                                HStack(alignment: .center, spacing: 12) {
                                    Image(systemName: "person.fill")
                                        .foregroundStyle(.sauge)
                                        .font(.title2)
                                    Text(conseil.title)
                                        .font(.title3)
                                        .fontWeight(.medium)
                                }
                                
                                Text(
                                    conseil.description
                                )
                                .lineSpacing(5)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.white, in: .rect(cornerRadius: 12))
                            .overlay(
                                .gray.opacity(0.3),
                                in: .rect(cornerRadius: 12).stroke(lineWidth: 1)
                            )
                        }
                        
                    }
                }
                
            }
            .padding()
            
        }
    }
}
#Preview {
    conseilsView()
        .environment(ViewModel())
}
