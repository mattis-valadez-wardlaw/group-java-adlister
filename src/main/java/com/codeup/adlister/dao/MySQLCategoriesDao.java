package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories {
    private Connection connection = null;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Category> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM categories");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResult(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all categories.", e);
        }
    }

    @Override
    public List<Category> getCategoriesLinkedWithAd(Long adId) {
        List<Category>categories = new ArrayList<>();
        String query = "SELECT * " +
                "FROM categories " +
                "WHERE id IN (" +
                "SELECT category_id " +
                "FROM ad_category " +
                "WHERE ad_id = ? )";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, adId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                categories.add(new Category(rs.getString("name")));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving associated categories from ad.", e);
        }
        return categories;
    }

    @Override
    public Long insert(Category category) {
        String query =  "INSERT INTO categories(id, name) VALUES (?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, category.getId());
            stmt.setString(2, category.getName());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new category", e);
        }
    }

    private Category extractCategory(ResultSet rs) throws SQLException {
        return new Category(
                rs.getLong("id"),
                rs.getString("name")
        );
    }

    private List<Category> createCategoriesFromResult(ResultSet rs) throws SQLException {
        List<Category> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(extractCategory(rs));
        }
        return categories;
    }
}
