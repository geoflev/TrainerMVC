package org.afdemp.trainermvc.services;

import java.util.List;
import org.afdemp.trainermvc.entities.Trainer;

public interface ITrainer {
    public List<Trainer> findAllTrainers();
    public boolean save(Trainer trainer);
    public boolean delete(int id);
    
}
