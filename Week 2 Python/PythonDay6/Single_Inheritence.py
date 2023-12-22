class bird:
    def __init__(self,name):
        self.name=name
    def print_info(self):
        print('this bird is : ',self.name)
    def fly(self):
        print('the bird can fly')
        
class parrot(bird):
    def __init__(self,name,color,character):
        super().__init__(name)
        self.color=color
        self.character=character
        
    def print_info(self):
            print('this bird is : ',self.name)
            print('color of birf is :',self.color)
            print('character of bird is :',self.character)
            
obj_parrot = parrot('parrot','red','good')
obj_parrot.fly()
obj_parrot.print_info()
