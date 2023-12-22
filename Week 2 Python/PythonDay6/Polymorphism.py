class bird:
    def intro(self):
        print('all birds can fly')
    def flight(self):
        print("most of the birds can fly but some cannot fly")

class sparrow(bird):
    def flight(self):
        print("sparrows can fly")

class ostrich(bird):
    def flight(self):
        print("ostrich cant fly")
        
obj_bird = bird()
obj_spr = sparrow()
obj_ost = ostrich()

obj_bird.intro()
obj_bird.flight()
obj_spr.intro()
obj_spr.flight()
obj_ost.intro()
obj_ost.flight()