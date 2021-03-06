package team.star.blog.pojo;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Table;

import java.time.Instant;

/**
 * @author mystic
 * @date 2019-12-15 19:44
 */
@Data
@Builder(toBuilder = true)
@JsonDeserialize(builder = Content.ContentBuilder.class)
@Table("t_content")
public class Content {
    @Id
    private int id;
    /**
     * content title
     */
    private String title;
    /**
     * content slug
     */
    private String slug;
    @CreatedDate
    private Instant created;
    @LastModifiedDate
    private Instant modified;
    private String text;
    private int orderNum;
    private int authorId;
    private String template;
    private String type;
    private String status;
    private String password;
    private int commentsNum;
    private boolean isAllowedComment;
    private boolean isAllowedPing;
    private boolean isAllowedFeed;
}
