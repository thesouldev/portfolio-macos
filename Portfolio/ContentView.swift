//
//  ContentView.swift
//  Portfolio
//
//  Created by Sasidharan Velu on 19/05/22.
//

import SwiftUI

struct Option: Hashable {
    let title: String
    let imageName: String
}

struct ContentView: View {
    let options : [Option] = [
        .init(title: "About", imageName: "info.circle"),
        .init(title: "Experience", imageName: "cloud"),
        .init(title: "Contact", imageName: "pencil.circle"),
    ]
    var body: some View {
        NavigationView {
            ListView(options: options).frame(minWidth: 300)
            MainView()
        }
    }
}

struct ListView: View {
    let options : [Option]
    var body: some View {
        VStack {
            ForEach(options, id: \.self) { option in
                HStack {
                    Image(systemName: option.imageName)
                    Text(option.title)
                    
                }
                .padding(3)
            }
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("Main 1")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
