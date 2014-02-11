function loadXml(xmlFile) {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", xmlFile, false); 
    xhttp.send();
    return xhttp.responseXML;
}

$(document).ready(function(){
    var xmlDoc = loadXml('E7-books.xml');
    var bookList = xmlDoc.getElementsByTagName("book");
    for(var i=bookList.length; i> 0; i--) {
        var bookNode = bookList[i-1]; 
        var cover = bookNode.getElementsByTagName('cover')[0].textContent;
        var title = bookNode.getElementsByTagName('title')[0].textContent;
        var isbn = bookNode.attributes['isbn'].value;
        var author = bookNode.getElementsByTagName('authors')[0].textContent;
        var press = bookNode.getElementsByTagName('press')[0].textContent;
        var price = bookNode.getElementsByTagName('price')[0].textContent;
        var description = bookNode.getElementsByTagName('description')[0].textContent;
        var row = '<tr>\
                <td><img class="cover" src="' + cover + '"></td>\
                <td>\
                    <ul>\
                        <li class="title">' + title + '</li>\
                        <li>ISBN: ' + isbn +  '</li>\
                        <li>作者: ' + author + '</li>\
                        <li>出版社: ' + press + '</li>\
                        <li>价格: ' + price + '</li>\
                        <li class="description">' + description + '</li>\
                    </ul>\
                </td>\
            </tr>';
        $('#container').append(row);        
    }
});