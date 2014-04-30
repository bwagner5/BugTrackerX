modules = {

    core {
        dependsOn('bootstrap')
        resource url:'css/main.css'
        resource url:'css/font-awesome.min.css'
    }
    chartJs {
        resource url:'js/chart.js'
    }
}