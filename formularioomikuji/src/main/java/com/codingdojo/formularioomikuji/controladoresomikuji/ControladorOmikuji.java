package com.codingdojo.formularioomikuji.controladoresomikuji;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControladorOmikuji {
	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/omikuji/procesar", method=RequestMethod.POST)
	public String procesar(HttpSession session,
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="living") String living,
			@RequestParam(value="someone") String someone){
		
		session.setAttribute("number",number);
		session.setAttribute("city",city);
		session.setAttribute("person",person);
		session.setAttribute("hobby",hobby);
		session.setAttribute("living",living);
		session.setAttribute("someone",someone);
		
		return "redirect:/omikuji/send";	
	}
	
	@RequestMapping(value="/omikuji/send", method=RequestMethod.GET)
	public String mostrarDatos(HttpSession session,Model model) {
		Integer numero =(Integer) session.getAttribute("number");
		model.addAttribute("numero", numero);
		
		String ciudad =(String) session.getAttribute("city");
		model.addAttribute("ciudad", ciudad);
		
		String persona =(String) session.getAttribute("person");
		model.addAttribute("persona", persona);
		
		String favorito =(String) session.getAttribute("hobby");
		model.addAttribute("favorito", favorito);
		
		String vivir =(String) session.getAttribute("living");
		model.addAttribute("vivir", vivir);
		
		String comentario =(String) session.getAttribute("someone");
		model.addAttribute("comentario", comentario);
		
		return "mostrar.jsp";
	}

}
