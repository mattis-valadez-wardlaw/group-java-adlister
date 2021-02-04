package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.List;

public interface Categories {
    //get a list of all categories
    List<Category> all();

    //get categories linked with ads by ad's id
    List<Category> getCategoriesLinkedWithAd(Long adId);

    //insert a new category and return the new category's id
    Long insert(Category category);
}
