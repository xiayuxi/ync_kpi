package com.ync365.oa.web.efficiency;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ync365.oa.entity.Efficiency;
import com.ync365.oa.entity.Project;
import com.ync365.oa.query.EfficiencyQuery;
import com.ync365.oa.service.efficiency.EfficiencyService;


@Controller
@RequestMapping(value = "/admin/efficiency")
public class EfficiencyAdminController {

    @Autowired
    private EfficiencyService efficiencyService;
    
    @RequestMapping(value = "/list")
    public String list(Model model) {
        return "efficiencyAdmin/list";
    }
    
    @RequestMapping(value = "/listAjax")
    @ResponseBody
    public Page<Efficiency> listAjax(EfficiencyQuery record,Model model) {
        Page<Efficiency> page = efficiencyService.findEfficiencyAll(record);
        return page;
    }
    
    
    @RequestMapping(value = "/cheack")
    public String cheack(@RequestParam(value = "id") Long id,Model model) {
        Efficiency efficiency = efficiencyService.findEfficiencyById(id);
        model.addAttribute("efficiency", efficiency);
        return "efficiencyAdmin/cheackPage";
    }
    
    
    
    

    /**时间自动格式化
    * @author xieang
    * 2015年9月15日
    * @param bin
    */
  @InitBinder
   public void InitBinder(ServletRequestDataBinder bin) {
       bin.registerCustomEditor(Date.class, new CustomDateEditor( new SimpleDateFormat("yyyy-MM-dd"), true));
   }
}
