package ideaboardsproject

import grails.converters.JSON

class DashboardController
{
    def index() {}

    def dashboard() {}

    def save =
    {
        def names = new Swimlanes(params)
        def board = new Dashboard(params)
        names.save()
        board.save()
        [names:names]
        [board:board]
        redirect action: 'Displayboards'
    }
    def other()
    {
        session.user = params.fullName
        response.setContentType('application/json')

        try
        {

            println session.user
            render("${['status': "OK" ] as JSON}")

        }
        catch (RuntimeException exception)
        {
            log.error "Error during operation " + exception.message,exception
            render(status: 500, "${['status': "Login ERROR"] as JSON}")
        }
    }

    def Displayboards =
    {
       // def dataList=Dashboard.list()

        def dataList = Dashboard.findAll("from Dashboard order by id desc ",[max:1])
        def dataList1 = Swimlanes.findAll("from Swimlanes order by id desc ",[max: 1])
        [dataList:dataList]
        [dataList1:dataList1]
        render (view: 'Displayboards', model: [dataList:dataList[0]])
        render (view: 'Displayboards', model: [dataList1:dataList1[0]])

    }


}
