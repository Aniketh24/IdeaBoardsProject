package ideaboardsproject

import grails.converters.JSON

class DashboardController
{
    def index() {}

    def dashboard() {}

    def save()
    {
        def board = new Dashboard(params)
        def names = new Swimlanedata(params)

        board.save()
        names.save()

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

    def Displayboards()
    {
        def dataList = Dashboard.findAll("from Dashboard order by id desc ",[max:1])

        def myArrayList=dataList.id

        String formattedString = myArrayList.toString()
                .replace(",", "")
                .replace("[", "")
                .replace("]", "")
                .trim();

        session.boardTitleId = formattedString

        def dataList1 = Swimlanedata.findAll("from Swimlanedata order by id desc ",[max: 1])

        def myArrayList1=dataList.id

        String formattedString1 = myArrayList1.toString()
                .replace(",", "")
                .replace("[", "")
                .replace("]", "")
                .trim();

        session.idOfLaneNames = formattedString1

        def testedValue = Selection.findAll("from Selection order by id desc ",[max: 1])

        def myArrayList2 = testedValue.optionValue

        String formattedString2 = myArrayList2.toString()
                .replace(",", "")
                .replace("[", "")
                .replace("]", "")
                .trim();

        String abc = formattedString2

        [dataList:dataList]
        [dataList1:dataList1]

        render (view: 'Displayboards', model: [dataList:dataList, dataList1: dataList1, num: abc ])

    }

    def savestickynote()
    {
        def dataList = Dashboard.findAll("from Dashboard order by id desc ",[max:1])
        def dataList1 = Swimlanedata.findAll("from Swimlanedata order by id desc ",[max: 1])

        [dataList:dataList]
        [dataList1:dataList1]

        def notes = new Stickynotedata(params)
        def notes1 = new Stickynotedata1(params)
        def notes2 = new Stickynotedata2(params)
        def notes3 = new Stickynotedata3(params)
        def notes4 = new Stickynotedata4(params)

        notes.save()
        notes1.save()
        notes2.save()
        notes3.save()
        notes4.save()

        def pageinfo = Stickynotedata.findByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'desc']);
        def pageinfo1 = Stickynotedata1.findByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'desc']);
        def pageinfo2 = Stickynotedata2.findByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'desc']);
        def pageinfo3 = Stickynotedata3.findByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'desc']);
        def pageinfo4 = Stickynotedata4.findByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'desc']);

        redirect (controller: "dashboard" , action: "displayboards", model: [dataList:dataList, dataList1: dataList1, pageinfo: pageinfo, pageinfo1:pageinfo1, pageinfo2:pageinfo2, pageinfo3:pageinfo3, pageinfo4:pageinfo4] )

    }

    def deletestickynote()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def ids = newId

            def deletenote = Stickynotedata.get(ids)

            deletenote.delete flush: true, failOnError: true

            redirect controller: "dashboard", action: "index"
        }
    }

    def deletestickynote1()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def ids = newId

            def deletenote = Stickynotedata1.get(ids)

            deletenote.delete flush: true, failOnError: true

            redirect controller: "dashboard", action: "index"
        }
    }

    def deletestickynote2()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def ids = newId

            def deletenote = Stickynotedata2.get(ids)

            deletenote.delete flush: true, failOnError: true

            redirect controller: "dashboard", action: "index"
        }
    }

    def deletestickynote3()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def ids = newId

            def deletenote = Stickynotedata3.get(ids)

            deletenote.delete flush: true, failOnError: true

            redirect controller: "dashboard", action: "index"
        }
    }

    def deletestickynote4()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def ids = newId

            def deletenote = Stickynotedata4.get(ids)

            deletenote.delete flush: true, failOnError: true

            redirect controller: "dashboard", action: "index"
        }
    }

    def updatestickynote()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        def data = params.latestValue

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def id = newId

            def updatenote = Stickynotedata.findById(id)

            updatenote.swimlanedata = data

            updatenote.save(flush: true, failOnError: true)

            redirect controller: "dashboard", action: "displayboards"
        }
    }

    def updatestickynote1()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        def data = params.latestValue

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def id = newId

            def updatetnote = Stickynotedata1.findById(id)

            updatetnote.swimlanedata1 = data

            updatetnote.save(flush: true, failOnError: true)

            redirect controller: "dashboard", action: "displayboards"
        }
    }

    def updatestickynote2()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        def data = params.latestValue

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def id = newId

            def updatetnote = Stickynotedata2.findById(id)

            updatetnote.swimlanedata2 = data

            updatetnote.save(flush: true, failOnError: true)

            redirect controller: "dashboard", action: "displayboards"
        }
    }

    def updatestickynote3()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        def data = params.latestValue

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def id = newId

            def updatetnote = Stickynotedata3.findById(id)

            updatetnote.swimlanedata3 = data

            updatetnote.save(flush: true, failOnError: true)

            redirect controller: "dashboard", action: "displayboards"

           // redirect controller: "dashboard", action: "index"
        }
    }

    def updatestickynote4()
    {
        response.setContentType('application/json')

        def newId = params.latestId

        def data = params.latestValue

        if(newId==null)
        {
            redirect controller: "dashboard", action: "displayboards"
        }
        else
        {
            def id = newId

            def updatetnote = Stickynotedata4.findById(id)

            updatetnote.swimlanedata4 = data

            updatetnote.save(flush: true, failOnError: true)

            redirect controller: "dashboard", action: "displayboards"
        }
    }

    def example()
    {
        response.setContentType('application/json')

        def value = params.selectionValue

        if (value == null)
        {
            redirect(action: "testing")
        }
        else
        {
            def id = value

            def myArrayList = value

            int formattedString = myArrayList.toString()
                    .replace(",", "")
                    .replace("[", "")
                    .replace("]", "")
                    .trim();

            session.optionValue = formattedString

            def values = new Selection(optionValue: id)

            values.save()

        }

    }

}
