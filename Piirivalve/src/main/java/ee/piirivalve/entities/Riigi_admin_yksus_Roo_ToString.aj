// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.piirivalve.entities;

import java.lang.String;

privileged aspect Riigi_admin_yksus_Roo_ToString {
    
    public String Riigi_admin_yksus.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Admin_alluvused_1: ").append(getAdmin_alluvused_1() == null ? "null" : getAdmin_alluvused_1().size()).append(", ");
        sb.append("Admin_alluvused_2: ").append(getAdmin_alluvused_2() == null ? "null" : getAdmin_alluvused_2().size()).append(", ");
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kood: ").append(getKood()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("Nimetus: ").append(getNimetus()).append(", ");
        sb.append("Riigi_admin_yksuse_liik: ").append(getRiigi_admin_yksuse_liik()).append(", ");
        sb.append("Ruumiyksused: ").append(getRuumiyksused() == null ? "null" : getRuumiyksused().size()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Vaeosad: ").append(getVaeosad() == null ? "null" : getVaeosad().size()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}