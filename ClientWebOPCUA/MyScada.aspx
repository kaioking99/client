<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="MyScada.aspx.cs" Inherits="ClientWebOPCUA.MyScada" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a id="div1" class="lbrun">I'm Client Scada Page</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="/Content/styleScada.css" type="text/css" />
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="tabcontain" OnActiveTabChanged="TabContainer1_ActiveTabChanged1">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Home" ID="TabPanel1" Height="730" BackColor="#0f2733">
            <ContentTemplate>
                <div id="scada" class="scada">
                    <asp:Image ID="Image1" CssClass="verticalpipe" runat="server" ImageUrl="~/Img/Shortverticalpipe.png" />
                    <asp:Image ID="Image2" CssClass="tee" runat="server" ImageUrl="~/Img/Tee3.png" />
                    <asp:Image ID="Image3" CssClass="verticalpipe1" runat="server" ImageUrl="~/Img/Shortverticalpipe.png" />
                    <asp:Image ID="Image4" CssClass="curve" runat="server" ImageUrl="~/Img/90curve3.png" />
                    <asp:Image ID="Image5" CssClass="horizonpipe" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image6" CssClass="horizonpipe1" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image7" CssClass="curve1" runat="server" ImageUrl="~/Img/90curve4.png" />
                    <asp:Image ID="Image8" CssClass="curve2" runat="server" ImageUrl="~/Img/90curve4.png" />
                    <asp:Image ID="Image9" CssClass="curve3" runat="server" ImageUrl="~/Img/90curve2.png" />
                    <asp:Image ID="Image10" CssClass="curve4" runat="server" ImageUrl="~/Img/90curve2.png" />
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="Image11" CssClass="pump1" runat="server" ImageUrl="~/Img/Pump.png" />
                            <asp:Image ID="Image12" CssClass="pump2" runat="server" ImageUrl="~/Img/Pump.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Image ID="Image13" CssClass="verticalpipe2" runat="server" ImageUrl="~/Img/Shortverticalpipe.png" />
                    <asp:Image ID="Image14" CssClass="verticalpipe3" runat="server" ImageUrl="~/Img/Shortverticalpipe.png" />

                    <div id="chart-container-3">FusionCharts will render here</div>

                    <asp:Image ID="Image19" CssClass="curve7" runat="server" ImageUrl="~/Img/90curve2.png" />
                    <asp:Image ID="Image15" CssClass="curve5" runat="server" ImageUrl="~/Img/90curve1.png" />
                    <asp:Image ID="Image27" CssClass="sensor1" runat="server" ImageUrl="~/Img/Levelsensor.png" />

                    <div id="chart-container-4"></div>

                    <asp:Image ID="Image20" CssClass="curve8" runat="server" ImageUrl="~/Img/90curve2.png" />
                    <asp:Image ID="Image16" CssClass="curve6" runat="server" ImageUrl="~/Img/90curve1.png" />
                    <asp:Image ID="Image28" CssClass="sensor2" runat="server" ImageUrl="~/Img/Levelsensor.png" />

                    <asp:Image ID="Image17" CssClass="horizonpipe2" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image18" CssClass="horizonpipe3" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image21" CssClass="horizonpipe4" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image22" CssClass="horizonpipe5" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="Image23" CssClass="valve1" runat="server" ImageUrl="~/Img/Handvalve.png" />
                            <asp:Image ID="Image24" CssClass="valve2" runat="server" ImageUrl="~/Img/Handvalve.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Image ID="Image25" CssClass="verticalpipe4" runat="server" ImageUrl="~/Img/Shortverticalpipe_blue.png" />
                    <asp:Image ID="Image26" CssClass="bottom" runat="server" ImageUrl="~/Img/Flangewithboltsonbottom.png" />
                    <asp:Image ID="Image29" CssClass="gate1" runat="server" ImageUrl="~/Img/gate.png" />
                    <asp:Image ID="Image30" CssClass="horizonpipe6" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />
                    <asp:Image ID="Image31" CssClass="gate2" runat="server" ImageUrl="~/Img/gate.png" />
                    <asp:Image ID="Image32" CssClass="horizonpipe7" runat="server" ImageUrl="~/Img/Shorthorizontalpipe.png" />

                    <asp:Image ID="Image33" CssClass="flower1" runat="server" ImageUrl="~/Img/flower1.png" />
                    <asp:Image ID="Image43" CssClass="sensor3" runat="server" ImageUrl="~/Img/Leveltransmitter.png" />

                    <asp:Image ID="Image34" CssClass="flower2" runat="server" ImageUrl="~/Img/flower2.png" />
                    <asp:Image ID="Image44" CssClass="sensor4" runat="server" ImageUrl="~/Img/Leveltransmitter.png" />
                </div>
                <div id="pump1" class="divpump1">
                    <h3>Pump 1</h3>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Start" CssClass="sta_pump1" OnClick="start_p1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Stop" CssClass="sto_pump1" OnClick="stop_p1_Click" />
                            <asp:Image ID="Image38" runat="server" CssClass="led_pump1" ImageUrl="~/Img/light_green_off.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div id="pump2" class="divpump2">
                    <h3>Pump 2</h3>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Start" CssClass="sta_pump2" />
                            <asp:Button ID="Button4" runat="server" Text="Stop" CssClass="sto_pump2" />
                            <asp:Image ID="Image37" runat="server" CssClass="led_pump2" ImageUrl="/Img/light_green_off.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div id="tank1" class="divtank1">
                    <h3>Tank 1</h3>
                    <div>
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lv_tank1" ForeColor="White" Width="100px" CssClass="lv_tank1" runat="server"></asp:Label>
                                <asp:Label ID="sta_tank1" ForeColor="White" Width="100px" CssClass="sta_tank1" runat="server"></asp:Label>
                                <h3 id="lb_valve1">Valve 1</h3>
                                <asp:Label ID="Valve1Status" CssClass="valve1stt" runat="server" Font-Size="Large" Text="None"></asp:Label>
                                <asp:Button ID="Button11" CssClass="ope_val1" OnClick="ope_val1_Click" runat="server" Text="Open" />
                                <asp:Button ID="Button12" CssClass="clo_val1" OnClick="clo_val1_Click" runat="server" Text="Close" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div id="tank2" class="divtank2">
                    <h3>Tank 2</h3>
                    <div>
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lv_tank2" ForeColor="White" Width="100px" CssClass="lv_tank2" runat="server"></asp:Label>
                                <asp:Label ID="sta_tank2" ForeColor="White" Width="100px" CssClass="sta_tank2" runat="server"></asp:Label>
                                <h3 id="lb_valve2">Valve 2</h3>
                                <asp:Label ID="Valve2Status" CssClass="valve2stt" Font-Size="Large" runat="server" Text="None"></asp:Label>
                                <asp:Button ID="Button13" CssClass="ope_val2" OnClick="ope_val2_Click" runat="server" Text="Open" />
                                <asp:Button ID="Button14" CssClass="clo_val2" OnClick="clo_val2_Click" runat="server" Text="Close" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div id="g1" class="divgate1">
                    <h3>Gate 1</h3>
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button7" OnClick="open_gate1_Click" runat="server" Text="Open" CssClass="ope_gate1" />
                            <asp:Button ID="Button8" runat="server" OnClick="stop_gate1_Click" Text="Stop" CssClass="sto_gate1" />
                            <asp:Button ID="Button10" runat="server" OnClick="close_gate1_Click" Text="Close" CssClass="clo_gate1" />
                            <asp:Image ID="Image35" runat="server" CssClass="led_gate1" ImageUrl="/Img/light_green_off.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div id="g2" class="divgate2">
                    <h3>Gate 2</h3>
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button5" runat="server" OnClick="open_gate2_Click" Text="Open" CssClass="ope_gate2" />
                            <asp:Button ID="Button6" runat="server" Text="Stop" OnClick="stop_gate2_Click" CssClass="sto_gate2" />
                            <asp:Button ID="Button9" runat="server" Text="Close" OnClick="close_gate2_Click" CssClass="clo_gate2" />
                            <asp:Image ID="Image36" runat="server" CssClass="led_gate2" ImageUrl="/Img/light_green_off.png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div id="Intro" class="intro">
                    <h3>ĐỀ TÀI ỨNG DỤNG OPCUA VÀO GIÁM SÁT</h3>

                    <label id="l1">Giáo viên hướng dẫn :</label>
                    <label id="l2">Thầy Trương Đình Châu</label>
                    <label id="l3">Sinh viên thực hiện:</label>
                    <label id="l4">A - 123456</label>
                   
                    <asp:Image ID="Image39" CssClass="lobk" runat="server" ImageUrl="/Img/Logobktrans.png" />
                    <asp:Image ID="Image40" runat="server" CssClass="loat" ImageUrl="/Img/LogoAuto.png" />
                </div>
                <div id="mainboard" class="divmainboard">
                    <h1>Mainboard</h1>
                    <asp:Label ID="Label3" CssClass="label_main" runat="server" Text="Status"></asp:Label>
                    <asp:Label ID="Label4" CssClass="fault_main" runat="server" Text="Fault"></asp:Label>
                    <asp:Label ID="Label1" CssClass="emer_main" runat="server" Text="Emergency"></asp:Label>

                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="Image41" runat="server" CssClass="led_status" ImageUrl="/Img/light_green_off.png" />
                            <asp:Image ID="Image42" runat="server" CssClass="led_fault" ImageUrl="/Img/light_red_off.png" />
                            <asp:Image ID="Image45" runat="server" CssClass="led_Emer" Width="50px" ImageUrl="/Img/light_yellow_off.png" />
                              <asp:Button ID="Auto" runat="server" CssClass="autobtn" Text="Auto" OnClick="Auto_Click"/>
                            <asp:Button ID="Manual" runat="server" CssClass="manbtn" Text="Manual" OnClick="Manual_Click" />
                          
                            <asp:ImageButton ID="ImageButton1" CssClass="emer" runat="server" ImageUrl="/Img/buttonpower_red_off.png" OnClick="Stop_Click" />
                            <asp:ImageButton ID="ImageButton2" CssClass="reset" runat="server" ImageUrl="/Img/refresh.png" OnClick="Reset_Click" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="500" OnTick="Timer1_Tick" Enabled="false"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" HeaderText="GraphTank" ID="TabPanel2" Height="700">
            <ContentTemplate>
                <div id="chart-container-1"></div>
                <div id="chart-container-2"></div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" HeaderText="Report" ID="TabPanel3" Height="700">
            <ContentTemplate>
                <asp:Button ID="Button15" runat="server" Text="Load Report" OnClick="Load_Report_Click" />
                <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                    <ContentTemplate>
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1100px"></rsweb:ReportViewer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>

    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
    <script type="text/javascript">
        var data1, data2, upper = 800, lower = 100;
        function update1(a) {
            data1 = a;
            //upper = b;
            //lower = c;
        };
        function update2(a) {
            data2 = a;
            //upper = b;
            //lower = c;
        };

        FusionCharts.ready(function () {
            var myChart = new FusionCharts({
                type: "angulargauge",
                renderAt: "chart-container-1",
                id: "myGauge",
                width: "500",
                height: "400",
                dataFormat: "json",
                dataSource: {
                    chart: {
                        caption: "TANK LEVEL 1",
                        lowerlimit: "0",
                        upperlimit: "1000",
                        showvalue: "1",
                        numbersuffix: " Litre",
                        theme: "fusion",
                        showtooltip: "0",
                        majorTMNumber: "10",
                        minorTMNumber: "3",
                    },
                    colorrange: {
                        color: [
                            {
                                minvalue: 0,
                                maxvalue: lower,
                                code: "#F2726F"
                            },
                            {
                                minvalue: lower,
                                maxvalue: lower + 100,
                                code: "#FFC533"
                            },
                            {
                                minvalue: lower + 100,
                                maxvalue: upper - 100,
                                code: "#62B58F"
                            },
                            {
                                minvalue: upper - 100,
                                maxvalue: upper,
                                code: "#FFC533"
                            },
                            {
                                minvalue: upper,
                                maxvalue: 1000,
                                code: "#F2726F"
                            },

                        ]
                    },
                    dials: {
                        dial: [
                            {
                                id: "Tank1Level",
                                value: "0"
                            }
                        ]
                    }
                }
            }).render();
            var myVar = setInterval(function () {
                FusionCharts.items["myGauge"].feedData("&Tank1Level=" + data1);
            }, 100);
        });
        FusionCharts.ready(function () {
            var myChart = new FusionCharts({
                type: "angulargauge",
                renderAt: "chart-container-2",
                id: "myGauge2",
                width: "500",
                height: "400",
                dataFormat: "json",
                dataSource: {
                    chart: {
                        caption: "TANK LEVEL 2",
                        lowerlimit: "0",
                        upperlimit: "1000",
                        showvalue: "1",
                        numbersuffix: " Litre",
                        theme: "fusion",
                        showtooltip: "0",
                        majorTMNumber: "10",
                        minorTMNumber: "3",
                    },
                    colorrange: {
                        color: [
                            {
                                minvalue: 0,
                                maxvalue: lower,
                                code: "#F2726F"
                            },
                            {
                                minvalue: lower,
                                maxvalue: lower + 100,
                                code: "#FFC533"
                            },
                            {
                                minvalue: lower + 100,
                                maxvalue: upper - 100,
                                code: "#62B58F"
                            },
                            {
                                minvalue: upper - 100,
                                maxvalue: upper,
                                code: "#FFC533"
                            },
                            {
                                minvalue: upper,
                                maxvalue: 1000,
                                code: "#F2726F"
                            },

                        ]
                    },
                    dials: {
                        dial: [
                            {
                                id: "Tank2Level",
                                value: "0"
                            }
                        ]
                    }
                }
            }).render();
            var myVar = setInterval(function () {
                FusionCharts.items["myGauge2"].feedData("&Tank2Level=" + data2);
                //console.log(data2);
            }, 1000);
        });

        FusionCharts.ready(function () {
            var chartObj = new FusionCharts({
                type: 'cylinder',
                dataFormat: 'json',
                id: 'tankchart1',
                renderAt: 'chart-container-3',
                width: '200',
                height: '250',
                dataSource: {
                    chart: {
                        caption: 'Tank1',
                        animation: 'true',
                        cylFillHoverColor: "#0099fd",
                        cylFillHoverAlpha: "85",
                        theme: "fusion",
                        lowerLimit: "0",
                        upperLimit: "1000",
                        lowerLimitDisplay: "Empty",
                        upperLimitDisplay: "Full",
                        numberSuffix: " ltrs",
                        showValue: "1",
                        chartBottomMargin: "20",
                        refreshInterval: '1',
                        bgColor: "#0f2733",
                        valueFontColor: "#76a683",
                        captionFontColor: "#06c6bc"
                    },
                    value: 110,
                    annotations: {
                        origw: "400",
                        origh: "190",
                        autoscale: "1",
                    }
                }
            }).render();
            var myVar1 = setInterval(function () {
                FusionCharts.items["tankchart1"].feedData("&value=" + data1);
            }, 1000);
        });

        FusionCharts.ready(function () {
            var chartObj = new FusionCharts({
                type: 'cylinder',
                dataFormat: 'json',
                id: 'tankchart2',
                renderAt: 'chart-container-4',
                width: '200',
                height: '250',
                dataSource: {
                    chart: {
                        caption: 'Tank2',
                        animation: 'true',
                        cylFillHoverColor: "#0099fd",
                        cylFillHoverAlpha: "85",
                        theme: "fusion",
                        lowerLimit: "0",
                        upperLimit: "1000",
                        lowerLimitDisplay: "Empty",
                        upperLimitDisplay: "Full",
                        numberSuffix: " ltrs",
                        showValue: "1",
                        chartBottomMargin: "20",
                        refreshInterval: '1',
                        bgColor: "#0f2733",
                        valueFontColor: "#76a683",
                        captionFontColor: "#06c6bc"
                    },
                    value: 110,
                    annotations: {
                        origw: "400",
                        origh: "190",
                        autoscale: "1",
                    }
                }
            }).render();
            var myVar = setInterval(function () {
                FusionCharts.items["tankchart2"].feedData("&value=" + data2);
                //console.log(data2);
            }, 1000);
        });
    </script>
</asp:Content>