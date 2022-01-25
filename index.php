<?php
session_start();
if(!isset($_SESSION['uname']))
{
  header('location:http://localhost/ChartDraw/login.html');
  die();
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="index.css" />
    <title>Chart-Draw</title>
  </head>

  <body onload="callAjax()">
    <main>
      <div class="graph-wrap">
        <canvas id="graphCanvas"></canvas>
      </div>
      <div class="form-wrap">
        <form action="submitChart.php" method="post" name="chart-form">
          <table>
            <tr>
              <td>
                <label for="temp1">Enter Temprature1:</label>
              </td>
              <td>
                <input type="number" name="temp1" />
              </td>
            </tr>
            <tr>
              <td>
                <label for="temp2">Enter Temprature2:</label>
              </td>
              <td>
                <input type="number" name="temp2" />
              </td>
            </tr>
            <tr>
              <td>
                <button type="submit" class="formbtn" name="submit">Submit</button>
              </td>
              <td>
                <button type="submit" class="formbtn" name="logout">Logout</button>
              </td>
            </tr>
          </table>
        </form>
      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
    <script src="app.js"></script>
  </body>
</html>