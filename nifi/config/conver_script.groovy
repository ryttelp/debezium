import java.text.SimpleDateFormat

// Ustaw format daty odpowiadający SQL Server
def formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
formatter.setTimeZone(TimeZone.getTimeZone("UTC"))

// Funkcja rozpoznająca, czy nazwa pola wygląda na datowe
def isLikelyDateField(String key) {
    return key ==~ /(?i).*(date|time|ts).*|.*_at$/
}

// Rekurencyjna funkcja przekształcająca wartości epoch na daty tekstowe
def convertDates(obj) {
    if (obj instanceof Map) {
        obj.each { k, v ->
            if ((v instanceof Long || v instanceof Integer) && isLikelyDateField(k)) {
                obj[k] = formatter.format(new Date(v))
            } else {
                convertDates(v)
            }
        }
    } else if (obj instanceof List) {
        obj.each { item -> convertDates(item) }
    }
}

// Start transformacji rekordu wejściowego
convertDates(record)
return record
