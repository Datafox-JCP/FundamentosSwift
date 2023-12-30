import SwiftUI
/*:
 Swift Fundamentos
 2022 - 2023
 
 Concepto original Swift in one Hour
 https://www.hackingwithswift.com/articles/242/learn-essential-swift-in-one-hour
 */
/*:
 ### Constantes y Variables
 Swift puede crear *constantes* y *variables* para guardar datos en memoria.
 */
var nombre = "Raúl"  // variable
nombre = "Rebeca"
/*:
> Si el valor no va a cambiar, usar una constante.
 */
let usuario = "Daniela" // constante
/*:
> La función `print()` es útil para depuración y aprendizaje; imprime en la consola lo que se encuentre entre los parentésis.
 */
print(nombre) // Rebeca
print(usuario) // Daniela
/*:
## Strings - Cadenas
 Las cadenas (strings) inician y terminan con comillas y pueden tener cualquier caracter (incluso emojis)
 */
let actor = "A Tom Cruise le gusta 🏃‍♂️"
print(actor) // A Tom Cruise le gusta 🏃‍♂️
/*:
Si se necesitan comillas en la cadena, colocar una diagonal invertida antes de las comillas
 */
let cita = "Lo más importante no es ganar, es \"competir\"." // la \ se conoce como secuencia de escape
print(cita) // Lo más importante no es ganar, sino "competir".
/*:
Para que una cadena tenga varias líneas: Iniciar y terminar con comillas triples
 */
let otraCita = """
Siempre llegarás
a alguna parte,
si caminas
lo bastante.
"""
print(otraCita) // Siempre llegarás
                // a alguna parte,
                // si caminas
                // lo bastante.
/*:
> Swift tiene muchos métodos para strings como `.count`, `hasPrefix()` y `hasSuffix()` entre otros.
 */
print(actor.count) // 23
print(cita.hasPrefix("Lo")) // true
print(cita.hasSuffix("\"competir\".")) // true
print(cita.isEmpty) // false
print(cita.lowercased()) // lo más importante no es ganar, sino "competir".
print(cita.uppercased()) // LO MÁS IMPORTANTE NO ES GANAR, SINO "COMPETIR".
print(cita.capitalized) // Lo Más Importante No Es Ganar, Sino "Competir".

let asteriscos: String = .init(repeating: "*", count: 47)
print(asteriscos) // ***********************************************
/*:
 ## Integers (Int) - Números enteros
 Swift almacena números enteros usando el tipo `Int` Permite el uso de operadores aritméticos para realizar opeaciones con los números:
 
 - Suma `+`
 - Resta `-`
 - Multiplicación `*`
 - División `/`
 - Resto o modulo `%`
*/
let marcador = 10
let aumentarMarcador = marcador + 10
let restarMarcador = marcador - 5
let multiplicarMarcador = marcador * 2
let dividirMarcador = marcador / 2
let moduloMarcador = marcador % 3

/*:
 > Los operadores sirven para realizar cálculos aritméticos y asignar el valor calculado a una variable:
 */
var contador = 10
contador += 5
contador -= 5
contador *= 5
contador /= 5
print(contador) // 10
/*:
 > Los enteros tienen funcionalidades integradas, como los métodos `isMultiple(of:)`, `distance(to:)` y otros:
*/
var numero = 120
print(numero.isMultiple(of: 3)) // true
print(numero.distance(to: 500)) // 380
print(numero.advanced(by: 100)) // 220
print(numero.multipliedFullWidth(by: 10)) // (high: 0, low: 1200)
print(numero.description) // 120 Devuelve un string
print(numero.signum()) // 1 Devuelve -1 si el valor es negativo y 1 si es positivo. 0 para otros casos
numero.negate() // Devuelve el valor en forma invertida.
/*:
 Es posible generar enteros aleatorios dentro de un rango específico:
*/
let id = Int.random(in: 1...1_000) // Usar un guión bajo para separar valores numéricos y facilitar su lectura.
print(id)
/*:
 ## Decimal (Double) - Números decimales
 Si se crea un número con un punto decimal, Swift lo entiende como *Double*
*/
var numeroDecimal = 3.534
print(numeroDecimal) // 3.53
/*:
 Al igual que los enteros, también tiene funciones extendidas:
*/
numeroDecimal.isLess(than: 5.0) // true
numeroDecimal.isEqual(to: 4.0) // false
numeroDecimal.round(.toNearestOrEven) // 4
/*:
 > Swift maneja Doubles de una forma completamente diferente a Int y no permite combinarlos. No se puede sumar un Double y un Int: 3  + 4.55 arrojaría un error
 
 Para realizar operaciones entre diferentes tipos, hay que convertirlos:
*/
let esEntero = 5
let esDoble = 5.5
let sumarlos = Double(esEntero) + esDoble // Double(valorAConvertir)
print(sumarlos) // 10.5
/*:
 ## Booleans (Bool) - Valores booleanos
 Swift usa el tipo *Bool* para almacenar cierto (true) o falso (false)
*/
let losGatosSonTiernos = true
let esMacho = false
/*:
 > Es posible invertir el valor de verdadero a falso (o viceversa) llamando al método `toggle()`
*/
var estaVivo = true
estaVivo.toggle()
/*:
 ##  String Interpolation - Uniendo strings
 Es posible crear cadenas de datos definidos en variables usando *string interpolation*: Ingresar una diagonal invertida en la cadena, después
 colocar el nombre de la variable o constante dentro de parentésis.
*/
let edad = 27
let mensaje = "Me llamo \(nombre) y tengo \(edad) años."
/*:
 ##  Arrays
 Sirven para agrupar elementos\
 Sólo pueden tener un tipo. Al leer los datos del array se infiere el tipo.
*/
var colores = ["Rojo", "Verde", "Azul", "Morado", "Blanco", "Negro"]
let numeros = [4, 8, 15, 16]
var lecturas = [0.1, 0.5, 0.8]
print(colores[4]) // Se recupera el valor en la cuarta posición o índice (index). La base es 0.
print(lecturas[2])
/*:
Si el array es variable, puede usarse `append()` para agregar un nuevo elemento:
*/
colores.append("Amarillo")
print(colores)
/*:
 > Los arrays también tienen funcionalidad extendida, como `.count` para saber cuántos elementos contiene, o `remove(at:)` para eliminar un elemento por el índice indicado.
*/
colores.count
colores.remove(at: 3)
colores.count
/*:
 > Es posible saber si un array contiene un elemento en particular usando el método `contains()`
*/
colores.contains("Azul")
colores.contains("Violeta")
/*:
 El operador `~=` permite comparar en un array si un elemento está incluido:
 */
