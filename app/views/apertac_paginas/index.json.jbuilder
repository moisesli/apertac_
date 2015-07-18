json.array!(@apertac_paginas) do |apertac_pagina|
  json.extract! apertac_pagina, :id, :titulo, :contenido, :visible, :imagen1, :imagen2, :imagen3, :imagen4, :imagen5, :imagen6, :imagen7, :imagen8, :imagen9, :imagen10
  json.url apertac_pagina_url(apertac_pagina, format: :json)
end
