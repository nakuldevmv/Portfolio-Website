// ignore_for_file: camel_case_types

class Experience {
  final String companyName;
  final String role;
  final String startTime;
  final String endTime;
  final String workType;
  final String duration;
  final bool start;
  final bool end;

  Experience({required this.companyName, required this.role, required this.startTime, required this.endTime, required this.workType, required this.start, required this.end, required this.duration});
}

List<Experience> Experiences = [
  Experience(
    role: 'Software Engineer',
    companyName: 'ETC',
    startTime: 'Aug 2021',
    endTime: 'Current',
    workType: 'Fulltime',
    duration: '3 year',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Developer',
    companyName: 'Bnk',
    startTime: 'Sep 2019',
    endTime: 'Aug 2021',
    workType: 'Fulltime',
    duration: '',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Developer',
    companyName: 'FptSoftWare',
    startTime: 'April 2018',
    endTime: 'Sep 2019',
    workType: 'Fulltime',
    duration: '',
    start: true,
    end: true,
  ),
];
