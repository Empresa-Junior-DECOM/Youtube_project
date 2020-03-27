package base;

public class YoutubeObj {
	public long id;
	public String titulo;
	public String url;
	public Integer totaldevotos;
	public Integer curtidas;
	public Integer dislikes;
	/*
	 * Bean
	 */

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getTotaldevotos() {
		return totaldevotos;
	}

	public void setTotaldevotos(Integer totaldevotos) {
		this.totaldevotos = totaldevotos;
	}

	public Integer getCurtidas() {
		return curtidas;
	}

	public void setCurtidas(Integer curtidas) {
		this.curtidas = curtidas;
	}

	public Integer getDislikes() {
		return dislikes;
	}

	public void setDislikes(Integer dislikes) {
		this.dislikes = dislikes;
	}
}