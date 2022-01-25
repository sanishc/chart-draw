function callAjax() {
  const canvas = document.querySelector("#graphCanvas").getContext("2d");
  let temp1Data = [];
  let temp2Data = [];
  let graphLabels = [];

  let xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      let json = this.responseText;
      let obj = JSON.parse(json);

      temp1Data = temp1Data.concat(obj.graph1);
      temp2Data = temp2Data.concat(obj.graph2);
      graphLabels = graphLabels.concat(obj.label);

      let myChart = new Chart(canvas, {
        type: "line",
        data: {
          labels: graphLabels,
          datasets: [
            {
              label: "Temperature 1",
              data: temp1Data,
              borderColor: "red",
              fill: false,
              lineTension: 0.1
            },
            {
              label: "Temperature 2",
              data: temp2Data,
              borderColor: "green",
              fill: false,
              lineTension: 0.1
            }
          ]
        },
        options: {
          scales: {
            xAxes: [
              {
                ticks: {
                  autoSkip: false,
                  maxRotation: 90,
                  minRotation: 90
                }
              }
            ]
          }
        }
      });
    }
  };
  xmlhttp.open("POST", "chartData.php", true);
  xmlhttp.send();
}
