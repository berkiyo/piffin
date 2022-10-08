import SwiftUI

struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            
            /**
             Incrementor
             */
            Button("Tap count: \(tapCount)") {
                tapCount += 1
                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
            
            /**
             Decrement
             */
            Button("Decrement") {
                tapCount -= 1
                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
            
            /**
             Clear all data
             */
            Button("Clear") {
                tapCount = 0
                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
        }
    }
}
