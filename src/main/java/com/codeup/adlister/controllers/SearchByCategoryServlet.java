package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.SearchByServlet", urlPatterns = "/ads/categories")
public class SearchByCategoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("categories",DaoFactory.getCategoriesDao().all());
        request.setAttribute("categoriesDao", DaoFactory.getCategoriesDao());

        String[] categories = request.getParameterValues("categories");

        List<Ad> ads = new ArrayList<>();

        try {
            for(String categoryId : categories) {
                ads.addAll(DaoFactory.getAdsDao().getAdsWithCategory(Long.parseLong(categoryId)));
            }
            request.setAttribute("ads", ads);

            request.getRequestDispatcher("/WEB-INF/ads/index.jsp")
                    .forward(request, response);
        } catch (Exception e) {
            response.sendRedirect("/ads");
        }

    }
}