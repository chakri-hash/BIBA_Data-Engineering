class persons:
    attr1="mammal"
    
    def __init__(self,name):
        self.name=name
        
    def speak(self):
        print("My name is : {}".format(self.name))
        
abcd = persons('abcd')
abcd.speak()