/**
 This is the main content.
 Copyright Berk Dogan, 2022.
 */

import SwiftUI
		
struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                
                HStack {
                    
                    Text("Counter = \(tapCount)")
                        .font(.system(size: 32, weight: .heavy))
                }
                
                HStack {
                    Spacer()
                    /**
                     Incrementor
                     */
                    Button("Increment") {
                        tapCount += 1
                        UserDefaults.standard.set(self.tapCount, forKey: "Tap")
                    }
                    .padding()
                    .buttonStyle(GrowingButton())
                    /**
                     Decrement
                     */
                    Button("Decrement") {
                        if tapCount == 0 {
                            tapCount = 0
                        } else {
                            tapCount -= 1
                        }
                        
                        UserDefaults.standard.set(self.tapCount, forKey: "Tap")
                        
                    }
                    .buttonStyle(GrowingButton())
                    Spacer()
                }
                /**
                 Clear all data
                 */
                Button("Reset Counter") {
                    tapCount = 0
                    UserDefaults.standard.set(self.tapCount, forKey: "Tap")
                }
                .buttonStyle(GrowingButton())
            }
            .navigationTitle("Piffin")
        }
        
    }
}
