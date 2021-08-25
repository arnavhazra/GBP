
import SwiftUI

struct PlantDetailView: View {
    
    var plant: Plant
    
    var body: some View {
        ZStack {
            Text(plant.name)
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plants[0])
    }
}
