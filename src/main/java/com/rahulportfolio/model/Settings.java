package com.rahulportfolio.model;

public class Settings {

    private int id;

    private String footerText;

    private String logoText;


    // SEO

    private String metaTitle;
    private String metaDescription;
    private String metaKeywords;


    // Theme

    private String theme;


    // Visibility

    private boolean showHero;
    private boolean showSkills;
    private boolean showProjects;
    private boolean showExperience;
    private boolean showEducation;
    private boolean showCertificates;
    private boolean showContact;


    // Maintenance

    private boolean maintenanceMode;
    
    private String adminUsername;
    private String adminPassword;


    public String getAdminUsername() {
        return adminUsername;
    }


    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }



    public String getAdminPassword() {
        return adminPassword;
    }


    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getFooterText() {
        return footerText;
    }

    public void setFooterText(String footerText) {
        this.footerText = footerText;
    }



    public String getLogoText() {
        return logoText;
    }

    public void setLogoText(String logoText) {
        this.logoText = logoText;
    }



    public String getMetaTitle() {
        return metaTitle;
    }

    public void setMetaTitle(String metaTitle) {
        this.metaTitle = metaTitle;
    }



    public String getMetaDescription() {
        return metaDescription;
    }

    public void setMetaDescription(String metaDescription) {
        this.metaDescription = metaDescription;
    }



    public String getMetaKeywords() {
        return metaKeywords;
    }

    public void setMetaKeywords(String metaKeywords) {
        this.metaKeywords = metaKeywords;
    }



    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }



    public boolean isShowHero() {
        return showHero;
    }

    public void setShowHero(boolean showHero) {
        this.showHero = showHero;
    }



    public boolean isShowSkills() {
        return showSkills;
    }

    public void setShowSkills(boolean showSkills) {
        this.showSkills = showSkills;
    }



    public boolean isShowProjects() {
        return showProjects;
    }

    public void setShowProjects(boolean showProjects) {
        this.showProjects = showProjects;
    }



    public boolean isShowExperience() {
        return showExperience;
    }

    public void setShowExperience(boolean showExperience) {
        this.showExperience = showExperience;
    }



    public boolean isShowEducation() {
        return showEducation;
    }

    public void setShowEducation(boolean showEducation) {
        this.showEducation = showEducation;
    }



    public boolean isShowCertificates() {
        return showCertificates;
    }

    public void setShowCertificates(boolean showCertificates) {
        this.showCertificates = showCertificates;
    }



    public boolean isShowContact() {
        return showContact;
    }

    public void setShowContact(boolean showContact) {
        this.showContact = showContact;
    }



    public boolean isMaintenanceMode() {
        return maintenanceMode;
    }

    public void setMaintenanceMode(boolean maintenanceMode) {
        this.maintenanceMode = maintenanceMode;
    }

}