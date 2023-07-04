void main() {
  const attendance = 0.2;
  const homework = 0.3;
  const exam = 0.5;

  const attendanceGrade = 0.2 * 90;
  const homeworkGrade = 0.3 * 80;
  const examGrade = 0.5 * 94;

  final finalGrade =
      (attendanceGrade + homeworkGrade + examGrade).toInt().round();

  print(finalGrade);
}
