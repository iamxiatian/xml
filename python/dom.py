from xml.etree.ElementTree import ElementTree 
from xml.etree.ElementTree import Element 


root = Element('books') 
tree = ElementTree(root) 
book1 = Element(tag='book', attrib={'category' : "COOKING"}, text='Cooking secrit') 
root.append(book1) 


for i in range(10): 
    b = Element(tag='book', attrib={'category' : "COOKING"}, text='Cooking secrit-' + str(i)) 
    root.append(b) 


tree.write('test.xml', 'utf-8') 