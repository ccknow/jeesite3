package com.thinkgem.jeesite.modules.cms.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Store;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.thinkgem.jeesite.common.persistence.BaseEntity;

/**
 * 文章Entity
 * @author ThinkGem
 */
@Entity
@Table(name = "cms_article_data")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class ArticleData  extends BaseEntity<ArticleData> {

	private static final long serialVersionUID = 1L;
	private String id;		// 编号
	private String content;	// 内容
	private String copyfrom;// 来源
	private String relation;// 相关文章
	private String allowComment;// 是否允许评论
	private Article article;
	
	public ArticleData() {
		super();
		this.allowComment = YES;
	}
	
	public ArticleData(String id){
		this();
		this.id = id;
	}

	@Id
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	@NotBlank
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Length(min=0, max=255)
	public String getCopyfrom() {
		return copyfrom;
	}

	public void setCopyfrom(String copyfrom) {
		this.copyfrom = copyfrom;
	}

	@Length(min=0, max=255)
	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	@Length(min=1, max=1)
	public String getAllowComment() {
		return allowComment;
	}

	public void setAllowComment(String allowComment) {
		this.allowComment = allowComment;
	}
	
	//optional = false 设置articel属性不可以为null
	//cascade的值只能从CascadeType.PERSIST（级联新建）、CascadeType.REMOVE（级联删除）
	//CascadeType.REFRESH（级联刷新）、CascadeType.MERGE（级联更新）中选择一个或多个。
	//还有一个选择是使用CascadeType.ALL，表示选择全部四项。
	@OneToOne(cascade={CascadeType.PERSIST,CascadeType.MERGE},optional=false)  
	@PrimaryKeyJoinColumn
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
	
}
