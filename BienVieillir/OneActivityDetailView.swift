//
//  OneActivityDetailView.swift
//  BienVieillir
//
//  Created by Apprenant123 on 12/06/2026.
//
import SwiftUI

struct OneActivityDetailView: View {
    @Environment(ViewModel.self) private var vm
    let activity: Activites
    
    var body: some View {
        ZStack {
            Color.creme
                .ignoresSafeArea()
            VStack(spacing: 30){
                Image(activity.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                Text("Lieu : \(activity.localization)")
                    .foregroundStyle(.gray)
                Text(activity.description)
                    .font(.title3)
                Button {
                    vm.arrOfMeetings.append(activity)
                } label:  {
                    Text("Je veux participer")
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.sauge, in: .capsule)
                }
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(activity.name)
        }
        
    }
}
#Preview {
    OneActivityDetailView(activity: Activites (
        name: "Marche douce en groupe",
        description: "Une promenade tranquille entre voisins pour bouger en douceur, prendre l'air et partager un moment convivial. Aucun niveau requis.",
        image: .marcheDouce,
        localization: "Parc du quartier",
        date: "Lundi 15 juin 2026",
        time: "10h00 - 11h30"
    )
    )
    .environment(ViewModel())
}

