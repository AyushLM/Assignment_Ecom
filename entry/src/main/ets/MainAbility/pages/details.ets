@Entry
@Component
struct Details {
  @State message: string = 'Hello World'
  @State value: number = 1
  scroll : Scroller = new Scroller();

  build() {
    Column({space:20}){
      Column({space:5}) {
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Button('<').fontColor(Color.Black).backgroundColor(0XE0E1E4).fontWeight(FontWeight.Bolder)
          Text("Detail").fontSize(30).fontColor(0x000000).fontWeight(FontWeight.Bolder)
          Button(':').fontColor(Color.Black).backgroundColor(0XE0E1E4).fontWeight(FontWeight.Bolder)
        }.width('100%')

        Stack({ alignContent: Alignment.TopEnd }) {
          Image($r('app.media.shoe1')).height(250).width(300).borderRadius(10).objectFit(ImageFit.Contain)
          Image($r('app.media.ratingshoe1')).height(70).width(70).borderRadius(10).margin({ top: 25 })
        }

        Flex({ justifyContent: FlexAlign.Start }) {
          Text("Running Unisex Shoes").fontSize(20).fontWeight(FontWeight.Bolder)
        }

        Flex({ justifyContent: FlexAlign.Start }) {
          Text("₹ 1400").fontSize(17).fontWeight(FontWeight.Bolder)
        }

        Scroll(this.scroll) {
          Text("Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipis cin elit, sed do eiusmod tempor incicidunt ut labore et dolore magna aliqua. Ut enim ad mini m veniam, quis nostrud exercitation")
            .fontWeight(FontWeight.Lighter)
        }
        .scrollable(ScrollDirection.Vertical)
        .scrollBar(BarState.On)
        .height(100)
      }

      Column({space:15}){
        Flex({justifyContent:FlexAlign.SpaceAround}){
          Text("Color:").fontSize(20).fontWeight(FontWeight.Bolder).margin({top:10})
          Column(){
            Radio({group:"Color:", value:"Blue"})
            Text("Blue").fontWeight(FontWeight.Bolder).fontSize(12)
          }
          Column(){
            Radio({group:"Color:", value:"Yellow"})
            Text("Yellow").fontWeight(FontWeight.Bolder).fontSize(12)
          }
          Column(){
            Radio({group:"Color:", value:"Red"})
            Text("Red").fontWeight(FontWeight.Bolder).fontSize(12)
          }
          Counter() {
            Text(this.value.toString()).fontWeight(FontWeight.Bolder).fontSize(20)
          }
          .onInc(() => {
            this.value++
          })
          .onDec(() => {
            this.value--
          })
        }
        Flex({ justifyContent: FlexAlign.Start }) {
          Text("Available Sizes:").fontSize(20).fontWeight(FontWeight.Bolder)
        }
        Scroll(this.scroll){
          Row({space:6}){
            Button('6 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('7 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('8 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('9 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('10 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('11 inches',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);

        Row(){
          Flex({justifyContent:FlexAlign.Start}){
            Image($r('app.media.like')).height(50).width(50).borderRadius(10).objectFit(ImageFit.Contain).margin({left:40,top:15}).backgroundColor(Color.White)
            Button('Add to Cart',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0X00A8E1).fontColor(Color.Black).borderRadius(10).margin({left:50,top:15})

              .onClick(()=>{
                AlertDialog.show({message:'Item added to Cart'})
              })
          }
        }
      }
    }
    .margin(20)
  }
}