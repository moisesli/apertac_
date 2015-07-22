class IniciosController < ApplicationController
  def index  	
  	@presidentes = Presindente.limit(5)
  	@documentos = Documento.limit(5)
  	@anuncios = Anuncio.limit(5)
  	@paginas = ApertacPagina.limit(5)
  	@directorios = Directorio.limit(5)
  	@webamigas = Webamiga.limit(5)
  	@noticias = Noticia.limit(3)
  end
end
