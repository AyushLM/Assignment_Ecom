@Entry
@Component
struct Index {
  @State message: string = ''
  scroll: Scroller = new Scroller()
  grid_scroll : Scroller = new Scroller()

  build() {
    Column({space:20}){
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Button({type:ButtonType.Circle}){
          Image($r('app.media.menu'))
        }.width(50).height(50)

        Button({type:ButtonType.Circle}){
          Image($r('app.media.profilepic'))
        }.width(50).height(50)
      }

      Flex({justifyContent:FlexAlign.Start}){
        Text("Discover our new Items").fontWeight(FontWeight.Bolder).fontSize(20).height(50)
      }

      Flex({justifyContent: FlexAlign.SpaceBetween}){
        TextArea({placeholder: 'Search ...'}).fontSize(20).fontWeight(FontWeight.Bolder).width(900).height(40).borderRadius(10)

        Flex({justifyContent:FlexAlign.Start}){
          Button({type:ButtonType.Circle}){
            Image($r('app.media.search'))
          }.width(50).height(30).borderRadius(10)

          Button({type:ButtonType.Circle}){
            Image($r('app.media.filter'))
          }.width(50).height(50).borderRadius(10)
        }
      }

      Flex({justifyContent: FlexAlign.SpaceAround}){
        Image($r('app.media.singleshoe')).height(80).width(80).objectFit(ImageFit.Contain)
        Column(){
          Text("Running Unisex \nShoes").fontWeight(FontWeight.Bolder).fontSize(13)
          Text("Coming Soon...").fontWeight(FontWeight.Bolder).fontColor(Color.Blue).fontSize(13)
        }.margin({top:25})
        Column(){
          Toggle({type:ToggleType.Switch, isOn:false}).height(50).width(50).margin({top:25})
          Text("Notify me").fontWeight(FontWeight.Bolder).fontSize(12)
        }
      }.backgroundColor(0XE0E1E4).borderRadius(30)


      Column({space:10}){
        Flex({ justifyContent: FlexAlign.Start }) {
          Text("Categories").fontSize(20).fontWeight(FontWeight.Bolder)
        }
        Scroll(this.scroll){
          Row({space:6}){
            Button('Shoes',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Table',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Cupboard',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Sofa',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Utensils',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Electronics',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);
      }

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Text("Popular Shoes").fontSize(20).fontWeight(FontWeight.Bolder)
        Text("View All").fontSize(20).fontWeight(FontWeight.Bolder).fontSize(15).fontColor(Color.Blue).margin({top:5})
      }

      Grid(this.grid_scroll){
        GridItem(){
          Column(){
            Image($r('app.media.shoe1')).objectFit(ImageFit.Contain).height(120).width(120)
            Text("Running Unisex Shoes \nEdition 1").fontWeight(FontWeight.Bolder).fontSize(13)
            Text("₹ 1400").fontWeight(FontWeight.Bolder).fontSize(15)
          }
          .backgroundColor(0XE0E1E4)
          .height(220)
          .width(150)
          .borderRadius(30)
        }

        GridItem(){
          Column(){
            Image($r('app.media.shoe2')).objectFit(ImageFit.Contain).height(120).width(120)
            Text("Running Unisex Shoes \nEdition 2").fontWeight(FontWeight.Bolder).fontSize(13)
            Text("₹ 2020").fontWeight(FontWeight.Bolder).fontSize(15)
          }
          .backgroundColor(0XE0E1E4)
          .height(220)
          .width(150)
          .borderRadius(30)
        }

        GridItem(){
          Column(){
            Image($r('app.media.shoe3')).objectFit(ImageFit.Contain).height(120).width(120)
            Text("Running Unisex Shoes \nEdition 3").fontWeight(FontWeight.Bolder).fontSize(13)
            Text("₹ 3000").fontWeight(FontWeight.Bolder).fontSize(15)
          }
          .backgroundColor(0XE0E1E4)
          .height(220)
          .width(150)
          .borderRadius(30)
        }

        GridItem(){
          Column(){
            Image($r('app.media.shoe4')).objectFit(ImageFit.Contain).height(120).width(120)
            Text("Running Unisex Shoes \nEdition 4").fontWeight(FontWeight.Bolder).fontSize(13)
            Text("₹ 4400").fontWeight(FontWeight.Bolder).fontSize(15)
          }
          .backgroundColor(0XE0E1E4)
          .height(220)
          .width(150)
          .borderRadius(30)
        }

        GridItem(){
          Column(){
            Image($r('app.media.shoe5')).objectFit(ImageFit.Contain).height(120).width(120)
            Text("Running Unisex Shoes \nEdition 5").fontWeight(FontWeight.Bolder).fontSize(13)
            Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(15)
          }
          .backgroundColor(0XE0E1E4)
          .height(220)
          .width(150)
          .borderRadius(30)
        }
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .height(160);


      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {
        Column() {
          Image($r("app.media.home")).objectFit(ImageFit.Cover).width(25).height(25);
          Text("Home").fontSize(12);
        }

        Column() {
          Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(25).height(25);
          Text("Categories").fontSize(12);
        }

        Column() {
          Image($r("app.media.notification")).objectFit(ImageFit.Cover).width(25).height(25);
          Text("Notification").fontSize(12);
        }

        Column() {
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(25).height(25);
          Text("My Cart").fontSize(12);
        }
      }

    }.margin(20)
  }
}