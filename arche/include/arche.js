    document.write('<STYLE TYPE="text/css">.imgTrans{ filter:revealTrans(duration=0,transition=12) }</STYLE>');

    var onImages=new Array();

    function Rollover(imgName, imgSrc)
    {
	    onImages[imgName] = new Image();
	    onImages[imgName].src = imgSrc;
    }

    function turnon(imgName){ 
	    if(document.images[imgName].filters != null)
		    document.images[imgName].filters[0].apply();
	    document.images[imgName].offSrc = document.images[imgName].src;
	    document.images[imgName].src    = onImages[imgName].src;
	    if(document.images[imgName].filters != null)
		    document.images[imgName].filters[0].play();
    }

    function turnoff(imgName){ 
	    if(document.images[imgName].filters != null)
		    document.images[imgName].filters[0].stop();
	    document.images[imgName].src = document.images[imgName].offSrc;
    }

    //Specify name of participating images, plus paths to their onMouseover replacements:
    Rollover("menu1",  "arche/images/menu1b.jpg");
    Rollover("menu2", "arche/images/menu2b.jpg");
    Rollover("menu3", "arche/images/menu3b.jpg");
    Rollover("menu4", "arche/images/menu4b.jpg");
    Rollover("menu5", "arche/images/menu5b.jpg");
    Rollover("menu6", "arche/images/menu6b.jpg");
