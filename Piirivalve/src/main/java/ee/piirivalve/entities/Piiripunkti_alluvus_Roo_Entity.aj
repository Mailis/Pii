// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.piirivalve.entities;

import ee.piirivalve.entities.Piiripunkti_alluvus;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Piiripunkti_alluvus_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Piiripunkti_alluvus.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer Piiripunkti_alluvus.version;
    
    public Integer Piiripunkti_alluvus.getVersion() {
        return this.version;
    }
    
    public void Piiripunkti_alluvus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Piiripunkti_alluvus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Piiripunkti_alluvus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Piiripunkti_alluvus attached = Piiripunkti_alluvus.findPiiripunkti_alluvus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Piiripunkti_alluvus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Piiripunkti_alluvus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Piiripunkti_alluvus Piiripunkti_alluvus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Piiripunkti_alluvus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Piiripunkti_alluvus.entityManager() {
        EntityManager em = new Piiripunkti_alluvus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Piiripunkti_alluvus.countPiiripunkti_alluvuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Piiripunkti_alluvus o", Long.class).getSingleResult();
    }
    
    public static List<Piiripunkti_alluvus> Piiripunkti_alluvus.findAllPiiripunkti_alluvuses() {
        return entityManager().createQuery("SELECT o FROM Piiripunkti_alluvus o", Piiripunkti_alluvus.class).getResultList();
    }
    
    public static Piiripunkti_alluvus Piiripunkti_alluvus.findPiiripunkti_alluvus(Long id) {
        if (id == null) return null;
        return entityManager().find(Piiripunkti_alluvus.class, id);
    }
    
    public static List<Piiripunkti_alluvus> Piiripunkti_alluvus.findPiiripunkti_alluvusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Piiripunkti_alluvus o", Piiripunkti_alluvus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
