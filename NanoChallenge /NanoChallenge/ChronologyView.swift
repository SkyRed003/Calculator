//
//  Chronology.swift
//  NanoChallenge
//
//  Created by Francesco Palumbo on 17/11/23.
//

import SwiftUI
import SwiftData

struct ChronologyView: View {
    @Environment(\.dismiss) var dismiss
    @Query var value: [DataItem]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
            ZStack {
                
                NavigationStack {
                    Button("Dismiss") {
                        dismiss()
                    }
                List {
                    ForEach(value) {
                        value in
                        Text(String(value.value))
                } .onDelete(perform: deleteValue)
                    }
                } .listStyle(PlainListStyle())
                
                
            } .preferredColorScheme(.dark)
           
    }
    func deleteValue(indexSet: IndexSet) {
        for index in indexSet {
            let bin = value[index]
            modelContext.delete(bin)
        }
    }
}

#Preview {
    ChronologyView()
}
