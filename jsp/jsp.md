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

### 에러처리
- 에러 페이지 지정 & 에러 페이지 작성

    - 에러 페이지 지정
         - <%@ page errorPage = "예외발생시보여질JSP지정" %>

    - 에러 페이지 작성
        - <%@ page isErrorPage = "true" %>

        - isErrorPage 속성이 true인 경우 에러 페이지로 지정
- 응답상태 코드별 에러 페이지 지정
    - web.xml에서 지정
    ```
    <web-app ...>
    ...
    <error-page>
    <error-code>에러코드</error-code>
    <location>에러페이지의 URI</location>
    </error-page>
   ...
    </web-app>
    ```
    - <error-code> : 404, 500 등의 응답 상태 코드
    - <location> : 해당 응답 상태 코드에 알맞은 에러 화면을 출력할 JSP
페이지 지정

- 예외 타입별 에러 페이지 지정
    - web.xml에서 지정
    ```
    <web-app ...>
    ...
    <error-page>
    <exception-type>예외클래스명</exception-type>
    <location>에러페이지의 URI</location>
    </error-page>
   ...
    </web-app>
    ```
    - <exception-type> : 예외 클래스의 완전한 이름
    - <location> : 해당 응답 상태 코드에 알맞은 에러 화면을 출력할 JSP
페이지 지정
- 에러페이지 우선 순위
    
1. page 디렉티브의 errorPage 속성에서 지정한 에러 페이지를 보여준다.
2. JSP 페이지에서 발생한 예외 타입이 web.xml 파일의 <exception-type>에서 지정한 예외 타입과 동일한 경우 지정한 에러 페이지를 보여준다.
3. JSP 페이지에서 발생한 에러 코드가 web.xml 파일의 <error-code>에서 지정한 에러 코드와 동일한 경우 지정한 에러 페이지를 보여준다.
4. 아무것도 해당되지 않을 경우 웹 컨테이너가 제공하는 기본 에러 페이지를 보여준다.
