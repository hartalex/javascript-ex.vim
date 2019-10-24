
syntax match   jsObjectIdentifier contained /\<\K\k*\./
syntax cluster jsExpression add=jsObjectIdentifier

syntax match   jsDestructuringShorthandProp contained /\<\k*\ze\s*[,}]/ 
syntax region  jsDestructuringBlock contained matchgroup=jsDestructuringBraces start=/{/  end=/}/  contains=jsDestructuringProperty,jsDestructuringAssignment,jsDestructuringNoise,jsDestructuringPropertyComputed,jsSpreadExpression,jsComment,jsDestructuringShorthandProp nextgroup=jsFlowDefinition extend fold