let valorEnRango = (200...300) ~= 222
/*:
 ## Dictionaries (diccionarios)
 Los diccionarios almacenan múltiples valores de acuerdo a una llave. Por ejemplo un diccionario que guarda información acerca de una persona:
*/
var persona = [
    "nombre": "Taylor",
    "profesion": "Cantante",
    "edad": "33"
]
/*:
 Para leer los datos de un diccionario, usar las mismas claves que se usaron para crealos:
*/
print(persona["nombre", default: "Desconocido"])
print(persona["edad", default: "Desconocido"])
print(persona["escolaridad", default: "Desconocido"])
/*:
 > El valor predeterminado se usará en caso de que la llave solicitada no exista.
*/
/*:
 ## Sets
 Son similares a los arrays con la diferencia que no aceptan elementos repetidos y no almacenan los elementos en un orden particular.
*/
var setDeNumeros = Set([1, 1, 3, 5, 7])
print(setDeNumeros)
/*:
 Para agregar elementos a un set se usa el método *insert()*
*/
setDeNumeros.insert(10)
print(setDeNumeros)
setDeNumeros.contains(3)
/*:
 > Tienen una gran ventaja sobre los arrays: Al usar `contains()` en un set el resultado es casí inmediato, sin importar cuántos elementos contenga.
*/
/*:
 ## Enums
 Un enum es un conjunto de valores con nombre que se puede crear y usar para hacer el código más eficiente y seguro.
 - Es un grupo de valores relacionados
 - Pueden tener un valor (raw value)
 - Puede tener métodos y computed properties
*/
enum DiasHabiles {
    case lunes, martes, miercoles, jueves, viernes
}
/*:
 La sentencia anterior crea un nuevo enum llamado DiasHabiles y proporciona cinco casos para manejar los días hábiles de la semana. Con esto es posible crear instancias de este enum.
*/
var dia = DiasHabiles.lunes
dia = .viernes

enum Mes {
    case enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre
}

func semestre(for mes: Mes) -> String {
    switch mes {
    case .agosto, .septiembre, .octubre, .noviembre, .diciembre:
        return "Otoño"
    case .enero, .febrero, .marzo, .abril, .mayo:
        return "Primavera"
    default:
        return "No es en el año escolar"
    }
}

var mes = Mes.abril
semestre(for: mes)

mes = .septiembre
semestre(for: mes)
/*:
 > Pueden tener `raw values`.
 El valor raw puede ser String, Float, Char. Si no se especifica Swift asignará de forma automática 0, 1, 2, etc.
*/
enum Meses: Int {
    case enero = 1, febrero = 2, marzo = 3, abril = 4, mayo = 5, junio, julio, agosto, septiembre, octubre, noviembre, diciembre
}

func mesesHastaVacacionesInvierno(from mes: Meses) -> Int {
    Meses.diciembre.rawValue - mes.rawValue
}
print (mesesHastaVacacionesInvierno(from: .noviembre))
/*:
 > Pueden tener `valores asociados`.
 1. Cada enumeración tiene cero o más valores asociados
 2. Los valores asociados para cada enumeración pueden tener su propio tipo de datos
 3. Puedes definir los valores asociados con nombres
 4. Pueden tener raw values o valores asociados pero no ambos
*/
enum ResultadoRetiro {
    case valido(nuevoSaldo: Int)
    case error(mensaje: String)
}

var saldo = 100
func retiro(cantidad: Int) -> ResultadoRetiro {
    if cantidad <= saldo {
        saldo -= cantidad
        return .valido(nuevoSaldo: saldo)
    } else {
        return .error(mensaje: "No hay dinero")
    }
}

let resultadoOperacion = retiro(cantidad: 55)
switch resultadoOperacion {
    case .valido(let nuevoSaldo):
        print("Su nuevo saldo es: \(nuevoSaldo)")
    case .error(let mensaje):
        print(mensaje)
}

/*:
 `Pasar por todos los cases`.
 Conformando al protócolo *CaseIterable* se tiene acceso al método `all cases` que permite hacer un loop por cada caso en el orden declarado
*/
enum Mascota: CaseIterable {
    case gato, perro, canario, tortuga, pez, hamster
}

