package ad.model;

import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "AdRepository")
public class AdRepositoryBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String type;
	private String title;
	private Blob image;
	private String url;
	private int sequence;
	private String position;
	private String status;
	private java.sql.Timestamp uploadTime;
	private int viewCount;
	private int clickCount;

	@Override
	public String toString() {
		return "AdRepositoryBean [id=" + id + ", type=" + type + ", title=" + title + ", image=" + image + ", url="
				+ url + ", sequence=" + sequence + ", position=" + position + ", status=" + status + ", uploadTime="
				+ uploadTime + ", viewCount=" + viewCount + ", clickCount=" + clickCount + "]";
	}

	public AdRepositoryBean() {
		super();
	}

	public AdRepositoryBean(int id, String type, String title, String url, int sequence, String position, String status,
			Timestamp uploadTime, int viewCount, int clickCount) {
		super();
		this.id = id;
		this.type = type;
		this.title = title;
		this.url = url;
		this.sequence = sequence;
		this.position = position;
		this.status = status;
		this.uploadTime = uploadTime;
		this.viewCount = viewCount;
		this.clickCount = clickCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public java.sql.Timestamp getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(java.sql.Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getClickCount() {
		return clickCount;
	}

	public void setClickCount(int clickCount) {
		this.clickCount = clickCount;
	}

}
