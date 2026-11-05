# KingSejong 예제로 배우기

[![Examples](https://github.com/kingsejong-lang/kingsejong-examples/actions/workflows/examples.yml/badge.svg)](https://github.com/kingsejong-lang/kingsejong-examples/actions/workflows/examples.yml)

한글 문법 프로그래밍 언어 [KingSejong](https://github.com/kingsejong-lang/kingsejong-lang) 을
작은 예제로 하나씩 배우는 저장소입니다. "Hello, World" 부터 시작해 한 레슨에 개념 하나씩
익히고, 마지막에 실습 프로그램을 만듭니다.

모든 예제는 CI 에서 KingSejong 최신 릴리스(v0.7.0)로 실행해 `expected.out` 과 출력이 같은지 확인합니다. 다음 릴리스의 기능을 쓰는 레슨(폴더에 `next` 파일이 있음)은 KingSejong `main` 으로만 확인합니다.

## 준비

KingSejong 을 설치합니다. 자세한 방법은 [설치 안내](https://github.com/kingsejong-lang/kingsejong-lang/blob/main/docs/INSTALL.md)를 보세요.

```sh
git clone https://github.com/kingsejong-lang/kingsejong-lang.git
cd kingsejong-lang
./install.sh --system
```

설치하지 않고 빌드만 했다면 `kingsejong` 대신 빌드한 실행 파일의 경로(`../kingsejong-lang/build/bin/kingsejong`)로
실행하세요. 경로로 실행해야 표준 라이브러리(`stdlib/`)를 찾습니다.

설치 없이 브라우저에서 해 보려면 [플레이그라운드](https://kingsejong-lang.github.io/kingsejong-lang/)를 쓰세요.

## 레슨

| 번호 | 주제 | 배우는 것 |
|---|---|---|
| [01](lessons/01-hello-world) | 첫 프로그램 | `출력()` |
| [02](lessons/02-variables) | 변수와 타입 | 정수, 실수, 문자열, 논리, 없음 |
| [03](lessons/03-operators) | 연산자 | 산술, 비교, 논리 연산 |
| [04](lessons/04-strings) | 문자열 | 연결, `${}` 끼워 넣기, 자르기 |
| [05](lessons/05-conditionals) | 조건문 | `만약` / `아니면` |
| [06](lessons/06-loops) | 반복문 | `N번 반복한다`, 범위 반복, 조건 반복 |
| [07](lessons/07-functions) | 함수 | 매개변수와 `반환` |
| [08](lessons/08-arrays) | 배열 | 인덱스, 추가, 잘라내기 |
| [09](lessons/09-dictionaries) | 사전 | 키와 값 |
| [10](lessons/10-josa) | 조사 표현식 | `목록을 정렬한다`, `걸러낸다`, `변환한다` |
| [11](lessons/11-higher-order) | 고차 함수와 클로저 | 함수를 주고받기 |
| [12](lessons/12-recursion) | 재귀 | 계승, 피보나치, 하노이의 탑 |
| [13](lessons/13-classes) | 클래스 | 필드, 생성자, 메서드 |
| [14](lessons/14-exceptions) | 예외 처리 | `시도` / `오류` / `마지막` |
| [15](lessons/15-modules) | 모듈 | `가져오기`, 표준 라이브러리 |
| [16](lessons/16-async) | 비동기 | `비동기 함수`, `대기` |
| [17](lessons/17-characters) | 글자 다루기 * | `s[i]`, `문자코드`, `코드문자` |
| [18](lessons/18-bits) | 비트 연산 * | `0x`·`0b` 리터럴, `&` `\|` `^` `~` `<<` `>>` |
| [19](lessons/19-for-each) | 요소 반복 * | `각각에 대해` |
| [20](lessons/20-sorting) | 비교 함수로 정렬하기 * | `정렬한다(비교 함수)`, `길이(사전)` |
| [21](lessons/21-command-line) | 명령줄 인자 * | `명령줄_인자()` |

\* 표시한 레슨은 v0.7.0 다음 릴리스의 기능을 씁니다. 지금은 KingSejong `main` 을 빌드해야 실행됩니다.

각 레슨 폴더에는 예제(`main.ksj`), 기대 출력(`expected.out`), 설명과 연습 문제(`README.md`)가 있습니다.

## 실습

| 프로그램 | 연습하는 것 |
|---|---|
| [FizzBuzz](projects/fizzbuzz) | 조건문과 나머지 연산 |
| [구구단](projects/multiplication-table) | 중첩 반복과 문자열 결합 |
| [에라토스테네스의 체](projects/prime-sieve) | 배열을 표로 쓰는 알고리즘 |
| [버블 정렬](projects/bubble-sort) | 배열 요소 교환 |

## 실행

```sh
kingsejong lessons/01-hello-world/main.ksj
```

예제 전체를 한 번에 확인하려면 실행 파일 경로를 `KSJ` 에 넣고 검사 스크립트를 돌립니다.

```sh
KSJ=../kingsejong-lang/build/bin/kingsejong scripts/check.sh
```

## 기여

예제를 고치거나 새 레슨을 추가할 때는 `scripts/check.sh --update` 로 `expected.out` 을 다시 만들고,
바뀐 출력이 의도한 것인지 확인해 주세요. 기여 방법은 [조직 기여 안내](https://github.com/kingsejong-lang/.github/blob/main/CONTRIBUTING.md)를 따릅니다.
질문은 [Discussions](https://github.com/kingsejong-lang/kingsejong-lang/discussions) 에 남겨 주세요.

## 라이선스

[MIT-0](LICENSE) (MIT No Attribution). 예제 코드를 저작권 고지 없이 복사해 자기 프로그램에 써도 됩니다. KingSejong 인터프리터 자체는 [MIT](https://github.com/kingsejong-lang/kingsejong-lang/blob/main/LICENSE) 입니다.
