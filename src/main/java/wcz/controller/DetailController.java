package wcz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wcz.entity.Detail;
import wcz.service.DetailService;
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
 * @date 2019/12/4 星期三 16:30
 */
@Controller
public class DetailController {
    @Resource
    private DetailService detailService;
    @Resource
    private ProjectService projectService;

    @RequestMapping("/selectDetail")
    public String selectDetail(@RequestParam(value = "projectId", required = false, defaultValue = "") Integer projectId, HttpServletRequest request) {
        Map<String, Object> stringObjectMap = detailService.selectDetail(projectId);
        Map<String, Object> selectAllProject = projectService.selectAllProject();
        request.setAttribute("requestProjectList", selectAllProject);
        request.setAttribute("requestMap", stringObjectMap);
        return "index";
    }

    @RequestMapping("/add")
    public String add(Detail detail, HttpServletRequest request) {
        System.out.println(detail);
        try {
            Map<String, Object> add = detailService.add(detail);
            request.setAttribute("status",add.get("status").toString());
        }catch ( RuntimeException e){
            request.setAttribute("status","error");
            return "add";
        }
        return "add";
    }
}
