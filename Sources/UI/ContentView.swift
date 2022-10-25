import RustLib
import SwiftUI

public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            Image("Logo", bundle: .resources)
            Text("The answer to life, the universe, and everything is: **...**")
                .multilineTextAlignment(.center)
                .padding(64)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private class ResourceHandle {}

extension Bundle {
    static let resources = Bundle(for: ResourceHandle.self)
}
