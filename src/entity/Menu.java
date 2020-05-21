package entity;

public class Menu {        //
	private int id;        //ID
	private String m_name; //
	private String m_link; //
	private Menu m_parent;  //
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_link() {
		return m_link;
	}
	public void setM_link(String m_link) {
		this.m_link = m_link;
	}
	
	public Menu getM_parent() {
		return m_parent;
	}
	public void setM_parent(Menu m_parent) {
		this.m_parent = m_parent;
	}
	
	public Menu(int id, String m_name, String m_link, Menu m_parent) {
		super();
		this.id = id;
		this.m_name = m_name;
		this.m_link = m_link;
		this.m_parent = m_parent;
	}
	public Menu() {
		super();
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", m_name=" + m_name + ", m_link=" + m_link
				+ ", m_parent=" + m_parent + "]";
	}
	
	
}
