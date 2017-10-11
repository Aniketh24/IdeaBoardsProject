package ideaboardsproject

class Dashboard
{
    String titlename
    //String swimlanenames0,swimlanenames1,swimlanenames2,swimlanenames3,swimlanenames4
    List swimlanes
    static hasMany = [swimlanes:Swimlanes]

    static constraints =
            {
        titlename nullable: true
        swimlanes nullable: true
       /* swimlanenames0 nullable: true
        swimlanenames1 nullable: true
        swimlanenames2 nullable: true
        swimlanenames3 nullable: true
        swimlanenames4 nullable: true*/
    }
}
