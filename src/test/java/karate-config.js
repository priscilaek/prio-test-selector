function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'uat';
  }
  var config = {
    apiUrl: 'https://reqres.in/api' 

  }
  if (env == 'dev') {
    config.apiUrl = 'https://reqres.in/api' 

  } else if (env == 'qa') {
    config.apiUrl = 'https://reqres.in/api'

  }

  return config;
}