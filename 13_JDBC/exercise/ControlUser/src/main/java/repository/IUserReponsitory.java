package repository;

import model.User;

import java.util.List;


public interface IUserReponsitory {
    List<User> display();
    boolean  addNew(User user);
    boolean update (int id,User user);
    boolean delete (int id );
    List<User> search (String country);
    List<User> sort ();
    List<User> findById(int id );
    void addUserTransaction ();
}
