class Education {
  final String institutionName;
  final String department;
  final String startTime;
  final String endTime; // Nullable end time
  final String grade;
  final bool start;
  final bool end; // Nullable grade

  Education(
      {required this.institutionName,
      required this.department,
      required this.startTime,
      required this.endTime,
      required this.grade,
      required this.start,
      required this.end});
}

List<Education> educations = [
  Education(
      institutionName: 'JCT Institutions',
      startTime: 'Sep 2023',
      endTime: 'Jul 2026',
      department: 'BE.CSE',
      grade: '',
      start: true,
      end: false),
  // Education(
  //   institutionName: 'Naan Mudhalvan',
  //   startTime: 'Sep 2023',
  //   endTime: 'Jul 2026',
  //   department: '',
  //   grade: '',
  //    start: false,

  // ),
  Education(
      institutionName: 'M-DIT Polytechnic\nCollege',
      startTime: 'Sep 2021',
      endTime: 'Apr 2023',
      department: 'DCE',
      grade: '8.66 CGPA',
      start: false,
      end: false),
  Education(
      institutionName: 'Palora HSS Ulliyeri',
      startTime: 'Jun 2018',
      endTime: 'Mar 2020',
      department: '',
      grade: '75%',
      start: false,
      end: false),
  Education(
      institutionName: 'GHSS Kokkallur',
      startTime: 'Jun 2016',
      endTime: 'Mar 2018',
      department: '',
      grade: '97%',
      start: false,
      end: true),
];
