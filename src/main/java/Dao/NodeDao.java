package Dao;

import Domain.Node;

import java.util.List;

/**
 * Created by zhengjun on 10/30/14.
 */
public interface NodeDao {
    Node get(Integer id);

    Integer save(Node node);

    void update(Node node);

    void delete(Node node);

    void delete(Integer id);

    List<Node> findAll();

}
