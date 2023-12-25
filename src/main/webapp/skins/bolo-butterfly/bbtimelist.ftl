<#--

    Bolo - A stable and beautiful blogging system based in Solo.
    Copyright (c) 2020, https://github.com/adlered

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<div class="layout_page bbtime_layout_page">
    <section class="bbTimeList container" id="bbTimeList" onclick="window.open('${servePath}/bbtimeindex.html','_self')">
        <i class="bber-logo fas fa-meteor" onclick="location='/essay/'" title="哔哔" style="font-size: 1rem;"></i>
        <div class="swiper-container swiper-container-vertical" id="bbtalk">
            <div class="swiper-wrapper" id="bber-talk"
                 style="transition-duration: 0ms; transform: translate3d(0px, -100px, 0px);">
                <div class="li-style swiper-slide swiper-slide-duplicate" data-swiper-slide-index="9"
                     style="height: 25px;">
                    希望这学期能有自己的成果🤯加油
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="0" style="height: 25px;">
                    国庆7天假过的好快...还没做好上班的准备
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="1" style="height: 25px;">国庆快乐 [图片]
                </div>
                <div class="li-style swiper-slide swiper-slide-prev" data-swiper-slide-index="2" style="height: 25px;">
                    好久没有折腾博客了/(ㄒoㄒ)/~~
                </div>
                <div class="li-style swiper-slide swiper-slide-active" data-swiper-slide-index="3"
                     style="height: 25px;">
                    今年夏天也太热了吧……
                </div>
                <div class="li-style swiper-slide swiper-slide-next" data-swiper-slide-index="4" style="height: 25px;">
                    兰有秀兮菊有芳，怀佳人兮不能忘。
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="5" style="height: 25px;">
                    终于有小伙伴给我的文章打赏了，我清晰的记得上一次打赏还是在上次！！
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="6" style="height: 25px;">
                    最近好多友友问我博客样式怎么弄的，我没回是因为我自己也忘了…
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="7" style="height: 25px;">
                    等我有钱了，我也要买一张贵一点的独显
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="8" style="height: 25px;">
                    感觉我的博客名字有点长，要不要改改呢🤔
                </div>
                <div class="li-style swiper-slide" data-swiper-slide-index="9" style="height: 25px;">
                    希望这学期能有自己的成果🤯加油
                </div>
                <div class="li-style swiper-slide swiper-slide-duplicate" data-swiper-slide-index="0"
                     style="height: 25px;">
                    国庆7天假过的好快...还没做好上班的准备
                </div>
            </div>
        </div>
        <i class="bber-gotobb fas fa-arrow-circle-right"
           onclick="location='${servePath}/bbtimeindex.html'" title="查看全文"></i>
    </section>
</div>
<script src="https://npm.elemecdn.com/hexo-butterfly-swiper/lib/swiper.min.js" data-pjax></script>
<script>
    var $dom = document.querySelector('#bber-talk')
    window.lazyLoadInstance && window.lazyLoadInstance.update()
    window.pjax && window.pjax.refresh($dom)
    var swiper = new Swiper('#bbtalk', {
        direction: 'vertical',
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: true
        }
    })
</script>