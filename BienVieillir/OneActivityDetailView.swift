//
//  OneActivityDetailView.swift
//  BienVieillir
//
//  Created by Apprenant123 on 12/06/2026.
//
import SwiftUI

struct OneActivityDetailView: View {
    let activity: Activites // reçoit l'activité sur laquelle l'utilisateur clique

    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text(activity.name)
                    .font(.title)
                    .bold()
                    .padding()
                Text("Lieu : \(activity.localization)")
                    .foregroundStyle(.gray)
                    .padding()
                
                Image(.marcheDouce)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .ignoresSafeArea(edges:.top)
                    .padding()
                Text(activity.description)
                    .font(.title2)
                    .padding()

                Button(action : {
                    print("Je veux participer !")
                }) {
                    Text("Je veux particper !")
                        .font(.headline)
                        .bold()
                        .foregroundStyle(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.orange)
                        .clipShape(Capsule())
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
            }
            
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
}

