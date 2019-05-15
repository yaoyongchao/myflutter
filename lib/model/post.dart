class Post {
  const Post({this.title, this.author, this.imageUrl});
  final String title ;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '张三',
    author: '张三1',
    imageUrl: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=407745454,37477646&fm=27&gp=0.jpg'
  ),
  Post(
    title: '李四',
    author: '李四1',
    imageUrl: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=705545521,4148829032&fm=27&gp=0.jpg'
  )
];
