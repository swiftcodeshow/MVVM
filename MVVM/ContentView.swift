//
//  ContentView.swift
//  MVVM
//
//  Created by 米国梁 on 2021/4/27.
//

import SwiftUI

// - MARK: Model

struct Person {
    var id = UUID().uuidString
}

// - MARK: ViewModel

class ContentViewModel: ObservableObject {
    @Published var person = Person()
}

// - MARK: View

struct ContentView: View {
    
    @StateObject var data = ContentViewModel()
    
    var body: some View {
        
        VStack {
            
            Button("Change Person's Name") {
                data.person = Person()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            
            Text("Person's ID: \(data.person.id)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
