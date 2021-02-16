/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.controller;

import emergon.entity.Sales;
import emergon.repository.SalesRepo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author tasos
 */
@RequestMapping("/sale")
@Controller
public class SalesController {
    
    @Autowired
    SalesRepo saleRepo;
    
    @GetMapping
    public String showSales(Model model){
        List<Sales> listOfSales = saleRepo.findAll();
        model.addAttribute("listOfSales", listOfSales);
        return "sale/saleList";
    }
}
