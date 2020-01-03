package wcz.dao;

import wcz.entity.Detail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package wcz.dao
 * @Description: 接口
 * @date 2019/12/4 星期三 14:20
 */
public interface DetailDao {
    /**
     * 查询
     * @param projectId
     * @return
     */
    List<Detail>selectDetail(@Param("projectId") Integer projectId);

    /**
     * 添加
     * @param detail
     * @return
     */
    int add(@Param("detail") Detail detail);
}
