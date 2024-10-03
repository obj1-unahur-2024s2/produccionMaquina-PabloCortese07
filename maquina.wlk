object maquina {
  const property valores = [43,18,49,62,33,39] 

  method algunDiaSeProdujo(cantidad) = valores.contains(cantidad)

  method maximoValorDeProduccion() = valores.max()

  method valoresDeProduccionPares() = valores.filter{number => number.even() }

  method produccionEsAcotada(n1,n2) = valores.all{param => param.between(n1, n2)}

  method produccionesSuperioresA(varAcomparar) {
    return valores.filter({num => num > varAcomparar})
  }

  method produccionesSumando(cant) = valores.map({num => num + cant})

  method totalProducido() = valores.sum()

  method ultimoValorDeProduccion() = valores.last()

  method cantidadProduccionesMayorALaPrimera() {
    return valores.filter({
      prod => prod > valores.first()
    })
  }
}