package com.geoflev.trainermvc.controllers;

import java.util.List;
import com.geoflev.trainermvc.entities.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.geoflev.trainermvc.services.ITrainer;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;

@Controller
@RequestMapping("/")
public class TrainerController {

    private String listurl = "list";
    private String editurl = "edit";
    private String deleteurl = "delete";
    private String updateurl = "update";

    @Autowired
    ITrainer trainerService;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view, @RequestParam(required = false) String msg) {
        List<Trainer> trainers = trainerService.findAllTrainers();
        view.addAttribute("trainers", trainers);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);
        view.addAttribute("msg", msg);
        return ("trainerlist");
    }

    @RequestMapping("/new")
    public String newTrainer(ModelMap view) {
        Trainer trainer = new Trainer();
        view.addAttribute("trainer", trainer);
        view.addAttribute("listurl", listurl);
        return ("newtrainer");
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String saveTrainer(@Valid Trainer trainer, BindingResult result, ModelMap view) {
        if (result.hasErrors()) {
            return "newtrainer";
        }
        if (trainerService.save(trainer)) {
            view.addAttribute("message", new String("Trainer saved successfully!"));
        } else {
            view.addAttribute("message", new String("Unable to save Trainer!"));
        }
        view.addAttribute("listurl", listurl);
        return ("redirect:/list");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteTrainer(ModelMap view, @PathVariable int id) {
        if (trainerService.delete(id)) {
            view.addAttribute("msg", new String("Trainer deleted!"));
        } else {
            view.addAttribute("msg", new String("Unable to delete Trainer!"));
        }
        return ("redirect:/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editTrainer(ModelMap view, @PathVariable int id) {
        Trainer trainer = trainerService.findById(id);
        view.addAttribute("trainer", trainer);
        view.addAttribute("updateurl", updateurl);
        return ("edittrainer");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String updateTrainer(@Valid Trainer trainer, BindingResult result, ModelMap view) {

        if (result.hasErrors()) {
            return "edittrainer";
        }
        trainerService.update(trainer);
        view.addAttribute("msg", new String(""));
        return ("redirect:/list");
    }

}
