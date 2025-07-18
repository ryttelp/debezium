import java.text.SimpleDateFormat

def formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
formatter.setTimeZone(TimeZone.getTimeZone("UTC"))

// Rekurencyjna funkcja do konwersji epoch na datę:
def convertEpoch(obj) {
    if (obj instanceof Map) {
        obj.each { k, v -> 
            if (v instanceof Long || v instanceof Integer) {
                // Jeśli klucz wygląda na datę ALBO kończy się na "_at", konwertuj
                if (k ==~ /(?i).*date.*|.*time.*|.*ts.*/ || k ==~ /.*_at$/) {
                    obj[k] = formatter.format(new Date(v))
                }
            } else {
                convertEpoch(v)
            }
        }
    } else if (obj instanceof List) {
        obj.each { entry -> convertEpoch(entry) }
    }
}

convertEpoch(record)
return record