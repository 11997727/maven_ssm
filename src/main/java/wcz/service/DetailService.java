package wcz.service;

import wcz.entity.Detail;

import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package cn.kgc.tangcco.kgbd2010.wcz.service.impl
 * @Description:
 * @date 2019/12/4 星期三 16:10
 */
public interface DetailService {
    /**
     * 查询
     * @param projectId
     * @return
     */
    Map<String,Object>selectDetail(Integer projectId);

    /**
     * 添加
     * @param detail
     * @return
     */
    Map<String,Object>add(Detail detail);
}
