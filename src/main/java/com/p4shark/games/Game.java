package com.p4shark.games;

import org.springframework.jdbc.core.RowMapper;

public class Game
{

    private int id;

    public String getCapture()
    {
        return Capture;
    }

    public void setCapture(String capture)
    {
        Capture = capture;
    }

    private String Capture;
    private String Description;
    private String Image;
    private int Screenshots=-1;

    public Game(int tid, String tDescription, String tImage, int tScrenshots)
    {
        id = tid;
        Description = tDescription;
        Image = tImage;
        Screenshots = tScrenshots;
    }
    public Game()
    {

    }


    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getDescription()
    {
        return Description;
    }

    public void setDescription(String description)
    {
        Description = description;
    }

    public String getImage()
    {
        return Image;
    }

    public void setImage(String image)
    {
        Image = image;
    }

    public int getScreenshots()
    {
        return Screenshots;
    }

    public void setScreenshots(int screenshots)
    {
        Screenshots = screenshots;
    }



}
