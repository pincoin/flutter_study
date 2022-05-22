import '../models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
      title: '쉽고 빠른 플러터 앱 개발',
      subtitle: 'Flutter & Dart로 화면 구현ㆍ상태 관리ㆍ데이터 처리ㆍ디자인 패턴 익히기',
      description:
          '인프런의 인기 강의, “무작정 시리즈” 제작자가 직접 집필한 플러터 도서. 초심자들도 어렵지 않은, 쉽고 빠른 플러터 앱 개발!',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FFjoWL%2FbtrAwDwUGux%2FyBbD9J9q3SEABTauWcBGqK%2Fimg.png',
    ),
    Book(
      title: '모두를 위한 PostgreSQL',
      subtitle: '누구나 이해할 수 있는 오픈소스 데이터베이스 개발',
      description:
          '이 책에서는 PostgreSQL를 활용하여 데이터베이스를 개발할 때 기본이 되는 요소인 테이블 생성, 컬럼 변경뿐 아니라 데이터 생성, 읽기, 수정, 삭제와 같은 동작을 ‘커뮤니티 게시판에 글 작성하기’와 같은 실습 예제를 통해 자연스럽게 습득할 수 있다.',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FvMhns%2FbtqU4BdqVur%2FXcSqvDZnTDK9G7vXk8TdFk%2Fimg.jpg',
    ),
    Book(
      title: '파이썬 해킹 레시피',
      subtitle: '웹 크롤링 및 취약점 진단 도구를 구현해보는 정보 보안 실습',
      description:
          '이 책은 저자가 다년간의 정보 보안 강의, 컨설팅, 개발 경험을 토대로 작성한 해킹 요리 비법서다. 파이썬 3.9, Asyncio, BeautifulSoup, 비동기 문법 등 최신 파이썬 트렌드를 반영한 코드는 싱싱한 요리 재료이며 기본에 충실히 풀어나가는 이론은 레시피와 같다.',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FrTh6k%2Fbtq517fdjqN%2FumbKQy7r9eGVnK4fkC8orK%2Fimg.png',
    ),
    Book(
      title: '파이썬으로 익히는 말랑말랑 알고리즘',
      subtitle: '차근차근 설명하고 막힘없이 이해하는 알고리즘',
      description: '처음 코딩 테스트를 준비하는 초보자도 어려움없이 배우는 알고리즘 도서!',
      image:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fzsmo9%2Fbtrq0w8jaO3%2FfV9ualr5DlzCLNDHFEJWg1%2Fimg.png',
    ),
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}
