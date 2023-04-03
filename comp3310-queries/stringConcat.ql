import java


class StringConcat extends AddExpr {
    StringConcat() {this.getType().toString() = "String"}
}
predicate inAssignment(Expr e) {
    exists(AssignExpr a  | a.getAChildExpr*() = e) 
    or exists(LocalVariableDeclExpr a | a.getAChildExpr*() = e)

}


from StringConcat str
where inAssignment(str)
select str, "Addition used in assignment or declaration"

