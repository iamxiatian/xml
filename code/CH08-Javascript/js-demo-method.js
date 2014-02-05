function Animal(name) {
	this.name=name;
	//对象方法
	this.introduce=function(){
		console.info("I am " + this.name);
	}
}

//类方法
Animal.run = function(){
	console.info("I can run");
}

//原型方法
Animal.prototype.introduceInChinese=function(){
	console.info("我是"+this.name);
}

//测试
var tom =new Animal("Tom Cat");
tom.introduce();
Animal.run();
tom.introduceInChinese(); 