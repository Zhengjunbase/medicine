package DaoImpl;

import Dao.NodeDao;
import Domain.Node;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by zhengjun on 10/30/14.
 */
public class NodeDaoHibernate extends HibernateDaoSupport implements NodeDao{

    @Override
    public Node get(Integer id) {
        return getHibernateTemplate().get(Node.class, id);
    }

    @Override
    public Integer save(Node node) {
        return (Integer)getHibernateTemplate().save(node);
    }

    @Override
    public void update(Node node) {
        getHibernateTemplate().update(node);
    }

    @Override
    public void delete(Node node) {
        getHibernateTemplate().delete(node);
    }

    @Override
    public void delete(Integer id) {
        getHibernateTemplate().delete(get(id));
    }

    @Override
    public List<Node> findAll() {
        return (List<Node>)getHibernateTemplate().find("from Node");
    }
}