for mascota in Mascota.allCases {
    print(mascota)
}
/*:
 ## Type annotations
 Es posible forzar un tipo específico para una nueva variable o constante usando: *type annotation*:
*/
var numeroDeLaSuerte: Int = 13
let pi: Double = 3.141
var estaActivado: Bool = true
var discos: Array<String> = ["Red", "Fearless"]
var redesSociales: Dictionary<String, String> = ["twitter": "@datafoxsoftware"]
var libros: Set<String> = Set(["Corazón de Piedra Verde", "Sapiens"])
/*:
 Los arrays y diccionarios son tan comunes que tienen una sintaxis especial para que sean más sencillos de escribir:
*/
var masDiscos: [String] = ["Red", "Fearless"]
var masUsuarios: [String: String] = ["twitter": "@datafoxsoftware"]
/*:
 > Conocer el tipo exacto de los elementos es importante para crear colecciones vacias.
*/
var equipos: [String] = [String]()
var pistas = [String]()
/*:
 > Los valores de un enum son del mismo tipo que el enum, se pueden crear de esta forma:
*/
enum UIStyle {
    case claro, oscuro, sistema
}
var estilo: UIStyle = .claro
print(estilo)
/*:
 ## Condiciones
 Usar sentencias `if else`, y `else if` para determinar si se cumple una condición y ejecutar el código apropiado:
*/
if edad < 16 {
    print("No puedes votar")
} else if edad < 18 {
    print("Pronto podrás votar")
} else {
    print("Puedes emitir tu voto")
}
/*:
 Es posible usar `&&` para combinar dos condiciones y la ejecución del codigo sólo se realizará si ambas condiciones son verdaderas:
*/
let temperatura = 26
if temperatura > 23 && temperatura < 29 {
    print("El día es muy agradable 🔆")
} else {
    print("No tenemos un día soleado")
}
/*:
 Alternativamente usando `||` hace que la condición sea verdadera si una de las dos condiciones es verdadera
*/
let hora = 17
if hora > 8 || hora < 12 {
    print("Es temprano 🔆")
} else {
    print("Ya es tarde ✨")
}
/*:
 ## Sentencias Switch
 Swift permite comprobar un valor contra múltiples condiciones usando la sintaxis `switch/case`:
*/
enum Clima {
    case sol, lluvia, viento
}

let prevision = Clima.sol

switch prevision {
case .sol:
    print("Es un día agradable 🔆")
case .lluvia:
    print("LLeva un paraguas 🌂")
default:
    print("Estará bien")
}
/*:
 > Las sentencias switch deben ser exhaustivas: Todos los posibles valores deben poder manejarse para no perder accidentalmente alguna condición.
*/
/*:
 ## El operador condicional ternario (ternary operator)
 El operador ternario permite verificar una condición y devolver uno de dos valores: uno si la condición se cumple y otro si es falsa:
*/
let puedeVotar = edad >= 18 ? "Si" : "No"
/*:
 ## Loops
 Los loops en Swift ejecutan un código para cada elemento de la colección o para un rango predefnido. Un loop se ejecuta con la palabra `for`
*/
let plataformas = ["iOS", "macOS", "tvOS", "watchOS"]
for os in plataformas {
    print("Swift funciona en \(os).")
}
/*:
 Se puede hacer un loop en un rango de números:
*/
for i in 1...12 {
    print("2 x \(i) son: \(5 * i)")
}
/*:
 1...12 contiene los valores 1 a 12, es inclusivo. Si se necesita excluir el número final usar ..<
*/
for i in 1..<13 {
    print("3 x \(i) Son: \(5 * i)")
}
/*:
 Tip: Si no se necesita la variable del loop, usar _
*/
var letra = "Una araña colgada"

for _ in 1...3 {
    letra += " en la pared,"
}
print(letra)
/*:
 Un loop `while`, ejecuta el código en el cuerpo del loop hasta que la condición sea falsa:
*/
contador = 10

while contador > 0 {
    print("\(contador)…")
    contador -= 1
}
print("¡Lanzar!")
/*:
 Es posible usar `continue` para saltar la iteración actual del loop y pasar a la siguiente:
*/
let archivos = ["lucia.jpg", "trabajo.txt", "sofia.jpg"]

for archivo in archivos {
    if archivo.hasSuffix(".jpg") == false {
        continue
    }
    print("Imagen encontrada: \(archivo)")
}
/*:
 Las variables en el código del loop no se pueden accesar fuera del loop
*/
var horasTrabajadas = 45
var cantidadGanada = 0
if horasTrabajadas > 40 {
  let masDe40Horas = horasTrabajadas - 40
    cantidadGanada += masDe40Horas * 50
    horasTrabajadas -= masDe40Horas
}
cantidadGanada += horasTrabajadas * 25
print(cantidadGanada)
/*:
 >  *masDe40Horas* sólo existe dentro de los paréntesis, si se intenta usar fuera de ellos se producirá un error.
*/
/*:
 En el loop `repeat-while` la condición es válida al final del loop.
*/
var suma = 1
repeat {
  suma = suma + (suma + 1)
} while suma < 1000
print(suma)
/*:
 Salir de un loop: Usar `break` para que en base a una condición se salga del loop.
*/
suma = 1
while true {
  suma = suma + (suma + 1)
  if suma >= 1000 {
    break
  }
}
print(suma)
/*:
 Al usar where en un loop for-in es posible implementar filtros. Si la condición del loop es verdadera, el loop es ejecutado:
 */
// Forma larga sin where
let valores = [1,2,3,4,5,6,7,8,9]
for valor in valores {
    // al usar % 2 se buscan sólo los pares
    if (valor % 2 == 0) {
        print (valor)
    }
}
// Usando where
for valor in valores where valor % 2 == 0 {
    print(valor)
}
// Mismo pero más simple
for valor in valores where valor.isMultiple(of: 2) {
    print(valor)
}
/*:
 `Parámetros variables`
 Un parámetro variable acepta cero o más valores del tipo indicado. Para crearlo poner tres puntos (...) después del nombre del tipo en el parámetro:
 */
