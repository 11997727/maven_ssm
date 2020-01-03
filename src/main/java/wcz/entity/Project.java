package wcz.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: ssm_bug1204
 * @Package cn.kgc.tangcco.kgbd2010.wcz.entity
 * @Description:
 * @date 2019/12/4 星期三 14:14
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
    /**
     * 主键
     */
    private Integer id;
    /**
     * 项目名
     */
    private String name;
}
