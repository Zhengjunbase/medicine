package DaoImpl;

import Dao.UserDao;
import Domain.User;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by zhengjun on 10/30/14.
 */
public class UserDaoHibernate extends HibernateDaoSupport implements UserDao{

    @Override
    public User get(Integer id) {
        return getHibernateTemplate().get(User.class, id);
    }

    @Override
    public Integer save(User value) {
        return (Integer)getHibernateTemplate().save(value);
    }

    @Override
    public void update(User value) {
        getHibernateTemplate().update(value);
    }

    @Override
    public void delete(User value) {
        getHibernateTemplate().delete(value);
    }

    @Override
    public void delete(Integer id) {
        getHibernateTemplate().delete(get(id));
    }

    @Override
    public List<User> findAll() {
        return (List<User>)getHibernateTemplate().find("from User");
    }
}
