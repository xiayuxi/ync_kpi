package com.ync365.oa.web.performanceevaluation;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ync365.oa.entity.Department;
import com.ync365.oa.entity.PerformanceEvaluation;
import com.ync365.oa.query.PerformanceEvaluationQuery;
import com.ync365.oa.service.department.DepartmentService;
import com.ync365.oa.service.performanceevaluation.PerformanceEvaluationService;

@Controller
@RequestMapping(value = "/admin/performanceEvaluation")
@RequiresRoles("hr")
public class AdminPerformanceEvaluationController {
    @Autowired
    private PerformanceEvaluationService performanceEvaluationService;
    @Autowired
    private DepartmentService departmentService;

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String index(Model model) {
        List<Department> list = departmentService.getAll();
        model.addAttribute("department", list);
        return "performanceevaluation/adminPerformanceEvaluationList";
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public Page<PerformanceEvaluation> list(PerformanceEvaluationQuery q, Model model) {
        Page<PerformanceEvaluation> page = performanceEvaluationService.find(q);
        model.addAttribute("page", page);
        return page;
    }

    @RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
    public String detail(@PathVariable("id") Long id, Model model) {
        PerformanceEvaluation p = performanceEvaluationService.findOne(id);
        model.addAttribute("p", p);
        return "performanceevaluation/adminPerformanceEvaluationForm";
    }

    @RequestMapping(value = "export", method = RequestMethod.POST)
    @ResponseBody
    public String export(PerformanceEvaluationQuery q, HttpServletRequest request, HttpServletResponse response) {
        String pathPre = request.getServletContext().getRealPath("/exportData");
        String filePath = performanceEvaluationService.export(q, pathPre);
        return Paths.get(filePath).getFileName().toString();
    }

    @RequestMapping(value = "download")
    public String download(@RequestParam("fileName") String fileName, HttpServletRequest request,
            HttpServletResponse response) {
        String pathPre = request.getServletContext().getRealPath("/exportData");
        String filePath = Paths.get(pathPre, fileName).toString();
        response.reset();
        response.setContentType("application/vnd.ms-excel;charset=utf-8");
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            response.setHeader("Content-Disposition",
                    "attachment;filename=" + new String((fileName).getBytes(), "iso-8859-1"));
            ServletOutputStream out = response.getOutputStream();
            InputStream is = new FileInputStream(filePath);
            bis = new BufferedInputStream(is);
            bos = new BufferedOutputStream(out);
            byte[] buff = new byte[2048];
            int bytesRead;
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bis != null)
                    bis.close();
                if (bos != null)
                    bos.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return null;
    }
}