func obtenerPromedio(_ numeros: Double...) -> Double {
    var total: Double = 0
    for numero in numeros {
        total += numero
    }
    return total / Double(numeros.count)
}
obtenerPromedio(1,2,3,4,5)
obtenerPromedio(2, 5.25, 18.50)
/*:
 ## Funciones
 Para crear una función, ingresar la palabra clave `func`, después el nombre de la función, añadir parámetros dentro de parentésis y el código de la función entre corchetes:
*/
func imprimirTablasDeMultiplicar(numero: Int) {
    for i in 1...10 {
        print("\(numero) x \(i) es igual a: \(i * numero)")
    }
}
imprimirTablasDeMultiplicar(numero: 4)
/*:
 Es necesario ingresar el número (4) al hacer la llamada a la función, porque el parámetro es parte de la función.\
 Para devolver datos de una función, se debe indicar que tipo de datos se van a devolver y se usa la palabra reservada `return` para enviar el dato.
*/
func lanzarDado() -> Int {
    return Int.random(in: 1...60)
}

var resultado = lanzarDado()
print(resultado)
/*:
 Si la función sólo tiene una línea de código se puede omitir la palabra reservada *return*
*/
func lanzarOtroDado() -> Int {
    Int.random(in: 1...60)
}

resultado = lanzarOtroDado()
print(resultado)
/*:
 ### Devolver más de un valor en una función
 Una tupla es un lista de tipos separados por comas y encerrados entre parentésis. Se pueden usar las tuplas como el tipo de retorno de una función.\
 Las tuplas almacenan un número fijo de valores de tipos específicos, lo que hace que sean un modo muy conveniente de devolver varios valores en una función:
*/
func obtenerCantante() -> (nombre: String, apellido: String, edad: Int, profesion: String) {
    (nombre: "Taylor", apellido: "Swift", edad: 32, profesion: "cantante")
}

let cantante = obtenerCantante()
print("Se llama: \(cantante.nombre) \(cantante.apellido) es \(cantante.profesion) y tiene \(cantante.edad)")
/*:
 Si no se necesitan todos los valores de una tupla es posible destructurarla para separar los valores individuales y con un _ Swift los ignorará:
*/
let (suNombre, _, _, profesionActual) = obtenerCantante()
print("\(suNombre) es \(profesionActual)")
/*:
 ### Personalizando las etiquetas de los parámetros
 Si no se quiere pasar el nombre de los parámetros al llamar a la función, se reemplaza (la etiqueta) con un guión bajo:
*/
func sonMayusculas(_ string: String) -> Bool {
    string == string.uppercased()
}

var cadena = "HOLA, MUNDO"
let resultados = sonMayusculas(cadena)
/*:
 Una alternativa es escribir un segundo nombre después del primero: Uno se usa externamente y el otro internamente:
*/
func imprimirTablaTiempos(valor numero: Int) {
    for i in 6...10 {
        print("\(numero) x \(i) es \(i * numero)")
    }
}
imprimirTablaTiempos(valor: 5)
/*:
 En el código anterior *valor* es usado externamente y *numero* se usa internamente.
*/
/*:
 ### Proporcionar valores predeterminados para los parámetros
 Es posible proporcionar valores predeterminados a los parámetros escribiendo `=` después del tipo:
*/
func saludo(_ persona: String, formal: Bool = false) {
    if formal {
        print("Bienvenido, \(persona)")
    } else {
        print("¡Hola, \(persona)!")
    }
}
/*:
 Se puede llamar a *saludo()* de dos formas:
*/
saludo("Saúl", formal: true)
saludo("Diana")
/*:
 ### Manejo de errores en las funciones
 Para manejar errores en las funciones es necesario indicarle a Swift que errores pueden presentarse, escribir una función que pueda arrojar esos errores y finalmente indicarle como manejar el problema.\
 Primero, definir los errores que puedan ocurrir:
*/
enum ErroresEnLaClave: Error {
    case corta, predecible
}
/*:
 Segundo, escribir una función que pueda arrojar esos errores. Esto se hace colocando `throws` en el tipo de la función y `throw` para activar errores específicos:
*/
func verificarClave(_ clave: String) throws -> String {
    if clave.count < 5 {
        throw ErroresEnLaClave.corta
    }

    if clave == "12345" {
        throw ErroresEnLaClave.predecible
    }

    if clave.count < 10 {
        return "Ok"
    } else {
        return "Buena"
    }
}
/*:
 Se llama a la función que arroja los errores usando un bloque `do` y se llama a la función usando `try`, después se atrapan los errores que puedan ocurrir:
*/
cadena = "12345"

do {
    let resultado = try verificarClave(cadena)
    print("Puntuación: \(resultado)")
} catch ErroresEnLaClave.predecible {
    print("Los números consecutivos son muy obvios")
} catch {
    print("Ocurrio un error.")
}
/*:
 Cuando se trata de atrapar errores, siempre se debe tener un bloque `catch` que maneje cada tipo de error.
     
 ### Closures ###

Un closure es una función sin nombre. Se puede asignar a una variable y pasarla como cualquier otro valor.\
Los closures pueden acceder a los valores de cualquier variable o constante del contexto que la rodee. Se dice que las variables y constantes usadas en el cuerpo del closure han sido capturadas por el closure.\
Como no tienen nombre para usarlas hay que asignarlas a una variable o constante.
 
**Closure simple**
 
Una función sencilla sin parámetros y no devuelve nada:
 */
