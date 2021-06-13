function somar() {
  const primeiro = parseInt (document.getElementById("primeiro").value);
  const segundo = parseInt (document.getElementById("segundo").value);
  const soma = primeiro + segundo;
  document.getElementById("resultado").innerHTML= soma;
}