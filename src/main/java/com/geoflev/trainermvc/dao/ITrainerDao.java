package com.geoflev.trainermvc.dao;

import java.util.List;
import com.geoflev.trainermvc.entities.Trainer;

public interface ITrainerDao {

    public List<Trainer> findAllTrainers();

    public boolean save(Trainer trainer);

    public boolean delete(int id);

    public Trainer findById(int id);

    public boolean update(Trainer trainer);

}
