
var coll = document.getElementsByClassName("collapsible");
var coll1 = document.getElementsByClassName("collapsible1");
var coll2 = document.getElementsByClassName("collapsible2");
var coll3 = document.getElementsByClassName("collapsible-aside");
var coll4 = document.getElementsByClassName("collapsible-aside1");
var coll5 = document.getElementsByClassName("collapsible-aside2");


var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.drop-content');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}

for (i = 0; i < coll1.length; i++) {
    coll1[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.drop-content1');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}

for (i = 0; i < coll2.length; i++) {
    coll2[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.drop-content2');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}
for (i = 0; i < coll3.length; i++) {
    coll3[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.aside-drop');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}
for (i = 0; i < coll4.length; i++) {
    coll4[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.aside-drop1');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}
for (i = 0; i < coll5.length; i++) {
    coll5[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = document.querySelector('.aside-drop2');
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}

