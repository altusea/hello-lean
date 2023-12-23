-- 1.1 Evaluating Expressions

#eval 42 + 19

#eval String.append "A" (String.append "B" "C")

#eval String.append (String.append "A" "B") "C"

#eval if 3 == 3 then 5 else 7

#eval if 3 == 4 then "equal" else "not equal"

-- 1.2 Types

-- 1.3 Functions and Definitions
def joinStringsWith(fst: String)(snd: String) (trd: String) : String := String.append (String.append snd fst) trd

#eval joinStringsWith ", " "one" "and another"

#check joinStringsWith

def volume (height: Nat) (width: Nat) (depth: Nat): Nat := height * width * depth

#eval volume 2 3 4

-- 1.4 Structures

structure Point3D where
  x : Float
  y : Float
  z : Float
deriving Repr

def origin3D : Point3D := { x := 0.0, y := 0.0, z := 0.0 }


structure RectangularPrism  where
  heigh : Float
  width : Float
  depth : Float
deriving Repr

def volume1 (prims: RectangularPrism): Float := prims.width * prims.heigh * prims.depth

#eval volume1 {width := 2.0, heigh := 3.0, depth := 4.0}

structure Segment where
  one: Float
  another : Float
deriving Repr

def lengthOfSegment (segment: Segment) : Float := Float.abs (segment.one - segment.another)

#eval lengthOfSegment {one := 1.0, another := 2.0}

#eval lengthOfSegment {one := 10.0, another := 3.0}

structure Hamster where
  name : String
  fluffy : Bool

structure Book where
  makeBook ::
  title : String
  author : String
  price : Float

-- 1.5 Datatypes and Patterns

-- TODO
