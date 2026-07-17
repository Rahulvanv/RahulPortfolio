package com.rahulportfolio.model;

public class Skill {

    private int id;
    private String skillName;
    private int skillLevel;

    public Skill() {
    }

    public Skill(int id, String skillName, int skillLevel) {
        this.id = id;
        this.skillName = skillName;
        this.skillLevel = skillLevel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public int getSkillLevel() {
        return skillLevel;
    }

    public void setSkillLevel(int skillLevel) {
        this.skillLevel = skillLevel;
    }

}