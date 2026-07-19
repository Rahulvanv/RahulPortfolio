package com.rahulportfolio.model;

public class Settings {

    private int id;

    // Portfolio
    private String siteTitle;
    private String tagline;
    private String siteDescription;
    private String footerText;

    // Personal
    private String fullName;
    private String profession;
    private String primaryEmail;
    private String phone;
    private String location;
    private String resumeUrl;

    // SEO
    private String metaTitle;
    private String metaDescription;
    private String metaKeywords;

    // Appearance
    private String theme;

    // Visibility
    private boolean showHero;
    private boolean showAbout;
    private boolean showSkills;
    private boolean showProjects;
    private boolean showExperience;
    private boolean showEducation;
    private boolean showCertificates;
    private boolean showContact;

    // Maintenance
    private boolean maintenanceMode;

    public Settings() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSiteTitle() {
        return siteTitle;
    }

    public void setSiteTitle(String siteTitle) {
        this.siteTitle = siteTitle;
    }

    public String getTagline() {
        return tagline;
    }

    public void setTagline(String tagline) {
        this.tagline = tagline;
    }

    public String getSiteDescription() {
        return siteDescription;
    }

    public void setSiteDescription(String siteDescription) {
        this.siteDescription = siteDescription;
    }

    public String getFooterText() {
        return footerText;
    }

    public void setFooterText(String footerText) {
        this.footerText = footerText;
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

    public String getPrimaryEmail() {
        return primaryEmail;
    }

    public void setPrimaryEmail(String primaryEmail) {
        this.primaryEmail = primaryEmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getResumeUrl() {
        return resumeUrl;
    }

    public void setResumeUrl(String resumeUrl) {
        this.resumeUrl = resumeUrl;
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

    public boolean isShowAbout() {
        return showAbout;
    }

    public void setShowAbout(boolean showAbout) {
        this.showAbout = showAbout;
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