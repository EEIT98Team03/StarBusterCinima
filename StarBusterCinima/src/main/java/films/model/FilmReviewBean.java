package films.model;

public class FilmReviewBean {

	private String ReviewID ;
	private String ReviewTitle ;
	private String ReviewAuthor ;
	private String ReviewSource ;
	private String ReviewContain ;
	
	@Override
	public String toString() {
		return "FilmReviewBean [ReviewID=" + ReviewID + ", ReviewTitle=" + ReviewTitle + ", ReviewAuthor="
				+ ReviewAuthor + ", ReviewSource=" + ReviewSource + ", ReviewContain=" + ReviewContain + "]";
	}
	public String getReviewID() {
		return ReviewID;
	}
	public void setReviewID(String reviewID) {
		ReviewID = reviewID;
	}
	public String getReviewTitle() {
		return ReviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		ReviewTitle = reviewTitle;
	}
	public String getReviewAuthor() {
		return ReviewAuthor;
	}
	public void setReviewAuthor(String reviewAuthor) {
		ReviewAuthor = reviewAuthor;
	}
	public String getReviewSource() {
		return ReviewSource;
	}
	public void setReviewSource(String reviewSource) {
		ReviewSource = reviewSource;
	}
	public String getReviewContain() {
		return ReviewContain;
	}
	public void setReviewContain(String reviewContain) {
		ReviewContain = reviewContain;
	}
	
}
