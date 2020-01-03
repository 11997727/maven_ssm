package wcz.dao;

import wcz.entity.Project;

import java.util.List;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package wcz.dao
 * @Description: 接口
 * @date 2019/12/4 星期三 14:20
 */
public interface ProjectDao {
    /**
     * 查询所有项目
     * @return
     */
    List<Project>selectAllProject();
}
