//
//  ContentView.swift
//  SentimentAnalyzer
//
//  Created by sara hu lihua on 22/10/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State private var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            Text("Text Analysis")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top,100)
            Spacer()
            
            
            VStack{
                TextField("Enter the text here",text: $viewModel.userInput)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                Button(action: {
                    viewModel.analyzeSentimentButtonTapped()
                }){
                    Text("Perform analysis")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,30)
                        .background(Color.blue)
                        .cornerRadius(50)
                    
                }
                .padding()
                
    
                Text("Sentiment Analysis: \(viewModel.sentimentPrediction)")
                    .padding()
                    .font(Font(UIFont(name: "Arial", size: 20)!))
                
                Text("Problem Analysis: \(viewModel.MLmodelPrediction)")
                    .padding()
                    .font(Font(UIFont(name: "Arial", size: 20)!))
                
            }
            .padding(.horizontal,30)
            .cornerRadius(10)
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}


