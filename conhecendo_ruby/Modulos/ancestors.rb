# Podemos ver como são resolvidas as chamadas de métodos utilizando ancestors :
class C
    def x; "x"; end
end

module M
    def x; '[' + super + ']'; end
    def y; "y"; end
end

class C
    include M
end

p C.ancestors
c = C.new
puts c.x
puts c.y