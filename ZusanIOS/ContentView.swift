
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appData: ApplicationData
    var body: some View {
        ScrollViewReader{ proxy in
        ScrollView{
            ForEach(appData.userData) { book in
                VStack {
                    HStack(alignment: .top) {
                        Image(book.cover)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 100)
                        VStack(alignment: .leading, spacing: 2) {
                            Text(book.title).bold()
                            Text(book.author)
                            Text(book.year).font(.caption)
                        }.padding(.top, 5)
                        Spacer()
                    }.padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 5)
                    Divider()
                }
            }
            Button("Top"){
                if let firstIdentifier = appData.userData.first?.id{
                    proxy.scrollTo(firstIdentifier, anchor:.top)
                }
            }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ApplicationData())
    }
}

