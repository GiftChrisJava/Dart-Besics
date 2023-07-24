void main() {
  Map countryCapitals = {
    "France": "Paris",
    "USA": "Washington",
    "Japan": "Tokyo"
  };

  Map nameAge = {
    "Matt": 27,
    "John": 18,
    "Sarah": 17,
    "Larry": 80
  }; //String keys, int values

  Map employees = {
    345: {"name": "Donald Smith", "Department": "Accounting", "Salary": 1000},
    220: {"name": "Mark Anderson", "Department": "Sales", "Salary": 950},
    572: {"name": "Elizabeth Brahmen", "Department": "Marketing", "Salary": 975}
  };

  print(employees[345]);
}
