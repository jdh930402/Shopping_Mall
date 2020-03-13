package pack.model;

public class NoticeDto {
	private String notice_title, notice_content, notice_writer, notice_regdate;
	private int notice_no, notice_readcnt;

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNotice_regdate() {
		return notice_regdate;
	}

	public void setNotice_regdate(String notice_regdate) {
		this.notice_regdate = notice_regdate;
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public int getNotice_readcnt() {
		return notice_readcnt;
	}

	public void setNotice_readcnt(int notice_readcnt) {
		this.notice_readcnt = notice_readcnt;
	}
}