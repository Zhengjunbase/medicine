<!doctype html>
<html ng-app="drag">
<head>
    <script src="http://cdn.bootcss.com/angular.js/1.3.0-beta.8/angular.min.js"></script>

</head>
<body>
Your name: <input type="text" ng-model="yourname" placeholder="World">
<hr>
Hello {{yourname || 'World'}}!

<table>
    <tr><th>row number</th></tr>
    <tr ng-repeat="i in [0, 1, 2, 3, 4, 5, 6, 7]"><td>{{i+yourname.length+"hello"   +yourname}}</td></tr>
</table>

<span draggable>Drag ME</span>
<script>
    angular.module('drag', []).
            directive('draggable', function($document) {
                var startX=0, startY=0, x = 0, y = 0;
                return function(scope, element, attr) {
                    element.css({
                        position: 'relative',
                        border: '1px solid red',
                        backgroundColor: 'lightgrey',
                        cursor: 'pointer'
                    });
                    element.bind('mousedown', function(event) {
                        startX = event.screenX - x;
                        startY = event.screenY - y;
                        $document.bind('mousemove', mousemove);
                        $document.bind('mouseup', mouseup);
                    });

                    function mousemove(event) {
                        y = event.screenY - startY;
                        x = event.screenX - startX;
                        element.css({
                            top: y + 'px',
                            left:  x + 'px'
                        });
                    }

                    function mouseup() {
                        $document.unbind('mousemove', mousemove);
                        $document.unbind('mouseup', mouseup);
                    }
                }
            });
</script>
</body>
</html>