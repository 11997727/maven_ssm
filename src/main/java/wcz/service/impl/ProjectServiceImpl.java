package wcz.service.impl;

import org.springframework.stereotype.Service;
import wcz.dao.ProjectDao;
import wcz.entity.Project;
import wcz.service.ProjectService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package wcz.service.impl
 * @Description:
 * @date 2019/12/4 星期三 17:21
 */
@Service
public class ProjectServiceImpl implements ProjectService {
    @Resource
    private ProjectDao projectDao;
    @Override
    public Map<String, Object> selectAllProject() {
        Map<String, Object> statusMap=new HashMap<String, Object>();
        statusMap.put("status","failed");
        List<Project> projects = projectDao.selectAllProject();
       if(projects!=null&&projects.size()>0){
           statusMap.put("status","success");
           statusMap.put("data",projects);
       }
        return statusMap;
    }
}
