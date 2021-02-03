package com.codeup.adlister.models;

public class Categories {

    private long id;
    private String name;

    public Categories() {
    }

    //Using two constructors as best practice to mitigate need
    public Categories(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Categories(String name) {
        this.name = name;
    }

    public long getId(){return id;}

    public void setId(long id){this.id = id;}

    public String getName(){return name;}

    public void setName(){this.name = name;}

}
