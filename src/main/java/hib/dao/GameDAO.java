package hib.dao;

import hib.models.Game;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.ArrayList;
import java.util.List;

public class GameDAO implements DAO<Game>{
    private SessionFactory sessionFactory;

    public GameDAO(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Game> findAll() {
        List<Game> salida;
        try(Session session = sessionFactory.openSession()){
            salida=  session.createQuery("from Game", Game.class).list();
        }catch (Exception e){
            salida = new ArrayList<>(0);
        }
        return salida;
    }

    @Override
    public Game findById(Long id) {
        try(Session session = sessionFactory.openSession()){
            return session.get(Game.class, id);
        }catch (Exception e){
            return null;
        }
    }

    @Override
    public void save(Game game) {
        sessionFactory.inTransaction( session -> session.persist(game));
    }

    @Override
    public void update(Game game) {
        sessionFactory.inTransaction( session -> session.merge(game));
    }

    @Override
    public void delete(Game game) {
        sessionFactory.inTransaction( session -> session.remove(game));
    }

    public void deleteById(Long id){
        sessionFactory.inTransaction( session -> session.remove(id));
    }

}
