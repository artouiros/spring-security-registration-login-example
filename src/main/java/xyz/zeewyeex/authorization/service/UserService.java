package xyz.zeewyeex.authorization.service;

import xyz.zeewyeex.authorization.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
