package com.example.blooddonation.controller;

import com.example.blooddonation.model.Hospital;
import com.example.blooddonation.repository.HospitalDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HospitalController {

    @Autowired
    private HospitalDAO hospitalDAO;

    @GetMapping("/findhospital")
    public String showFindHospitalForm() {
        return "findhospital";
    }

    @PostMapping("/hospitaldetail")
    public String editHospital(@RequestParam String id, Model model) {
        Hospital hospital = hospitalDAO.findBykod(Long.parseLong(id.substring(2)));
        model.addAttribute(hospital);
        return "hospitaldetail";
    }

    @PostMapping("/edithospital")
    public String processHospital(@ModelAttribute Hospital hospital) {
        hospitalDAO.save(hospital);
        return "hospitaldetail";
    }

    @GetMapping("/addhospital")
    public String showAddHospitalForm(Model model) {
        model.addAttribute("hospital", new Hospital());
        return "edithospital";
    }

    @PutMapping("/deletehospital")
    public String processDeletion(@RequestParam String id) {
        hospitalDAO.deleteBykod(Long.parseLong(id.substring(2)));
        return "hospital";
    }

}
