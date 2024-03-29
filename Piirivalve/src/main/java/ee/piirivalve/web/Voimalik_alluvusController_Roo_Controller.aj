// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.piirivalve.web;

import ee.piirivalve.entities.Riigi_admin_yksuse_liik;
import ee.piirivalve.entities.Voimalik_alluvus;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect Voimalik_alluvusController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String Voimalik_alluvusController.create(@Valid Voimalik_alluvus voimalik_alluvus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("voimalik_alluvus", voimalik_alluvus);
            addDateTimeFormatPatterns(uiModel);
            return "voimalik_alluvuses/create";
        }
        uiModel.asMap().clear();
        voimalik_alluvus.persist();
        return "redirect:/voimalik_alluvuses/" + encodeUrlPathSegment(voimalik_alluvus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String Voimalik_alluvusController.createForm(Model uiModel) {
        uiModel.addAttribute("voimalik_alluvus", new Voimalik_alluvus());
        addDateTimeFormatPatterns(uiModel);
        return "voimalik_alluvuses/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String Voimalik_alluvusController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("voimalik_alluvus", Voimalik_alluvus.findVoimalik_alluvus(id));
        uiModel.addAttribute("itemId", id);
        return "voimalik_alluvuses/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String Voimalik_alluvusController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("voimalik_alluvuses", Voimalik_alluvus.findVoimalik_alluvusEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Voimalik_alluvus.countVoimalik_alluvuses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("voimalik_alluvuses", Voimalik_alluvus.findAllVoimalik_alluvuses());
        }
        addDateTimeFormatPatterns(uiModel);
        return "voimalik_alluvuses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String Voimalik_alluvusController.update(@Valid Voimalik_alluvus voimalik_alluvus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("voimalik_alluvus", voimalik_alluvus);
            addDateTimeFormatPatterns(uiModel);
            return "voimalik_alluvuses/update";
        }
        uiModel.asMap().clear();
        voimalik_alluvus.merge();
        return "redirect:/voimalik_alluvuses/" + encodeUrlPathSegment(voimalik_alluvus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String Voimalik_alluvusController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("voimalik_alluvus", Voimalik_alluvus.findVoimalik_alluvus(id));
        addDateTimeFormatPatterns(uiModel);
        return "voimalik_alluvuses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String Voimalik_alluvusController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Voimalik_alluvus.findVoimalik_alluvus(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/voimalik_alluvuses";
    }
    
    @ModelAttribute("riigi_admin_yksuse_liiks")
    public Collection<Riigi_admin_yksuse_liik> Voimalik_alluvusController.populateRiigi_admin_yksuse_liiks() {
        return Riigi_admin_yksuse_liik.findAllRiigi_admin_yksuse_liiks();
    }
    
    @ModelAttribute("voimalik_alluvuses")
    public Collection<Voimalik_alluvus> Voimalik_alluvusController.populateVoimalik_alluvuses() {
        return Voimalik_alluvus.findAllVoimalik_alluvuses();
    }
    
    void Voimalik_alluvusController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("voimalik_alluvus_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("voimalik_alluvus_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("voimalik_alluvus_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String Voimalik_alluvusController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
