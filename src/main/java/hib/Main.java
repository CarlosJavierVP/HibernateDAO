package hib;


import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {

        HibernateUtil.getSessionFactory();
    }
}
