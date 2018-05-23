package com.example.BloodDonation.controller;

import com.example.BloodDonation.model.Hospital;
import com.example.BloodDonation.repository.HospitalDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HospitalController {

    @Autowired
    private HospitalDAO hospitalDAO;

    @GetMapping("/addhospital")
    public String showAddHospitalForm(Model model) {
        model.addAttribute("hospital", new Hospital());
        return "Addhospital";
    }

    @PostMapping("/addhospital")
    public String processHospital(@ModelAttribute Hospital hospital) {
        hospitalDAO.save(hospital);
        return "hospitaldetails";
    }

    @GetMapping("/deletehospital")
    public String showDeleteHospitalForm() {
        return "hindhospitaltodelete";
    }

    @PostMapping("/deletehospital")
    public String showDeleteHospitalConformation(@RequestParam String id, Model model) {
        Hospital hospital = hospitalDAO.findByHospitalId(Long.parseLong(id.substring(2)));
        model.addAttribute(hospital);
        return "Deletehospital";
    }

    @PutMapping("/deletehospital")
    public String processDeletion(@RequestParam String id) {
        hospitalDAO.deleteBykod(Long.parseLong(id.substring(2)));
        return "hospital";
    }



}
