import SwiftUI

struct ContentView: View {
    @State private var showWelcome: Bool = true

    var body: some View {
        if showWelcome {
            WelcomeView(showWelcome: $showWelcome)
        } else {
            TabView {

                Tab("Suivi", systemImage: "chart.line.uptrend.xyaxis.circle.fill") {
                    ActivityView()
                }

                Tab("Activités", systemImage: "star.circle") {
                    ActivityDetailsView()
                }

                Tab("Détente", systemImage: "apple.meditate.circle.fill") {
                    DetenteView()
                }

                Tab("Conseils", systemImage: "lightbulb.fill") {
                    ConseilsView()
                }
            }
            .tint(Color.sauge)
        }
        .tint(.sauge)
    }
}

#Preview {
    ContentView()
        .environment(ViewModel())
}
