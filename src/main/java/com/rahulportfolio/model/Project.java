package com.rahulportfolio.model;

public class Project {

    private int id;
    private String title;
    private String description;
    private String technologies;
    private String githubLink;
    private String liveDemoLink;
    private String imagePath;

    public Project() {
    }

    public Project(int id, String title, String description,
                   String technologies,
                   String githubLink,
                   String liveDemoLink,
                   String imagePath) {

        this.id = id;
        this.title = title;
        this.description = description;
        this.technologies = technologies;
        this.githubLink = githubLink;
        this.liveDemoLink = liveDemoLink;
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getTechnologies() {
        return technologies;
    }

    public void setTechnologies(String technologies) {
        this.technologies = technologies;
    }

    public String getGithubLink() {
        return githubLink;
    }

    public void setGithubLink(String githubLink) {
        this.githubLink = githubLink;
    }

    public String getLiveDemoLink() {
        return liveDemoLink;
    }

    public void setLiveDemoLink(String liveDemoLink) {
        this.liveDemoLink = liveDemoLink;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}