package com.rahulportfolio.model;

public class Profile {

    private int id;

    private String fullName;
    private String profession;
    private String tagline;

    private String about1;
    private String about2;

    private String email;
    private String phone;

    private String city;
    private String state;
    private String country;

    private String experience;

    private String github;
    private String linkedin;
    private String leetcode;
    private String hackerrank;
    private String codechef;
    private String codeforces;
    private String gfg;

    private String photo;
    private String resume;

    public Profile() {
    }

    public Profile(int id, String fullName, String profession, String tagline,
                   String about1, String about2,
                   String email, String phone,
                   String city, String state, String country,
                   String experience,
                   String github, String linkedin,
                   String leetcode, String hackerrank,
                   String codechef, String codeforces, String gfg,
                   String photo, String resume) {

        this.id = id;
        this.fullName = fullName;
        this.profession = profession;
        this.tagline = tagline;
        this.about1 = about1;
        this.about2 = about2;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.state = state;
        this.country = country;
        this.experience = experience;
        this.github = github;
        this.linkedin = linkedin;
        this.leetcode = leetcode;
        this.hackerrank = hackerrank;
        this.codechef = codechef;
        this.codeforces = codeforces;
        this.gfg = gfg;
        this.photo = photo;
        this.resume = resume;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getTagline() {
        return tagline;
    }

    public void setTagline(String tagline) {
        this.tagline = tagline;
    }

    public String getAbout1() {
        return about1;
    }

    public void setAbout1(String about1) {
        this.about1 = about1;
    }

    public String getAbout2() {
        return about2;
    }

    public void setAbout2(String about2) {
        this.about2 = about2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getLeetcode() {
        return leetcode;
    }

    public void setLeetcode(String leetcode) {
        this.leetcode = leetcode;
    }

    public String getHackerrank() {
        return hackerrank;
    }

    public void setHackerrank(String hackerrank) {
        this.hackerrank = hackerrank;
    }

    public String getCodechef() {
        return codechef;
    }

    public void setCodechef(String codechef) {
        this.codechef = codechef;
    }

    public String getCodeforces() {
        return codeforces;
    }

    public void setCodeforces(String codeforces) {
        this.codeforces = codeforces;
    }

    public String getGfg() {
        return gfg;
    }

    public void setGfg(String gfg) {
        this.gfg = gfg;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }
}