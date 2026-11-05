# 21. 명령줄 인자

> 이 레슨은 다음 KingSejong 릴리스(v0.7.0 이후 main)의 기능을 씁니다. v0.7.0 에서는 실행되지 않습니다.

## 배우는 것

- `명령줄_인자()` (첫 값은 스크립트 경로)
- 문자열 인자를 `정수()` 로 바꾸기
- 인자가 없을 때 사용법 알리기

## 실행

```sh
kingsejong lessons/21-command-line/main.ksj
kingsejong lessons/21-command-line/main.ksj 3 4 5
```

기대하는 출력은 [`expected.out`](expected.out) 에 있습니다 (인자 없이 실행한 결과).

## 연습 문제

1. 인자 중 가장 큰 수를 출력해 보세요.
2. 사용법 안내를 `오류_출력` 으로 바꾸고, `2> /dev/null` 을 붙여 실행하면 어떻게 되는지 보세요.
3. `-` 로 시작하는 값(`-3`)을 넘기려면 `--` 뒤에 씁니다. `kingsejong main.ksj -- -3 4` 로 실행해 보세요.
