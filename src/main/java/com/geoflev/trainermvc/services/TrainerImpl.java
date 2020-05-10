package com.geoflev.trainermvc.services;

import java.util.List;
import com.geoflev.trainermvc.dao.TrainerDaoImpl;
import com.geoflev.trainermvc.entities.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("trainerService")
@Transactional
public class TrainerImpl implements ITrainer {

    @Autowired
    TrainerDaoImpl dao;

    @Override
    public List<Trainer> findAllTrainers() {
        List<Trainer> trainers = dao.findAllTrainers();
        return trainers;
    }

    public boolean save(Trainer trainer) {
        return dao.save(trainer);
    }

    public boolean delete(int id) {
        return dao.delete(id);
    }

    public boolean update(Trainer trainer) {
        dao.update(trainer);
        return true;
    }

    public Trainer findById(int id) {
        return dao.findById(id);
    }

}
