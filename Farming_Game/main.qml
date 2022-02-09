import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

ApplicationWindow
{
    id : root
    visible: true
    width: Screen.width/2
    height: Screen.height/2
    title: qsTr("***********Farming_Game***********")

    property int farmNumber: 0
    property alias tooltipVisibility: forToolTip.visible
    property alias farmSource: farm0.color
    property alias tooltipText: toolTip.text

    function changeToolTip(num = 16)
    {
        farmBackground.color = "blue"
            if(num === 0 || num ===16)
            {
                if(useManager.is_crop_time(0) === false)
                {
                    console.log("eyval")
                    if(useManager.is_water_time(0) === false)
                    {
                        console.log("yaaaaaaaaaaaaaaaaaaaaaaa khodaaaaaaaaaaaaaa")
                        toolTip.text = "water : " + useManager.get_water_time(0) + "\ncrop : " + useManager.get_crop_time(0);
                        //toolTip.text = "water time : " + useManager.get_water_time(0) "0\ncrop time : " + useManager.get_crop_time(0);
                    }
                    else
                    {
                        cropOrWater.visible = true
                        toolTip.text = "its water time" + "\ncrop time : " + useManager.get_crop_time(0);
                    }
                }
                else
                {
                    toolTip.text = "its crop time";
                }
            }

            //for first field tooltip

            /*if(num === 1 || num === 16)
            {
                if(useManager.is_crop_time(1) === false)
                {
                    if(useManager.is_water_time(1) === false)
                    {
                        toolTip1.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip1.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip1.text = "its crop time";
                }
            }

            //for second field tooltip

            if(num === 2 || num === 16)
            {
                if(useManager.is_crop_time(2) === false)
                {
                    if(useManager.is_water_time(2) === false)
                    {
                        toolTip2.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip2.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip2.text = "its crop time";
                }
            }

            //for third field tooltip



            if(num === 3 || num ===16)
            {
                if(useManager.is_crop_time(3) === false)
                {
                    if(useManager.is_water_time(3) === false)
                    {
                        toolTip3.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip3.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip3.text = "its crop time";
                }
            }

            //for fourth field tooltip

            if(num === 4 || num ===16)
            {
                if(useManager.is_crop_time(4) === false)
                {
                    if(useManager.is_water_time(4) === false)
                    {
                        toolTip4.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip4.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip4.text = "its crop time";
                }
            }

            //for fifth field tooltip

            if(num === 5 || num ===16)
            {
                if(useManager.is_crop_time(5) === false)
                {
                    if(useManager.is_water_time(5) === false)
                    {
                        toolTip5.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip5.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip5.text = "its crop time";
                }
            }

            //for sixth field tooltip

            if(num === 6 || num ===16)
            {
                if(useManager.is_crop_time(6) === false)
                {
                    if(useManager.is_water_time(6) === false)
                    {
                        toolTip6.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip6.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip6.text = "its crop time";
                }
            }

            //for seventh field tooltip

            if(num ===7 || num ===16)
            {
                if(useManager.is_crop_time(7) === false)
                {
                    if(useManager.is_water_time(7) === false)
                    {
                        toolTip7.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip7.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip7.text = "its crop time";
                }
            }

            //for eighth field tooltip



            if(num === 8 || num === 16)
            {
                if(useManager.is_crop_time(8) === false)
                {
                    if(useManager.is_water_time(8) === false)
                    {
                        toolTip8.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip8.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip8.text = "its crop time";
                }
            }

            //for nineth field tooltip

            if(num === 9 || num === 16)
            {
                if(useManager.is_crop_time(9) === false)
                {
                    if(useManager.is_water_time(9) === false)
                    {
                        toolTip9.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip9.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip9.text = "its crop time";
                }
            }

            //for tenth field tooltip

            if(num === 10 || num === 16)
            {
                if(useManager.is_crop_time(10) === false)
                {
                    if(useManager.is_water_time(10) === false)
                    {
                        toolTip10.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip10.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip10.text = "its crop time";
                }
            }

            //for eleventh field tooltip

            if(num === 11 || num === 16)
            {
                if(useManager.is_crop_time(11) === false)
                {
                    if(useManager.is_water_time(11) === false)
                    {
                        toolTip11.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip11.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip11.text = "its crop time";
                }
            }

            //for towelfth field tooltip

            if(num === 12 || num === 16)
            {
                if(useManager.is_crop_time(12) === false)
                {
                    if(useManager.is_water_time(12) === false)
                    {
                        toolTip12.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip12.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip12.text = "its crop time";
                }
            }

            //for thirteen field tooltip

            if(num === 13 || num === 16)
            {
                if(useManager.is_crop_time(13) === false)
                {
                    if(useManager.is_water_time(13) === false)
                    {
                        toolTip13.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip13.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip13.text = "its crop time";
                }
            }

            //for fourteen field tooltip

            if(num === 14 || num === 16)
            {
                if(useManager.is_crop_time(14) === false)
                {
                    if(useManager.is_water_time(14) === false)
                    {
                        toolTip14.text = "water time : 0\ncrop time : 1";
                    }
                    else
                    {
                        toolTip14.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip14.text = "its crop time";
                }
            }

            //for fifteen field tooltip

            if(num === 15 || num === 16)
            {
                if(useManager.is_crop_time(15) === false)
                {
                    if(useManager.is_water_time(15) === false)
                    {
                        //toolTip15.text = "water time : " + useManager.get_water_time(15) "0\ncrop time : " + useManager.get_crop_time(15);
                    }
                    else
                    {
                        toolTip15.text = "its water time\ncrop time : 1";
                    }
                }
                else
                {
                    toolTip15.text = "its crop time";
                }
            }*/

            //for sixteen field tooltip

        console.log("bye");
    }

    function visibleBagSeed ()
    {
        tomato.visible = useManager.seed_exist_in_bag("tomato");
        carrot.visible = useManager.seed_exist_in_bag("carrot");
        cabbage.visible = useManager.seed_exist_in_bag("cabbage");
        lettuce.visible = useManager.seed_exist_in_bag("lettuce");
        wheet.visible = useManager.seed_exist_in_bag("wheat");
    }






    StackView
    {
        id : stackView
        initialItem: farmPage;
    }

    /*Component
    {
        id : playerInfo
        Rectangle
        {
            border.color: "black";
            width: root.width - 100
            height: root.height - 100
            x : 25
            y : 25

            Rectangle
            {
                width: 200
                height: 50
                anchors
                {
                    bottom : contorol.top
                    left : contorol.left
                }

                Text
                {
                    anchors.centerIn: parent
                    text: "Enter your name"
                }
                color: "#9E9E9E"
                border.color: "black"
            }

            TextField
            {
                id : contorol
                anchors.centerIn: parent
                placeholderText: "name"
                background: Rectangle
                {
                    implicitWidth: 200
                    implicitHeight: 40
                    color: "#9E9E9E"
                    border.color: "black"
                }
            }

            Button
            {
                text : "click"
                width: 50
                height: 20
                anchors.top : contorol.bottom
                anchors.topMargin: 10
                anchors.left: contorol.left
                anchors.leftMargin: contorol.width/2 - width/2

                onPressed:
                {

                    if(useManager.change_name(contorol.text))
                    {
                        errorText.visible = true
                    }
                }

            }

            Label
            {
                id : errorText
                text : "invalid name"
                x : contorol.x
                y : contorol.y
                width : Control.width
                height: contorol.height
                color: "red"
                visible: false
            }
        }
    }*/



    Item {
        id: farmPage

        Rectangle
        {
            id : farmBackground
            border.color: "black"
            color: "green"
            width: root.width
            height: root.height




            Image
            {
                id: bagButton
                source: "qrc:/images/bags-icon-10474.png"
                sourceSize: Qt.size(root.width/10 , root.height/10)
                anchors.left: farmBackground.left
                anchors.topMargin: 10
                anchors.top : farmBackground.top
                anchors.leftMargin: 10
                MouseArea
                {
                    anchors.fill: parent
                    onPressed:
                    {

                    }
                }
            }
            Image
            {
                id: shopButton
                source: "qrc:/images/retail-store-icon-14331.png"
                sourceSize: Qt.size(root.width/10 , root.height/10)
                anchors.left: farmBackground.left
                anchors.topMargin: 10
                anchors.top : bagButton.bottom
                anchors.leftMargin: 10
                MouseArea
                {
                    anchors.fill : parent
                    onPressed:
                    {
                        stackView.push(shopPage);
                    }
                }
            }

            Image
            {
                id: refreshButton
                source: "qrc:/images/211882_refresh_icon.ico"
                sourceSize: Qt.size(root.width/10 , root.height/10)
                anchors.left: farmField.right
                anchors.topMargin: 10
                anchors.top : farmBackground.top
                anchors.leftMargin: 10

                MouseArea
                {
                    anchors.fill: parent
                    onPressed:
                    {
                        changeToolTip();
                    }
                }
            }




            Rectangle
            {
                id : farmField
                border.color: "black"
                color: "yellow"
                width: root.height * 4/5
                height: root.height *  4/5
                anchors.centerIn: parent
            }

            ScrollView
            {
                z : 2
                id : bagItem
                visible: false
                anchors.fill: farmField

                Column
                {


                    Rectangle
                    {
                        id :tomato
                        width: farmField.width
                        height: farmField.height /2
                        visible: useManager.seed_exist_in_bag("tomato");
                        Rectangle
                        {
                            id : tomatoText
                            width: parent.width - tomatoImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "tomato"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - tomatoImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "price"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : tomatoText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : tomatoImage
                            width: parent.height
                            height: parent.height
                            color : "red"
                            anchors.right: parent.right
                            anchors.top : parent.top
                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked :
                                {
                                    bagItem.visible = false
                                    useManager.use_farm(farmNumber , 1);
                                    farmSource = "blue";
                                    tooltipVisibility = true
                                    changeToolTip(farmNumber);
                                    farm0.color = "red"

                                }
                            }
                        }


                    }

                    Rectangle
                    {
                        id :cabbage
                        width: farmField.width
                        height: farmField.height /2
                        visible: useManager.veg_exist_in_bag("cabbage");
                        Rectangle
                        {
                            id : cabbageText
                            width: parent.width - cabbageImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "cabbage"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - cabbageImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "price"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : cabbageText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : cabbageImage
                            width: parent.height
                            height: parent.height
                            color : "green"
                            anchors.right: parent.right
                            anchors.top : parent.top

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked :
                                {
                                    bagItem.visible = false
                                    useManager.use_farm(farmNumber , 2);
                                    farmSource = "blue";
                                    tooltipVisibility = true
                                    changeToolTip(farmNumber);
                                    farm0.color = "yellow"

                                }
                            }
                        }


                    }

                    Rectangle
                    {
                        id :lettuce
                        width: farmField.width
                        height: farmField.height /2
                        visible: useManager.veg_exist_in_bag("lettuce");
                        Rectangle
                        {
                            id : lettuceText
                            width: parent.width - lettuceImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "lettuce"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - lettuceImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "price"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : lettuceText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : lettuceImage
                            width: parent.height
                            height: parent.height
                            color : "blue"
                            anchors.right: parent.right
                            anchors.top : parent.top
                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked :
                                {
                                    bagItem.visible = false
                                    useManager.use_farm(farmNumber , 4);
                                    farmSource = "blue";
                                    tooltipVisibility = true
                                    changeToolTip(farmNumber);
                                    farm0.color = "green"

                                }
                            }
                        }


                    }

                    Rectangle
                    {
                        id :carrot
                        width: farmField.width
                        height: farmField.height /2
                        visible: useManager.veg_exist_in_bag("carrot");
                        Rectangle
                        {
                            id : carrotText
                            width: parent.width - carrotImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "carrot"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - carrotImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "price"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : carrotText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : carrotImage
                            width: parent.height
                            height: parent.height
                            color : "orange"
                            anchors.right: parent.right
                            anchors.top : parent.top
                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked :
                                {
                                    bagItem.visible = false
                                    useManager.use_farm(farmNumber , 3);
                                    farmSource = "blue";
                                    tooltipVisibility = true
                                    changeToolTip(farmNumber);
                                    farm0.color = "orange"

                                }
                            }
                        }


                    }

                    Rectangle
                    {
                        id :wheet
                        width: farmField.width
                        height: farmField.height /2
                        visible: useManager.veg_exist_in_bag("wheet");
                        Rectangle
                        {
                            id : wheetText
                            width: parent.width - wheetImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "wheet"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - wheetImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "price"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : wheetText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : wheetImage
                            width: parent.height
                            height: parent.height
                            color : "brown"
                            anchors.right: parent.right
                            anchors.top : parent.top
                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked :
                                {
                                    bagItem.visible = false
                                    useManager.use_farm(farmNumber , 5);
                                    farmSource = "blue";
                                    tooltipVisibility = true
                                    changeToolTip(farmNumber);
                                    farm0.color = "grey"
                                }
                            }
                        }


                    }

                }


            }

            Dialog
            {
                id : dialog
                Text
                {
                    id : dialogText
                    text: " ";
                    color: "red"
                }
            }


            Grid
            {
                id : grid
                x : farmField.x
                y : farmField.y
                width : farmField.width
                height: farmField.height
                columns: 4
                spacing: 0


                Rectangle
                {
                    id: farm0
                    width : farmField.width/4
                    height : farmField.height/4
                    color : "brown"
                    border.color: "white"


                    Button
                    {
                        id : forToolTip
                        width: farm0.width/15
                        height: farm0.width/15
                        anchors.left: farm0.left
                        anchors.top : farm0.top
                        visible: false
                        ToolTip
                        {
                            id : toolTip
                            text : "water time : " + useManager.get_water_time(0) + "\ncrop time :" + useManager.get_crop_time(0);
                            visible: forToolTip.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                    Image
                    {
                        id:cropOrWater
                        source: "qrc:/images/PicsArt_02-09-05.54.03.png"
                        sourceSize: Qt.size(farm0.width/4 , farm0.height/4)
                        visible: false
                    }
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            console.log("a");
                            farmNumber = 0;
                            if(useManager.get_veg_type(0) > 0 && useManager.get_veg_type(0) < 6)
                            {
                                if(useManager.is_crop_time(0) === true)
                                {
                                    if(useManager.is_tools_exist("das") === true)
                                    {
                                        useManager.use_farm(0 , 0);
                                        farm0.color = "brown"
                                        forToolTip.visible = false;
                                        cropOrWater.visible = false;
                                    }
                                    else
                                    {
                                        dialogText.text = "you need a das !!!"
                                        dialog.open();
                                    }
                                }
                                else if(useManager.is_water_time(0) === true)
                                {
                                    if(useManager.is_tools_exist("water_pipe") === true)
                                    {
                                        useManager.water_veg(0);
                                        farm0.color = "grey"
                                        toolTip.text = "water time : " + useManager.get_water_time(0) + "\ncrop time :" + useManager.get_crop_time(0);
                                        cropOrWater.visible = false;
                                    }
                                    else
                                    {
                                        dialogText.text = "you need a water pipe !!!"
                                        dialog.open();
                                    }
                                }
                                else
                                {
                                    changeToolTip(0);
                                }
                            }
                            else if(useManager.get_veg_type(0) === 0)
                            {
                                if(useManager.is_tools_exist("shen_kesh"))
                                {
                                    useManager.use_farm(0 , 6);
                                    farm0.color = "black";

                                }
                                else
                                {
                                    dialogText.text = "you need a shen kesh !!!"
                                    dialog.open();
                                }
                            }
                            else if(useManager.get_veg_type(0) === 6)
                            {
                                if(useManager.is_tools_exist("shovel") === true)
                                {
                                    if(useManager.is_tools_exist("sprayer"))
                                    {
                                        farm0.color = "green"
                                        visibleBagSeed();
                                        changeToolTip(0);
                                       // toolTip.text = "water time : " + useManager.get_water_time(0) + "\ncrop time :" + useManager.get_crop_time(0);
                                        farmNumber = 0;
                                        tooltipVisibility = toolTip2.visible
                                        farmSource = farm1.color
                                        bagItem.visible = true


                                    }
                                    else
                                    {
                                        dialogText.text = "you need a sprayer !!!"
                                        dialog.open();
                                    }
                                }
                                else
                                {
                                    dialogText.text = "you need a shovel !!!"
                                    dialog.open();
                                }
                            }

                        }
                    }
                }

                Rectangle
                {
                    id : farm1
                    width: farm0.width
                    height: farm0.height
                    color: "red";
                    border.color: "white"
                    Button
                    {
                        id : forToolTip1
                        width: farm0.width/15
                        height: farm0.width/15
                        anchors.left: farm1.left
                        anchors.top : farm1.top
                        visible: false
                        ToolTip
                        {
                            id : toolTip1
                            text : ""
                            visible: forToolTip1.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                    Image
                    {
                        id:cropOrWater1
                        source: "qrc:/images/Icons8-Windows-8-Diy-Spade.ico"
                        sourceSize: Qt.size(farm1.width/4 , farm1.height/4)
                        visible: false
                    }

                }
                Rectangle
                {
                    id : farm2
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"
                    Button
                    {
                        id : forToolTip2
                        width: farm0.width/15
                        height: farm0.width/15
                        anchors.left: farm2.left
                        anchors.top : farm2.top
                        visible: false
                        ToolTip
                        {
                            id : toolTip2
                            visible: forToolTip2.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }



                Rectangle
                {
                    id : farm3
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"
                    Button
                    {
                        id : forToolTip3
                        width: farm3.width/15
                        height: farm3.width/15
                        anchors.left: farm3.left
                        anchors.top : farm3.top
                        ToolTip
                        {
                            id : toolTip3
                            text : "water time : " + useManager.get_water_time(3) + "\ncrop time :" + useManager.get_crop_time(3);
                            visible: forToolTip3.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                }
                Rectangle
                {
                    id : farm4
                    width: farm3.width
                    height: farm3.height
                    color: "red";
                    border.color: "white"
                    Button
                    {
                        id : forToolTip4
                        width: farm4.width/15
                        height: farm4.width/15
                        anchors.left: farm4.left
                        anchors.top : farm4.top
                        ToolTip
                        {
                            id : toolTip4
                            text : "water time : " + useManager.get_water_time(4) + "\ncrop time :" + useManager.get_crop_time(4);
                            visible: forToolTip4.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                }
                Rectangle
                {
                    id : farm5
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"
                    Button
                    {
                        id : forToolTip5
                        width: forToolTip5.width
                        height: forToolTip5.height
                        anchors.left: farm5.left
                        anchors.top : farm5.top
                        ToolTip
                        {
                            id : toolTip5
                            text : "water time : " + useManager.get_water_time(5) + "\ncrop time :" + useManager.get_crop_time(5);
                            visible: forToolTip5.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                }
                Rectangle
                {
                    id : farm6
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip6
                        width: farm6.width/15
                        height: farm6.width/15
                        anchors.left: farm6.left
                        anchors.top : farm6.top
                        ToolTip
                        {
                            id : toolTip6
                            text : "water time : " + useManager.get_water_time(6) + "\ncrop time :" + useManager.get_crop_time(6);
                            visible: forToolTip6.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                }
                Rectangle
                {
                    id : farm7
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip7
                        width: farm7.width/15
                        height: farm7.width/15
                        anchors.left: farm7.left
                        anchors.top : farm7.top
                        ToolTip
                        {
                            id : toolTip7
                            text : "water time : " + useManager.get_water_time(7) + "\ncrop time :" + useManager.get_crop_time(7);
                            visible: forToolTip7.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm8
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip8
                        width: farm8.width/15
                        height: farm8.width/15
                        anchors.left: farm8.left
                        anchors.top : farm8.top
                        ToolTip
                        {
                            id : toolTip8
                            text : "water time : " + useManager.get_water_time(8) + "\ncrop time :" + useManager.get_crop_time(8);
                            visible: forToolTip8.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }
                }
                Rectangle
                {
                    id : farm9
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip9
                        width: farm9.width/15
                        height: farm9.width/15
                        anchors.left: farm9.left
                        anchors.top : farm9.top
                        ToolTip
                        {
                            id : toolTip9
                            text : "water time : " + useManager.get_water_time(9) + "\ncrop time :" + useManager.get_crop_time(9);
                            visible: forToolTip9.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm10
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip10
                        width: farm10.width/15
                        height: farm10.width/15
                        anchors.left: farm10.left
                        anchors.top : farm10.top
                        ToolTip
                        {
                            id : toolTip10
                            text : "water time : " + useManager.get_water_time(10) + "\ncrop time :" + useManager.get_crop_time(10);
                            visible: forToolTip10.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm11
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip11
                        width: farm11.width/15
                        height: farm11.width/15
                        anchors.left: farm11.left
                        anchors.top : farm11.top
                        ToolTip
                        {
                            id : toolTip11
                            text : "water time : " + useManager.get_water_time(11) + "\ncrop time :" + useManager.get_crop_time(11);
                            visible: forToolTip11.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm12
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip12
                        width: farm12.width/15
                        height: farm12.width/15
                        anchors.left: farm12.left
                        anchors.top : farm12.top
                        ToolTip
                        {
                            id : toolTip12
                            text : "water time : " + useManager.get_water_time(12) + "\ncrop time :" + useManager.get_crop_time(12);
                            visible: forToolTip12.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm13
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip13
                        width: farm13.width/15
                        height: farm13.width/15
                        anchors.left: farm13.left
                        anchors.top : farm13.top
                        ToolTip
                        {
                            id : toolTip13
                            text : "water time : " + useManager.get_water_time(13) + "\ncrop time :" + useManager.get_crop_time(13);
                            visible: forToolTip13.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm14
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip14
                        width: farm14.width/15
                        height: farm14.width/15
                        anchors.left: farm14.left
                        anchors.top : farm14.top
                        ToolTip
                        {
                            id : toolTip14
                            text : "water time : " + useManager.get_water_time(14) + "\ncrop time :" + useManager.get_crop_time(14);
                            visible: forToolTip14.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
                Rectangle
                {
                    id : farm15
                    width: farm1.width
                    height: farm1.height
                    color: "red";
                    border.color: "white"

                    Button
                    {
                        id : forToolTip15
                        width: farm15.width/15
                        height: farm15.width/15
                        anchors.left: farm15.left
                        anchors.top : farm15.top
                        ToolTip
                        {
                            id : toolTip15
                            text : "water time : " + useManager.get_water_time(15) + "\ncrop time :" + useManager.get_crop_time(15);
                            visible: forToolTip15.hovered
                            timeout : 10000
                            delay : 50
                        }
                    }

                }
            }






        }

    }


       Component
       {
        id: shopPage



        Rectangle
        {
            width: root.width
            height: root.height
            color : "yellow"
            Rectangle
            {
                id : shopBackground
                color: "blue"
                width: root.width * 2/3
                height: root.height * 2/3
                anchors.centerIn: parent



                ListModel
                {
                    id : canBuy
                    ListElement
                    {
                        name : "shovel"
                        type : 1
                        //source :
                        itemColor : "green"
                    }
                    ListElement
                    {
                        name : "shovel"
                        type : 2
                        //source :
                        itemColor : "blue"
                    }
                    ListElement
                    {
                        name : "das"
                        type : 1
                        //source :
                        itemColor : "red"
                    }
                    ListElement
                    {
                        name : "das"
                        type : 2
                        //source :
                        itemColor : "red"
                    }
                    ListElement
                    {
                        name : "sprayer"
                         type : 1
                        //source :
                        itemColor : "orange"
                    }
                    ListElement
                    {
                        name : "sprayer"
                        type : 2
                        //source :
                        itemColor : "black"
                    }
                    ListElement
                    {
                        name : "water_pipe"
                        type : 1
                        //source :
                        itemColor : "grey"
                    }
                    ListElement
                    {
                        name : "water_pipe"
                        type : 2
                        //source :
                        itemColor : "white"
                    }
                    ListElement
                    {
                        name : "shen_kesh"
                        type : 1
                        //source :
                        itemColor : "black"
                    }
                    ListElement
                    {
                        name : "shen_kesh"
                        type : 2
                        //source :
                        itemColor : "red"
                    }
                    ListElement
                    {
                        name : "tomato"
                        type : 0
                        //source :
                        itemColor : "blue"
                    }
                    ListElement
                    {
                        name : "cabbage"
                        type : 0
                        source : "qrc:/../licensed-image (1).jpeg"
                        itemColor : "green"
                    }
                    ListElement
                    {
                        name : "lettuce"
                        type : 0
                        source : "qrc:/../licensed-image (2).jpeg"
                        itemColor : "yellow"

                    }
                    ListElement
                    {
                        name : "carrot"
                        type : 0
                        //source :
                        itemColor : "black"
                    }
                    ListElement
                    {
                        name : "wheat"
                        type : 0
                        //source :
                        itemColor : "brown"
                    }
                }

                Dialog
                {
                    id : dialog2
                    Text {
                        id: dialogTxt
                        text: " ";
                        color: "red"
                    }
                }

                ListView
                {
                    id : buyItem
                    model : canBuy
                    visible: true
                    anchors.fill : parent

                    delegate : Rectangle
                    {
                        id : info
                        width : shopBackground.width
                        height : shopBackground.height/2
                        color : "grey"
                        border.color : "black"
                        Rectangle
                        {
                            id : imageItem
                            width: info.height
                            height: info.height
                            color: itemColor
                            anchors.right: parent.right
                            MouseArea
                            {
                                anchors.fill: parent
                                onPressed:
                                {
                                    if(type > 0)
                                    {
                                        if(useManager.buy_tools(name , type) === false)
                                        {

                                             dialogTxt.text = "you have not that much money !!!"
                                             dialog.open();
                                        }
                                        else
                                        {
                                            dialogTxt.text = "buy";
                                        }
                                    }
                                    else if(type === 0)
                                    {
                                        if(useManager.buy_seed(name) === false)
                                        {

                                             dialogTxt.text = "you have not that much money !!!"
                                             dialog.open();
                                        }
                                        else
                                        {
                                            dialogTxt.text = "buy";
                                        }
                                    }
                                    dialog2.open();
                                }
                            }
                        }
                        Rectangle
                        {
                            id: itemText
                            anchors.right: imageItem.left
                            width: info.width - imageItem.width
                            height: info.height/2
                            color : "grey"
                            border.color: "white"
                            Text
                            {
                                text: name
                                anchors.centerIn: parent
                                //color : "white"
                            }
                        }
                        Rectangle
                        {
                            anchors.right: imageItem.left
                            width: info.width - imageItem.width
                            height: info.height/2
                            color : "grey"
                            border.color: "white"
                            Text
                            {
                                text: type > 0 ? useManager.get_tools_price(name , type) : useManager.get_seed_price(name)
                                anchors.centerIn: parent
                                color : "white"
                                z : 5
                            }
                            anchors.top: itemText.bottom
                        }
                    }
                }

                Button
                {
                    id : backToFarm
                    text: "back"
                    width: 150
                    height: 50
                    anchors.left: shopBackground.left
                    anchors.top:shopBackground.bottom
                    onPressed: stackView.pop();
                }
                Button
                {
                    id : sellOrBuy
                    width: 50
                    height: 50
                    text : "sell"
                    anchors.right: shopBackground.left
                    anchors.bottom:shopBackground.top
                    onPressed:
                    {
                        if(sellOrBuy.text == "sell")
                        {
                            sellOrBuy.text = "buy";
                            selltomato.visible = useManager.veg_exist_in_bag("tomato");
                            sellcarrot.visible = useManager.veg_exist_in_bag("carrot");
                            sellcabbage.visible = useManager.veg_exist_in_bag("cabbage");
                            selllettuce.visible = useManager.veg_exist_in_bag("lettuce");
                            sellwheet.visible = useManager.veg_exist_in_bag("wheat");
                            sellItem.visible = true;
                            buyItem.visible = false;
                        }
                        else
                        {
                            sellOrBuy.text = "sell";
                            sellItem.visible = false;
                            buyItem.visible = true;
                        }
                    }
                }




            }

            ScrollView
            {
                id : sellItem
                visible: false
                anchors.fill: shopBackground

                Column
                {


                    Rectangle
                    {
                        id :selltomato
                        width: shopBackground.width
                        height: shopBackground.height /2
                        visible: useManager.veg_exist_in_bag("tomato");
                        Rectangle
                        {
                            id : selltomatoText
                            width: parent.width - selltomatoImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "tomato"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - selltomatoImage.width
                            height: parent.height/2
                            Text
                            {
                                text: useManager.get_veg_price("tomato");
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : selltomatoText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : selltomatoImage
                            width: parent.height
                            height: parent.height
                            color : "red"
                            anchors.right: parent.right
                            anchors.top : parent.top
                        }


                    }

                    Rectangle
                    {
                        id :sellcabbage
                        width: shopBackground.width
                        height: shopBackground.height /2
                        visible: useManager.veg_exist_in_bag("cabbage");
                        Rectangle
                        {
                            id : sellcabbageText
                            width: parent.width - sellcabbageImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "cabbage"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - sellcabbageImage.width
                            height: parent.height/2
                            Text
                            {
                                text: useManager.get_veg_price("cabbage")
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : sellcabbageText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : sellcabbageImage
                            width: parent.height
                            height: parent.height
                            color : "green"
                            anchors.right: parent.right
                            anchors.top : parent.top
                        }


                    }

                    Rectangle
                    {
                        id :selllettuce
                        width: shopBackground.width
                        height: shopBackground.height /2
                        visible: useManager.veg_exist_in_bag("lettuce");
                        Rectangle
                        {
                            id : selllettuceText
                            width: parent.width - selllettuceImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "lettuce"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - selllettuceImage.width
                            height: parent.height/2
                            Text
                            {
                                text: useManager.get_veg_price("lettuce")
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : selllettuceText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : selllettuceImage
                            width: parent.height
                            height: parent.height
                            color : "blue"
                            anchors.right: parent.right
                            anchors.top : parent.top
                        }


                    }

                    Rectangle
                    {
                        id :sellcarrot
                        width: shopBackground.width
                        height: shopBackground.height /2
                        visible: useManager.veg_exist_in_bag("carrot");
                        Rectangle
                        {
                            id : sellcarrotText
                            width: parent.width - sellcarrotImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "carrot"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - sellcarrotImage.width
                            height: parent.height/2
                            Text
                            {
                                text: useManager.get_veg_price("carrot")
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : sellcarrotText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : sellcarrotImage
                            width: parent.height
                            height: parent.height
                            color : "orange"
                            anchors.right: parent.right
                            anchors.top : parent.top
                        }


                    }

                    Rectangle
                    {
                        id :sellwheet
                        width: shopBackground.width
                        height: shopBackground.height /2
                        visible: useManager.veg_exist_in_bag("wheet");
                        Rectangle
                        {
                            id : sellwheetText
                            width: parent.width - wheetImage.width
                            height: parent.height/2
                            Text
                            {
                                text: "wheet"
                                color: "white"
                                anchors.centerIn: parent
                            }
                            border.color: "white"
                            color : "grey"
                        }
                        Rectangle
                        {
                            width: parent.width - sellwheetImage.width
                            height: parent.height/2
                            Text
                            {
                                text: useManager.get_veg_price("wheat");
                                color: "white"
                                anchors.centerIn: parent
                            }
                            anchors.top : sellwheetText.bottom
                            border.color: "white"
                            color : "grey"

                        }

                        Rectangle
                        {
                            id : sellwheetImage
                            width: parent.height
                            height: parent.height
                            color : "brown"
                            anchors.right: parent.right
                            anchors.top : parent.top
                        }


                    }

                }


            }
        }
    }
}

}
