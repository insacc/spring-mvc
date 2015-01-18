package quiz.makers.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestDummyController {
	class TestModel {
		String dateString;

		public TestModel() {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
			dateString = dateFormat
					.format(new Date(System.currentTimeMillis()));
		}

		public String getDateString() {
			return dateString;
		}
	}

	@RequestMapping(value = "/TestDummy", method = RequestMethod.GET)
	public ModelAndView action() {
		ModelAndView result = new ModelAndView("test-dummy");
		result.addObject("dateString", (new TestModel()).getDateString());
		return result;
	}
}
