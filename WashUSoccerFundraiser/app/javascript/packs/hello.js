function hello() {
    console.log("hello world");
}

$(document).ready(function() {
    $('button#greet-user-button').on(
      'click',
      function() {
        hello();
      }
    );
  });