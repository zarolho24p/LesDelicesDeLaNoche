//
//  AjouterAuPanierView.swift
//  LesDelicesDeLaNoche
//
//  Created by mafiosa on 15/11/2022.
//

import SwiftUI

struct AjouterAuPanierView: View {
    let carte: Model
    @State private var articleNumber: Int = 1
    
    var body: some View {
        ScrollView {
            VStack {
            Image(carte.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                HStack {
                    Text(carte.name.uppercased())
                        .font(.title)
                        .bold()
                }
            }
            HStack {
                
                Button {
                    articleNumber += 1
                } label: {
                    Image(systemName: "plus")
                }
    //            Button("Ajouter") {
    //                articleNumber += 1
    //            }
               Text("\(articleNumber)")
                    .foregroundColor(.blue)
                    
                
                Button {
                    articleNumber -= (articleNumber > 0 ? 1 : 0)
                } label: {
                    Image(systemName: "minus")
                }
                Spacer()
                
                Text("\((carte.articleprice * Double(articleNumber)).formatDouble)")
                    
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("Panier")
                    } label: {
                        Image(systemName: "cart.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("Menu")
                    } label: {
                        Image(systemName: "person")
                    }
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitleDisplayMode(.inline)
        
        NavigationLink(destination:
                        Text("panier")) {
            Text("Ajouter au panier".uppercased())
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 70)
            .background(Color.blue .cornerRadius(10))
        }
    }
}

struct AjouterAuPanierView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AjouterAuPanierView(carte: .modelSample)
        }
    }
}
extension Double {
    var formatDouble:  String {
        String(format: "%.2f", self)
    }
}
