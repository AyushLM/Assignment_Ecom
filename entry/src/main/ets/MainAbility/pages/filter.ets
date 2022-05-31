@Entry
@Component
struct filter {
  @State message: string = 'Hello World'
  category_list : SelectOption[] = [
    {value:'Category A'},
    {value:'Category B'},
    {value:'Category C'},
    {value:'Category D'}
  ];

  brand_list : SelectOption[] = [
    {value:'Brand A'},
    {value:'Brand B'},
    {value:'Brand C'},
    {value:'Brand D'}
  ];
  scroll: Scroller = new Scroller();

  build() {
    Column(){
      Column({space:20}){
        Flex({ justifyContent: FlexAlign.SpaceBetween}) {
          Button('<').fontColor(Color.Black).backgroundColor(0XE0E1E4).fontWeight(FontWeight.Bolder)
          Text("Filter").fontSize(30).fontColor(0x000000).fontWeight(FontWeight.Bolder)
          Button(':').fontColor(Color.Black).backgroundColor(0XE0E1E4).fontWeight(FontWeight.Bolder)
        }.width('100%')

        Flex({ justifyContent: FlexAlign.Start}){
          Text("Gender").fontSize(20).fontWeight(FontWeight.Bolder)
        }
        Row(){
          Flex({justifyContent:FlexAlign.SpaceEvenly}){
            Button('Male',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Female',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Both',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
          }
        }

        Flex({justifyContent:FlexAlign.Start}){
          Text("Category").fontSize(20).fontWeight(FontWeight.Bolder)
        }
        Select(this.category_list)
          .selected(0)
          .backgroundColor(0XE0E1E4)
          .borderRadius(10)
          .width(300)
          .height(50)


        Flex({justifyContent:FlexAlign.Start}){
          Text("Brand").fontSize(20).fontWeight(FontWeight.Bolder)
        }
        Select(this.brand_list)
          .selected(0)
          .backgroundColor(0XE0E1E4)
          .borderRadius(10)
          .width(300)
          .height(50)

        Flex({justifyContent:FlexAlign.Start}){
          Text("Price").fontSize(20).fontWeight(FontWeight.Bolder)
        }

        Column(){
          Flex({justifyContent:FlexAlign.Start}){
            Text("₹ 500").fontSize(20).fontWeight(FontWeight.Bolder)
          }
          Slider({
            value:5500,
            min:500,
            max:15000,
            step:100,
            style:SliderStyle.OutSet
          })
        }

        Flex({justifyContent:FlexAlign.Start}){
          Text("Sizes").fontSize(20).fontWeight(FontWeight.Bolder)
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
          Flex({justifyContent:FlexAlign.SpaceEvenly}){
            Button('Clear All',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
            Button('Add',{type:ButtonType.Normal}).fontWeight(FontWeight.Bolder).backgroundColor(0XE0E1E4).fontColor(Color.Black).borderRadius(10)
          }
        }
        .height(100)



      }
    }.margin(20)
  }
}