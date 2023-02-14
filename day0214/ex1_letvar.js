//var : 함수형 변수
//let : 영역형 변수

var a =1;//새로 생성
var b =2;//새로 생성

function test1(){

    var a=3;//새로 생성, 외부의 a와 전혀 다른 변수로 생성
    let b=4;//새로 생성

    if(true){
        var a=5;//덮어쓴다. 그전 a=3에 덮어쓰게 된다. 
        let b=6;//새로 생성 구역을 빠져나오면 소멸
        console.log(`a=${a},b=${b}`);//5,6 출력
            }

    console.log(`a=${a},b=${b}`);//5,4로 출력       
};


test1();
console.log(`a=${a},b=${b}`);//1,2가 출력   