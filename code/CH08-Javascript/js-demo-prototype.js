function Animal(name, age) {
    this.name = name;
    this.age = age;
}

Animal.prototype = {
    getName: function(){
        return this.name;
    },
    getAge: function(){
        return this.age;
    }
}

var tom = new Animal("Tom Cat", 2);
console.info(tom.getName() + " is " + tom.getAge() + " years old.");
