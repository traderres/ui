<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html lang="en" data-ng-app="myApp">

<head>
    <title>Angular Page 2</title>

    <%-- Load select2 CSS --%>
    <link href="${contextPath}/resources/select2-3.5.4/select2.css" rel="stylesheet">

</head>

<body data-ng-controller="PhoneListCtrl as ctrl">

<%-- S T A N D A R D       H E A D E R  --%>
<%@ include file="/WEB-INF/jsp/stdHeader.jsp" %>

<h2>angularPage2.jsp</h2>

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

<form action="post" method="/blah">
    <input type="text" data-ng-model="ctrl.searchBoxRawQuery" data-on-shiftshift="ctrl.userPressedShiftShift()" style="width: 300px; border: 1px solid black" />

    <br/>
    <br/>

    <select id="myDropdown" style="width: 300px" select2
            callback="ctrl.selectAndClose(arg1)"
            initialization-json="{allowClear:false, placeholder:'-Select Field-'}"
            ng-show="ctrl.showPopup" >

        <%-- Fill-in the dropdown the values found in ctrl.searchFields --%>
        <option ng-repeat="option in ctrl.searchFields" value="{{option.fieldName}}">{{option.displayName}}</option>

    </select>


</form>

<br/>
<br/>

<%-- S T A N D A R D       F O O T E R  --%>
<%@ include file="/WEB-INF/jsp/stdFooter.jsp" %>

<%-- Load jQuery --%>
<script src="${contextPath}/resources/jquery/jquery-1.11.3.min.js"></script>

<%-- Load Angular --%>
<script src="${contextPath}/resources/angular-1.6.2/angular.js" type="text/javascript"></script>

<%-- Load select2 JS --%>
<script src="${contextPath}/resources/select2-3.5.4/select2.min.js"></script>


<script type="text/javascript">
    var myApp = angular.module('myApp', []);

    myApp.controller('PhoneListCtrl', function ($scope)
    {
        var self = this;

        self.searchBoxRawQuery = "";

        self.showPopup=false;

        self.searchFields = [
            {
                'fieldName': 'end_ip',
                'displayName': 'End IP Address'
            },
            {
                'fieldName': 'incident_start_date',
                'displayName': 'Incident Start Date'
            },
            {
                'fieldName': 'ingest_date',
                'displayName': 'Ingest Date'
            },
            {
                'fieldName': 'start_ip',
                'displayName': 'Start IP Address'
            }
        ];

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
            self.showPopup = true;
        }

        self.selectAndClose = function(aSelectedValue)
        {
            var newValue = self.searchBoxRawQuery + aSelectedValue + ':';
            console.log('BEFORE:  searchBoxRawQuery-->' + self.searchBoxRawQuery + '<--   newValue-->' + newValue + '<--');
            self.searchBoxRawQuery = newValue;
            console.log('AFTER :  searchBoxRawQuery-->' + self.searchBoxRawQuery + '<--   newValue-->' + newValue + '<--');
            self.showPopup = false;
        }
    });

    myApp.directive('select2', function()
    {
        return{
            restrict: 'A',
            scope:
            {
                initializationJson: '=',
                callback: '&'
            },
            link: function(scope, element, attrs)
            {
                // Make sure InitializationJson is atleast an empty json block
                scope.initializationJson = scope.initializationJson || {};

                // Apply the json to this select2 dropdown
                $(element).select2(scope.initializationJson);

                $(element).on("select2-selecting", function(e)
                {
                    // The user is about to select something.  e.val holds the value
                    if (e.val != '')
                    {
                        // User selected a value
                        scope.$apply(function()
                        {
                            // Call the callback method and pass-in the selected value as arg1
                            scope.callback({arg1: e.val});
                        });
                    }
                });
            }
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
                            // Last shift was within 1 second of the current shift -- so it applies
                            // User Pressed "Shift" and the last code was "Shift" -- so execute the function

                            console.log('Shift Shift Detected!!');

                            iLastEventWhich = 0;
                            iSecondsOfLastShift = 0;

                            scope.$apply(function ()
                            {
                                // Send the trigger event to open it
                                element.siblings('select').select2('open');

                                // Run the code associated with the onShiftshift=...
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