data Booleano           = Verdadero | Falso deriving (Show)

-- Colores


data Color              = Rojo | Verde | Amarillo deriving (Show)

semaforo :: Color -> String
semaforo Rojo     = "Frená"
semaforo Verde    = "Avanzá"
semaforo Amarillo = "Precaución"

esRojo :: Color -> Booleano
esRojo Rojo = Verdadero
esRojo _    = Falso



-- Puntos

data Punto              = Punto Int Int deriving (Show)

origen :: Punto
origen = Punto 0 0

sumarX :: Punto -> Int -> Punto
sumarX (Punto x y) i = Punto (x + i) y

sumarY :: Punto -> Int -> Punto
sumarY (Punto x y) i = Punto x (y + i)


-- Listas

data Lista a            = ListaVacia | MkLista a (Lista a) deriving (Show)

-- Recursion.hs


data Arbol a            = ArbolVacio | Nodo a (Arbol a) (Arbol a)
