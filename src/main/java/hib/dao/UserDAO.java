package hib.dao;

import hib.models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;

public class UserDAO implements DAO<User>{
    private SessionFactory sessionFactory;
    public UserDAO (SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<User> findAll() {
        return List.of();
    }

    @Override
    public User findById(Long id) {
        return null;
    }

    @Override
    public void save(User user) {

    }

    @Override
    public void update(User user) {

    }

    @Override
    public void delete(User user) {

    }

    public User valideUser(String email, String password){
        try(Session session = sessionFactory.openSession()){
            Query<User> q = session.createQuery(
                    "select u from User u where u.email = :email and u.password = :password",
                    User.class);
            q.setParameter("email", email);
            q.setParameter("password", password);

            //Si no usas el Eager, a todos los efectos es como hacerlo con un eager
            /*
            Porque el Lazy no carga los datos hasta que sean necesarios, de ahí usar getGames(), para requerir los datos.
            User user = q.uniqueResult();
            User user 1 = session.get(User.Class, user.getId());
            user1.getGames();
             */

            // q.uniqueResult();
            return q.getSingleResultOrNull(); //devuelve un usuario y si no hay usuario devuelve null
            /*
            var usuarios = q.list();
            if (usuarios.isEmpty()){
                return null;
            }else {
                return usuarios.get(0);
            }
             */
        }

    }


}
