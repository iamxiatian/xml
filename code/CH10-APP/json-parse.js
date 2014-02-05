var jsontext = '{"name":"王某某", "age": 30, \
                 "phoneNumbers": ["6666-7777", "1XX-1234-5678"]}';
var contact = JSON.parse(jsontext); 
document.write(contact.name + ", " + contact.age); 
document.write("<br/>");
document.write("main phone: ");
document.write(contact.phoneNumbers[0]);

contact2 = JSON.parse(jsontext, function(key, value){
    if(typeof value === 'number'){
        return value - 5;
    } else {
        return value;
    }
}); 

document.write("<br/><hr/> 指定了reviver匿名函数，转换后的年龄属性值为：");
document.write(contact2.age);