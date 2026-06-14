//
//  ViewModel.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 11/06/2026.
//

import Foundation
import SwiftUI

@Observable
final class ViewModel {
    var arrOfConseil = [
        Conseils(
            title: "Gardez le contact",
            description:
                "Appelez ou rendez visite à un proche au moins une fois par semaine. Un simple échange suffit à rompre la solitude et à réchauffer le cœur.",
            color: .pink,
            image: ""
        ),
        Conseils(
            title: "Bougez un peu chaque jour",
            description:
                "Une courte marche ou quelques étirements doux suffisent. L'important est la régularité, pas l'intensité, pour garder corps et moral en forme.",
            color: .green,
            image: ""
        ),
        Conseils(
            title: "Soignez votre sommeil",
            description:
                "Couchez-vous à des horaires réguliers et évitez les écrans le soir. Un bon repos apaise l'esprit et renforce la mémoire.",
            color: .indigo,
            image: ""
        ),
        Conseils(
            title: "Hydratez-vous bien",
            description:
                "Avec l'âge, on ressent moins la soif. Pensez à boire de l'eau régulièrement dans la journée, même sans en ressentir le besoin.",
            color: .blue,
            image: ""
        ),
        Conseils(
            title: "Mangez équilibré",
            description:
                "Privilégiez les fruits, légumes et protéines. Un repas partagé est aussi un moment de plaisir et de convivialité à savourer.",
            color: .orange,
            image: ""
        ),
        Conseils(
            title: "Respirez profondément",
            description:
                "Quelques minutes de respiration lente, plusieurs fois par jour, aident à réduire le stress et à retrouver le calme intérieur.",
            color: .purple,
            image: ""
        ),
        Conseils(
            title: "Stimulez votre esprit",
            description:
                "Lecture, mots croisés, jeux ou nouvelles activités : entretenir sa curiosité garde l'esprit vif et alerte au fil des années.",
            color: .yellow,
            image: ""
        ),
        Conseils(
            title: "Prenez l'air et la lumière",
            description:
                "S'exposer un peu au soleil chaque jour améliore l'humeur et favorise un sommeil de meilleure qualité.",
            color: .mint,
            image: ""
        ),
        Conseils(
            title: "Osez demander de l'aide",
            description:
                "Solliciter un proche ou un professionnel n'est pas une faiblesse. Parler de ses difficultés est le premier pas vers le mieux-être.",
            color: .teal,
            image: ""
        ),
        Conseils(
            title: "Participez à une activité de groupe",
            description:
                "Rejoindre un atelier ou un club crée du lien et donne un rythme à la semaine. Le partage est un véritable remède contre l'isolement.",
            color: .red,
            image: ""
        ),
    ]

    var arrOfActivity = [
        Activites(
            name: "Marche douce en groupe",
            description:
                "Une promenade tranquille entre voisins pour bouger en douceur, prendre l'air et partager un moment convivial. Aucun niveau requis.",
            color: .green,
            image: .marcheDouce,
            localization: "Parc du quartier",
            date: "Lundi 15 juin 2026",
            time: "10h00 - 11h30"
        ),
        Activites(
            name: "Gym douce",
            description:
                "Des exercices adaptés en position assise ou debout pour entretenir l'équilibre, la souplesse et la mobilité, en toute sécurité.",
            color: .mint,
            image: .gymDouce,
            localization: "Salle communale",
            date: "Mardi 16 juin 2026",
            time: "9h30 - 10h30"
        ),
        Activites(
            name: "Atelier mémoire",
            description:
                "Jeux de mots, énigmes et petits exercices ludiques pour stimuler la mémoire et l'esprit, dans une ambiance détendue et bienveillante.",
            color: .indigo,
            image: .atelierMemoire,
            localization: "Médiathèque municipale",
            date: "Mardi 16 juin 2026",
            time: "14h30 - 16h00"
        ),
        Activites(
            name: "Café-rencontre",
            description:
                "Un moment chaleureux autour d'un café ou d'un thé pour discuter, faire de nouvelles connaissances et rompre la solitude.",
            color: .brown,
            image: .cafeRencontre,
            localization: "Café du centre-ville",
            date: "Mercredi 17 juin 2026",
            time: "15h00 - 17h00"
        ),
        Activites(
            name: "Jardinage partagé",
            description:
                "Planter, arroser et voir pousser ensemble. Une activité apaisante en plein air qui crée du lien et procure une vraie fierté.",
            color: .green,
            image: .jardinagePartage,
            localization: "Jardin partagé du quartier",
            date: "Jeudi 18 juin 2026",
            time: "9h30 - 11h30"
        ),
        Activites(
            name: "Atelier cuisine",
            description:
                "Préparer ensemble des recettes simples et savoureuses, puis les déguster en groupe. Convivialité et plaisir garantis.",
            color: .orange,
            image: .atelierCuisine,
            localization: "Cuisine du foyer-club",
            date: "Jeudi 18 juin 2026",
            time: "11h00 - 14h00"
        ),
        Activites(
            name: "Chant et chorale",
            description:
                "Chanter ensemble des airs connus pour le plaisir, sans pression. Une activité joyeuse qui apaise et rassemble.",
            color: .pink,
            image: .chantChorale,
            localization: "Maison des associations",
            date: "Vendredi 19 juin 2026",
            time: "14h00 - 15h30"
           
        ),
        Activites(
            name: "Méditation et relaxation",
            description:
                "Des séances douces de respiration et de pleine conscience pour réduire le stress, mieux dormir et retrouver le calme intérieur.",
            color: .purple,
            image: .meditation,
            localization: "Espace bien-être",
            date: "Vendredi 19 juin 2026",
            time: "16h30 - 17h30"
            
        ),
        Activites(
            name: "Jeux de société",
            description:
                "Cartes, dominos, scrabble… Des après-midis ludiques pour rire, échanger et garder l'esprit vif en bonne compagnie.",
            color: .yellow,
            image: .jeuxDeSociete,
            localization: "Club de loisirs",
            date: "Samedi 20 juin 2026",
            time: "14h00 - 17h00"
            
        ),
        Activites(
            name: "Atelier numérique",
            description:
                "Apprendre à utiliser son téléphone ou sa tablette pour rester en contact avec ses proches, à son rythme et sans jugement.",
            color: .blue,
            image: .atelierNumerique,
            localization: "Espace public numérique",
            date: "Lundi 22 juin 2026",
            time: "14h30 - 16h00"
           
        ),
    ]

}
