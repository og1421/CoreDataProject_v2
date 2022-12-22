//
//  ContentView.swift
//  CoreDataProject_v2
//
//  Created by Orlando Moraes Martins on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var countries: FetchedResults<Country>
    
    var body: some View {
        VStack{
            List{
                ForEach(countries, id: \.self) { country in
                    Section(country.wrappedFullName){
                        ForEach(country.candyArray, id: \.self){ candy in
                            Text(candy.unwrappedName)
                        }
                    }
                }
            }
            Button("Add Examples"){
                let candy1 = Candy(context: moc)
                candy1.name = "Mars"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                
                let candy2 = Candy(context: moc)
                candy2.name = "Lacta"
                candy2.origin = Country(context: moc)
                candy2.origin?.shortName = "BR"
                candy2.origin?.fullName = "Brazil"
                
                let candy3 = Candy(context: moc)
                candy3.name = "Sonho de Valsa"
                candy3.origin = Country(context: moc)
                candy3.origin?.shortName = "BR"
                candy3.origin?.fullName = "Brazil"
                
                let candy4 = Candy(context: moc)
                candy4.name = "KitKat"
                candy4.origin = Country(context: moc)
                candy4.origin?.shortName = "UK"
                candy4.origin?.fullName = "United Kingdom"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
