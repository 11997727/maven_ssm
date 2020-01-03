package wcz.dao;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import wcz.entity.Detail;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: mvn
 * @Package wcz.dao
 * @Description:
 * @date 2019/12/5 星期四 11:38
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:ApplicationContext.xml")
public class DetailDaoTest {
    private Logger logger=Logger.getLogger(DetailDaoTest.class);
    @Resource
    private DetailDao detailDao;
    @Test
    public void selectDetail() {
        List<Detail> details = detailDao.selectDetail(null);
        for (Detail detail:details){
            logger.info(detail);
        }

    }

    @Test
    public void add() {
    }
}