func hola() {
    print("Hola")
}
hola()
/*:
 Equivalente de la función hola como closure:
 */
let closureHola: () -> Void = {
    // Por claridad es mejor usar Void que (): let saludarConClosure: () -> ())
    print("Hola, soy un closure")
}
closureHola()
/*:
 En el código anterior, *closureHola* es un closure – un bloque de código que es posible pasar y llamar cuando se necesite. Es posible hacer que un closure acepte parámetos, deben escribirse dentro de parentésis:
 */
let repetirHola = { (nombre: String) -> String in
    "Hola\(nombre)!"
}
print(repetirHola(", hola \(nombre)"))
/*:
Los closures se usan de forma muy extendida en Swift. Por ejemplo existe un método para los array llamado `filter()` que ejecuta una prueba en todos los elementos del array y devuelve *true* con los valores encontrados en un nuevo array.
 
 Es posible proporcionar la prueba usando un closure, para filtrar los elementos del array que comiencen con "S":
 */
let equipo = ["Gloria", "Susana", "Alma", "Alberto", "Saúl", "Roberto", "Salma", "Ana"]

let soloConS = equipo.filter({ (nombre: String) -> Bool in
    nombre.hasPrefix("S") // como es una sóla línea se omite return
})
print(soloConS)
/*:
 En el interior del closure listamos lo que devuelve el parámetro `filter()` que es un string del array. Se indica que el closure devuelve un valor Boolean, se marca el inicio del closure con la palabra reservada `in` - después de esto el resto es el código normal de la función.

### Trailing closures y sintáxis corta ###
 
Swift tiene unos trucos para que los closures sean más fáciles de leer.  Abajo código para filtrar el array para nombres que inicien con "A":
 */
let equipo2 = ["Gloria", "Susana", "Alma", "Alberto", "Saúl", "Roberto", "Salma", "Ana"]

let soloConA = equipo2.filter({ (nombre: String) -> Bool in
    return nombre.hasPrefix("A")
})
print(soloConA)
/*:
 Como el closure sólo tiene una línea de código se puede eliminar *return*:
 
     let soloConA = equipo2.filter({ (nombre: String) -> Bool in
 nombre.hasPrefix("A")
     })
 `filter()` debe tener una función que acepte un elemento del arrray y devuelva true si debe ser devuelto al array.\
 Como la función que pasamos se comparta de esa forma, no es necesario especificar los tipos en el closure. Se puede reescribir de la siguiente forma:
 
    let soloConA = equipo2.filter({ nombre in
        nombre.hasPrefix("A")
    })
 Se puede ir más lejos usando una sintáxis especial llamada trailing closure, que se ve de esta forma (se removieron los parentésis):
 
     let soloConA = equipo2.filter { name in
        nombre.hasPrefix("A")
     }
     
 Finalmente, Swift puede proporcionar nombres cortos para los parámetros por lo que no es necesario escribir *name*, y en vez de ellos usar el valor nombrado de forma especíca $0:
 
     let soloConA = equipo2.filter {
         $0.hasPrefix("T")
     }
 */
var sumaConClosure: (Int, Int) -> Int = {
    $0 + $1
}
let sumando = sumaConClosure(90, 10)
print(sumando)
/*:
 ### Structs ###
 Los structs permiten crear nuestros propios tipos de datos, con propiedades y métodos propios:
 */
struct Album {
    let titulo: String
    let artista: String
    var liberado = true

    func imprimirResumen() {
        print("\(titulo) por \(artista)")
    }
}
let red = Album(titulo: "Red", artista: "Taylor Swift")
print(red.titulo)
red.imprimirResumen()
/*:
 Cuando se crea una instancia de un *struct* se hace con un inicializador - Swift permite que los structs se traten como una función, pasando parámetros para cada una de sus propiedades. Internamente Swift genera la inicialización de los miembros basado en las propiedades del struct.
 
 > Si se necesita que el método de un *struct* pueda modificar una de sus propiedades hay que marcarlo como mutating:
     mutating func removerDelListado() {
         liberado = false
     }
 
 ### Propiedades calculadas (Computed properties) ###
 Una propiedad cálculada, actualiza su valor cada vez que es accesada. Por ejemplo se crea el struct Empleado que lleva un registro de cuantos días de vacaciones le quedan:
 */
struct Empleado {
    let nombre: String
    var vacionesPermitidas = 14
    var vacacionesTomadas = 0

    var vacacionesRestantes: Int {
        vacionesPermitidas - vacacionesTomadas
    }
}

var vacacionesEmpleado = Empleado(nombre: "Armando Contreras", vacionesPermitidas: 14, vacacionesTomadas: 3)
vacacionesEmpleado.vacacionesTomadas += 4
print(vacacionesEmpleado.vacacionesRestantes)
/*:
 Para poder escribir a vacacionesRestantes es necesario proporcionar un *getter* y un *setter*:
 
     var vacacionesRestantes: Int {
         get {
            vacionesPermitidas - vacacionesTomadas
         }

         set {
            vacionesPermitidas = vacacionesTomadas + newValue
         }
     }
 `newValue` guardará cualquier valor que el usuario haya asignado a la propiedad. *newValue* es asignado por Swift.

 ### Property observers ###
 Los property observers son piezas de código que se ejecutan cuando las propiedades cambian: `didSet` se ejecuta cuando la propiedad acaba de cambiar y `willSet` se ejecuta cuando la propiedad esta por cambiar.

*/
struct Juego {
    var puntacion = 0 {
        willSet {
            print("La variable está por cambiar")
        }
        didSet {
            print("La puntuación es \(puntacion)")
        }
    }
}
var juego = Juego()
juego.puntacion += 10
juego.puntacion -= 3
/*:
 También es posible usar los property observers para limitar el valor de una variable:
 */
