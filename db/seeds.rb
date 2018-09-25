
venues = Venue.create([
                          {
                              name: 'Crossfit elefante atlético',
                              description: 'Salvaje y majestuoso',
                              phone: '6145454'
                          },
                          {
                              name: 'Yoga la nutria serena',
                              description: 'Tranquilo, desde la rama de un árbol.',
                              phone: '4526545'
                          },
                          {
                              name: 'El mapache feliz',
                              description: 'Centro de escalada animal.',
                              phone: '2124705'
                          },
                      ])

venues.each.with_index(1) do |venue, index|
  venue.image.attach(
      io: File.open("app/assets/images/#{index}.jpg"),
      filename: "#{index}.jpg",
      content_type: 'image/jpeg'
  )
end


Venue.create!([
  {name: "Xtreme Sports", description: "deportes extremos para todos", phone: "6145454"},
  {name: "Zumba", description: "Centro de entrenamiento y baile", phone: "312517468"}
])

Category.create!([
  {name: "Cardio", description: "ejercicios cardiovasculares"},
  {name: "Baile", description: "Clases de baile"},
  {name: "Deportes Extremos", description: "Actividades relacionadas con deportes de alto riesgo"},
  {name: "Relajación", description: "Actividades relacionadas con meditación, yoga o practicas de relajación"}
])
Activity.create!([
  {venue_id: 1, name: "Clase de crossfit", schedule: "Lunes a viernes De 8:00am a 5:00pm", description: "Ven a entrenar", difficulty: "Baja", category_id: 1},
  {venue_id: 1, name: "Entrada libre", schedule: "Todos los díasa las 5:00pm", description: "Ven a entrenar", difficulty: "Media", category_id: 1},
  {venue_id: 2, name: "Kundalin yoga", schedule: "De 8:00am a 5:00pm", description: "Cuerpo y mente sana", difficulty: "Alta", category_id: 4},
  {venue_id: 2, name: "Yoga meditación", schedule: "De 8:00am a 10:00m y de 2:00pm a 5pm", description: "Paz mental", difficulty: "Media", category_id: 4},
  {venue_id: 3, name: "Clase de escalada", schedule: "De 8:00am a 5:00pm", description: "Aprende las bases", difficulty: "Baja", category_id: 3},
  {venue_id: 3, name: "Futbol", schedule: "10 am - 12 am", description: "Jugar futbol en cancha sintetica", difficulty: "Alta", category_id: 1},
  {venue_id: 4, name: "Clases de Salsa", schedule: "6am-8am", description: "Clases guiadas para principiantes", difficulty: "Baja", category_id: 2},
  {venue_id: 4, name: "Trampolin", schedule: "2 am a 3pm ", description: "Ejercicio en trampolin", difficulty: "Media", category_id: 1},
  {venue_id: 3, name: "Escalada en Suesca", schedule: "Viernes de 8 a 12", description: "Clases de escalar en las afueras de Bogotá", difficulty: "Alta", category_id: 3},
  {venue_id: 4, name: "Clase de danza", schedule: "sabados 8 am", description: "Cursos de baile para todos", difficulty: "Baja", category_id: 2},
  {venue_id: 4, name: "Danza Clásica", schedule: "Lunes a Viernes 5 pm", description: "Clases de baile ", difficulty: "Alta", category_id: 2}
])