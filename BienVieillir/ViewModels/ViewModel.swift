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
            image: nil
        ),
        Conseils(
            title: "Bougez un peu chaque jour",
            description:
                "Une courte marche ou quelques étirements doux suffisent. L'important est la régularité, pas l'intensité, pour garder corps et moral en forme.",
            color: .green,
            image: nil
        ),
        Conseils(
            title: "Soignez votre sommeil",
            description:
                "Couchez-vous à des horaires réguliers et évitez les écrans le soir. Un bon repos apaise l'esprit et renforce la mémoire.",
            color: .indigo,
            image: nil
        ),
        Conseils(
            title: "Hydratez-vous bien",
            description:
                "Avec l'âge, on ressent moins la soif. Pensez à boire de l'eau régulièrement dans la journée, même sans en ressentir le besoin.",
            color: .blue,
            image: nil
        ),
        Conseils(
            title: "Mangez équilibré",
            description:
                "Privilégiez les fruits, légumes et protéines. Un repas partagé est aussi un moment de plaisir et de convivialité à savourer.",
            color: .orange,
            image: nil
        ),
        Conseils(
            title: "Respirez profondément",
            description:
                "Quelques minutes de respiration lente, plusieurs fois par jour, aident à réduire le stress et à retrouver le calme intérieur.",
            color: .purple,
            image: nil
        ),
        Conseils(
            title: "Stimulez votre esprit",
            description:
                "Lecture, mots croisés, jeux ou nouvelles activités : entretenir sa curiosité garde l'esprit vif et alerte au fil des années.",
            color: .yellow,
            image: nil
        ),
        Conseils(
            title: "Prenez l'air et la lumière",
            description:
                "S'exposer un peu au soleil chaque jour améliore l'humeur et favorise un sommeil de meilleure qualité.",
            color: .mint,
            image: nil
        ),
        Conseils(
            title: "Osez demander de l'aide",
            description:
                "Solliciter un proche ou un professionnel n'est pas une faiblesse. Parler de ses difficultés est le premier pas vers le mieux-être.",
            color: .teal,
            image: nil
        ),
        Conseils(
            title: "Participez à une activité de groupe",
            description:
                "Rejoindre un atelier ou un club crée du lien et donne un rythme à la semaine. Le partage est un véritable remède contre l'isolement.",
            color: .red,
            image: nil
        ),
    ]

    var arrOfActivity = [
        Activites(
            name: "Marche douce en groupe",
            description:
                "Une promenade tranquille entre voisins pour bouger en douceur, prendre l'air et partager un moment convivial. Aucun niveau requis.",
            color: .green,
            image: .marcheDouce, //https://sites.google.com/site/usspcourseetnature/marche-douce
            localization: "Parc du quartier"
        ),
        Activites(
            name: "Gym douce",
            description:
                "Des exercices adaptés en position assise ou debout pour entretenir l'équilibre, la souplesse et la mobilité, en toute sécurité.",
            color: .mint,
            image: nil,
            localization: "Salle communale"
        ),
        Activites(
            name: "Atelier mémoire",
            description:
                "Jeux de mots, énigmes et petits exercices ludiques pour stimuler la mémoire et l'esprit, dans une ambiance détendue et bienveillante.",
            color: .indigo,
            image: nil,
            localization: "Médiathèque municipale"
        ),
        Activites(
            name: "Café-rencontre",
            description:
                "Un moment chaleureux autour d'un café ou d'un thé pour discuter, faire de nouvelles connaissances et rompre la solitude.",
            color: .brown,
            image: nil,
            localization: "Café du centre-ville"
        ),
        Activites(
            name: "Jardinage partagé",
            description:
                "Planter, arroser et voir pousser ensemble. Une activité apaisante en plein air qui crée du lien et procure une vraie fierté.",
            color: .green,
            image: nil,
            localization: "Jardin partagé du quartier"
        ),
        Activites(
            name: "Atelier cuisine",
            description:
                "Préparer ensemble des recettes simples et savoureuses, puis les déguster en groupe. Convivialité et plaisir garantis.",
            color: .orange,
            image: nil,
            localization: "Cuisine du foyer-club"
        ),
        Activites(
            name: "Chant et chorale",
            description:
                "Chanter ensemble des airs connus pour le plaisir, sans pression. Une activité joyeuse qui apaise et rassemble.",
            color: .pink,
            image: nil,
            localization: "Maison des associations"
           
        ),
        Activites(
            name: "Méditation et relaxation",
            description:
                "Des séances douces de respiration et de pleine conscience pour réduire le stress, mieux dormir et retrouver le calme intérieur.",
            color: .purple,
            image: nil,
            localization: "Espace bien-être"
            
        ),
        Activites(
            name: "Jeux de société",
            description:
                "Cartes, dominos, scrabble… Des après-midis ludiques pour rire, échanger et garder l'esprit vif en bonne compagnie.",
            color: .yellow,
            image: nil,
            localization: "Club de loisirs"
            
        ),
        Activites(
            name: "Atelier numérique",
            description:
                "Apprendre à utiliser son téléphone ou sa tablette pour rester en contact avec ses proches, à son rythme et sans jugement.",
            color: .blue,
            image: nil,
            localization: "Espace public numérique"
           
        ),
    ]

}
