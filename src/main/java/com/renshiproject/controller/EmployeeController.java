package com.renshiproject.controller;


import com.renshiproject.Service.IAdminService;
import com.renshiproject.Service.IAnnouncementService;
import com.renshiproject.Service.IEmployeeService;
import com.renshiproject.Service.ServiceImpl.adminService;
import com.renshiproject.bean.attendance;
import com.renshiproject.bean.wage;
import com.renshiproject.dataobject.AnnouncementDO;
import com.renshiproject.dataobject.EmployeeDO;
import com.renshiproject.dataobject.WageDO;
import com.renshiproject.viewObject.EmployeeVO;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private IAnnouncementService announcementService;

    @Autowired
    private IEmployeeService employeeService;

    @Autowired
    private IAdminService adminService;

    @RequestMapping("/getInfo.do")
    public ModelAndView getInfo(HttpServletRequest request, int id){
        EmployeeVO employeeVO  = employeeService.getEmployeeInfoById(id);

        HttpSession session = request.getSession();
        session.setAttribute("currentEmployee1",employeeVO);
        ModelAndView mv = new ModelAndView();
        mv.addObject("employeeVO",employeeVO);
        mv.setViewName("employee/personalInfo");
        return mv;
    }

    @RequestMapping("/getWageInfo.do")
    public ModelAndView getWageInfo(int id){
        List<WageDO> wageDOS = employeeService.getWageInfo(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("wageDOS",wageDOS);
        mv.setViewName("employee/salary");
        return mv;
    }

    @RequestMapping("/toUpdateEmployeeInfo.do")
    public String toUpdateEmployeeInfo(Model model, @RequestParam("id")int id){
        EmployeeDO employeeDO = employeeService.selectById(id);
        model.addAttribute("employeeDO",employeeDO);
        return "employee/correct_info";
    }

    @RequestMapping("/update.do")
    public String update(Model model,EmployeeDO employeeDO){
        employeeService.updateEmployee(employeeDO);
        model.addAttribute("msg","修改成功");
        return "employee/personalInfo";
    }

    @RequestMapping("/exportWageInfoExcel.do")
    public void exportexcel(HttpServletResponse response,@RequestParam("id")int id) {
        OutputStream oStream = null;

        try {
//			创建工作簿
            HSSFWorkbook wb = new HSSFWorkbook();
//			创建sheet
            HSSFSheet sheet = wb.createSheet("列表");
//			创建表头
            HSSFRow row = sheet.createRow(0);
            //创建单元格
            HSSFCell cell = row.createCell(0);
            cell.setCellValue("员工id");
            HSSFCell cell1 = row.createCell(1);
            cell1.setCellValue("员工姓名");
            HSSFCell cell2 = row.createCell(2);
            cell2.setCellValue("部门");
            HSSFCell cell3 = row.createCell(3);
            cell3.setCellValue("职位");
            HSSFCell cell4=row.createCell(4);
            cell4.setCellValue("基础工资");
            HSSFCell cell5=row.createCell(5);
            cell5.setCellValue("奖励");
            HSSFCell cell6=row.createCell(6);
            cell6.setCellValue("惩罚");
            HSSFCell cell7=row.createCell(7);
            cell7.setCellValue("实际工资");
            HSSFCell cell8=row.createCell(8);
            cell8.setCellValue("迟到");
            HSSFCell cell9=row.createCell(9);
            cell9.setCellValue("缺席");
            HSSFCell cell10=row.createCell(10);
            cell10.setCellValue("时间");

            List<wage> list=adminService.findEmployeeWage(id,1,99999);


            for (int i = 0; i < list.size(); i++) {
                wage us = list.get(i);
                attendance attendance=adminService.searchLateAndAbsence(us.getEmployee_id(),us.getTime());
                int late=0;
                int absence=0;
                if(null!=attendance)
                {
                    late=attendance.getLate();
                    absence=attendance.getAbsence();
                }

                //创建表头
                HSSFRow lrow = sheet.createRow(i + 1);
                //创建单元格
                HSSFCell lcell = lrow.createCell(0);
                lcell.setCellValue(us.getEmployee_id());
                HSSFCell lcell1 = lrow.createCell(1);
                lcell1.setCellValue(us.getEmployee_name());
                HSSFCell lcell2 = lrow.createCell(2);
                lcell2.setCellValue(us.getDept_name());
                HSSFCell lcell3 = lrow.createCell(3);
                lcell3.setCellValue(us.getPosition());
                HSSFCell lcell4 = lrow.createCell(4);
                lcell4.setCellValue(us.getBasic_wage());
                HSSFCell lcell5 = lrow.createCell(5);
                lcell5.setCellValue(us.getAward());
                HSSFCell lcell6 = lrow.createCell(6);
                lcell6.setCellValue(us.getPunish_money());
                HSSFCell lcell7 = lrow.createCell(7);
                lcell7.setCellValue(us.getSalary());
                HSSFCell lcell8 = lrow.createCell(8);
                lcell8.setCellValue(late);
                HSSFCell lcell9 = lrow.createCell(9);
                lcell9.setCellValue(absence);
                HSSFCell lcell10 = lrow.createCell(10);
                lcell10.setCellValue(us.getTime());
            }
            //根据response获取输出流
            response.setContentType("application/force-download"); // 设置下载类型
            response.setHeader("Content-Disposition", "attachment;filename=salarys.xls"); // 设置文件的名称
            oStream = response.getOutputStream(); // 输出流
            //把工作薄写入到输出流
            wb.write(oStream);

        } catch (Exception e) {
            // TODO: handle exception
            try {
                oStream.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
    }

    @RequestMapping("/toHomePage.do")
    public String toHomePage(Model model){
        List<AnnouncementDO> announcementDOS = announcementService.allAnnouncement();
        model.addAttribute("announcementDOS",announcementDOS);

        return "employee/employee_homepage";
    }



}
