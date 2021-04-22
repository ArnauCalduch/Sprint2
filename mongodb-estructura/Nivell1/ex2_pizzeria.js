//Creem la base de dades
use pizzeria
//Creem les dades
db.pizzeria.insert({
	botiga: [{
		_id: "1",
		adreca: [{
			_id: "1",
			carrer: "Mamma mia",
			numero: "12",
			pis: "1",
			porta: "1",
			codi_postal: "08012",
			pais: "Espanya",
			provincia: [{
				_id: "1",
				nom: "Barcelona",
				localitat: [{
					_id: "1",
					nom: "Barcelona"
				}]
			}]
		}],
		empleat: [{
			_id: "1",
			nom: "Peter",
			cognoms: "Benjamin Parker",
			nif: "55555555S",
			telefon: "555555555",
			cuiner: false,
			repartidor: true
		},
		{
			_id: "2",
			nom: "Joan",
			cognoms: "Roca i Fontané",
			nif: "47813267Q",
			telefon: "610107225",
			cuiner: true,
			repartidor: false
		}],
		comanda: [{
			_id: "1",
			data: "2021-03-22",
			hora: "13:29",
			domicili: false,
			num_pizzes: "1",
			num_hamburg: "0",
			num_begudes: "1",
			preu: "10.50",
			client: [{
				_id: "1",
				nom: "Arnau",
				cognoms: "Calduch Rivas",
				telefon: "620359602",
				adreca: [{
					_id: "3",
					carrer: "Leiva",
					numero: "85",
					pis: "3",
					porta: "5",
					codi_postal: "08014",
					pais: "Espanya",
					provincia: [{
						_id: "1",
						nom: "Barcelona",
						localitat: [{
							_id: "1",
							nom: "Barcelona"
						}]
					}]
				}]
			}],
			producte: [{
				_id: "1",
				nom: "Pizza Quatre formatges",
				descripcio: "Clàssica i tradicional, elaborada amb la barreja de formatges mozzarella, emmental, Edam i formatge blau",
				categoria: [{
					_id: "1",
					nom: "Tradicional"
				}],
				imatge: "quatre-formatges.jpg",
				preu: "9.50"
			},
			{
				_id: "9",
				nom: "Estrella Damm",
				descripcio: "Cervesa Estrella de 0,25L",
				imatge: "estrella.jpg",
				preu: "1.0"
			}]
		},
		{	_id: "2",
			data: "2021-03-22",
			hora: "14:03",
			domicili: true,
			num_pizzes: "0",
			num_hamburg: "2",
			num_begudes: "2",
			preu: "25.40",
			client: [{
				_id: "2",
				nom: "Núria",
				cognoms: "Rivas Bartolí",
				telefon: "761675018",
				adreca: [{
					_id: "4",
					carrer: "Urgell",
					numero: "12",
					pis: "2",
					porta: "1",
					codi_postal: "08021",
					pais: "Espanya",
					provincia: [{
						_id: "1",
						nom: "Barcelona",
						localitat: [{
							_id: "1",
							nom: "Barcelona"
						}]
					}]
				}]
			}],
			producte: [{
				_id: "4",
				nom: "Hamburguesa amb foramtge",
				descripcio: "Formatge cheddar fos sobre carn de boví, enciam batavia, tomàquet, maionesa i pa clàssic",
				imatge: "cheeseburger.jpg",
				preu: "10.50"
			},
			{
				_id: "5",
				nom: "Hamburguesa Pulled Pork",
				descripcio: "Carn de porc esfilagarsada sobre carn de boví amb salsa BBQ, formatge Cheddar, tomàquet i enciam Batavia. Amb pa clàssic i salsa maig Smoked Bacon",
				imatge: "pulled-pork.jpg",
				preu: "12.50"
			},
			{
				_id: "8",
				nom: "Coca-Cola",
				descripcio: "Coca-cola normal d'1,5L",
				imatge: "cola.jpg",
				preu: "1.20"
			},
			{
				_id: "8",
				nom: "Coca-Cola",
				descripcio: "Coca-cola normal d'1,5L",
				imatge: "cola.jpg",
				preu: "1.20"
			}],
			repartidor: "1",
			hora_domicili: "14:24"
		}]
	}]
})