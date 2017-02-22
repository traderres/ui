<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html lang="en" data-ng-app="myApp">

<head>
    <title>Angular Page 3</title>

    <link rel="stylesheet" href="${contextPath}/resources/angular-material-1.1.3/angular-material.min.css">
</head>

<body data-ng-controller="PhoneListCtrl as ctrl">

<%-- S T A N D A R D       H E A D E R  --%>
<%@ include file="/WEB-INF/jsp/stdHeader.jsp" %>

<h2>angularPage3.jsp</h2>

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
    <input id="myTextbox" type="text" data-ng-model="ctrl.searchBoxRawQuery" data-on-shiftshift="ctrl.userPressedShiftShift()" style="width: 300px; border: 1px solid black" />

    <br/>
    <br/>
    <md-autocomplete style="width: 400px; border: 1px solid black;"
            ng-show="ctrl.showPopup"
            ng-blur="ctrl.noSelectAndClose()"       <%-- hide the auto-complete if we lose focus --%>
            ng-esc="ctrl.noSelectAndClose()"        <%-- hide the auto-complete if user presses escape --%>
            md-escape-options="none"
            md-input-id="myAutocomplete"
            md-search-text="ctrl.searchText"
            md-items="item in ctrl.querySearchFields(ctrl.searchText)"
            md-item-text="item.displayName"
            md-selected-item="ctrl.selectedField"
            md-selected-item-change="ctrl.selectAndClose()"
            md-min-length="0"
            placeholder="-Select a Field-">
                <md-item-template>
                    <span md-highlight-text="ctrl.searchText" md-highlight-flags="^i">{{item.displayName}}</span>
                </md-item-template>
                <md-not-found>
                    No fields matching "{{ctrl.searchText}}" were found.
                </md-not-found>
    </md-autocomplete>

</form>

<br/>
<br/>

<%-- S T A N D A R D       F O O T E R  --%>
<%@ include file="/WEB-INF/jsp/stdFooter.jsp" %>

<%-- Load jQuery --%>
<script src="${contextPath}/resources/jquery/jquery-1.11.3.min.js"></script>

<%-- Load Angular --%>
<script src="${contextPath}/resources/angular-1.6.2/angular.js" type="text/javascript"></script>
<script src="${contextPath}/resources/angular-1.6.2/angular-animate.min.js"></script>
<script src="${contextPath}/resources/angular-1.6.2/angular-aria.min.js"></script>
<script src="${contextPath}/resources/angular-1.6.2/angular-messages.min.js"></script>
<script src="${contextPath}/resources/angular-material-1.1.3/angular-material.min.js"></script>



<script type="text/javascript">
    var myApp = angular.module('myApp', ['ngMaterial']);

    myApp.controller('PhoneListCtrl', function ($scope)
    {
        var self = this;

        self.searchBoxRawQuery = "";

        self.showPopup=false;
        self.selectedField = "";


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
            // Show the popup-autocomplete
            self.showPopup = true;

            setTimeout(function() {
                // Put the focus on the autocomplete
                angular.element('#myAutocomplete').focus();
            }, 0);

        };


        self.noSelectAndClose = function()
        {
            console.log("noSelectAndClose() called.");

            // Hide the auto-complete
            self.showPopup = false;

            // Clear the selectedField (so that the auto-complete shows everything next time)
            self.selectedField = undefined;
            self.searchText = undefined;

            // Put the focus on the textbox
            setTimeout(function() {
                angular.element('#myTextbox').focus();
            }, 0);
        };

        self.selectAndClose = function()
        {
            var selectedItem = self.selectedField;
            if (selectedItem == null)
            {
                console.log("selectAndClose()  selectedItem is null!!!!");
                return;
            }

            console.log("selectAndClose()  selectedItem.fieldName="+ selectedItem.fieldName);

            var newValue = self.searchBoxRawQuery + selectedItem.fieldName + ':';
            console.log('BEFORE:  searchBoxRawQuery-->' + self.searchBoxRawQuery + '<--   newValue-->' + newValue + '<--');
            self.searchBoxRawQuery = newValue;
            console.log('AFTER :  searchBoxRawQuery-->' + self.searchBoxRawQuery + '<--   newValue-->' + newValue + '<--');

            // Hide the auto-complete
            self.showPopup = false;

            // Clear the selectedField (so that the auto-complete shows everything next time)
            self.selectedField = undefined;
            self.searchText = undefined;

            // Put the focus on the textbox
            setTimeout(function() {
                angular.element('#myTextbox').focus();
            }, 0);
        };


        self.querySearchFields = function (aSearchText)
        {
            if (! aSearchText)
            {
                return self.searchFields;
            }

            var results = [];

            console.log("querySearchFields():  aSearchText-->" + aSearchText + "<--");
            var sSearchTextLowerCase = angular.lowercase(aSearchText);
            var sDisplayValue;
            for (i=0; i<self.searchFields.length; i++)
            {
                sDisplayValue = angular.lowercase(self.searchFields[i].displayName);

                if (sDisplayValue.indexOf(sSearchTextLowerCase) >= 0)
                {
                    results.push(self.searchFields[i])
                }
            }

            return results;
        };


        self.selectedItemChange = function()
        {
            self.showPopup = false;
        }


    });

    myApp.directive('ngEsc', function () {
        return function (scope, element, attrs) {
            element.bind("keydown keypress keyup", function (event) {
                if(event.which === 27) {
                    scope.$apply(function (){
                        scope.$eval(attrs.ngEsc);
                    });

                    event.preventDefault();
                }
            });
        };
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