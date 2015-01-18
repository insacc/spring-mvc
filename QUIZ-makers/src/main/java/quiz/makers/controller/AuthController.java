package quiz.makers.controller;


	import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

	@Controller
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	public class AuthController {

		@RequestMapping
		public String getHomePage() {
			return "home";
		}
		
		@RequestMapping(value="/user" , method = RequestMethod.GET)
		public String getUserPage() {
			return "user";
		}
		
		@RequestMapping(value="/admin" , method = RequestMethod.GET)
		public String getAdminPage() {
			return "admin";
		}
	}


