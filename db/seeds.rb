# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

Activity.create(name: 'Clase de crossfit', description: 'Ven a entrenar', schedule: 'Lunes a viernes De 8:00am a 5:00pm',difficulty: 'Alta', venue: Venue.first)
Activity.create(name: 'Entrada libre', description: 'Ven a entrenar', schedule: 'Todos los díasa las 5:00pm',difficulty: 'Alta', venue: Venue.first)

Activity.create(name: 'Kundalin yoga', description: 'Cuerpo y mente sana', schedule: 'De 8:00am a 5:00pm',difficulty: 'Alta', venue: Venue.second)
Activity.create(name: 'Yoga meditación', description: 'Paz mental', schedule: 'De 8:00am a 10:00m y de 2:00pm a 5pm',difficulty: 'Baja', venue: Venue.second)

Activity.create(name: 'Clase de escalada', description: 'Aprende las bases', schedule: 'De 8:00am a 5:00pm',difficulty: 'Baja', venue: Venue.third)
Activity.create(name: 'Entrada libre', description: 'Una hora de acceso a todos los salones', schedule: 'De 8:00am a 5:00pm',difficulty: 'Baja', venue: Venue.third)