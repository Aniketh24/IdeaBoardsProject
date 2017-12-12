package ideaboardsproject

import grails.converters.JSON

class APIController {

    def ajaxdata()
    {
        response.setContentType('application/json')

        def newData = Stickynotedata.findAllByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'asc']);
        def newData1 = Stickynotedata1.findAllByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'asc']);
        def newData2 = Stickynotedata2.findAllByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'asc']);
        def newData3 = Stickynotedata3.findAllByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'asc']);
        def newData4 = Stickynotedata4.findAllByBoardTitleIdAndIdOfLaneNames(session.boardTitleId, session.idOfLaneNames,[sort:'id', order:'asc']);

        render(status: 200, "${[newData:newData,newData1:newData1,newData2:newData2,newData3:newData3,newData4:newData4] as JSON}")

    }
}
