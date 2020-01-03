package wcz.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package cn.kgc.tangcco.kgbd2010.wcz.entity
 * @Description:
 * @date 2019/12/4 星期三 14:12
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Detail {
    /**
     * 主键
     */
    private int id;
    /**
     * 项目id
     */
    private int projectId;
    /**
     * 严重性
     */
    private int severity;
    /**
     * 标题
     */
    private String title;
    /**
     * 报告人
     */
    private String reportUser;
    /**
     * 报告时间
     */
    private Date createDte;
}
