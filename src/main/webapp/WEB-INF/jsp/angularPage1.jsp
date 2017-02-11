<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html lang="en" data-ng-app="myApp">

<head>
    <title>Angular Page 1</title>
</head>

<body data-ng-controller="PhoneListCtrl as ctrl">

<%-- S T A N D A R D       H E A D E R  --%>
<%@ include file="/WEB-INF/jsp/stdHeader.jsp" %>

<h2>angularPage1.jsp</h2>

<br/>

<br/>
<br/>

<%-- Loop through an array of phone dictionaries --%>
<table width="500" cellpadding="1" cellspacing="2" style="border: 1px solid black">
    <tr>
        <th>&nbsp;</th>
        <th>Phone Model</th>
        <th>Summary</th>
    </tr>

    <tr data-ng-repeat="phone in ctrl.phones">
        <td>{{$index + 1}}.</td>
        <td>{{phone.name}}</td>
        <td>{{phone.snippet}}</td>
    </tr>
</table>

<br/>
<br/>

<form action="post" method="/blah" style="border: 1px solid black">
    <input type="text" data-ng-model="ctrl.guessedNumber" data-on-shiftshift="ctrl.userPressedShiftShift()" />
</form>

<br/>
<br/>

<%-- S T A N D A R D       F O O T E R  --%>
<%@ include file="/WEB-INF/jsp/stdFooter.jsp" %>

<%-- Load jQuery --%>
<script src="${contextPath}/resources/jquery/jquery-1.11.3.min.js"></script>

<%-- Load Angular --%>
<script src="${contextPath}/resources/angular-1.6.2/angular.min.js" type="text/javascript"></script>


<script type="text/javascript">
    var myApp = angular.module('myApp', []);

    myApp.controller('PhoneListCtrl', function ($scope)
    {
        var self = this;

        self.guessedNumber = "15";

        self.phones = [
            {
                'name': 'Nexus S',
                'snippet': 'Fast just got faster with Nexus S.'
            },
            {
                'name': 'Motorola XOOM with Wi-Fi',
                'snippet': 'The Next, Next Generation tablet.'
            },
            {
                'name':  'MOTOROLA XOOM',
                'snippet': 'The Next, Next Generation tablet.'
            }
        ];

        self.userPressedShiftShift = function()
        {
            alert('user pressed shift-shift');
        }
    });

    myApp.directive('onShiftshift', function ()
    {
        var iLastEventWhich = 0;
        var iSecondsOfLastShift;

        function getSecondsSinceEpoch()
        {
            var currentDate = new Date();
            var seconds = Math.round(currentDate.getTime() / 1000);
            return seconds;
        }

        return {
            restrict: 'A',
            link: function (scope, element, attrs)
            {
                element.bind("keydown", function (event)
                {
                    console.log('user pressed this:  ' + event.which + '   iLastEventWhich=' + iLastEventWhich);

                    if (((event.which == 16)) && (iLastEventWhich != 16))
                    {
                        // User Pressed shift but the last event was not shift

                        // User pressed shift -- so get the current date/time
                        iSecondsOfLastShift = getSecondsSinceEpoch();
                        iLastEventWhich = event.which;
                    }
                    else if ((event.which == 16) && (iLastEventWhich == 16))
                    {
                        // Last event was shift and the current event is shift

                        var currentSeconds = getSecondsSinceEpoch();
                        var secondsSinceLastShift = currentSeconds - iSecondsOfLastShift;
                        console.log('Detected shift-shift:  secsSinceLastShift='+secondsSinceLastShift+'  curSecs='+currentSeconds+'  iSecsOfLast='+iSecondsOfLastShift);

                        if (secondsSinceLastShift > 1)
                        {
                            // It has been more than 1 seconds -- so it does not apply
                            console.log('second shift is too late!!');
                            iLastEventWhich = 0;
                            iSecondsOfLastShift = 0;
                        }
                        else
                        {
                            iLastEventWhich = 0;
                            iSecondsOfLastShift = 0;

                            // Last shift was within 1 second of the current shift -- so it applies
                            // User Pressed "Shift" and the last code was "Shift" -- so execute the function
                            console.log('user pressed shift shift!!');
                            scope.$apply(function ()
                            {
                                scope.$eval(attrs.onShiftshift);
                            });
                            event.preventDefault();

                        }
                    }
                    else
                    {
                        // The user did not press shift
                        iLastEventWhich = event.which;
                    }
                });
            }
        };
    });


</script>

</body>
</html>