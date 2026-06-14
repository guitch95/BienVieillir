import SwiftUI

struct WelcomeView: View {
    @Binding var showWelcome: Bool

    var body: some View {
        VStack(spacing: 24) {

            Spacer()

            Image(systemName: "leaf.fill")
                .font(.system(size: 80))
                .foregroundStyle(.sauge)

            Text("BienVieillir")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Prenez soin de votre santé et restez actif au quotidien.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .padding(.horizontal)

            Button {
                showWelcome = false
            } label: {
                Text("Commencer")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.sauge)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .padding(.horizontal)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.creme)
    }
}

#Preview {
    WelcomeView(showWelcome: .constant(true))
}
