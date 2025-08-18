void main(){
  Book book1 = Book("Dead Aid", "Dambisa Moyo", true);
  Book book2 = Book("Think and grow", "Napoleon mill", true);
  Book book3 = Book("Developing leadership", "JohnC.Maxwell", true);

  Memeber memeber1 = Memeber("Fares Abent", 123);
  Memeber memeber2 = Memeber("Abenezer dejene", 234);
  Memeber memeber3 = Memeber("ruth Mandela", 145);

  Library library = Library();

  book1.displaybook();


}
class Book{

  String? title;
  String? author;
  bool? is_available;

  Book(this.title,this.author,this.is_available);

  void displaybook(){
    print("title: $title");
    print("author: $author");
  }

  bool markborrowed(){
    return is_available = false;
  }
   bool markreturned(){
    return is_available = true;
  }
}
class Memeber{
  String? name;
  var Memeberid;
  List <Book> borrowedbook = [];
  
  Memeber(this.name,this.Memeberid);
  
  void borrowbook(Book book){
    if (book.is_available == true){
      borrowedbook.add(book);
      book.markborrowed();
      print("$name borrowed ${book.title}");

    }else {
      print("book not available");
    }

  }
  void returnbook(Book book){
    if(borrowedbook.contains(book)){
      borrowedbook.remove(book);
       book.markreturned();
       print("book returned");
    }
    else{
      print("you do not have the book");
    }

  }
  void displaymemeber(){
    print("name: $name");
    print("member id: $Memeberid");
    print("books borrowed: $borrowedbook");
  }

}
class Library{
  List books = [];
  List members =[];
   
   void addbook(Book book){
    books.add(book);
    print("the book ${book.title} is added!");

   }
   void registermember(Memeber member){
    members.add(member);
    print("${member.name} is added");


   }
   void showallbook(){
    for (List book in books){
       print(book);
    }
   }
   void showallmember(){
      for (List member in members){
        print(member);
      }
   }
}