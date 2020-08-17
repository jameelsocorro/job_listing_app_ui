class Job {
  final int id;
  final String companyName;
  final String imgUrl;
  final String position;
  final String location;
  final String type;
  final List<String> responsibilities;
  final List<String> qualifications;

  Job({
    this.id,
    this.companyName,
    this.imgUrl,
    this.position,
    this.location,
    this.type,
    this.responsibilities,
    this.qualifications,
  });
}
