package app1.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class WelcomeController
{
    private final static Logger logger = LoggerFactory.getLogger(WelcomeController.class);


    /**********************************************************************
     * handleDefaultPage()
     *
     * The user browsed to the   http://www.myserver.com/webapp
     * So, forward the user to   http://www.myserver.com/webapp/forward
     ***********************************************************************/
    @RequestMapping("/")
    public ModelAndView handleDefaultPage( Model aModel )
    {
        // By default, forward users to the /welcome page
        return new ModelAndView("forward:/welcome");
    }



    /**********************************************************************
     * mainPage()
     *
     * The user browsed to the /welcome page
     *  1) Get a userinfo object setup
     *  2) Forward the user to the welcome.jsp page
     ***********************************************************************/
    @RequestMapping("/welcome")
    public ModelAndView mainPage( Model aModel )
    {
        logger.debug("mainPage() started");

        // Create a modelAndView object
        ModelAndView mav = new ModelAndView();

        // Show the welcome.jsp page
        mav.setViewName("welcome.jsp");

        logger.debug("mainPage() finished");
        return mav;
    }


    /**********************************************************************
     * showPage()
     ***********************************************************************/
    @RequestMapping("/show/{jspViewName}")
    public ModelAndView showPage(@PathVariable("jspViewName") String aJspViewName)
    {
        logger.debug("showPage() started.  aJspViewName={}", aJspViewName);

        // Create a modelAndView object
        ModelAndView mav = new ModelAndView();

        // Show the welcome.jsp page
        mav.setViewName(aJspViewName + ".jsp");

        logger.debug("showPage() finished");
        return mav;
    }


    /**********************************************************************
     * showAngularPage1()
     ***********************************************************************/
    @RequestMapping("/angularPage1")
    public ModelAndView showAngularPage1( Model aModel )
    {
        logger.debug("showAngularPage1() started");

        // Create a modelAndView object
        ModelAndView mav = new ModelAndView("angularPage1.jsp");

        logger.debug("showAngularPage1() finished");
        return mav;
    }

    /**********************************************************************
     * showAngularPage2()
     ***********************************************************************/
    @RequestMapping("/angularPage2")
    public ModelAndView showAngularPage2( Model aModel )
    {
        logger.debug("showAngularPage2() started");

        // Create a modelAndView object
        ModelAndView mav = new ModelAndView("angularPage2.jsp");

        logger.debug("showAngularPage2() finished");
        return mav;
    }


    /**********************************************************************
     * showAngularPage3()
     ***********************************************************************/
    @RequestMapping("/angularPage3")
    public ModelAndView showAngularPage3( Model aModel )
    {
        logger.debug("showAngularPage3() started");

        // Create a modelAndView object
        ModelAndView mav = new ModelAndView("angularPage3.jsp");

        logger.debug("showAngularPage3() finished");
        return mav;
    }
}
