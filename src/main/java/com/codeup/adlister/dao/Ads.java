package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    //show the user's Ads on their profile page
    List<Ad> userAds(User user);
    Long linkAdToCategory(long adId, long categoryId);
    List<Ad> getAdsWithCategory(Long categoryId);
}
