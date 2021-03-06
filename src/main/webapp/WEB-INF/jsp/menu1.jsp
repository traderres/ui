<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html lang="en" data-ng-app="myApp">

<head>
    <title>menu 1</title>

    <link rel="stylesheet" href="${contextPath}/resources/angular-material-1.1.3/angular-material.min.css">
</head>

<body data-ng-controller="MyController as ctrl">

<%-- S T A N D A R D       H E A D E R  --%>
<%@ include file="/WEB-INF/jsp/stdHeader.jsp" %>



<md-toolbar class="md-menu-toolbar">
    <div layout="row">
        <md-toolbar-filler layout="" layout-align="center center">
            <md-icon md-svg-icon="call:chat"></md-icon>
        </md-toolbar-filler>

        <div>
            <md-menu-bar>
                <md-menu>
                    <button ng-mouseover="$mdOpenMenu()">
                        File
                    </button>
                    <md-menu-content>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('share', $event)">
                                Share...
                            </md-button>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item>
                            <md-menu>
                                <md-button ng-click="$mdOpenMenu()">New</md-button>
                                <md-menu-content>
                                    <md-menu-item><md-button ng-click="ctrl.sampleAction('New Document', $event)">Document</md-button></md-menu-item>
                                    <md-menu-item><md-button ng-click="ctrl.sampleAction('New Spreadsheet', $event)">Spreadsheet</md-button></md-menu-item>
                                    <md-menu-item><md-button ng-click="ctrl.sampleAction('New Presentation', $event)">Presentation</md-button></md-menu-item>
                                    <md-menu-item><md-button ng-click="ctrl.sampleAction('New Form', $event)">Form</md-button></md-menu-item>
                                    <md-menu-item><md-button ng-click="ctrl.sampleAction('New Drawing', $event)">Drawing</md-button></md-menu-item>
                                </md-menu-content>
                            </md-menu>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('Open', $event)">
                                Open...
                                <span class="md-alt-text"> {{ 'M-O' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button disabled="disabled" ng-click="ctrl.sampleAction('Rename', $event)">
                                Rename
                            </md-button>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('Print', $event)">
                                Print
                                <span class="md-alt-text">{{ 'M-P' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                    </md-menu-content>
                </md-menu>
                <md-menu>
                    <button ng-click="$mdOpenMenu()">
                        Edit
                    </button>
                    <md-menu-content>
                        <md-menu-item class="md-indent">
                            <md-icon md-svg-icon="undo"></md-icon>
                            <md-button ng-click="ctrl.sampleAction('undo', $event)">
                                Undo
                                <span class="md-alt-text">{{ 'M-Z' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item class="md-indent">
                            <md-icon md-svg-icon="redo"></md-icon>
                            <md-button ng-click="ctrl.sampleAction('redo', $event)">
                                Redo
                                <span class="md-alt-text">{{ 'M-Y' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item class="md-indent">
                            <md-icon md-svg-icon="content-cut"></md-icon>
                            <md-button ng-click="ctrl.sampleAction('cut', $event)">
                                Cut
                                <span class="md-alt-text">{{ 'M-X' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item class="md-indent">
                            <md-icon md-svg-icon="content-copy"></md-icon>
                            <md-button ng-click="ctrl.sampleAction('copy', $event)">
                                Copy
                                <span class="md-alt-text">{{ 'M-C' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item class="md-indent">
                            <md-icon md-svg-icon="content-paste"></md-icon>
                            <md-button ng-click="ctrl.sampleAction('paste', $event)">
                                Paste
                                <span class="md-alt-text">{{ 'M-P' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item class="md-indent">
                            <md-button ng-click="ctrl.sampleAction('Find and replace', $event)">
                                Find and replace...
                                <span class="md-alt-text">{{ 'M-S-H' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                    </md-menu-content>
                </md-menu>
                <md-menu>
                    <button ng-click="$mdOpenMenu()">
                        View
                    </button>
                    <md-menu-content>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.printLayout">Print layout</md-menu-item>
                        <md-menu-item class="md-indent">
                            <md-menu>
                                <md-button ng-click="$mdOpenMenu()">Mode</md-button>
                                <md-menu-content width="3">
                                    <md-menu-item type="radio" ng-model="ctrl.settings.presentationMode" value="'presentation'">Presentation</md-menu-item>
                                    <md-menu-item type="radio" ng-model="ctrl.settings.presentationMode" value="'edit'">Edit</md-menu-item>
                                    <md-menu-item type="radio" ng-model="ctrl.settings.presentationMode" value="'modifiable'">Modifiable</md-menu-item>
                                </md-menu-content>
                            </md-menu>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.showRuler">Show ruler</md-menu-item>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.showEquationToolbar">Show equation toolbar</md-menu-item>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.showSpellingSuggestions">Show spelling suggestions</md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.compactControls">Compact controls</md-menu-item>
                        <md-menu-item type="checkbox" ng-model="ctrl.settings.fullScreen">Full screen</md-menu-item>
                    </md-menu-content>
                </md-menu>
                <md-menu>
                    <button ng-click="$mdOpenMenu()">
                        Format
                    </button>
                    <md-menu-content>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('bold', $event)">
                                Bold
                                <span class="md-alt-text"> {{ 'M-B' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('italic', $event)">
                                Italic
                                <span class="md-alt-text">{{ 'M-I' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('underline', $event)">
                                Underline
                                <span class="md-alt-text">{{ 'M-U' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('strikethrough', $event)">
                                Strikethrough
                                <span class="md-alt-text">{{ 'A-S-5' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('superscript', $event)">
                                Superscript
                                <span class="md-alt-text">{{ 'M-.' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-item>
                            <md-button ng-click="ctrl.sampleAction('subscript', $event)">
                                Subscript
                                <span class="md-alt-text">{{ 'M-,' | keyboardShortcut }}</span>
                            </md-button>
                        </md-menu-item>
                        <md-menu-divider></md-menu-divider>
                        <md-menu-item><md-button ng-click="ctrl.toggleSetting('clearFormatting')">Clear Formatting</md-button></md-menu-item>
                    </md-menu-content>
                </md-menu>
            </md-menu-bar>
        </div>
    </div>
</md-toolbar>

<br/>
<h2>menu1.jsp</h2>
<br/>
<br/>


<br/>
<br/>

<form action="post" method="/blah">
    <input id="myTextbox" type="text" data-ng-model="ctrl.searchBoxRawQuery" style="width: 300px; border: 1px solid black" />
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

    myApp.controller('MyController', function ($scope)
    {
        var self = this;

        self.searchBoxRawQuery = "Search for this!";
    });


</script>

</body>
</html>