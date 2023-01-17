package com.example.demo.controllers;

import com.p4shark.games.Game;
import com.p4shark.games.GameMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
public class MainController
{
    public Random rand = new Random();
    @Autowired
    private final JdbcTemplate jdbdTemplate;

    public MainController(JdbcTemplate jdbdTemplate)
    {
        this.jdbdTemplate = jdbdTemplate;
    }


    @GetMapping("/")
    public String greeting(Model model)
    {
        model.addAttribute("name", "p4shark");
        List<Integer> items = new ArrayList<>();
        List<Game> games = new ArrayList<>();
        for(int i=0;i<10;i++)
        {
            items.add(rand.nextInt(10));
        }
        String sql ="select * from games;";
        games = jdbdTemplate.query(sql, new GameMapper());

        model.addAttribute("count", items);
        model.addAttribute("games", games);

        return "index";
    }
    @GetMapping("/games/{id}")
    public String Game(@PathVariable(value = "id")int id, Model model)
    {
        String sql ="select * from games where id="+id+";";
        Game gamenow = jdbdTemplate.query(sql, new GameMapper()).get(0);
        model.addAttribute("game", gamenow);
        return "games";
    }

}