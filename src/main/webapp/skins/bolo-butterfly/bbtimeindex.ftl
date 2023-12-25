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
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${categoryLabel} - ${blogTitle}">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
    </@head>
</head>
<body class="fn__flex-column">
<div id="pjax" class="fn__flex-1">
    <#if pjax><!---- pjax {#pjax} start ----></#if>
    <#include "index-header.ftl">
    <@header type='index'></@header>
    <main class="layout_post" id="content-inner">
        <article id="post">
            <div class="wrapper web-topage">
                <#--                <h2 class="other__title">-->
                <#--                    <a href="${servePath}" class="ft__a">${blogTitle}</a> - ${categoryLabel}-->
                <#--                </h2>-->
                <#--                <div class="ft__center">-->
                <#--                    ${categories?size} ${categoryLabel}-->
                <#--                </div>-->
                <#--                <div class="articles">-->
                <#--                    <br>-->
                <#--                    <#list categories as category>-->
                <#--                        <a href="${servePath}/category/${category.categoryURI}"-->
                <#--                           class="other__item">-->
                <#--                            ${category.categoryTitle} --->
                <#--                            <b>${category.categoryPublishedArticleCount}</b> ${articleLabel}-->
                <#--                        </a>-->
                <#--                    </#list>-->
                <#--                    <br><br>-->
                <#--                </div>-->
                <div id="bber">
                    <section class="timeline page-1">
                        <ul class="list" id="waterfall" style="position: relative; height: 1930px;">
                            <li class="item" style="position: absolute; top: 0px; left: 0px;">
                                <div class="bber-content"><p class="datacont">国庆7天假过的好快...还没做好上班的准备</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-10-07T22:44:01.000Z">2022-10-07
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;国庆7天假过的好快...还没做好上班的准备&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 0px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">国庆快乐</p>
                                    <div class="bber-content-img"><a class="fancybox" data-fancybox="group"
                                                                     data-caption="" target="_blank"
                                                                     rel="external nofollow noopener noreferrer"
                                                                     href="https://npm.elemecdn.com/justlovesmile-post@1.0.8/20220820000000.jpg"><img
                                                    class="entered exited"
                                                    src="https://npm.elemecdn.com/justlovesmile-post@1.0.8/20220820000000.jpg"></a>
                                    </div>
                                    <p></p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-10-01T00:00:00.000Z">2022-10-01
                                        </time>
                                    </div>
                                    <div class="bber-reply" onclick="rm.rightMenuCommentText(&quot;国庆快乐&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 0px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">好久没有折腾博客了/(ㄒoㄒ)/~~</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-09-18T18:16:28.320Z">2022-09-18
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;好久没有折腾博客了/(ㄒoㄒ)/~~&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 119px; left: 0px;">
                                <div class="bber-content"><p class="datacont">今年夏天也太热了吧……</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-07-01T08:17:28.320Z">2022-07-01
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;今年夏天也太热了吧……&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 119px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">兰有秀兮菊有芳，怀佳人兮不能忘。</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-05-20T07:22:48.664Z">2022-05-20
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;兰有秀兮菊有芳，怀佳人兮不能忘。&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 238px; left: 0px;">
                                <div class="bber-content"><p class="datacont">
                                        终于有小伙伴给我的文章打赏了，我清晰的记得上一次打赏还是在上次！！</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-05-17T13:08:00.783Z">2022-05-17
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;终于有小伙伴给我的文章打赏了，我清晰的记得上一次打赏还是在上次！！&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 238px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">
                                        最近好多友友问我博客样式怎么弄的，我没回是因为我自己也忘了…</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-04-02T07:28:34.702Z">2022-04-02
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;最近好多友友问我博客样式怎么弄的，我没回是因为我自己也忘了…&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 343px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">等我有钱了，我也要买一张贵一点的独显</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-28T01:37:18.651Z">2022-03-28
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;等我有钱了，我也要买一张贵一点的独显&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 379px; left: 0px;">
                                <div class="bber-content"><p class="datacont">感觉我的博客名字有点长，要不要改改呢🤔</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-26T09:48:19.719Z">2022-03-26
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;感觉我的博客名字有点长，要不要改改呢🤔&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 379px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">希望这学期能有自己的成果🤯加油</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-25T02:01:12.132Z">2022-03-25
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;希望这学期能有自己的成果🤯加油&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 462px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">
                                        希望自己能集中注意力到学习上、到文章上，而不是改样式！！</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-13T07:49:11.871Z">2022-03-13
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;希望自己能集中注意力到学习上、到文章上，而不是改样式！！&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 498px; left: 0px;">
                                <div class="bber-content"><p class="datacont">
                                        本来想抽雷神，没想到才垫了22发，心海就来了</p>
                                    <div class="bber-content-img"><a class="fancybox" data-fancybox="group"
                                                                     data-caption="" target="_blank"
                                                                     rel="external nofollow noopener noreferrer"
                                                                     href="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20220313090051.jpg"><img
                                                    class="entered exited"
                                                    src="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20220313090051.jpg"></a>
                                    </div>
                                    <p></p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-13T01:02:17.337Z">2022-03-13
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;本来想抽雷神，没想到才垫了22发，心海就来了&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 498px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">突然发现RSS还挺有用的👍</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-03-12T07:28:51.098Z">2022-03-12
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;突然发现RSS还挺有用的👍&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 603px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">
                                        博客样式稍稍改一改就是一天时间…以后没有特别喜欢的样式，绝对不改！！</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-02-27T03:05:36.064Z">2022-02-27
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;博客样式稍稍改一改就是一天时间…以后没有特别喜欢的样式，绝对不改！！&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 617px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">开学了🤯</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-02-25T10:13:56.544Z">2022-02-25
                                        </time>
                                    </div>
                                    <div class="bber-reply" onclick="rm.rightMenuCommentText(&quot;开学了🤯&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 736px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont"></p>
                                    <div class="bber-content-img"><a class="fancybox" data-fancybox="group"
                                                                     data-caption="" target="_blank"
                                                                     rel="external nofollow noopener noreferrer"
                                                                     href="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20220127121738.jpg"><img
                                                    class="entered exited"
                                                    src="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20220127121738.jpg"></a>
                                    </div>
                                    <p></p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-01-27T04:17:57.997Z">2022-01-27
                                        </time>
                                    </div>
                                    <div class="bber-reply" onclick="rm.rightMenuCommentText(&quot;null&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 744px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">
                                        如果在友链中没有找到你，请不要惊慌，可能是因为网站访问失败而被放入了失联友链中</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-01-27T04:02:40.329Z">2022-01-27
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;如果在友链中没有找到你，请不要惊慌，可能是因为网站访问失败而被放入了失联友链中&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 803px; left: 0px;">
                                <div class="bber-content"><p class="datacont">《开端》太好看啦！！</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2022-01-20T09:32:19.463Z">2022-01-20
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;《开端》太好看啦！！&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 885px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">讲一个笑话</p>
                                    <div class="bber-content-img"><a class="fancybox" data-fancybox="group"
                                                                     data-caption="" target="_blank"
                                                                     rel="external nofollow noopener noreferrer"
                                                                     href="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20211101135637.jpg"><img
                                                    class="entered exited"
                                                    src="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20211101135637.jpg"></a>
                                    </div>
                                    <p></p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-11-01T05:57:43.573Z">2021-11-01
                                        </time>
                                    </div>
                                    <div class="bber-reply" onclick="rm.rightMenuCommentText(&quot;讲一个笑话&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 922px; left: 0px;">
                                <div class="bber-content"><p class="datacont">
                                        好家伙😿解封两周体验卡结束了，疫情又双叒叕来了</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-11-01T05:55:37.506Z">2021-11-01
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;好家伙😿解封两周体验卡结束了，疫情又双叒叕来了&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1041px; left: 0px;">
                                <div class="bber-content"><p class="datacont">国庆只放一天还不能出校😿</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-10-07T09:05:02.344Z">2021-10-07
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;国庆只放一天还不能出校😿&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1160px; left: 0px;">
                                <div class="bber-content"><p class="datacont">最近玩上了原神，感觉做的真心不错</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-09-26T03:23:37.533Z">2021-09-26
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;最近玩上了原神，感觉做的真心不错&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1223px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">
                                        最近博客评论推送出了点问题，没能及时回复请谅解</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-09-23T00:37:27.398Z">2021-09-23
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;最近博客评论推送出了点问题，没能及时回复请谅解&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1279px; left: 0px;">
                                <div class="bber-content"><p class="datacont">开学啦，新的人生阶段也要好好努力才行💪</p>
                                    <div class="bber-content-img"><a class="fancybox" data-fancybox="group"
                                                                     data-caption="" target="_blank"
                                                                     rel="external nofollow noopener noreferrer"
                                                                     href="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20210905154004.jpg"><img
                                                    class="entered loading"
                                                    src="https://npm.elemecdn.com/justlovesmile-post@1.0.5/20210905154004.jpg"
                                                    data-ll-status="loading"></a></div>
                                    <p></p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-09-05T07:44:17.487Z">2021-09-05
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;开学啦，新的人生阶段也要好好努力才行💪&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1342px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">参加的比赛临时修改规则，气死了😡</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-27T13:49:17.498Z">2021-08-27
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;参加的比赛临时修改规则，气死了😡&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1415px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">
                                        不知道有没有玩🥰部落冲突和😉荒野乱斗的朋友</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-17T13:41:01.322Z">2021-08-17
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;不知道有没有玩🥰部落冲突和😉荒野乱斗的朋友&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1461px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">最近一周都有雨🌧️，太适合睡觉了💤</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-17T13:38:02.559Z">2021-08-17
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;最近一周都有雨🌧️，太适合睡觉了💤&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1534px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">晚安</p></div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-16T14:27:41.686Z">2021-08-16
                                        </time>
                                    </div>
                                    <div class="bber-reply" onclick="rm.rightMenuCommentText(&quot;晚安&quot;);"><i
                                                class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1580px; left: 873.584px;">
                                <div class="bber-content"><p class="datacont">博客使用Vercel服务器，最近可能会有波动</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-12T11:33:37.999Z">2021-08-12
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;博客使用Vercel服务器，最近可能会有波动&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                            <li class="item" style="position: absolute; top: 1653px; left: 436.792px;">
                                <div class="bber-content"><p class="datacont">博客最近在更新UI可能会出现奇怪的排版</p>
                                </div>
                                <hr>
                                <div class="bber-bottom">
                                    <div class="bber-info">
                                        <time class="bber-info-time" datetime="2021-08-12T11:32:47.578Z">2021-08-12
                                        </time>
                                    </div>
                                    <div class="bber-reply"
                                         onclick="rm.rightMenuCommentText(&quot;博客最近在更新UI可能会出现奇怪的排版&quot;);">
                                        <i class="fa-solid fa-message"></i></div>
                                </div>
                            </li>
                        </ul>
                    </section>
                </div>
                <div id="bber-tips" style="color: var(--mj-secondtext);">- 只展示最近30条短文 -</div>
                <style>
                    #bber {
                        margin-top: 1rem;
                        width: 100%;
                    }
                    #bber ul.list {
                        display: flex;
                        flex-direction: row;
                        flex-wrap: wrap;
                        justify-content: space-between;
                    }
                    @media screen and (max-width: 1300px){
                        #bber .timeline ul li.item {
                            width: 49% !important;
                            margin-right: 1%;
                        }
                    }
                    @media screen and (max-width: 768px){
                        #bber .timeline ul li.item {
                            width: 100% !important;
                            margin-right: 0;
                        }
                    }
                    #bber .timeline ul li.item {
                        position: relative;
                        width: 32%;
                        border: var(--style-border);
                        border-radius: 12px;
                        padding: 1rem;
                        padding-bottom: .5rem;
                        transition: .3s;
                        display: flex;
                        flex-direction: column;
                        flex-wrap: nowrap;
                        justify-content: space-between;
                        align-items: flex-start;
                        background: var(--mj-card-bg);
                        margin-right: 2%;
                    }
                    #bber>section>ul>li.item:hover{
                        border: var(--style-hover-border);
                    }
                    #bber>section>ul>li.item {
                        margin-bottom: 1rem;
                    }
                    #bber li.item {
                        display: flex;
                        flex-direction: column;
                        flex-wrap: nowrap;
                        align-items: flex-start;
                    }
                    #bber div.bber-content {
                        display: flex;
                        flex-direction: initial;
                        flex-wrap: wrap;
                        border-radius: 12px;
                        width: 100%;
                        height: 100%;
                    }
                    #bber .bber-content-img img {
                        object-fit: cover;
                        max-height: 100%;
                        max-width: 100%;
                        border-radius: 12px;
                    }
                    #bber .bber-content .datacont {
                        order: 0;
                        font-size: 1rem;
                        font-weight: 700;
                        color: var(--mj-fontcolor);
                        width: 100%;
                        line-height: 1.38;
                        border-radius: 12px;
                        margin-bottom: .5rem;
                        display: flex;
                        flex-direction: column;
                        text-align: justify;
                    }
                    #bber p {
                        margin: 0;
                    }
                    #bber .timeline ul li.item hr {
                        display: flex;
                        position: relative;
                        margin: 8px 0;
                        border: 1px dashed var(--mj-theme-op);
                        width: 100%;
                    }
                    #bber .bber-bottom {
                        display: flex;
                        justify-content: space-between;
                        width: 100%;
                    }
                    #bber .bber-info {
                        display: flex;
                        align-items: center;
                    }
                    #bber>section>ul>li>div .bber-info-time {
                        color: var(--mj-fontcolor);
                        font-size: .7rem;
                        background-color: var(--mj-gray-op);
                        padding: 0 8px;
                        border-radius: 20px;
                        cursor: default;
                    }
                    #bber .bber-info .fa-rectangles-mixed {
                        margin-right: 8px;
                    }
                    #bber .bber-reply {
                        cursor: pointer;
                        padding: 0 4px;
                    }
                    #bber-tips {
                        font-size: 14px;
                        display: flex;
                        justify-content: center;
                        margin-top: 1rem;
                    }
                </style>
                <script src="${staticServePath}/skins/${skinDirName}/js/waterfall.min.js"></script>
                <script>
                    wf = function () {
                        var watf = document.querySelector('#waterfall') || '';
                        if(watf){ waterfall(watf);}
                    }
                    wf();
                    window.addEventListener('resize', wf());
                    window.onload = function(){wf()};
                </script>
            </div>
        </article>
    </main>
    <#if pjax><!---- pjax {#pjax} end ----></#if>
</div>
<#include "footer.ftl">
</body>
</html>
