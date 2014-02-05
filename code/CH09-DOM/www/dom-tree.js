function loadXmlFromFile(xmlFile) {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", xmlFile, false); 
    xhttp.send();
    return xhttp.responseXML;
}

var buffer = '';
$(document).ready(function () {
    var xmlDoc = loadXmlFromFile('books.xml'); //加载xml文档
    showTree(xmlDoc, 0);    //调用showTree()函数，输出结点树
    $('#main').html(buffer); //替换网页内容
});

function showTree(node, depth) {
    //输出当前node结点的信息
    writeNode(node, depth, buffer); 
    
    //循环输出当前结点的子结点信息
    var child = node.firstChild;
    for(var child=node.firstChild;child!=null; child = child.nextSibling){
        showTree(child, depth + 4);
        if(child==node.lastChild) break;
    }   
}

function writeNode(node, depth){
    if(node.nodeType==3){ 
        //忽略文本结点
        return;
    } else if(node.nodeType==9){ //文档结点
        //处理文档结点
        buffer = node.nodeName;
    } else if(node.nodeType == 1) {
        //处理元素结点
        buffer = buffer + '<br/>';
        for(var d=0; d<depth; d++) 
            buffer = buffer + '+';
            
        buffer = buffer + node.nodeName;
        
        //处理元素的属性
        var attributes = node.attributes;
        if(attributes.length > 0) {
            buffer = buffer + '[';
            for(var i=0; i<attributes.length; i++) {
                if(i>0) buffer = buffer + ', ';
                var att = attributes[i];
                buffer = buffer + att.nodeName + '=' + att.nodeValue;
            }
            buffer = buffer + '] ';
        }
    } 
}


