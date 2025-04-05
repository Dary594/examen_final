table_definition = """
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `lugares_patzcuaro`
--

CREATE TABLE `lugares_patzcuaro` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `actividades` TEXT,
  `categoria` VARCHAR(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
"""

# Lista de tuplas con la info de cada lugar (titulo, descripcion, actividades, categoria)
lugares = [
    (
        "Lago de Pátzcuaro",
        "El Lago de Pátzcuaro es uno de los destinos más emblemáticos de Michoacán. En sus aguas, los pescadores purépechas realizan la icónica pesca con redes en forma de mariposa. Desde el muelle principal puedes tomar una lancha para recorrer el lago y visitar las islas, incluyendo la famosa Janitzio.",
        "🚤 Paseos en lancha\n🏞️ Visita a la Isla de Janitzio\n🎣 Observar la pesca tradicional\n🍽️ Disfrutar de la gastronomía local",
        "conocido"
    ),
    (
        "Plaza Vasco de Quiroga",
        "Es el corazón de Pátzcuaro, rodeada de arquitectura colonial y casonas antiguas. Es considerada una de las plazas más bellas de México. Aquí encontrarás portales con tiendas de artesanías, comida tradicional y músicos callejeros.",
        "🏡 Disfrutar del ambiente colonial y la arquitectura histórica.\n🛍️ Comprar artesanías como rebozos, cerámica y juguetes de madera.\n🍦 Probar la tradicional nieve de pasta, un clásico de Michoacán.\n📸 Tomar fotos en la fuente central y en los portales.",
        "conocido"
    ),
    (
        "Basílica de Nuestra Señora de la Salud",
        "Este templo es un importante sitio de peregrinación. Alberga la imagen de la Virgen de la Salud, muy venerada en Michoacán. También es el lugar donde descansan los restos de Tata Vasco, un defensor de los pueblos originarios.",
        "⛪ Admirar la arquitectura religiosa.\n🙏 Pedir un milagrito o agradecer por favores recibidos.\n📖 Conocer la historia de Tata Vasco y su legado.",
        "conocido"
    ),
    (
        "Casa de los Once Patios",
        "Antiguo convento convertido en un centro de artesanías. En cada patio puedes encontrar a artesanos trabajando en vivo piezas de cerámica, rebozos, madera y lacas tradicionales.",
        "🎭 Observar a los artesanos trabajando en vivo.\n🛍️ Comprar piezas de cerámica, textiles y madera.\n📸 Disfrutar de la arquitectura colonial y sus patios encantadores.",
        "conocido"
    ),
    (
        "Día de Muertos",
        "Una de las celebraciones más importantes y espectaculares de Pátzcuaro. Los altares, las velas, la música y las danzas purépechas convierten esta festividad en una experiencia inolvidable.",
        "🕯️ Visitar los altares en la Isla de Janitzio.\n🌼 Recorrer los cementerios iluminados de Tzintzuntzan y Jarácuaro.\n🎭 Disfrutar de las danzas y ceremonias tradicionales.",
        "evento"
    ),
    (
        "Lugares Ocultos de Pátzcuaro",
        "Pátzcuaro esconde rincones mágicos que no muchos turistas conocen. Desde miradores espectaculares hasta comunidades purépechas llenas de tradición.",
        "🌄 Visitar el Estribo Grande y Chico para ver el lago desde lo alto.\n🌊 Explorar las islas de Yunuén y Pacanda para un ambiente más tranquilo.\n🏡 Conocer Huaraxio y sus talleres de maque.\n⛪ Explorar el antiguo Templo de Santa Marta.\n🏺 Pasear por el Barrio de San Francisco y descubrir talleres escondidos.\n🌿 Hacer senderismo en la Alberca de Pátzcuaro, un antiguo cráter volcánico.",
        "oculto"
    )
]

insert_statements = ""
for i, (titulo, descripcion, actividades, categoria) in enumerate(lugares, start=1):
    insert_statements += f"INSERT INTO `lugares_patzcuaro` (`id`, `titulo`, `descripcion`, `actividades`, `categoria`) VALUES ({i}, '{titulo}', '{descripcion}', '{actividades}', '{categoria}');\n"

full_sql_script = f"{table_definition}\n\n{insert_statements}"

output_path = "/mnt/data/lugares_patzcuaro.sql"
with open(output_path, "w", encoding="utf-8") as f:
    f.write(full_sql_script)

output_path
