package com.assignment.dbapp.service;

import com.assignment.dbapp.entity.Author;
import com.assignment.dbapp.repository.AuthorRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class AuthorServiceTest {

    @Mock
    private AuthorRepository authorRepository;

    @InjectMocks
    private AuthorService authorService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetAllAuthors() {
        Author author1 = new Author("Author 1", "Nationality 1", LocalDate.now());
        Author author2 = new Author("Author 2", "Nationality 2", LocalDate.now());
        when(authorRepository.findAll()).thenReturn(Arrays.asList(author1, author2));

        List<Author> result = authorService.getAllAuthors();

        assertEquals(2, result.size());
        verify(authorRepository, times(1)).findAll();
    }

    @Test
    void testGetAuthorById() {
        Author author = new Author("Author 1", "Nationality 1", LocalDate.now());
        author.setId(1L);
        when(authorRepository.findById(1L)).thenReturn(Optional.of(author));

        Author result = authorService.getAuthorById(1L);

        assertNotNull(result);
        assertEquals("Author 1", result.getName());
    }

    @Test
    void testSaveAuthor() {
        Author author = new Author("Author 1", "Nationality 1", LocalDate.now());
        when(authorRepository.save(author)).thenReturn(author);

        Author result = authorService.saveAuthor(author);

        assertNotNull(result);
        assertEquals("Author 1", result.getName());
        verify(authorRepository, times(1)).save(author);
    }
}
