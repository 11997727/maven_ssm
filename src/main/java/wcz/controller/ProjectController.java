package wcz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import wcz.service.ProjectService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package cn.kgc.tangcco.kgbd2010.wcz.controller
 * @Description:
 * @date 2019/12/4 星期三 17:27
 */
@Controller
public class ProjectController {
    @Resource
    private ProjectService projectService;

    @RequestMapping("/selectAllProject")
    public String selectProject(HttpServletRequest request ){
        Map<String, Object> stringObjectMap = projectService.selectAllProject();
        request.setAttribute("requestProjectList",stringObjectMap);
       return "add";
    }
}
