<div class="w">
    <div class="good_box1">
        <h1 class="good_tit"><span>{{=product.name}}</span></h1>
        <p class="goog_jg">商城价格：<i>￥{{=product.chooseSpecIndex >= 0 ? chooseSpec.price : product.price}}</i></p>
        {{
            if (typeof chooseSpec.transportationCost !== 'undefined') {
        }}
            <p class="good_yf">{{=chooseSpec.transportationCost > 0 ? '运费：￥' + chooseSpec.transportationCost : '免运费'}}</p>
        {{
            } else {
        }}
            <p class="good_yf">{{=product.transportationCost > 0 ? '运费：￥' + product.transportationCost : '免运费'}}</p>
        {{
            }
        }}
    </div>
</div>
<div class="w_good clearfix">
    <div class="w">
        <ul class="good_ggchioce clearfix">
            {{
                for (var i in product.specifications) {
            }}
                    <li class="choose">{{=product.specifications[i].name}}</li>
            {{
                }
            }}
        </ul>
    </div>
</div>
<div class="w_good clearfix">
    <div class="w">
        <div class="good_num clearfix">
            <span class="good_ltitle">数量：</span>
            <a class="decrease" href="javascript:;">-</a>
            <input type="text" value="1" id="prosum">
            <a class="increase" href="javascript:;">+</a>
            <span class="good_yh">{{=product.chooseSpecIndex < 0 || chooseSpec.inventoryCount > 0 ? '有货' : '缺货'}}</span>
        </div>
    </div>
</div>
<div class="w_good clearfix">
    <div class="w">
        <ul class="good_buy clearfix">
            <li><a class="good_btn_go" href="javascript:void(0);">加入购物车</a></li>
            <li><a class="good_btn_buy" href="javascript:void(0);">立即购买</a></li>
        </ul>
    </div>
</div>