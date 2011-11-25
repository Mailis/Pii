// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.piirivalve.entities;

import ee.piirivalve.entities.Riigi_admin_yksus;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Riigi_admin_yksus_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Riigi_admin_yksus.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer Riigi_admin_yksus.version;
    
    public Integer Riigi_admin_yksus.getVersion() {
        return this.version;
    }
    
    public void Riigi_admin_yksus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Riigi_admin_yksus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Riigi_admin_yksus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Riigi_admin_yksus attached = Riigi_admin_yksus.findRiigi_admin_yksus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Riigi_admin_yksus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Riigi_admin_yksus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Riigi_admin_yksus Riigi_admin_yksus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Riigi_admin_yksus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Riigi_admin_yksus.entityManager() {
        EntityManager em = new Riigi_admin_yksus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Riigi_admin_yksus.countRiigi_admin_yksuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Riigi_admin_yksus o", Long.class).getSingleResult();
    }
    
    public static List<Riigi_admin_yksus> Riigi_admin_yksus.findAllRiigi_admin_yksuses() {
        return entityManager().createQuery("SELECT o FROM Riigi_admin_yksus o", Riigi_admin_yksus.class).getResultList();
    }
    
    public static Riigi_admin_yksus Riigi_admin_yksus.findRiigi_admin_yksus(Long id) {
        if (id == null) return null;
        return entityManager().find(Riigi_admin_yksus.class, id);
    }
    
    public static List<Riigi_admin_yksus> Riigi_admin_yksus.findRiigi_admin_yksusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Riigi_admin_yksus o", Riigi_admin_yksus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
