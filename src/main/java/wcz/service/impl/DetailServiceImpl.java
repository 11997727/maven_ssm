package wcz.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import wcz.dao.DetailDao;
import wcz.entity.Detail;
import wcz.service.DetailService;

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
 * @date 2019/12/4 星期三 16:12
 */
@Service
@Transactional
public class DetailServiceImpl implements DetailService {
    @Resource
    private DetailDao detailDao;

    @Override
    public Map<String, Object> selectDetail(Integer projectId) {
        Map<String, Object> statusMap=new HashMap<String, Object>();
        statusMap.put("status","failed");
        statusMap.put("projectId",projectId);
        List<Detail> details = detailDao.selectDetail(projectId);

        if(details!=null&&details.size()>0){
            statusMap.put("status","success");
            statusMap.put("data",details);

        }
        return statusMap;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public Map<String, Object> add(Detail detail) {
        Map<String, Object> statusMap=new HashMap<String, Object>();
        statusMap.put("status","failed");
        try {
            int add = detailDao.add(detail);
            if(add>0){
                statusMap.put("status","success");
            }
        }catch (Exception e){
            throw new RuntimeException();
        }
        return statusMap;
    }
}
