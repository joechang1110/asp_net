<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="auray.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>未命名頁面</title>
    <style type="text/css">
        .style1
        {
            color: #999966;
        }
        .style2
        {
            height: 84px;
        }
    </style>
</head>
<body>
<script language="javascript">
    var a = new Array();
    a[0]="03.mp3";
    a[1]="命運交響曲(貝多芬).mid";
    a[2]="愛相隨(周華健).mid";
    a[3]="愛的故事(理查克萊德門).mid";
    a[4]="等你等到我心痛(巫啟賢).mid";
    var b = Math.floor(Math.random * a.length);
    window.document.write("<bgsound src='music/"+a[b]+"'  loop='-1' >");
</script>
    
    <form id="form1" runat="server">
    <div>
<asp:Image ID="Image1" runat="server" />
<asp:Image ID="Image2" runat="server" />

        <table style="width: 100%">
            <tr>
                <td >
                    1. <a href="Login.aspx">Login</a></td>
                <td >
                    2. <a href="MyLogin.aspx">MyLogin</a></td>
                <td >
                    3. <a href="index.aspx">廣告</a></td>
                <td >
                    4. <a href="arche/archeIndex.aspx">arhche</a></td>
                <td >
                    5. <a href="index.aspx">flash</a></td>
            </tr>
            <tr>
                <td >
                    6. <a href="index.aspx">Video</a>; <a href="index.aspx">Video2</a></td>
                <td >
                    7. <a href="index.aspx">Music</a></td>
                <td >
                    8. <a href="FileUpload.aspx">上傳檔案</a></td>
                <td >
                    9.<a href="ksmrt.htm">高捷</a>&nbsp; <a href="高捷2.aspx">高捷2</a></td>
                <td >
                    10.<a href="calendar.aspx">calendar</a></td>
            </tr>
            <tr>
                <td >
                    11.<a href="govsec/BookGridViewSelectA.aspx">govsec(主板頁面)</a></td>
                <td >
                    12.<a href="網站導覽.aspx">網站導覽</a></td>
                <td >
                    13.<a href="users.aspx">users management</a></td>
                </td>
                <td >
                    14.<a href="labtestitem.aspx">lab management</a></td>
                </td>
                <td >
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
            </tr>
            <tr>
                <td class="style2" >
                    access</td>
                <td class="style2" >
                    瀏覽,select<br />
                    <a href="govsec/BookGridViewSelectA.aspx">Gridview</a><br />
                    <a href="govsec/BookDetailsViewSelectA.aspx">DetailsView</a><br />
                    <a href="govsec/BookDatalistA.aspx">DatalistView</a><br />
                    <a href="govsec/BookFormviewA.aspx">FormView</a></td>
                <td class="style2" >
                    修改,update<br />
                    <a href="govsec/BookGridViewUpadteA.aspx">Gridview</a><br />
                    <a href="govsec/BookDetailsViewUpdateA.aspx">DetailsView</a><br />
                    <span class="style1">DatalistView</span><br />
                </td>
                <td class="style2" >
                    新增,insert<br />
                    <span class="style1">Gridview</span><br />
                    <a href="govsec/BookDetailsViewInsertA.aspx">DetailsView</a><br />
                    <span class="style1">DatalistView</span><br class="style1" />
                </td>
                <td class="style2" >
                    刪除,delete<br />
                    <a href="govsec/BookGridViewDeleteA.aspx">Gridview</a><br />
                    <a href="govsec/BookDetailsViewDeleteA.aspx">DetailsView</a><br />
                    <span class="style1">DatalistView</span><br />
                </td>
            </tr>
            <tr>
                <td >
                    Mssql</td>
                <td >
                    瀏覽,select<br />
                    <a href="govsec/BookGridViewSelectS.aspx">Gridview</a><br />
                    DetailsView<br />
                    DatalistView<br />
                    FormView</td>
                <td >
                    修改,update<br />
                    <a href="govsec/BookGridViewUpdateS.aspx">Gridview</a><br />
                    DetailsView<br />
                    <span class="style1">DatalistView</span><br />
                </td>
                <td >
                    新增,insert<br />
                    <span class="style1">Gridview</span><br />
                    DetailsView<br />
                    <span class="style1">DatalistView</span><br />
                </td>
                <td >
                    刪除,delete<br />
                    <a href="govsec/BookGridViewDeleteS.aspx">Gridview</a><br />
                    DetailsView<br />
                    <span class="style1">DatalistView</span><br />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:AdRotator ID="AdRotator1" runat="server"  AdvertisementFile="~/movie/movie.xml"/>
        <object id="Flash">
        <embed type="application/x-shockwave-flash" src="001.swf"/>
        </object>
        <div><object width="400" height="300">
        <param name="movie" value="http://d.yimg.com/nl/movies-tw-hk/site-tw/player.swf"></param>
        <param name="flashVars" value="shareUrl=http%3A//tw.movie.yahoo.com/movieinfo_trailer.html/id%3D4250&browseCarouselUI=hide&vid=29447313&lang=zh-TW&"></param>
        <param name="allowfullscreen" value="true"></param>
        <param name="wmode" value="transparent"></param>
        <embed width="400" height="300" allowFullScreen="true" src="http://d.yimg.com/nl/movies-tw-hk/site-tw/player.swf" type="application/x-shockwave-flash" flashvars="shareUrl=http%3A//tw.movie.yahoo.com/movieinfo_trailer.html/id%3D4250&browseCarouselUI=hide&vid=29447313&lang=zh-TW&">
        </embed>
        </object></div>

        
    </form>
</body>
</html>
