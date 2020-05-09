package org.afdemp.trainermvc.dao;

import java.util.List;
import org.afdemp.trainermvc.entities.Trainer;

public interface ITrainerDao {
    public List<Trainer> findAllTrainers();
    public boolean save(Trainer trainer);
    public boolean delete(int id);
    
}
