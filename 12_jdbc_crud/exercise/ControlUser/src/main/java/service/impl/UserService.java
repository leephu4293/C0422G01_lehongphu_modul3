package service;

import model.User;
import reponsitory.IUserReponsitory;
import reponsitory.UserReponsitory;

import java.util.List;

public class UserService implements IUserService {
    private static IUserReponsitory userReponsitory = new UserReponsitory();

    @Override
    public List<User> display() {
       return userReponsitory.display();
    }

    @Override
    public boolean addNew(User user) {
        return userReponsitory.addNew(user);
    }

    @Override
    public boolean update(int id , User user) {
      return userReponsitory.update(id,user);
    }

    @Override
    public boolean delete(int id) {
      return  userReponsitory.delete(id);
    }

    @Override
    public List<User> search(String country) {
      return  userReponsitory.search(country);
    }

    @Override
    public List<User> sort() {
        return userReponsitory.sort();
    }

    @Override
    public List<User> findById(int id) {
        return userReponsitory.findById(id);
    }
}
