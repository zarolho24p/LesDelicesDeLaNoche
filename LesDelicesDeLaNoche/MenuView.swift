//
//  MenuView.swift
//  LesDelicesDeLaNoche
//
//  Created by mafiosa on 14/11/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Categorie.allCases, id: \.self) { section in
                    Section(header: Text(section.rawValue)) {
                        ForEach(carte.filter({$0.categorie == section})) { carte in
                            NavigationLink(destination: AjouterAuPanierView(carte: carte)) {
                                HStack {
                                    Image(carte.image)
                                        .resizable()
                                        .frame(width: 130, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 2))
                                    VStack(spacing: 10) {
                                        Text(carte.name)
                                        Text(carte.description)
                                            .foregroundStyle(.secondary)
                                            .lineLimit(2)
                                    }
                                    
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("Carte")
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
