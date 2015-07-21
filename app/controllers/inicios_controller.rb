class IniciosController < ApplicationController
  def index  	
  	@presidente = Presindente.last
  	@documentos = Documento.limit(5)
  	@anuncios = Anuncio.limit(5)
  	@paginas = ApertacPagina.limit(5)
  	@directorios = Directorio.limit(5)
  	@webamigas = Webamiga.limit(5)
  	@noticias = Noticia.limit(5)
  end
end
