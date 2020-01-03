package wcz.service;

import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package cn.kgc.tangcco.kgbd2010.wcz.service
 * @Description:
 * @date 2019/12/4 星期三 17:19
 */
public interface ProjectService {
    /**
     * 查询所有项目
     * @return
     */
    Map<String,Object>selectAllProject();


}
