import SwiftUI

struct CardView: View, Identifiable {
    static var selectedPost: Destination?
    let id = UUID()
    @State private var selectedPost: Destination?

    var DataSet: Destination
    var destination: Destination
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                    .frame(height: 10)
                HStack {
                    Text(DataSet.address)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)

                    Spacer()

                    Text(DataSet.distance)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                .onTapGesture {
                    // Set the selected post when HStack is tapped
                    selectedPost = DataSet
                }
                .padding(.horizontal, 2)
                .padding(.vertical, -10)
                
                Image(DataSet.imageName[0])
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 600)
                    .frame(maxWidth: 370)
                    .clipped()
                    .cornerRadius(10)
                    .padding(.vertical, 10)
                    .shadow(color: Color.white.opacity(0.3), radius: 15)

                HStack {
                    Text(DataSet.priceCM)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)

                    Spacer()
                        .frame(width: 70)

                    HStack {
                        Image(systemName: "bed.double")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text(":")
                            .font(.title3)
                            .fontWeight(.black)
                        
                        Text(DataSet.NoBed)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color.white)

                    Spacer()

                    HStack {
                        Image(systemName: "shower")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text(":")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Text(DataSet.NoShowers)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color.white)
                }
                .padding(.horizontal, 5)
            }
            .padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(DataSet: Data[2], destination: Data[0])
    }
}
