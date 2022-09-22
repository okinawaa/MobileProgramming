String getDuration(String dateTime){
  DateTime nowTime = DateTime.now();
  Duration differentDate = nowTime.difference(DateTime.parse(dateTime));
  if(differentDate.inMinutes<=0) return '방금 전';
  if(differentDate.inMinutes<60) return '${differentDate.inMinutes}분 전';
  if(differentDate.inHours<24)return '${differentDate.inHours}시간 전';
  return '${differentDate.inDays}일 전';
}