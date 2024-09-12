//
//  DetailView.swift
//  H4X0R News
//
//  Created by Yernur Adilbek on 7/30/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
