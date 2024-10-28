package hib;

import hib.dao.GameDAO;
import hib.dao.UserDAO;
import hib.models.Game;
import hib.models.User;

public class Main {
    public static void main(String[] args) {

       // new GameDAO(HibernateUtil.getSessionFactory()).findAll().forEach(System.out::println);

        /*
        Game g = new Game();
        g.setTitle("Juegazo");
        g.setYear(2024);
        g.setPlatform("2DAM");

         */

        //System.out.println(new GameDAO(HibernateUtil.getSessionFactory()).findById(1L));
        //new GameDAO(HibernateUtil.getSessionFactory()).save(g);
        //System.out.println(g);
/*
        var dao = new GameDAO(HibernateUtil.getSessionFactory());
        var game = new Game();
        game = dao.findAll().get(dao.findAll().size()-1);

        game.setYear(2222);
        dao.update(game);

 */


        var userDao = new UserDAO(HibernateUtil.getSessionFactory());

        var user = userDao.valideUser("correo@correo.com","123");
        //System.out.println(userDao.valideUser("correo@correo.com","123"));
        //System.out.println(userDao.valideUser("jaja@jaja.com","12"));

        System.out.println(user.getEmail());



    }
}
