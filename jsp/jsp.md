### jsp

- 디렉티브(Directive)
    - JSP 페이지에 대한 설정 정보를 지정

- 디렉티브 구문
    - <%@ 디렉티브이름 속성1="값1" 속성2="값2" ... %>
    - <%@ page contentType = "text/html; charset=euc-kr" %>

- 제공 디렉티브
    - page : JSP 페이지에 대한 정보를 지정
    - 문서의 타입, 출력 버퍼의 크기, 에러 페이지 등 정보 지정
    - taglib : 사용할 태그 라이브러리를 지정
    - include : 다른 문서를 포함
    
- 스크립트 요소
    - 동적으로 출력 결과를 생성하기 위해 사용
    - 표현식(expression) : 값을 출력
    - 스크립트릿(scriptlet) : 자바 코드 실행
    -선언부(declaration) : 자바 메서드(함수)를 정의

- jsp 기본객체와 영역
    - PAGE 영역 - 하나의 JSP 페이지를 처리할 때 사용되는 영역
    - REQUEST 영역 - 하나의 HTTP 요청을 처리할 때 사용되는 영역
    - SESSION 영역 - 하나의 웹 브라우저와 관련된 영역
    - APPLICATION 영역 - 하나의 웹 어플리케이션과 관련된 영역