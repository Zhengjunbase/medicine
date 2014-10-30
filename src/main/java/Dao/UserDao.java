package Dao;

import Domain.User;

import java.util.List;

/**
 * Created by zhengjun on 10/30/14.
 */
public interface UserDao {
    User get(Integer id);

    Integer save(User value);

    void update(User value);

    void delete(User value);

    void delete(Integer id);

    List<User> findAll();

}
