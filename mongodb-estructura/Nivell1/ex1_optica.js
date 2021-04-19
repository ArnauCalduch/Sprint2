//
use optica
//
db.optica.insert({
	comanda: [{
		_id: ObjectId("607d5e6a318a1ec50b8c27f7"),
		ulleres: [{
			_id: ObjectId("607d5e53ec6ffa50978e20f2"),
			marca: "Ray-Ban",
			graduacio_left: "1.2",
			graduacio_right: "2.1",
			tipus_muntura: "metàl·lica",
			color_muntura: "negre",
			color_left: "groc",
			color_right: "groc",
			preu: "99.50",
			proveïdor: [{
				_id: ObjectId("507f1f77bcf86cd799439011"),
				nom: "PepitoStore",
				telefon: "123456789",
				fax: "901955791",
				NIF: "15373801A",
				adreça: [{
					_id: ObjectId("507f191e810c19729de860ea"),
					carrer: "Avinguda Diagonal",
					numero : "128",
					pis: "2",
					porta: "1",
					ciutat: "Barcelona",
					codi_postal: "08011",
					pais: "España"
				}]
			}],
			client: [{
				_id: ObjectId("6059aea2219c4b460a875fea"),
				nom: "Arnau Calduch Rivas",
				telefon: "620359602",
				email: "arnaucalduch@gmail.com",
				data_registre: "2021-02-23",
				adreça: [{
					_id: ObjectId("6059aeb7fb3ed0e4e14319bc"),
					carrer: "Leiva",
					numero : "85",
					pis: "3",
					porta: "5",
					ciutat: "Barcelona",
					codi_postal: "08014",
					pais: "España"
				}]
			}]
		}],
		empleat: [{
			_id: ObjectId("6059aecb215e95834a79a475"),
			nom: "Dani Yao",
			telefon: "789654123",
			nif: "12335466Z"
		}]
	}]
})

db.optica.insert({
	comanda: [{
		_id: ObjectId("607d61ffee77ea3fc135f97e"),
		ulleres: [{
			_id: ObjectId("607d61f4c4fc4e1654ea2476"),
			marca: "Nike",
			graduacio_left: "2.4",
			graduacio_right: "3.1",
			tipus_muntura: "pasta",
			color_muntura: "vermell",
			color_left: "negre",
			color_right: "negre",
			preu: "105.99",
			proveïdor: [{
				_id: ObjectId("6059afab7bc76af6b5533264"),
				nom: "OjuStore",
				telefon: "987456321",
				fax: "903248208",
				NIF: "47369279C",
				adreça: [{
					_id: ObjectId("6059b11c2339485b64486dcf"),
					carrer: "Rocafort",
					numero : "32",
					pis: "1",
					porta: "1",
					ciutat: "Barcelona",
					codi_postal: "08011",
					pais: "España"
				}]
			}],
			client: [{
				_id: ObjectId("6059b1505d0a15afa2c78f2f"),
				nom: "Manolito Gafotas",
				telefon: "489751483",
				email: "manolito@gmail.com",
				data_registre: "2021-03-10",
				adreça: [{
					_id: ObjectId("6059b1ac7323dec73534cb99"),
					carrer: "Watt",
					numero : "11",
					pis: "4",
					porta: "1",
					ciutat: "Barcelona",
					codi_postal: "08014",
					pais: "España"
				}]
			}]
		}],
		empleat: [{
			_id: ObjectId("6059b20fdd60da3d4dc053d1"),
			nom: "Harry Potter",
			telefon: "456321987",
			nif: "91552890X"
		}]
	}]
})