struct Foco {
    static let maximo = 40
    var actual = 0 {
        didSet {
            if actual > Foco.maximo {
                print("""
                    El valor es muy alto,
                    regresando al valor anterior
                    """)
                actual = oldValue // oldValue es proporcionado por Swift
            }
        }
    }
}
var luz = Foco()
luz.actual = 50
/*:
 ### Inicializadores personalizados ###
 Los inicializadores (initializers) son funciones especiales que preparan una nueva instancia de un struct para ser utilizada, su propósito es asegurarse que todas las propiedades tengan un valor inicial.\
 Swift genera un inicializador basado en las propiedades del struct, pero es posible generar uno personalizado:
 */
struct Jugador {
    let nombre: String
    let numero: Int

    init(nombre: String) {
        self.nombre = nombre
        numero = Int.random(in: 1...99)
    }
}
/*:
 Importante: Los inicializadores no tiene una función que los preceda y no devuelven explicitamente un valor.
 */
var primerJugador = Jugador(nombre: "Luis")
print(primerJugador)
/*:
 ### Control de acceso (Access control) ###
 Swift tiene varias opciones para controlar el acceso dentro de los structs, estas son las más comunes:
 - Usar `private` para "no permitir que nada fuera del struct lo use"
 - Usar `private(set)` para que "cualquiera fuera del struct pueda leer el valor pero no pueda modificarlo"
 - Usar `fileprivate` para "no permitir que algo fuera del archivo actual use esto"
 - Usar `public` para "cualquiera, en cualquier parte, lo use"
 */
struct CuentaBancaria {
    private(set) var fondos = 0
    
    mutating func deposito(cantidad: Int) {
        fondos += cantidad
    }

    mutating func retiro(cantidad: Int) -> Bool {
        if fondos > cantidad {
            fondos -= cantidad
            return true
        } else {
            return false
        }
    }
}
var operacion = CuentaBancaria()
operacion.fondos
operacion.deposito(cantidad: 100)
operacion.retiro(cantidad: 50)
operacion.fondos
/*:
 Como se usa *private(set)*, leer fondos fuera del struct es posible, pero no se puede modificar directamente (sólo con deposito o retiro).
 
 ### Metódos y propiedades estáticos (Static properties and methods)
 Swift soporta propiedades y métodos estáticos, esto permite añadir una propiedad o metódo directamente al struct en vez de una instancia de la struct:
 */
struct DatosApp {
    static let version = "1.3 beta 2"
    static let configuracion = "settings.json"
}
DatosApp.version
DatosApp.configuracion
/*:
 ### Classes ###
 Las classes permiten crear tipos de datos personalizados, se diferencian de los structs de 5 maneras.
 
 **1.** Una class se puede crear heredando funcionalidad de otras classes:
 */
class Empleados {
    let horas: Int

    init(horas: Int) {
        self.horas = horas
    }

    func imprimirResumen() {
        print("Trabajan \(horas) horas al día.")
    }
}

class Desarrollador: Empleados {
    func trabajar() {
        print("Hoy estuve desarrollando \(horas) horas.")
    }
}

let pazos = Desarrollador(horas: 9)
pazos.trabajar()
pazos.imprimirResumen()
/*:
 Si la clase hija requiere cambiar un método de la clase padre, se debe usar override:

     override func imprimirResumen() {
         print("Me pase \(horas) horas del día buscando en Stack Overflow.")
     }
 
 **2.** Los inicializadores son más complicados con clases. Aunque hay complejidad, destacan 3 puntos:

 1. Swift no genera inicializadores automáticos para las clasess.
 2. Si una clase hija tiene incializadores personalizados, debe llamar al inicializador del padre después de que haya terminado de configurar su propias propiedades.
 3. Si una subclase no tiene ningún inicializador, hereda de forma automática los inicializadores de su clase padre.
 */
class Vehiculo {
    let esElectrico: Bool

    init(esElectrico: Bool) {
        self.esElectrico = esElectrico
    }
}

class Auto: Vehiculo {
    let esConvertible: Bool

    init(esElectrico: Bool, esConvertible: Bool) {
        self.esConvertible = esConvertible
        super.init(esElectrico: esElectrico)
    }
}
let vw = Auto(esElectrico: false, esConvertible: false)
print("Electrico: \(vw.esElectrico) Convertible \(vw.esConvertible)")
/*:
 `super permite llamar a los métodos que pertenecen a la clase padre, como son sus inicializadores.
 
 **3.** Todas las copias de una clase instanciada comparten sus datos; esto significa que los cambios en una instancia se reflejarán en las otras.
 */
class Cantante {
    var nombre = "Adele"
}

var primeraCantante = Cantante()
var segundaCantante = primeraCantante
segundaCantante.nombre = "Taylor Swift"
print(primeraCantante.nombre)
print(segundaCantante.nombre)
/*:
 Esto imprime "Taylor Swift" en ambas instancias, aun cuando sólo una de llas fue modificada. En comparación las copias de un struct no comparten sus datos.
 
**4.** Las clases pueden tener un desinicialziador que es llamado cuando la última referencia al objeto es destruida.\
 Por lo mismo, es posible crear una clase que imprima un mensaje cuando es destuida:
 */
