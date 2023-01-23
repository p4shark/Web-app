package com.p4shark.games;

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



    private String Review;
    private int Screenshots=-1;

    public Game(int tid, String tDescription, String tImage, String review, int tScrenshots)
    {
        id = tid;
        Description = tDescription;
        Image = tImage;
        Review = review;
        Screenshots = tScrenshots;
    }
    public Game()
    {

    }
    public String getReview()
    {
        return Review;
    }

    public void setReview(String review)
    {
        Review = review;
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
