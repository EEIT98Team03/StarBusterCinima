package smart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
//select answer from QuestiontRepository where type='電影' and keywords like '%位置%'
@Entity
@Table(name="QuestionRepository")
public class QuestionRepositoryBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int questionId;
	private String type;
	private String keywords;
	private String answer;

	@Override
	public String toString() {
		return "QuestionRepositoryBean [questionId=" + questionId + ", type=" + type + ", keywords=" + keywords
				+ ", answer=" + answer + "]";
	}

	public QuestionRepositoryBean() {
		super();
	}

	public QuestionRepositoryBean(String type, String keywords, String answer) {
		super();
		this.type = type;
		this.keywords = keywords;
		this.answer = answer;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
