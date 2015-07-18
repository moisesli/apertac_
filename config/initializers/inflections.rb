# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'inicio', 'inicios'
   inflect.irregular 'admin', 'admins'
   inflect.irregular 'noticia', 'noticias'
   inflect.irregular 'apertac_pagina', 'apertac_paginas'
   inflect.irregular 'directorio', 'directorios'
   
   inflect.irregular 'convocatoria', 'convocatorias'
   inflect.irregular 'presindente', 'presidentes'
   inflect.irregular 'documento', 'documentos'
   inflect.irregular 'anuncio', 'anuncios'
   inflect.irregular 'webamiga', 'webamigas'
#   inflect.uncountable %w( fish sheep )
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
