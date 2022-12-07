package aam18_lab4;

import java.util.List;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;

public class AAM18_LAB4 {

    public static void main(String[] args) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        CriteriaBuilder cb = session.getCriteriaBuilder();

        CriteriaQuery<WatchsAddition> criteriaWatchsAddition = cb.createQuery(WatchsAddition.class);
        Root<WatchsAddition> rootWatchsAddition = criteriaWatchsAddition.from(WatchsAddition.class);
        criteriaWatchsAddition.select(rootWatchsAddition).where(cb.like(rootWatchsAddition.get("country"), "%apa%"));

        CriteriaQuery<Watchs> criteriaWatchs = cb.createQuery(Watchs.class);
        Root<Watchs> rootWatchs = criteriaWatchs.from(Watchs.class);
        Predicate[] predicates = new Predicate[2];
        predicates[0] = cb.like(rootWatchs.get("brand"), "%rie%");
        predicates[1] = cb.like(rootWatchs.get("mechanism"), "%hanic%");
        criteriaWatchs.select(rootWatchs).where(predicates);

        WatchsAddition watchsAddition1 = new WatchsAddition();
        watchsAddition1.setCountry("Japan");
        watchsAddition1.setCases("steel");
        session.save(watchsAddition1);

        WatchsAddition watchsAddition2 = new WatchsAddition();
        watchsAddition2.setCountry("Switzerland");
        watchsAddition2.setCases("gold");
        session.save(watchsAddition2);

        org.hibernate.Transaction tr = session.beginTransaction();
        session.delete(watchsAddition1);
//        session.delete(watchsAddition2);
        tr.commit();

        Watchs watch = new Watchs();
        watch.setBrand("Orient");
        watch.setMechanism("Mechanical");
        watch.setWatchsAddition(new WatchsAddition("Japan", "steel"));
        session.save(watch);

        watch = (Watchs) session.get(Watchs.class, watch.getId());
        session.save(watch);

        List<Watchs> resultsWatchs = session.createQuery(criteriaWatchs).getResultList();
        resultsWatchs.forEach((item) -> {
            System.out.println(item);
        });

        List<WatchsAddition> resultsWatchsAddition = session.createQuery(criteriaWatchsAddition).getResultList();
        resultsWatchsAddition.forEach((item) -> {
            System.out.println(item);
        });

        session.close();

        System.exit(0);
    }

}
