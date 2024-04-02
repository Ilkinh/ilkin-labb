<!DOCTYPE html>
<html>
<body>

<table>
<?php
for ($x=1; $x<=10; $x++) {
echo "<tr>";
for ($y=1; $y<=10; $y++) {
$a=$x*$y;
echo "<td>" . "$x*$y=$a" . "&emsp;"; }
echo "<br>"; }
?>
</table>
</body>
</html>