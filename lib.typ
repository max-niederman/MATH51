#let vname = math.bold
#let Proj = math.bold(math.op("Proj"))
#let span = math.op("span")
#let implies = sym.arrow.r.double
#let iff = sym.arrow.r.l.double

#let transposeArray = arr => {
    range(arr.at(0).len())
        .map(j => range(arr.len())
                    .map(i => arr.at(i).at(j)))
}

#let common(title: "", body) = {
    set document(
        author: "Max Niederman",
        title: title,
    )
    set page(
        numbering: (..nums) => "Niederman " + numbering("1/1", ..nums),
        number-align: center
    )

    set math.vec(delim: "[")
    set math.mat(delim: "[")

    // title
    block(text(weight: 700, 1.75em, title))

    // author
    block(strong("Max Niederman"), below: 2em)

    body
}

#let homework(title: "", body) = {
    show heading: set block(below: 1em)
    show heading.where(level: 1): it => {
        pagebreak()
        it
    }

    common(title: title, body)
}

#let lecture-notes(date: "", body) = {
    show heading: set block(below: 1em)
    show heading: set text(size: 0.85em)

    common(
        title: "Math 51 Lecture Notes: " + date,
        body
    )
}