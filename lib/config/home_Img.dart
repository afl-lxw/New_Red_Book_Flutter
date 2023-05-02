class HomeImgList {
  HomeImgList({
    this.imgPath = '',
    this.name = '',
    this.desc = '',
    this.hart = 0,
  });
  String imgPath;
  String name;
  String desc;
  int hart;

  dynamic operator [](String key) {
    switch (key) {
      case 'imgPath':
        return imgPath;
      case 'name':
        return name;
      case 'desc':
        return desc;
      case 'hart':
        return hart;
      default:
        throw Exception('Invalid key: $key');
    }
  }

  static List<HomeImgList> imgList = <HomeImgList>[
    HomeImgList(
        imgPath: 'assets/images/IMG_4318.JPG',
        name: 'IMG_4318.JPG',
        desc: 'IMG_4318.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4319.JPG',
        name: 'IMG_4319.JPG',
        desc: 'IMG_4319.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4320.JPG',
        name: 'IMG_4320.JPG',
        desc: 'IMG_4320.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4321.JPG',
        name: 'IMG_4321.JPG',
        desc: 'IMG_4321.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4322.JPG',
        name: 'IMG_4322.JPG',
        desc: 'IMG_4322.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4323.JPG',
        name: 'IMG_4323.JPG',
        desc: 'IMG_4323.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4324.JPG',
        name: 'IMG_4324.JPG',
        desc: 'IMG_4324.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4325.JPG',
        name: 'IMG_4325.JPG',
        desc: 'IMG_4325.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4326.JPG',
        name: 'IMG_4326.JPG',
        desc: 'IMG_4326.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4327.JPG',
        name: 'IMG_4327.JPG',
        desc: 'IMG_4327.JPG',
        hart: 12),
    HomeImgList(
        imgPath: 'assets/images/IMG_4328.JPG',
        name: 'IMG_4328.JPG',
        desc: 'IMG_4328.JPG',
        hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4329.JPG',
    //     name: 'IMG_4329.JPG',
    //     desc: 'IMG_4329.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4330.JPG',
    //     name: 'IMG_4330.JPG',
    //     desc: 'IMG_4330.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4331.JPG',
    //     name: 'IMG_4331.JPG',
    //     desc: 'IMG_4331.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4332.JPG',
    //     name: 'IMG_4332.JPG',
    //     desc: 'IMG_4332.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4333.JPG',
    //     name: 'IMG_4333.JPG',
    //     desc: 'IMG_4333.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4334.JPG',
    //     name: 'IMG_4334.JPG',
    //     desc: 'IMG_4334.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4335.JPG',
    //     name: 'IMG_4335.JPG',
    //     desc: 'IMG_4335.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4336.JPG',
    //     name: 'IMG_4336.JPG',
    //     desc: 'IMG_4336.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4337.JPG',
    //     name: 'IMG_4337.JPG',
    //     desc: 'IMG_4337.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4338.JPG',
    //     name: 'IMG_4338.JPG',
    //     desc: 'IMG_4338.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4339.JPG',
    //     name: 'IMG_4339.JPG',
    //     desc: 'IMG_4339.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4340.JPG',
    //     name: 'IMG_4340.JPG',
    //     desc: 'IMG_4340.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4341.JPG',
    //     name: 'IMG_4341.JPG',
    //     desc: 'IMG_4341.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4342.JPG',
    //     name: 'IMG_4342.JPG',
    //     desc: 'IMG_4342.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4343.JPG',
    //     name: 'IMG_4343.JPG',
    //     desc: 'IMG_4343.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4344.JPG',
    //     name: 'IMG_4344.JPG',
    //     desc: 'IMG_4344.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4345.JPG',
    //     name: 'IMG_4345.JPG',
    //     desc: 'IMG_4345.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4346.JPG',
    //     name: 'IMG_4346.JPG',
    //     desc: 'IMG_4346.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4347.JPG',
    //     name: 'IMG_4347.JPG',
    //     desc: 'IMG_4347.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4348.JPG',
    //     name: 'IMG_4348.JPG',
    //     desc: 'IMG_4348.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4349.JPG',
    //     name: 'IMG_4349.JPG',
    //     desc: 'IMG_4349.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4350.JPG',
    //     name: 'IMG_4350.JPG',
    //     desc: 'IMG_4350.JPG',
    //     hart: 12),
    // HomeImgList(
    //     imgPath: 'assets/images/IMG_4351.JPG',
    //     name: 'IMG_4351.JPG',
    //     desc: 'IMG_4351.JPG',
    //     hart: 12),
  ];
}
