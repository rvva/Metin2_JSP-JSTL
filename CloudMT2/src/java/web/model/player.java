/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.model;

import java.util.Date;

/**
 *
 * @author fd3s
 */
public class player {
    
    private String name;
    private int playtime;
    private int level;
    private int job;
    private Date last_play;
    private int exp;
    private int empire;
    

    public String getName() {
        return name;
    }

    public int getPlaytime() {
        return playtime;
    }

    public int getLevel() {
        return level;
    }


    public Date getLast_play() {
        return last_play;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPlaytime(int playtime) {
        this.playtime = playtime;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void setLast_play(Date last_play) {
        this.last_play = last_play;
    }

    public player() {
    }


    public int getExp() {
        return exp;
    }

    public void setExp(int exp) {
        this.exp = exp;
    }

    public player(String name, int playtime, int level, int job, Date last_play, int exp, int empire) {
        this.name = name;
        this.playtime = playtime;
        this.level = level;
        this.job = job;
        this.last_play = last_play;
        this.exp = exp;
        this.empire = empire;
    }

    public int getEmpire() {
        return empire;
    }

    public void setEmpire(int empire) {
        this.empire = empire;
    }

    public int getJob() {
        return job;
    }

    public void setJob(int job) {
        this.job = job;
    }
    
}
