package common;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Created by zhengjun on 5/9/14.
 */
public class Main {
    public static void main(String[] args) {

        Configuration conf = new Configuration().configure();
        SessionFactory sf = conf.buildSessionFactory();
        Session sess = sf.openSession();
        Transaction tx = sess.beginTransaction();
//        common.News news = new common.News();
//        news.setContents("yiyoyoyo");
//
//        news.setName("hellosdf");
//        sess.save(news);
//        news.setId(342);
        Medicine m = new Medicine();
        m.setName("dahuang");
        m.setInPrice(new Float(2.0));
        Person p = new Person();
        p.setName("张三");
        Doctor doc = new Doctor();
        doc.setName("王主任");
        prescription script = new prescription();
        script.setPerson(p);
        script.setDoctor(doc);
        CostomTag tag = new CostomTag();
        tag.setName("感冒");
        script.getMedicineIntegerHashMap().put(m, 10);
        script.getCostomTagArrayList().add(tag);
        sess.save(m);
        sess.save(p);
        sess.save(tag);
        sess.save(script);
        sess.save(doc);
        Medicine m3= new Medicine();
        m3.setName("大黄");
        sess.save(m3);
        tx.commit();
        sess.close();
        sf.close();
    }
}
