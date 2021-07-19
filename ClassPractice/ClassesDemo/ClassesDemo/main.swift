
// skeleton을 새로운 Enemy object로 초기화함
let skeleton = Enemy()

// skeleton이라는 enemy object의 속성을 활용할 수 있다.
print(skeleton.health)
skeleton.move()
skeleton.attack()

// Enemy.swift에서 클래스를 정의한 것 만으로 초기화시키는 한 줄의 코드 작성을 통해 skeleton2, 3, ... 등의 체력과 공격력과 같은 속성, 그리고 행동을 정의할 수 있다.
let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "Grrrrrr")
dragon.move()
dragon.attack()

