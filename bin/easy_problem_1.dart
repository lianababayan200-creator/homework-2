void main(){
  List<String> shoppingList = ["bread", "cheese"];
  shoppingList.add("tomatoes");
  shoppingList.insert(1, "juice");
  shoppingList.removeAt(0);
  shoppingList[1] = "potatoes";
  print("First: ${shoppingList[0]}");
  print("Last: ${shoppingList.last}");
  print("Is Empty: ${shoppingList.isEmpty}");
  print(shoppingList);
}