class Funcion {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Función \(id): Estoy viva")
    }

    deinit {
        print("Función \(id): Estoy muerta")
    }
}

for i in 1...3 {
    let funcion = Funcion(id: i)
    print("Funcion \(funcion.id): Estoy en ejecución")
}
/*:
 **5.** Las clases nos permiten cambiar las propiedades de las variables aun cuando la clase en si es una constante:
 */
class OtroUsuario {
    var nombre = "Luis"
}

let otroUsuarioMas = OtroUsuario()
otroUsuarioMas.nombre = "Armando"
print(otroUsuarioMas.nombre)
/*:
 Esto da como resultado que en las clases no es necesario usar la palabra clave mutating en los métodos para cambiar sus datos.
 
 ### Protócolos (Protocols) ###
 Los protócolos definen la funcionalidad que se espera que soporte un tipo de dato. Swift se asegura que nuestro código siga esas reglas.\
 Por ejemplo, podemos definir el protócolo vehículo de esta forma:
 */
protocol NuevoVehiculo {
    func tiempoEstimado(para distancia: Int) -> Int
    func viajar(distancia: Int)
}
/*:
 Se enlistan los métodos requeridos para que este protócolo funcione, pero no contiene ningún código - sólo se proporcionan los nombres de los métodos, parámetros y tipos de retorno.\
 Una vez que se tiene el protócolo se pueden hacer los tipos de datos que se apeguen a este, para implementar la funcionalidad requerida. Por ejemplo, se puede hacer un struct *NuevoAuto* que sea conforme a *NuevoVehiculo*:
 */
struct NuevoAuto: NuevoVehiculo {
    func tiempoEstimado(para distancia: Int) -> Int {
        distancia / 50
    }
    
    func viajar(distancia: Int) {
        print("He manejado \(distancia)km.")
    }
}
/*:
 Todos los métodos enlistados en *NuevoVehiculo* debe existir en *NuevoAuto*, con los mismos nombres, parámetros y valores de retorno.\
 Es posible escribir una función que acepte cualquier tipo que sea conforme a *NuevoVehiculo*, ya que Swift sabe como implementar tanto *tiempoEstimado()* como *viajar()*:
 */
func conmutar(distancia: Int, usando vehiculo: NuevoVehiculo) {
    if vehiculo.tiempoEstimado(para: distancia) > 100 {
        print("Muy lento")
    } else {
        vehiculo.viajar(distancia: distancia)
    }
}

let autos = NuevoAuto()
conmutar(distancia: 100, usando: autos)
/*:
 Los protócolos también requieren de propiedades, así que se necesitan propiedades para cuántos asientos tiene el vehículo y cuántos pasajeros puede llevar:
 */
protocol OtroVehiculo {
    var nombre: String { get }
    var pasajeros: Int { get set }
    func tiempoEstimado(para distancia: Int) -> Int
    func viajar(distancia: Int)
}
/*:
 Lo anterior añade dos propiedades: una marcada con `get` que puede ser una constante o una propiedad cálculada y la otra marcada con `set` que puede ser una variable o propiedad cálculada con un `getter` y un `setter`.\
 Ahora todos los tipos deben añadir una implementación para esas propiedades, como:
 */
let nombreVehiculo = "Auto"
var pasajerosActuales = 1
/*:
 Tip: Pueden implementarse todos los protócolos que se necesiten, sólo hay que listarlos separados por una coma.
 
 ### Extensiones (Extensions) ###
 Las extensiones nos permiten añadir funcionalidad a cualquier tipo. Por ejemplo los strings tienen un método para quitar los espacios en blanco y añadir nuevas líneas, pero es largo; podemos convertirlo en una extensión para simplificarlo:
 */
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var nuevaCita = "   La verdad raramente es pura y definitivamente no es simple   "
let trimmed = nuevaCita.trimmed()
/*:
 Si se requiere cambiar el valor directamente en vez de devolver un nuevo valor, marcar el método como mutating de esta forma:
 */
extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

nuevaCita.trim()
/*:
 Las extensiones también pueden añadir propiedades cálculadas a los tipos:
 */
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}
/*:
 El método `components(separatedBy:)` divide un string en un array de strings usando como separador lo que se indique, en la extensión anterior es `newlines`\
 De esta forma podemos usar la propiedad en todos las strings:

 */
let letras = """
Un sueño alguna vez soné
Cuando mi vida comenzaba
"""

print(letras.lines.count)
/*:
 ### Extensiones de protócolos (Protocol extensions) ###
 Las extensiones de protócolo extienden un protócolo por completo para añadir propiedades calculadas e implementaciones de método, así que todos los tipos conformados al prótocolo lo obtienen.\
 Por ejemplo, Array, Dictionary y Set se conforman al protócolo `Collection`, así que es posible añadir una propiedad cálculada a los tres de esta forma:
 */
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
/*:
 y se usa de esta forma:
 */
let invitados = ["Mario", "Luigi", "Peach"]

if invitados.isNotEmpty {
    print("cuenta de invitados: \(invitados.count)")
}
/*:
 Usando de esta manara se pueden enlistar todos los métodos requeridos y añadir las implementaciones predeterminadas para estos, dentro de la extensión del protócolo. Todos los tipos que se conformen a este usarán esas implementaciones o usarán personalizadas si se requiere.
 
 ## Opcionales (Optionals) ##
 Una opcional representa la ausencia de datos, por ejemplo se distingue si un entero tiene el valor de 0 o no tiene ningún valor.
 */
struct Usuarios {
    let nombreUsuario: String
    let edadUsuario: Int?
}

