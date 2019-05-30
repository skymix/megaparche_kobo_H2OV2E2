return {
    shiftmode_keys = {["Shift"] = true},
    symbolmode_keys = {["Sym"] = true, ["ABC"] = true},
    utf8mode_keys = {["IM"] = true},
    umlautmode_keys = {["Äéß"] = true},
    keys = {
        -- first row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { "Q",        "q",    "„",    "0",    ":",    ";",    "1",    "!",    "Ä",    "ä",    "1",    "ª", },
            { "W",        "w",    "!",    "1",    "|",    "ς",    "2",    "?",    "Ö",    "ö",    "2",    "º", },
            { "E",        "e",    "@",    "2",    "Ε",    "ε",    "Έ",    "έ",    "Ü",    "ü",    "3",    "¡", },
            { "R",        "r",    "#",    "3",    "Ρ",    "ρ",    "4",    ";",    "ß",    "ß",    "4",    "¿", },
            { "T",        "t",    "+",    "=",    "Τ",    "τ",    "5",    ":",    "À",    "à",    "5",    "¼", },
            { "Y",        "y",    "€",    "(",    "Υ",    "υ",    "Ύ",    "ύ",    "Â",    "â",    "6",    "½", },
            { "U",        "u",    "‰",    ")",    "Θ",    "θ",    "7",    "(",    "Æ",    "æ",    "7",    "¾", },
            { "I",        "i",    "|",    "\\",   "Ι",    "ι",    "Ί",    "ί",    "Ç",    "ç",    "8",    "©", },
            { "O",        "o",    "?",    "/",    "Ο",    "ο",    "9",    "ό",    "È",    "è",    "9",    "®", },
            { "P",        "p",    "~",    "`",    "Π",    "π",    "Ό",    ")",    "É",    "é",    "0",    "™", },
        },
        -- second row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { "A",        "a",    "…",    "@",    "Α",    "α",    "Ά",    "ά",    "Ê",    "ê",    "Ş",    "ş", },
            { "S",        "s",    "$",    "4",    "Σ",    "σ",    "Ѕ",    "ѕ",    "Ë",    "ë",    "İ",    "ı", },
            { "D",        "d",    "%",    "5",    "Δ",    "δ",    "Э",    "«",    "Î",    "î",    "Ğ",    "ğ", },
            { "F",        "f",    "^",    "6",    "Φ",    "φ",    "Ю",    "»",    "Ï",    "ï",    "Ć",    "ć", },
            { "G",        "g",    ":",    ";",    "Γ",    "γ",    "Ґ",    "ґ",    "Ô",    "ô",    "Č",    "č", },
            { "H",        "h",    "\"",   "'",    "Η",    "η",    "Ή",    "ή",    "Œ",    "œ",    "Đ",    "đ", },
            { "J",        "j",    "{",    "[",    "Ξ",    "ξ",    "Ί",    "ί",    "Ù",    "ù",    "Š",    "š", },
            { "K",        "k",    "}",    "]",    "Κ",    "κ",    "Ќ",    "ќ",    "Û",    "û",    "Ž",    "ž", },
            { "L",        "l",    "_",    "-",    "Λ",    "λ",    "Љ",    "љ",    "Ÿ",    "ÿ",    "Ő",    "ő", },
        },
        -- third row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { label = "Shift",
              icon = "resources/icons/appbar.arrow.shift.png",
              width = 1.5
            },
            { "Z",        "z",    "&",    "7",    "Ζ",    "ζ",    "Щ",    "щ",    "Á",    "á",    "Ű",    "ű", },
            { "X",        "x",    "*",    "8",    "Χ",    "χ",    "№",    "@",    "É",    "é",    "Ø",    "ø", },
            { "C",        "c",    "£",    "9",    "Ψ",    "ψ",    "Џ",    "џ",    "Í",    "í",    "Þ",    "þ", },
            { "V",        "v",    "<",    "‚",    "Ω",    "ω",    "Ώ",    "ώ",    "Ñ",    "ñ",    "Ý",    "ý", },
            { "B",        "b",    ">",    ".",    "Β",    "β",    "Ћ",    "ћ",    "Ó",    "ó",    "†",    "‡", },
            { "N",        "n",    "‘",    "↑",    "Ν",    "ν",    "Њ",    "њ",    "Ú",    "ú",    "–",    "—", },
            { "M",        "m",    "’",    "↓",    "Μ",    "μ",    "Ї",    "ї",    "Ç",    "ç",    "…",    "¨", },
            { label = "Backspace",
              icon = "resources/icons/appbar.clear.reflect.horizontal.png",
              width = 1.5
            },
        },
        -- fourth row
        {
            { "Sym",     "Sym",  "ABC",  "ABC",  "Sym",  "Sym",  "ABC",  "ABC",  "Sym",  "Sym",  "ABC",  "ABC",
              width = 1.5},
            { label = "IM",
              icon = "resources/icons/appbar.globe.wire.png",
            },
            { "Äéß",     "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß", },
            { label = "space",
              " ",        " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",
              width = 3.0},
            { ",",        ",",    "“",    "←",    ",",    ",",    "Є",    "є",    ",",    ",",    ",",    ",", },
            { ".",        ".",    "”",    "→",    ".",    ".",    "Ё",    "ё",    ".",    ".",    ".",    ".", },
            { label = "Enter",
              "\n",       "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",
              icon = "resources/icons/appbar.arrow.enter.png",
              width = 1.5,
            },
        },
    },
}
