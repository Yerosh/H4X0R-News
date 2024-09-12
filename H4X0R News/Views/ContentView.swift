//
//  ContentView.swift
//  H4X0R News
//
//  Created by Yernur Adilbek on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