let usuarios = Usuarios(nombreUsuario: "Juan Carlos", edadUsuario: nil)
/*:
 Las **opcionales** significan que los datos pueden o no estar presentes.\
 Una string opcional si no tiene nada entonces tiene un valor llamado `nil` que significa "sin valor". Cualquier tipo de dato puede ser opcional: Int, Double, Bool así como instancias de enums, structs y clases.\
 Swift no permite usar los datos opcionales de forma directa, porque podrían estar vacios. Esto quiere decir que es necesario desenvolver (unwrap) la opcional para poder utilizarla; es necesario ver si tiene un valor y si lo tiene, tomarlo y usarlo.\
 Swift proporciona diferentes maneras de desenvolver opcionales, la más frecuente es IF LET y se usa así:
 */
if let edad = usuarios.edadUsuario {
    print("La edad del usuario es \(edad)")
} else {
    print("El usuario no declaró su edad")
}
/*:
 Aquí se lee el valor opcional del diccionario y si tiene un string entonces se desenvuelve - el valor se asigna al constante *marioOpposite*. Como si se puede desenvolver la opcional la condición se cumple así el código de print se ejecuta.
 
 ### Unwrapping optionals con guard ###
 Swift tiene un segundo método para desenvolver opcionales, con `guard let` y es muy parecido a if pero lo hace a la inversa. Mientrás que if ejecuta el código si la opcional tiene un valor, 'guard let' ejecuta el codigo si la opcional no tiene valor:
 */
func verificar(edad: Int?) {
    // guard let edad = edad else { (en Swift 5.7 o anterior)
    guard let edad else {
        print("La edad es nula")
        return
    }
    
    if edad > 40 {
        print("El usuario ya es mayor")
    }
    
}

verificar(edad: usuarios.edadUsuario)
/*:
 Si se usa `guard` para verificar que las entradas a una función sean validas, Swift necesita que se use `return` si la verificación falla, sin embargo si la opcional tiene un valor, se puede usar después de que el código en guard finaliza.\
 Tip: Puede usarse guard sin ninguna condición, incluyendo aquellas que no desenvuelven opcionales.
 
 ### Nil coalescing ###
 La tercera forma de desenvolver opcionales es con el operador `nil coalescing` que desenvuelve una opcional y proporciona un valor predeterminado si la opcional esta vacia:
 */
let mostrarEdad = usuarios.edadUsuario ?? 0
print(mostrarEdad)
/*:
 El operador `nil coalescing` se usa en muchos lugares donde son creadas opcionales. Por ejemplo, crear un entero de una cadena devuelve una opcional del tipo Int? porque la conversión podría fallar. Es posible usar `nil coalescing` para proporcionar un valor predeterminado:
 */
let entrada = ""
let unNumero = Int(entrada) ?? 0
print(unNumero)
/*:
 ### Optional chaining ###

 `Optional chaining` lee opcionales dentro de opcionales así:
 */
let personajes = ["Arya", "Bran", "Robb", "Sansa"]
let seleccionado = personajes.randomElement()?.uppercased()
print("Siguiente en la línea: \(seleccionado ?? "Ninguno")")
/*:
 Optional chaining aparece en la segunda línea: El símbolo de interrogación seguido de más código. En el ejemplo dice "si hay elemento aleatorio del array convertirlo a mayúsculas."
 
 ### Optional try? ###
 Al llamar a una función que puede generar errores, es posible usar `try?` para convertir su resultado en una opcional que tenga un valor en caso de funcionar o `nil` si no resulta.
 */
/*:
 Force Unwrap
 Es indicar a Swift que hay un valor sin que se realice ninguna verificación
 let edadEs = usuarios.edad!
 print(edadEs)
 La línea anterior falla pues la edad es nula
 */
enum Errores: Error {
    case idIncorrecto, falloDeRed
}

func obtenerUsuario(id: Int) throws -> String {
    throw Errores.falloDeRed
}

if let usuario = try? obtenerUsuario(id: 23) {
    print("Usuario: \(usuario)")
}
/*:
 La función *getUser()* siempre arrojará falloDeRed, pero lo que realmente importa en el ejemplo es si se devuelve o no un usuario.
 */
/*:
 ## Generics ##
Usando function overloading es posible que una función use diferentes parámetros
 */
struct Historial {
    // Recibe un Int
    static func log(_ val: Int) {
        print("Impresión del log: \(val)")
    }
    // Mismo nombre ahora recibe un String
    static func log(_ val: String) {
        print("Impresión del log: \(val)")
    }
}
Historial.log(1)
Historial.log("Juan Carlos")
/*:
Una función con overloading puede ser compleja y repetirla varias ocasiones según los parámetros que cambien puede resultar en errores. Una mejor forma es usar *generics* que permite recibir como parámetro cualquier tipo de dato
 */
struct NuevoHistorial {
    static func log<Val>(_ val: Val) {
        print("Impresión del log: \(val)")
    }
}
NuevoHistorial.log(267.89)
NuevoHistorial.log("Me encanta el desarrollo en iOS")
NuevoHistorial.log(Date.now)
NuevoHistorial.log(false)
/*:
 Es posible restringir los tipos por ejemplo a tipos numéricos lo que nos permite realizar operaciones aritméticas usando generics:
 */
struct Matematicas {
    // Usando Numeric se restringe el generic
    static func sumar<T: Numeric>(_ primerValor: T, _ segundoValor: T) -> T {
        primerValor + segundoValor
        // Usar + no sería posible sin restringir el valor
    }
}
print(Matematicas.sumar(45, 55))
print(Matematicas.sumar(90, 109.99))

