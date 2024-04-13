package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import entity.Admin;
import entity.Electricity;
import entity.Month;

import entity.User;
import entity.recycle;
import entity.water;
import service.Mbipdao_usingJdbcTemplate;








@Controller
public class DController {

	
	final private Mbipdao_usingJdbcTemplate mbipdao;
	
	@Autowired
	public DController(Mbipdao_usingJdbcTemplate mbipdao) {
		this.mbipdao = mbipdao;
	}
	@GetMapping("/homePage1")
	public String homePage1()
	{
		return "homePage1";
	}
	  @GetMapping("/homePage2")
	    public String homePage2(Model model, HttpServletRequest request) {
	        User user = getCurrentUserFromSession(request);
	        model.addAttribute("user", user);
	        String userFullName=user.getFullName();
	        int waterBill=mbipdao.getTotalWaterForUser(userFullName);
	        int elecBill=mbipdao.getTotalElectricityForUser(userFullName);
	        int recycleBill=mbipdao.getTotalRecycleForUser(userFullName);
	        model.addAttribute("waterBill",waterBill);
	        model.addAttribute("elecBill",elecBill);
	        model.addAttribute("recycleBill",recycleBill);
	        return "homePage2";
	    }
	  @GetMapping("/adminHomePage")
	    public String adminHomePage(Model model, HttpServletRequest request) {
	        Admin admin = getCurrentAdminFromSession(request);
	        model.addAttribute("admin", admin);
	        return "homePage2";
	    }
    @GetMapping("/addWaterData")
    public String addWaterData(Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);
        model.addAttribute("user", user);
        return "addWaterData";
    }
  
    @PostMapping("/addWater")
    public String addWater(@RequestParam("amount") double amount, Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);
        int monthNumber = Integer.parseInt(request.getParameter("month"));
        Month month = new Month();
       
        month.setMonthNumber(monthNumber);
        month.addWater(amount);
        user.setMonthList(month);
        mbipdao.addWater(user, amount, month);
        model.addAttribute("user", user);
        model.addAttribute("month",month);
        model.addAttribute("w", amount);
        return "addWater";
    }
    @GetMapping("/addElectricityData")
    public String addElectricityData(Model model, HttpServletRequest request) {
    	 User user = getCurrentUserFromSession(request);
         model.addAttribute("user", user);
        return "addElectricityData";
    }
    @PostMapping("/addElectricity")
    public String addElectricity(@RequestParam("amount") double amount, Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);
        int monthNumber = Integer.parseInt(request.getParameter("month"));
        Month month = new Month();
      
        month.setMonthNumber(monthNumber);
        month.addElectricity(amount);
        user.setMonthList(month);
        mbipdao.addElectricity(user, amount, month);
        model.addAttribute("user", user);
        model.addAttribute("month",month);
        model.addAttribute("w", amount);
        return "addElectricity";
    }
    @GetMapping("/addRecycleData")
    public String addRecycleData(Model model, HttpServletRequest request) {
    	User user = getCurrentUserFromSession(request);
        model.addAttribute("user",user);
    	return "addRecycleData";
    }
    @PostMapping("/addRecycle")
    public String addRecycle(@RequestParam("amount") double amount, Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);
        int monthNumber = Integer.parseInt(request.getParameter("month"));
        Month month = new Month();
        month.setMonthNumber(monthNumber);
        month.addRecycle(amount);
        user.setMonthList(month);
        mbipdao.addRecycle(user, amount, month);
        model.addAttribute("user", user);
        model.addAttribute("month",month);
        model.addAttribute("w", amount);
        return "addRecycle";
    }
    
    @GetMapping("/changePassword")
    public String changePassword(Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);
        model.addAttribute("user", user);
        return "changePassword";
    }

    @PostMapping("/changePasswordResult")
    public String changePasswordResult(@RequestParam("newPassword") String newPassword,
                                 @RequestParam("confirmNewPassword") String confirmNewPassword,
                                 Model model, HttpServletRequest request) {
        User user = getCurrentUserFromSession(request);

        if (newPassword.equals(confirmNewPassword)) {
            mbipdao.changePassword(user, newPassword);
            model.addAttribute("user", user);
            return"homePage1";
        } else {
            model.addAttribute("passwordChangeError", "New passwords do not match. Please try again.");
            model.addAttribute("user", user);
            return"changePassword";
        }

       
        
    }

    @GetMapping("/Registration")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "Registration";
    }
    @PostMapping("/submit_registration")
    public String submitRegistration(@ModelAttribute("user")User user,Model model, HttpServletRequest request) {
       
     
        if (mbipdao.registerUser(user)) {
            model.addAttribute("user", user);
            return "Login";
        } else {
            model.addAttribute("registrationError", "Full name already taken. Please choose another.");
            return "registrationForm";
        }
    }
    @GetMapping("/Login")
    public String Login() {
        return "Login";
    }
    @PostMapping("/loginServlet")
    public String login(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {
        if (mbipdao.loginUser(user.getFullName(), user.getPassword())) {
            HttpSession session = request.getSession();
           
          
            
            session.setAttribute("user", user);
            model.addAttribute("user", user);
            String userFullName=user.getFullName();
	        int waterBill=mbipdao.getTotalWaterForUser(userFullName);
	        int elecBill=mbipdao.getTotalElectricityForUser(userFullName);
	        int recycleBill=mbipdao.getTotalRecycleForUser(userFullName);
	        model.addAttribute("waterBill",waterBill);
	        model.addAttribute("elecBill",elecBill);
	        model.addAttribute("recycleBill",recycleBill);
            return "homePage2";
        } else {
            model.addAttribute("loginError", "Invalid full name or password. Please try again.");
            return "Login";
        }
    }
    @GetMapping("/viewUser")
    public String viewUser(Model model) {
    	List<User> userList=mbipdao.getAllUsers();
        model.addAttribute("userList",userList);
        return "viewUser";
    }
    
    @GetMapping("/AdminLogin")
    public String AdminLogin() {
        return "loginAdmin";
    }
    @PostMapping("/AdminloginServlet")
    public String adminlogin(@ModelAttribute("admin") Admin admin, Model model, HttpServletRequest request) {
        if (mbipdao.loginAdmin(admin.getFullName(), admin.getPassword())) {
          
        	 HttpSession session = request.getSession();
             
             
             
             session.setAttribute("admin", admin);
             int totalUser=mbipdao.getTotalUser();
             int totalWater=mbipdao.getTotalWater();
             int totalElec=mbipdao.getTotalElectricity();
             int totalRec=mbipdao.getTotalRecycle();
             
             model.addAttribute("totalUser",totalUser);
             model.addAttribute("totalWater", totalWater);
             model.addAttribute("totalElec",totalElec);
             model.addAttribute("totalRec",totalRec);
             
            
            
            model.addAttribute("admin", admin);
            return "adminHomePage";
        } else {
            model.addAttribute("loginError", "Invalid full name or password. Please try again.");
            return "loginAdmin";
        }
    }
    @GetMapping("/deleteUser")
    public String deleteUser(Model model) {
    	List<User> userList=mbipdao.getAllUsers();
        model.addAttribute("userList",userList);
        return "deleteUser";
    }
    @GetMapping("/viewReport")
    public String viewReport(Model model) {
    	List<water>waterList=mbipdao.getWater();
    	List<Electricity>electricityList=mbipdao.getElectricity();
    	List<recycle>recycleList=mbipdao.getRecycle();
    	model.addAttribute("waterList",waterList);
    	model.addAttribute("electricityList",electricityList);
    	model.addAttribute("recycleList",recycleList);
        return "viewReport";
    }
    @PostMapping("/deleteUser")
    public String deleteUser(@RequestParam("userName") String userName, Model model, HttpServletRequest request) {
        
        List<User> userList=mbipdao.getAllUsers();
        model.addAttribute("userList",userList);
        Admin admin = getCurrentAdminFromSession(request);
        model.addAttribute("admin", admin);

        if (mbipdao.deleteUser(userName)) {
            model.addAttribute("deleteSuccessMessage", "User deleted successfully.");
            return "adminHomePage";
        } else {
            model.addAttribute("deleteErrorMessage", "User not found or unable to delete.");
            return "deleteUser";
        }

        
        
    }
    @GetMapping("/viewReportUser")
    public String viewReportUser(Model model)
    {List<User> userList=mbipdao.getAllUsers();
    model.addAttribute("userList",userList);
    	return "viewReportUser";
    }
    @PostMapping("/viewReportUserData")
    public String viewReportUserData(Model model,HttpServletRequest request)
    {   String userFullName=request.getParameter("userFullName");
        List<water>waterList=mbipdao.getUserWater(userFullName);
        List<Electricity>electricityList=mbipdao.getUserElectricity(userFullName);
        List<recycle>recycleList=mbipdao.getUserRecycle(userFullName);
        model.addAttribute("waterList",waterList);
        model.addAttribute("electricityList",electricityList);
        model.addAttribute("recycleList",recycleList);
        
    	return "viewReportUserData";
    }
    private User getCurrentUserFromSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (User) session.getAttribute("user");
    }
    private Admin getCurrentAdminFromSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (Admin) session.getAttribute("admin");
    }
}
