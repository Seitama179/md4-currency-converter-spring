package com.example.currencyconverterspring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CurrencyController {
    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @PostMapping("/convert")
    public String convert(@RequestParam("exchangeRate") double exchangeRate,
                          @RequestParam("usdAmount") double usdAmount,
                          Model model) {
        double vndAmount = exchangeRate * usdAmount;
        model.addAttribute("vndAmount", vndAmount);
        return "result";
    }
}
