import { StringUtil } from 'dzqtool';

@Entry
@Component
struct Index {
  @State message: string = 'Hello AdHub';

  aboutToAppear(): void {

    let name : string = 'tom'
    if (!StringUtil.isEmpty(name)) {
      console.log(name)
    }
  }

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloAdHub')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}