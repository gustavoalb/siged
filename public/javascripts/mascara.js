 Event.observe(window, 'load', function() {

  new MaskedInput('.date', '99/99/9999');
  new MaskedInput("#pessoa_telefone_residencial", '(99) 9999-9999');
  new MaskedInput('#pessoa_telefone_celular', '(99) 9999-9999');
  new MaskedInput('#pessoa_cpf', '999.999.999-99');
  new MaskedInput('#ssn', '999-99-9999');
  new MaskedInput('#product', 'a*-999-a999');

  new MaskedInput('#eyescript', '~9.99 ~9.99 999', {
    completed: function(){
      alert("You typed the following: " + this.getValue());
    }
  });

  MaskedInput.definitions['~']='[+-]';

  new MaskedInput('#eyescript2', '~9.99 ~9.99 999', {
    completed: function(){
      alert("You typed the following: " + this.getValue());
    }
  });
});