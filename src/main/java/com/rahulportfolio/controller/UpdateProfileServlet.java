package com.rahulportfolio.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.rahulportfolio.dao.ProfileDAO;
import com.rahulportfolio.model.Profile;

@WebServlet("/updateProfile")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize = 1024 * 1024 * 10,
    maxRequestSize = 1024 * 1024 * 20
)
public class UpdateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        ProfileDAO dao = new ProfileDAO();

        Profile oldProfile = dao.getProfile();

        int id = Integer.parseInt(request.getParameter("id"));

        String fullName = request.getParameter("fullName");
        String profession = request.getParameter("profession");
        String tagline = request.getParameter("tagline");

        String about1 = request.getParameter("about1");
        String about2 = request.getParameter("about2");

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        String experience = request.getParameter("experience");

        String github = request.getParameter("github");
        String linkedin = request.getParameter("linkedin");
        String leetcode = request.getParameter("leetcode");
        String hackerrank = request.getParameter("hackerrank");
        String codechef = request.getParameter("codechef");
        String codeforces = request.getParameter("codeforces");
        String gfg = request.getParameter("gfg");
        
        // ==========================
        // Photo Upload
        // ==========================

        Part photoPart = request.getPart("photo");

        String photoName = oldProfile.getPhoto();

        if (photoPart != null && photoPart.getSize() > 0) {

            photoName = new File(photoPart.getSubmittedFileName()).getName();

            String photoPath =
                    getServletContext().getRealPath("")
                    + File.separator
                    + "images"
                    + File.separator
                    + "profile";

            File photoDir = new File(photoPath);

            if (!photoDir.exists()) {
                photoDir.mkdirs();
            }

            photoPart.write(
                    photoPath
                    + File.separator
                    + photoName
            );
        }

        // ==========================
        // Resume Upload
        // ==========================

        Part resumePart = request.getPart("resume");

        String resumeName = oldProfile.getResume();

        if (resumePart != null && resumePart.getSize() > 0) {

            resumeName = new File(resumePart.getSubmittedFileName()).getName();

            String resumePath =
                    getServletContext().getRealPath("")
                    + File.separator
                    + "uploads";

            File resumeDir = new File(resumePath);

            if (!resumeDir.exists()) {
                resumeDir.mkdirs();
            }

            resumePart.write(
                    resumePath
                    + File.separator
                    + resumeName
            );
        }

        // ==========================
        // Set Profile Data
        // ==========================

        Profile profile = new Profile();

        profile.setId(id);

        profile.setFullName(fullName);
        profile.setProfession(profession);
        profile.setTagline(tagline);

        profile.setAbout1(about1);
        profile.setAbout2(about2);

        profile.setEmail(email);
        profile.setPhone(phone);

        profile.setCity(city);
        profile.setState(state);
        profile.setCountry(country);

        profile.setExperience(experience);

        profile.setGithub(github);
        profile.setLinkedin(linkedin);
        profile.setLeetcode(leetcode);
        profile.setHackerrank(hackerrank);
        profile.setCodechef(codechef);
        profile.setCodeforces(codeforces);
        profile.setGfg(gfg);

        profile.setPhoto(photoName);
        profile.setResume(resumeName);
        
        // ==========================
        // Update Profile
        // ==========================

        boolean status = dao.updateProfile(profile);

        if (status) {

            response.sendRedirect(
                    "adminDashboard?pageName=profile&success=updated"
            );

        } else {

            response.sendRedirect(
                    "adminDashboard?pageName=profile&error=failed"
            );

        }

    }

}