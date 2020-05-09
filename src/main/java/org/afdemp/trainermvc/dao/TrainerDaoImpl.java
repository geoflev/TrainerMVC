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
    
}
