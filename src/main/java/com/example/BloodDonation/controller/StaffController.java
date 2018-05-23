package com.example.BloodDonation.controller;

import com.example.BloodDonation.model.Staff;
import com.example.BloodDonation.repository.StaffDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/staff")
public class StaffController {

    @Autowired
    private StaffDAO staffDAO;

    @RequestMapping(value = "/Addstaff", method = RequestMethod.GET)
    public String showAddStaffForm() {
        return "Addstaff";
    }

    @RequestMapping(value = "/Addstaff", method = RequestMethod.POST)
    public String processStaff(Staff staff) {
        staffDAO.save(staff);
        return "redirect:/staff";
    }

    @RequestMapping(value = "/Delete", method = RequestMethod.GET)
    public String deleteStaff() {
        return "Deletestaff";
    }

    @RequestMapping(value = "/Delete", method = RequestMethod.POST)
    public String deleteStaffConformation(@RequestParam("id") long id, Model model){
        Staff staff = staffDAO.findBykod(id).get();
        model.addAttribute("staff", staff);
        return "deleteStaffConform";
    }

    @RequestMapping(value = "/Delete", method = RequestMethod.PUT)
    public String processDeletion(@RequestParam("id") long id) {
        staffDAO.deleteBykod(id);
        return "staff";
    }

}
