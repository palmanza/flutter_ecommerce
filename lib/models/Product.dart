import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Zapatillas Nike Venture Runner",
      price: 180,
      size: 8,
      description: dummyTextA,
      image: "assets/images/shoe1.png",
      color: const Color.fromARGB(255, 39, 102, 141)),
  Product(
      id: 2,
      title: "Botines Nike Mercurial Vapor 14",
      price: 160,
      size: 10,
      description: dummyTextB,
      image: "assets/images/shoe2.png",
      color: const Color.fromARGB(255, 134, 99, 68)),
  Product(
      id: 3,
      title: "Zapatillas Intercept Merrell",
      price: 120,
      size: 10,
      description: dummyTextC,
      image: "assets/images/shoe3.png",
      color: const Color.fromARGB(255, 208, 148, 133)),
  Product(
      id: 4,
      title: "Zapatillas Fila Atmosphere",
      price: 140,
      size: 11,
      description: dummyTextD,
      image: "assets/images/shoe4.png",
      color: const Color.fromARGB(255, 230, 123, 65)),
  Product(
      id: 5,
      title: "BOTAS AIR JORDAN 7 RETRO PSG NIKE",
      price: 220,
      size: 12,
      description: dummyTextE,
      image: "assets/images/shoe5.png",
      color: const Color.fromARGB(255, 128, 37, 44)),
  Product(
    id: 6,
    title: "Zapatillas adidas 4DFWD Pulse",
    price: 160,
    size: 12,
    description: dummyTextF,
    image: "assets/images/shoe6.png",
    color: const Color.fromARGB(255, 125, 35, 35),
  ),
];

String dummyTextA =
    "¿Querés sentir que caminás sobre las nubes? Con las zapatillas nIKE ADP gracias a su diseño y mezcla de materiales lo podes lograr, ya que son perfectas para usarlas en cualquier actividad que realices.";

String dummyTextB =
    "Corre detrás de la pelota sin que tus rivales te vean venir con los Botines Nike Legend 9 Academy Tf, un diseño ligero que acompaña tus movimientos y mejora tu destreza. La parte superior de cuero cuenta con texturas en relieve que brindan precisión a tus pases y golpes. La suela de goma mejora la tracción en canchas de césped artificial. Mejora tus tiempos y disfruta de un diseño acolchado en cada partido amistoso y contra tus rivales.";

String dummyTextC =
    "Acordonado Merrell outdoor de cuero y doble cordón para customizar a gusto. Entresuela de EVA y suelín de caucho antideslizante. Comprá en E-store y te lo enviamos a donde quieras. Aprovecha nuestros ...";

String dummyTextD =
    "Las Zapatillas Fila Atmosphere es un modelo ideal para el corredor amateur o principiante. Cuenta con una capellada confeccionada en mesh respirable con piezas de refuerzo para un calce perfecto. Además, su entresuela tiene tecnología ENERGIZED que brinda amortiguación.";

String dummyTextE =
    "ORDAN y Paris Saint-Germain vuelven a unir sus fuerzas y crean las botas Air Jordan 7 Retro X PSG. Combinan lo mejor del fútbol soccer de la Ligue 1, el básquetbol de la NBA y también la moda.";

String dummyTextF =
    "Viví la experiencia de tener en tus pies la suavidad que brinda la tecnología de mediasuela adidas 4D. Además, está confeccionado con Primegreen, materiales reciclados de alta calidad. Las Zapatillas adidas 4DFWD Pulse guiará a tu pie hacia adelante en cada pisada y absorbera el impacto para que cada desafio parezca más fácil.";
