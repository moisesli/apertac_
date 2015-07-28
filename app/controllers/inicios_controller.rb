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

  def contactenos_ok
  	@presidentes = Presindente.limit(5)
  	@documentos = Documento.limit(5)
  	@anuncios = Anuncio.limit(5)
  	@paginas = ApertacPagina.limit(5)
  	@directorios = Directorio.limit(5)
  	@webamigas = Webamiga.limit(5)
  	@noticias = Noticia.limit(3)
  end

  def contactenos
  	@presidentes = Presindente.limit(5)
  	@documentos = Documento.limit(5)
  	@anuncios = Anuncio.limit(5)
  	@paginas = ApertacPagina.limit(5)
  	@directorios = Directorio.limit(5)
  	@webamigas = Webamiga.limit(5)
  	@noticias = Noticia.limit(3)
  end

  def noticias
  	@presidentes = Presindente.limit(5)
  	@documentos = Documento.limit(5)
  	@anuncios = Anuncio.limit(5)
  	@paginas = ApertacPagina.limit(5)
  	@directorios = Directorio.limit(5)
  	@webamigas = Webamiga.limit(5)  	
    @noticias = Noticia.paginate(:page => params[:page], :per_page => 2)
  end

  def noticia
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)    
    @noticia = Noticia.find(params[:id])
  end

  def pagina
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)    
    @pagina = ApertacPagina.find(params[:id])

  end

  def presidente
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @pagina = ApertacPagina.find(params[:id])
    @presidente = Presindente.find(params[:id])
  end

  def documento
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)    
    @documento = Documento.find(params[:id])
  end 

  def documentos
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)    
    @documentoses = Documento.paginate(:page => params[:page], :per_page => 2)
  end 

  def directorio
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)    
    @directorio = Directorio.find(params[:id])
  end

  def directorios
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @directorioses = Directorio.paginate(:page => params[:page], :per_page => 2)    
  end

  def anuncio
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @anunciose = Anuncio.find(params[:id])
  end 

  def anuncios
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @anuncioses = Anuncio.paginate(:page => params[:page], :per_page => 2)
  end 

  def web_amiga
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @web_amiga = Webamiga.find(params[:id])
  end

  def web_amigas
    @presidentes = Presindente.limit(5)
    @documentos = Documento.limit(5)
    @anuncios = Anuncio.limit(5)
    @paginas = ApertacPagina.limit(5)
    @directorios = Directorio.limit(5)
    @webamigas = Webamiga.limit(5)
    @web_amigas = Webamiga.paginate(:page => params[:page], :per_page => 2)
  end



end
