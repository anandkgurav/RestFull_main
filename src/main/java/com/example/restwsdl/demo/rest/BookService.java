package com.example.restwsdl.demo.rest;
import java.util.HashSet;
public interface BookService {
    HashSet<Book> findAllBook();
    Book findBookByID(long id);
    void addBook(Book b);
    void deleteAllData();
}
