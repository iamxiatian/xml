function loadXmlFromFile(xmlFile) {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", xmlFile, false);
    xhttp.send();
    return xhttp.responseXML;
}

$(document).ready(function () {
    xmlDoc = loadXmlFromFile('books.xml');
    showTree(xmlDoc, 0);
});

function showTree(node, depth) {
    
}



