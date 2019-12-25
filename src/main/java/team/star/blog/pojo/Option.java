package team.star.blog.pojo;

import lombok.Data;
import org.springframework.data.relational.core.mapping.Table;

/**
 * @author mystic
 * @date 2019-12-15 19:44
 */
@Data
@Table("t_option")
public class Option {
    private String name;
    private int userId;
    private String value;
}
