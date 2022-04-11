//
//  LoadingView.swift
//  weather
//
//  Created by Dyobi on 4/11/22.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    } // body
    
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
