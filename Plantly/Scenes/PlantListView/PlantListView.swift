import SwiftUI

struct PlantListView: View {
    
    var plants: [Plant] = Plants
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack() {
                    ForEach(plants) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            PlantRowView(plant: item)
                                .padding(.vertical, 5)
                        }
                    }
                }
            }
        }
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
