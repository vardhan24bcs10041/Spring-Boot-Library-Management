package com.assignment.dbapp.controller;

import com.assignment.dbapp.entity.Author;
import com.assignment.dbapp.entity.Book;
import com.assignment.dbapp.service.AuthorService;
import com.assignment.dbapp.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AppController {

    @Autowired
    private AuthorService authorService;

    @Autowired
    private BookService bookService;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    // --- Author Handlers ---

    @GetMapping("/authors")
    public String listAuthors(Model model) {
        model.addAttribute("authors", authorService.getAllAuthors());
        return "list-authors";
    }

    @GetMapping("/authors/with-books")
    public String listAuthorsWithBooks(Model model) {
        model.addAttribute("authors", authorService.getAuthorsWithBooks());
        model.addAttribute("title", "Authors with Published Books (Join Query)");
        return "list-authors";
    }

    @GetMapping("/authors/add")
    public String showAddAuthorForm(Model model) {
        model.addAttribute("author", new Author());
        return "add-author";
    }

    @PostMapping("/authors/save")
    public String saveAuthor(@ModelAttribute("author") Author author, RedirectAttributes redirectAttributes) {
        try {
            if (author.getId() != null) {
                Author existing = authorService.getAuthorById(author.getId());
                existing.setName(author.getName());
                existing.setNationality(author.getNationality());
                existing.setBirthDate(author.getBirthDate());
                authorService.saveAuthor(existing);
            } else {
                authorService.saveAuthor(author);
            }
            redirectAttributes.addFlashAttribute("success", "Author saved successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error saving author: " + e.getMessage());
        }
        return "redirect:/authors";
    }

    @GetMapping("/authors/edit/{id}")
    public String showEditAuthorForm(@PathVariable Long id, Model model) {
        model.addAttribute("author", authorService.getAuthorById(id));
        return "edit-author";
    }

    // --- Book Handlers ---

    @GetMapping("/books")
    public String listBooks(Model model) {
        model.addAttribute("books", bookService.getAllBooks());
        return "list-books";
    }

    @GetMapping("/books/add")
    public String showAddBookForm(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("authors", authorService.getAllAuthors());
        return "add-book";
    }

    @PostMapping("/books/save")
    public String saveBook(@ModelAttribute("book") Book book, RedirectAttributes redirectAttributes) {
        try {
            if (book.getId() != null) {
                Book existing = bookService.getBookById(book.getId());
                existing.setTitle(book.getTitle());
                existing.setIsbn(book.getIsbn());
                existing.setGenre(book.getGenre());
                existing.setPrice(book.getPrice());
                existing.setAuthor(authorService.getAuthorById(book.getAuthor().getId()));
                bookService.saveBook(existing);
            } else {
                bookService.saveBook(book);
            }
            redirectAttributes.addFlashAttribute("success", "Book saved successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error saving book: " + e.getMessage());
        }
        return "redirect:/books";
    }

    @GetMapping("/books/edit/{id}")
    public String showEditBookForm(@PathVariable Long id, Model model) {
        model.addAttribute("book", bookService.getBookById(id));
        model.addAttribute("authors", authorService.getAllAuthors());
        return "edit-book";
    }
}
