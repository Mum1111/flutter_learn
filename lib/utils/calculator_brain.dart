import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double bmi = 0;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);

    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi < 18.5) {
      return '体重不足';
    } else if (bmi > 23.9) {
      return '超重';
    } else {
      return '正常';
    }
  }

  String getResultIntro() {
    if (bmi < 18.5) {
      return '您的BMI（身体质量指数）低于18.5，您的体重相对较轻。可以采取健康和可持续的方法来增加体重，而不是依赖不健康的饮食或生活方式';
    } else if (bmi > 23.9) {
      return '您的BMI（身体质量指数）大于24，表明您的体重相对较重。在这种情况下，采取健康的方法来减轻体重，提高整体健康水平非常重要';
    } else {
      return '您的BMI（身体质量指数）位于18.5到24之间，是正常体重范围。在这个范围内，主要目标是保持健康的生活方式和体重稳定';
    }
  }
}
