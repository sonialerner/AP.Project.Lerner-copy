
import SwiftUI

//creating a separate struct for the ListCard, which will be used repeatedly, manages complexity in the program.
struct ListCard: View {
    
    //communicating the controller with this component file
    @EnvironmentObject var listsManager : ListsManager
    
    //when a new list item is creating, it will not be checked by default
    @State var isChecked = false
    @State var itemName : String
    
    var body: some View {
        HStack {
            //displays a checkmark square if the item is checked or an empty square if it's not checked
            Image(systemName: isChecked ? "checkmark.square" : "square" )
                //when the user taps the image, the status of isChecked changes
                .onTapGesture{
                    if isChecked == false {
                        isChecked = true
                    } else {
                        isChecked = false
                    }
                }
                .padding()
            
            //text is itemName so that the text displayed on each listCard is the name of the item as inputted by the user
                Text(itemName)
                    .frame(height: 50)
            
            Spacer()
        }
        
    }
    
    struct ListItem_Previews: PreviewProvider {
        static var previews: some View {
            //passes an empty string as a placeholder itemName
            ListCard(itemName: "")
        }
    }
}
