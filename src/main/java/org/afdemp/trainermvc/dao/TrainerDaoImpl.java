package org.afdemp.trainermvc.dao;

import java.util.List;
import org.afdemp.trainermvc.entities.Trainer;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository("trainerDao")
public class TrainerDaoImpl extends AbstractDao<Integer, Trainer> implements ITrainerDao {

    @Override
    public List<Trainer> findAllTrainers() {
        Criteria criteria = createEntityCriteria();
	return (List<Trainer>) criteria.list();
    }

    public boolean save(Trainer trainer) {
        boolean notSaved = persist(trainer);
        if(notSaved) return false;
        return true;
    }

    public boolean delete(int id) {
        Trainer s = getByKey(id);
        if(s != null) {
            delete(s);
            if(getByKey(id) == null) 
                return true;
        }
        return false;
    }
    
    public Trainer findById(int id) {
        Trainer s = getByKey(id);
        if(s != null) {
            return s;
        }
        return null;
    }

    public boolean update(Trainer trainer) {
        Trainer db_trainer = findById(trainer.getId());
        if(trainer != null) {
            db_trainer.setFirstName(trainer.getFirstName());
            db_trainer.setLastName(trainer.getLastName());
            db_trainer.setSubject(trainer.getSubject());
            return save(db_trainer);
        } else
            return false;
    }
    
}
