window.addEventListener('DOMContentLoaded', function () {

    var nav = document.querySelector('nav');

    nav.addEventListener('click', function (e) {
        // e.preventDefault();
        e.target.style.color = 'red';

        var target = e.target.textContent;
        localStorage.page = target;
    });

    switch (localStorage.page) {
        case 'index': idx = 0;
            break;
        case 'company': idx = 1;
            break;
        case 'service': idx = 2;
            service();
            break;
        case 'mypage': idx = 3;
            mypage();
            break;
    }

    nav.children[idx].style.color = 'red';

    function service() {
        var button = document.querySelector('button');
        var favorites, img_src;
        var imgArr = [];

        button.addEventListener('click', function (e) {
            favorites = document.querySelectorAll('input:checked');
            for (var i = 0; i < favorites.length; i++) {
                // imgArray = favorites[i].nextElementSibling.src;
                // console.log(img_src);

                imgArr.push(favorites[i].nextElementSibling.src);
                console.log(imgArr);
            }
            // localStorage.favorites = imgArr;
            localStorage.favorites = JSON.stringify(imgArr); //문자열로만들기
        });
    }

    function mypage() {
        var imgString = JSON.parse(localStorage.favorites); //문자열을 배열로 변환
        var div = document.querySelector('div');
        for (var i in imgString) {
            div.innerHTML += `<img src=${imgString[i]}>`
        }

        // var imgString = localStorage.favorites;
        // var myimg = imgString.split(','); //문자를 분할시켜 배열로 저장
        // console.log(myimg);

        // var div = document.querySelector('div');
        // for (var i in myimg) {
        //     div.innerHTML += `<img src= ${myimg[i]} >`;
        // }
    }
});