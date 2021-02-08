package com.codeup.adlister.models;


public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String username;

    //Swapped to public
    public String imageUrl;
    ///////////////
    //MySQLAdsDao//
    ///////////////
    public Ad(long id, long userId, String title, String description, String imageUrl) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.imageUrl = imageUrl;
    }
    ///////////////////
    //CreateAdServlet//
    ///////////////////
    public Ad(long userId, String title, String description, String imageUrl) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.imageUrl = imageUrl;
    }
    /////////////////
    //AdEditServlet//
    /////////////////
    public Ad(Long id, String title, String description, String imageURL) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.imageUrl = imageURL;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername(){
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
