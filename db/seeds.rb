Articulo.create!([
  {titulo: "Este es otro articulo", cuerpo: "bla bla bla", usuario_id: 2, positivos: nil, negativos: nil, leidos: nil, subtitulo: "no importa"},
  {titulo: "ss", cuerpo: "sss", usuario_id: 1, positivos: nil, negativos: nil, leidos: nil, subtitulo: "sss"}
])
Evento.create!([
  {imagen: "yamanishi_-_1ra.jpg", titulo: "Yamanishi 2010", cuerpo: "Dentro del marco del evento Yamanashi, en el 2010, la orden del rol dio su primer conferencia, con un público de más de 300 personas, en uno de los eventos más importantes del año. "},
  {imagen: "Yamanishi_-_2da.jpg", titulo: "Yamanishi 2011", cuerpo: "Luego del éxito del primer evento, los organizadores de Yamanishi nos vuelven a convocar a su segundo y último evento, donde estuvimos participando con una charla y varias mesas de juego."},
  {imagen: "Literarol.jpg", titulo: "Literarol 2012", cuerpo: "En la biblioteca de chacras, tuvimos el honr de ser invitados como expositores en un evento único, el taller de creación de personajes fue todo un acotensimiento, seguido de mesas de juego que aún siguen en la memoria de todos."},
  {imagen: nil, titulo: "Literarol 2da Edicion - 2013", cuerpo: "Nuevamente fuimos convocados en la biblioteca de Chacras para continuar con el evento Literol. Esta vez con más participantes y más actividades."},
  {imagen: nil, titulo: "Unicomix en Leparc", cuerpo: "En el marco del evento Unicomix, en el Leparc, fuimos convocados para una de nuestras charlas. El público quedó encantado y lamentamos no poder tener mesas de juego en esta oportunidad."},
  {imagen: "Mendotaku_-_La_conspiracion.jpg", titulo: "Mendotaku 2015 - Rol en vivo", cuerpo: "Invitados al conocido evento Mendotaku, esta vez nos propusimos, además de una de nuestras características charlas, hacer una demostración de un juego de rol en vivo. En esta ocación se reresentó al juego Vamipiro, edad oscura, en una actuación a la que llamamos \"La Conspiración d Albi\""}
])
Usuario.create!([
  {nombre: "Peyu", mail: "coppola.andres@gmail.com", password_digest: "$2a$10$KHN5Jpl1ppCY.LMLBQLVE.Gd2t5eyjkT5spi4fVrHX2xolvR0gRAe", acceso: "admin"},
  {nombre: "Pepe Hongo", mail: nil, password_digest: "$2a$10$snZShxzyDLvV73Gs6qAPKuA9XHoup9zZ9r8aUm0iPGFapta74ABae", acceso: nil}
])
