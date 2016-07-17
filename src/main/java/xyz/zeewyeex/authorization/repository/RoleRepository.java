package xyz.zeewyeex.authorization.repository;

import xyz.zeewyeex.authorization.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
