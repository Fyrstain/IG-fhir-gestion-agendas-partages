// RuleSets for ConceptMap
RuleSet: Group(source, target)
* group[+].source = "{source}"
* group[=].target = "{target}"

RuleSet: GroupElement(sourceElementCode, targetCode)
* group[=].element[+].code = #{sourceElementCode}
* group[=].element[=].target[+].code = #{targetCode}
* group[=].element[=].target[=].equivalence = #relatedto

RuleSet: GroupElementWithCommentTarget (sourceElementCode, targetCode, targetComment)
* group[=].element[+].code = #{sourceElementCode}
* group[=].element[=].target[+].code = #{targetCode}
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = {targetComment}

RuleSet: AddTargetElement(targetCode)
* group[=].element[=].target[+].code = #{targetCode}
* group[=].element[=].target[=].equivalence = #relatedto